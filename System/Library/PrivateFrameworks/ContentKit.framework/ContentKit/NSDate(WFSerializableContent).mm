@interface NSDate(WFSerializableContent)
+ (id)objectWithWFSerializedRepresentation:()WFSerializableContent;
- (id)wfSerializedRepresentation;
@end

@implementation NSDate(WFSerializableContent)

- (id)wfSerializedRepresentation
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"link.contentkit.date";
  v4[0] = self;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];

  return v1;
}

+ (id)objectWithWFSerializedRepresentation:()WFSerializableContent
{
  v3 = a3;
  v4 = [v3 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.date"];

  return v4;
}

@end