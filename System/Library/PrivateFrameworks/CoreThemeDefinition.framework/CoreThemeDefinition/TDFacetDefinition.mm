@interface TDFacetDefinition
- (id)dateOfLastChange;
- (id)keySpec;
- (void)copyAttributesInto:(id)into;
- (void)setDateOfLastChange:(id)change;
@end

@implementation TDFacetDefinition

- (id)dateOfLastChange
{
  [(TDFacetDefinition *)self willAccessValueForKey:@"dateOfLastChange"];
  v3 = [(TDFacetDefinition *)self primitiveValueForKey:@"dateOfLastChange"];
  [(TDFacetDefinition *)self didAccessValueForKey:@"dateOfLastChange"];
  return v3;
}

- (void)setDateOfLastChange:(id)change
{
  [(TDFacetDefinition *)self willChangeValueForKey:@"dateOfLastChange"];
  [(TDFacetDefinition *)self setPrimitiveValue:change forKey:@"dateOfLastChange"];

  [(TDFacetDefinition *)self didChangeValueForKey:@"dateOfLastChange"];
}

- (void)copyAttributesInto:(id)into
{
  v4 = [(TDFacetDefinition *)self valueForKey:@"facetName"];

  [into setValue:v4 forKey:@"facetName"];
}

- (id)keySpec
{
  [(TDFacetDefinition *)self willAccessValueForKey:@"keySpec"];
  v3 = [(TDFacetDefinition *)self primitiveValueForKey:@"keySpec"];
  [(TDFacetDefinition *)self didAccessValueForKey:@"keySpec"];
  return v3;
}

@end