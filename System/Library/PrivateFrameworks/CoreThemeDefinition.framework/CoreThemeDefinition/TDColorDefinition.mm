@interface TDColorDefinition
- (id)copyDataFromAttributes;
- (id)dataFromAttributes;
- (void)copyAttributesInto:(id)into;
- (void)setAttributesFromCopyData:(id)data;
- (void)setAttributesFromData:(id)data;
@end

@implementation TDColorDefinition

- (void)copyAttributesInto:(id)into
{
  [into setValue:-[TDColorDefinition valueForKey:](self forKey:{"valueForKey:", @"physicalColor", @"physicalColor"}];
  v5 = [(TDColorDefinition *)self valueForKey:@"name"];

  [into setValue:v5 forKey:@"name"];
}

- (id)dataFromAttributes
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v4 = [(TDColorDefinition *)self valueForKey:@"name"];
  if (v4)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v4 forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"name"}];
  }

  [v3 setObject:-[TDColorDefinition valueForKey:](self forKey:{"valueForKey:", @"physicalColor", @"physicalColor"}];
  v5 = MEMORY[0x277CCAC58];

  return [v5 dataWithPropertyList:v3 format:200 options:0 error:0];
}

- (void)setAttributesFromData:(id)data
{
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:data options:0 format:0 error:0];
  managedObjectContext = [(TDColorDefinition *)self managedObjectContext];
  v6 = [v4 objectForKey:@"name"];
  if (v6)
  {
    -[TDColorDefinition setValue:forKey:](self, "setValue:forKey:", [managedObjectContext objectWithID:{objc_msgSend(objc_msgSend(managedObjectContext, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v6))}], @"name");
  }

  v7 = [v4 objectForKey:@"physicalColor"];
  if (v7)
  {

    [(TDColorDefinition *)self setValue:v7 forKey:@"physicalColor"];
  }
}

- (id)copyDataFromAttributes
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v4 = [(TDColorDefinition *)self valueForKey:@"physicalColor"];
  if (v4)
  {
    [v3 setObject:v4 forKey:@"physicalColor"];
  }

  v5 = [(TDColorDefinition *)self valueForKey:@"colorStatus"];
  if (v5)
  {
    [v3 setObject:objc_msgSend(v5 forKey:{"valueForKey:", @"identifier", @"colorStatus"}];
  }

  v6 = [(TDColorDefinition *)self valueForKey:@"name"];
  if (v6)
  {
    [v3 setObject:objc_msgSend(v6 forKey:{"valueForKey:", @"selector", @"selector"}];
  }

  v7 = [MEMORY[0x277CCAC58] dataWithPropertyList:v3 format:200 options:0 error:0];

  return [v7 copy];
}

- (void)setAttributesFromCopyData:(id)data
{
  v4 = [objc_msgSend(MEMORY[0x277CCAC58] propertyListWithData:data options:0 format:0 error:{0), "objectForKey:", @"physicalColor"}];
  if (v4)
  {

    [(TDColorDefinition *)self setValue:v4 forKey:@"physicalColor"];
  }
}

@end