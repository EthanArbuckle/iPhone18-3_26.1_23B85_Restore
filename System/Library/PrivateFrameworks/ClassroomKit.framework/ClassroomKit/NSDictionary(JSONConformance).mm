@interface NSDictionary(JSONConformance)
- (id)crk_JSONRepresentationWithPrettyPrinting:()JSONConformance sortKeys:;
@end

@implementation NSDictionary(JSONConformance)

- (id)crk_JSONRepresentationWithPrettyPrinting:()JSONConformance sortKeys:
{
  v6 = [CRKJSONConverter JSONDictionaryForDictionary:self];
  v7 = JSONStringRepresentation(v6, a3, a4);

  return v7;
}

@end