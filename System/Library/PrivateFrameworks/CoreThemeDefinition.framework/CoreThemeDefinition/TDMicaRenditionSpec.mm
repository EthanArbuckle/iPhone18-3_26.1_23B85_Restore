@interface TDMicaRenditionSpec
- (id)copyDataFromAttributes;
@end

@implementation TDMicaRenditionSpec

- (id)copyDataFromAttributes
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v3 = [MEMORY[0x277CCAC58] dataWithPropertyList:v2 format:200 options:0 error:0];

  return [v3 copy];
}

@end