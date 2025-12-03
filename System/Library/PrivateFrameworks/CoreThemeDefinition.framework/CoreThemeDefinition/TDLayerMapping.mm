@interface TDLayerMapping
- (id)copyDataFromAttributes;
- (void)setAttributesFromCopyData:(id)data;
@end

@implementation TDLayerMapping

- (id)copyDataFromAttributes
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v4 = [(TDLayerMapping *)self valueForKey:@"photoshopLayerIndex"];
  if (v4)
  {
    [v3 setObject:v4 forKey:@"photoshopLayerIndex"];
  }

  v5 = [(TDLayerMapping *)self valueForKey:@"themeDrawingLayer"];
  if (v5)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", objc_msgSend(v5, "identifier")), @"themeDrawingLayer"}];
  }

  v6 = [MEMORY[0x277CCAC58] dataWithPropertyList:v3 format:200 options:0 error:0];

  return [v6 copy];
}

- (void)setAttributesFromCopyData:(id)data
{
  v4 = [objc_msgSend(MEMORY[0x277CCAC58] propertyListWithData:data options:0 format:0 error:{0), "objectForKey:", @"photoshopLayerIndex"}];
  if (v4)
  {

    [(TDLayerMapping *)self setValue:v4 forKey:@"photoshopLayerIndex"];
  }
}

@end