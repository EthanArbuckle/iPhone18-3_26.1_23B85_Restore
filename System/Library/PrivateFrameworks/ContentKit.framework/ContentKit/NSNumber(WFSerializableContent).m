@interface NSNumber(WFSerializableContent)
+ (id)objectWithWFSerializedRepresentation:()WFSerializableContent;
- (id)wfSerializedRepresentation;
@end

@implementation NSNumber(WFSerializableContent)

- (id)wfSerializedRepresentation
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"link.contentkit.number";
  v4[0] = a1;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];

  return v1;
}

+ (id)objectWithWFSerializedRepresentation:()WFSerializableContent
{
  v3 = a3;
  v4 = [v3 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.number"];

  return v4;
}

@end