@interface MRURecommendation
+ (id)recommendationWithIRCandidateResult:(id)result contextIdentifier:(id)identifier;
- (NSString)description;
@end

@implementation MRURecommendation

+ (id)recommendationWithIRCandidateResult:(id)result contextIdentifier:(id)identifier
{
  resultCopy = result;
  v6 = MEMORY[0x1E69B0A50];
  identifierCopy = identifier;
  candidate = [resultCopy candidate];
  v9 = [v6 routeWithCandidate:candidate];

  [v9 setDonateAsCandidate:1];
  v10 = objc_opt_new();
  [v10 setClassification:{objc_msgSend(resultCopy, "classification")}];
  if (objc_opt_respondsToSelector())
  {
    sortingHint = [resultCopy sortingHint];
    [v10 setSortingHint:sortingHint];
  }

  [v10 setRoute:v9];
  [v10 setContextIdentifier:identifierCopy];

  [v10 setConservativelyFiltered:{objc_msgSend(resultCopy, "isConservativeFiltered")}];
  classificationDescription = [resultCopy classificationDescription];
  [v10 setReason:classificationDescription];

  return v10;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ (%p): ", v5, self];

  route = [(MRURecommendation *)self route];
  routeIdentifier = [route routeIdentifier];
  [v6 appendFormat:@"routeIdentififer: %@", routeIdentifier];

  classification = [(MRURecommendation *)self classification];
  if ((classification - 1) > 3)
  {
    v10 = @"Unknown";
  }

  else
  {
    v10 = off_1E7664BE0[classification - 1];
  }

  [v6 appendFormat:@", classification: %@", v10];
  contextIdentifier = [(MRURecommendation *)self contextIdentifier];
  [v6 appendFormat:@", contextIdentifier: %@", contextIdentifier];

  if ([(MRURecommendation *)self isConservativelyFiltered])
  {
    [v6 appendString:{@", ConservativelyFiltered"}];
  }

  [v6 appendString:@">"];

  return v6;
}

@end