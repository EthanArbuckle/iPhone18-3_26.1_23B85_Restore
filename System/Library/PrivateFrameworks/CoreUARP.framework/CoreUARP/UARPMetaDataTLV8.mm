@interface UARPMetaDataTLV8
- (UARPMetaDataTLV8)init;
- (id)tlvValue:(unsigned __int8)value;
@end

@implementation UARPMetaDataTLV8

- (UARPMetaDataTLV8)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLV8;
  return [(UARPMetaDataTLV *)&v3 init];
}

- (id)tlvValue:(unsigned __int8)value
{
  valueCopy = value;
  v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&valueCopy length:1];

  return v3;
}

@end