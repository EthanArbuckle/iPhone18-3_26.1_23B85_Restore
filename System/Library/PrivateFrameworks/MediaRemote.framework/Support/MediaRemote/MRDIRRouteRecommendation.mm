@interface MRDIRRouteRecommendation
+ (id)recommendationWithIRCandidateResult:(id)result contextIdentifier:(id)identifier;
- (NSString)description;
@end

@implementation MRDIRRouteRecommendation

+ (id)recommendationWithIRCandidateResult:(id)result contextIdentifier:(id)identifier
{
  identifierCopy = identifier;
  resultCopy = result;
  v7 = objc_alloc_init(MRDIRRouteRecommendation);
  -[MRDIRRouteRecommendation setClassification:](v7, "setClassification:", [resultCopy classification]);
  sortingHint = [resultCopy sortingHint];
  [(MRDIRRouteRecommendation *)v7 setSortingHint:sortingHint];

  -[MRDIRRouteRecommendation setCallToAction:](v7, "setCallToAction:", [resultCopy isCallToAction]);
  -[MRDIRRouteRecommendation setLockScreenControl:](v7, "setLockScreenControl:", [resultCopy isLockScreenControl]);
  -[MRDIRRouteRecommendation setConservativelyFiltered:](v7, "setConservativelyFiltered:", [resultCopy isConservativeFiltered]);
  candidate = [resultCopy candidate];
  v10 = [MRIRRoute routeWithCandidate:candidate];
  [(MRDIRRouteRecommendation *)v7 setRoute:v10];

  [(MRDIRRouteRecommendation *)v7 setContextIdentifier:identifierCopy];
  classificationDescription = [resultCopy classificationDescription];

  [(MRDIRRouteRecommendation *)v7 setReason:classificationDescription];

  return v7;
}

- (NSString)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ (%p): ", v5, self];

  route = [(MRDIRRouteRecommendation *)self route];
  routeIdentifier = [route routeIdentifier];
  [v6 appendFormat:@"routeIdentifier: %@", routeIdentifier];

  classification = [(MRDIRRouteRecommendation *)self classification];
  if ((classification - 1) > 3)
  {
    v10 = @"Unknown";
  }

  else
  {
    v10 = *(&off_1004BC798 + classification - 1);
  }

  [v6 appendFormat:@", classification: %@", v10];
  if ([(MRDIRRouteRecommendation *)self isCallToAction])
  {
    [v6 appendString:{@", CallToAction"}];
  }

  if ([(MRDIRRouteRecommendation *)self isLockScreenControl])
  {
    [v6 appendString:{@", LockScreen"}];
  }

  if ([(MRDIRRouteRecommendation *)self isConservativelyFiltered])
  {
    [v6 appendString:{@", ConservativelyFiltered"}];
  }

  [v6 appendString:@">"];

  return v6;
}

@end