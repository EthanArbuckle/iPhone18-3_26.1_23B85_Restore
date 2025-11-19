@interface MRURecommendation
+ (id)recommendationWithIRCandidateResult:(id)a3 contextIdentifier:(id)a4;
- (NSString)description;
@end

@implementation MRURecommendation

+ (id)recommendationWithIRCandidateResult:(id)a3 contextIdentifier:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69B0A50];
  v7 = a4;
  v8 = [v5 candidate];
  v9 = [v6 routeWithCandidate:v8];

  [v9 setDonateAsCandidate:1];
  v10 = objc_opt_new();
  [v10 setClassification:{objc_msgSend(v5, "classification")}];
  if (objc_opt_respondsToSelector())
  {
    v11 = [v5 sortingHint];
    [v10 setSortingHint:v11];
  }

  [v10 setRoute:v9];
  [v10 setContextIdentifier:v7];

  [v10 setConservativelyFiltered:{objc_msgSend(v5, "isConservativeFiltered")}];
  v12 = [v5 classificationDescription];
  [v10 setReason:v12];

  return v10;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ (%p): ", v5, self];

  v7 = [(MRURecommendation *)self route];
  v8 = [v7 routeIdentifier];
  [v6 appendFormat:@"routeIdentififer: %@", v8];

  v9 = [(MRURecommendation *)self classification];
  if ((v9 - 1) > 3)
  {
    v10 = @"Unknown";
  }

  else
  {
    v10 = off_1E7664BE0[v9 - 1];
  }

  [v6 appendFormat:@", classification: %@", v10];
  v11 = [(MRURecommendation *)self contextIdentifier];
  [v6 appendFormat:@", contextIdentifier: %@", v11];

  if ([(MRURecommendation *)self isConservativelyFiltered])
  {
    [v6 appendString:{@", ConservativelyFiltered"}];
  }

  [v6 appendString:@">"];

  return v6;
}

@end