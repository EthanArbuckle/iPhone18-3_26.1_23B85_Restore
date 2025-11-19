@interface MRDIRRouteRecommendation
+ (id)recommendationWithIRCandidateResult:(id)a3 contextIdentifier:(id)a4;
- (NSString)description;
@end

@implementation MRDIRRouteRecommendation

+ (id)recommendationWithIRCandidateResult:(id)a3 contextIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(MRDIRRouteRecommendation);
  -[MRDIRRouteRecommendation setClassification:](v7, "setClassification:", [v6 classification]);
  v8 = [v6 sortingHint];
  [(MRDIRRouteRecommendation *)v7 setSortingHint:v8];

  -[MRDIRRouteRecommendation setCallToAction:](v7, "setCallToAction:", [v6 isCallToAction]);
  -[MRDIRRouteRecommendation setLockScreenControl:](v7, "setLockScreenControl:", [v6 isLockScreenControl]);
  -[MRDIRRouteRecommendation setConservativelyFiltered:](v7, "setConservativelyFiltered:", [v6 isConservativeFiltered]);
  v9 = [v6 candidate];
  v10 = [MRIRRoute routeWithCandidate:v9];
  [(MRDIRRouteRecommendation *)v7 setRoute:v10];

  [(MRDIRRouteRecommendation *)v7 setContextIdentifier:v5];
  v11 = [v6 classificationDescription];

  [(MRDIRRouteRecommendation *)v7 setReason:v11];

  return v7;
}

- (NSString)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ (%p): ", v5, self];

  v7 = [(MRDIRRouteRecommendation *)self route];
  v8 = [v7 routeIdentifier];
  [v6 appendFormat:@"routeIdentifier: %@", v8];

  v9 = [(MRDIRRouteRecommendation *)self classification];
  if ((v9 - 1) > 3)
  {
    v10 = @"Unknown";
  }

  else
  {
    v10 = *(&off_1004BC798 + v9 - 1);
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