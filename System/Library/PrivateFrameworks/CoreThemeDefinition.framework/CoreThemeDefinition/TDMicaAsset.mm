@interface TDMicaAsset
- (id)_productionWithRenditionsInProductions:(id)a3;
- (id)copyDataFromAttributes;
- (id)production;
- (void)setAttributesFromCopyData:(id)a3;
@end

@implementation TDMicaAsset

- (id)_productionWithRenditionsInProductions:(id)a3
{
  v4 = [a3 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"renditions != nil"}];
  v5 = [v4 count];
  if (!v5)
  {
    v7 = 0;
    v8 = @"WARNING: No production of %@ has any renditions.";
    goto LABEL_5;
  }

  v6 = v5;
  v7 = [v4 objectAtIndex:0];
  if (v6 != 1)
  {
    v8 = @"WARNING: No active productions for %@, and more than one has renditions";
LABEL_5:
    NSLog(&v8->isa, [(TDAsset *)self sourceRelativePath]);
  }

  return v7;
}

- (id)production
{
  v3 = [-[TDMicaAsset productions](self "productions")];
  v4 = [v3 count];
  if (v4 <= 1)
  {
    result = 0;
  }

  else
  {
    result = [(TDMicaAsset *)self _productionWithRenditionsInProductions:v3];
  }

  if (v4 >= 1 && !result)
  {

    return [v3 objectAtIndex:0];
  }

  return result;
}

- (id)copyDataFromAttributes
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v4 = [(TDMicaAsset *)self valueForKey:@"category"];
  if (v4)
  {
    [v3 setObject:v4 forKey:@"category"];
  }

  v5 = [(TDMicaAsset *)self valueForKey:@"name"];
  if (v5)
  {
    [v3 setObject:v5 forKey:@"name"];
  }

  v6 = [(TDMicaAsset *)self valueForKey:@"source"];
  if (v6)
  {
    [v3 setObject:objc_msgSend(v6 forKey:{"valueForKey:", @"path", @"source"}];
  }

  v7 = [MEMORY[0x277CCAC58] dataWithPropertyList:v3 format:200 options:0 error:0];

  return [v7 copy];
}

- (void)setAttributesFromCopyData:(id)a3
{
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:a3 options:0 format:0 error:0];
  v5 = [v4 objectForKey:@"category"];
  if (v5)
  {
    [(TDMicaAsset *)self setValue:v5 forKey:@"category"];
  }

  v6 = [v4 objectForKey:@"name"];
  if (v6)
  {

    [(TDMicaAsset *)self setValue:v6 forKey:@"name"];
  }
}

@end