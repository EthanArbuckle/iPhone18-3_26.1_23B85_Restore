@interface NSArray(JSONConformance)
- (id)crk_JSONRepresentationWithPrettyPrinting:()JSONConformance sortKeys:;
@end

@implementation NSArray(JSONConformance)

- (id)crk_JSONRepresentationWithPrettyPrinting:()JSONConformance sortKeys:
{
  v6 = [CRKJSONConverter JSONArrayForArray:a1];
  v7 = JSONStringRepresentation(v6, a3, a4);

  return v7;
}

@end