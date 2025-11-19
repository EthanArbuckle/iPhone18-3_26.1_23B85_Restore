@interface UARPMetaDataTLV8
- (UARPMetaDataTLV8)init;
- (id)tlvValue:(unsigned __int8)a3;
@end

@implementation UARPMetaDataTLV8

- (UARPMetaDataTLV8)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLV8;
  return [(UARPMetaDataTLV *)&v3 init];
}

- (id)tlvValue:(unsigned __int8)a3
{
  v5 = a3;
  v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v5 length:1];

  return v3;
}

@end