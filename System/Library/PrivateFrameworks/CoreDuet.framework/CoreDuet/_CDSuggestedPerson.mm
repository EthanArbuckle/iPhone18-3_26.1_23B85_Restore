@interface _CDSuggestedPerson
- (id)description;
@end

@implementation _CDSuggestedPerson

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@:%p {\n", objc_opt_class(), self];
  v4 = [(_CDSuggestedPerson *)self contact];
  [v3 appendFormat:@"              contact: %@\n", v4];

  v5 = [(_CDSuggestedPerson *)self interactionBundleID];
  [v3 appendFormat:@"  interactionBundleID: %@\n", v5];

  v6 = MEMORY[0x1E696AD98];
  [(_CDSuggestedPerson *)self rank];
  v7 = [v6 numberWithDouble:?];
  [v3 appendFormat:@"                 rank: %@\n", v7];

  [v3 appendString:@"}\n"];

  return v3;
}

@end