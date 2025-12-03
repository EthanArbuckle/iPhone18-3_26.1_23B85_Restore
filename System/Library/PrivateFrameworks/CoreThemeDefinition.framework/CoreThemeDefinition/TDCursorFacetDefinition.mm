@interface TDCursorFacetDefinition
- (id)copyDataFromAttributes;
- (void)copyAttributesInto:(id)into;
- (void)setAttributesFromCopyData:(id)data;
@end

@implementation TDCursorFacetDefinition

- (void)copyAttributesInto:(id)into
{
  v5.receiver = self;
  v5.super_class = TDCursorFacetDefinition;
  [(TDFacetDefinition *)&v5 copyAttributesInto:?];
  [into setValue:-[TDCursorFacetDefinition valueForKey:](self forKey:{"valueForKey:", @"hotSpotX", @"hotSpotX"}];
  [into setValue:-[TDCursorFacetDefinition valueForKey:](self forKey:{"valueForKey:", @"hotSpotY", @"hotSpotY"}];
}

- (id)copyDataFromAttributes
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v4 = [(TDCursorFacetDefinition *)self valueForKey:@"hotSpotX"];
  if (v4)
  {
    [v3 setObject:v4 forKey:@"hotSpotX"];
  }

  v5 = [(TDCursorFacetDefinition *)self valueForKey:@"hotSpotY"];
  if (v5)
  {
    [v3 setObject:v5 forKey:@"hotSpotY"];
  }

  v6 = [(TDCursorFacetDefinition *)self valueForKey:@"facetName"];
  if (v6)
  {
    [v3 setObject:v6 forKey:@"facetName"];
  }

  keySpec = [(TDFacetDefinition *)self keySpec];
  if (keySpec)
  {
    [v3 setObject:objc_msgSend(keySpec forKey:{"copyDataFromAttributes"), @"keySpec"}];
  }

  v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:v3 format:200 options:0 error:0];

  return [v8 copy];
}

- (void)setAttributesFromCopyData:(id)data
{
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:data options:0 format:0 error:0];
  v5 = [v4 objectForKey:@"hotSpotX"];
  if (v5)
  {
    [(TDCursorFacetDefinition *)self setValue:v5 forKey:@"hotSpotX"];
  }

  v6 = [v4 objectForKey:@"hotSpotY"];
  if (v6)
  {
    [(TDCursorFacetDefinition *)self setValue:v6 forKey:@"hotSpotY"];
  }

  v7 = [v4 objectForKey:@"facetName"];
  if (v7)
  {

    [(TDCursorFacetDefinition *)self setValue:v7 forKey:@"facetName"];
  }
}

@end