@interface UARPMetaDataTLV16
- (UARPMetaDataTLV16)init;
- (id)tlvValue:(unsigned __int16)value;
@end

@implementation UARPMetaDataTLV16

- (UARPMetaDataTLV16)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLV16;
  return [(UARPMetaDataTLV *)&v3 init];
}

- (id)tlvValue:(unsigned __int16)value
{
  v5 = uarpHtons(value);
  v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v5 length:2];

  return v3;
}

@end