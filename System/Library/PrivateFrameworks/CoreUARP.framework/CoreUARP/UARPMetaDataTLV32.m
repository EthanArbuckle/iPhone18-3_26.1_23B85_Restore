@interface UARPMetaDataTLV32
- (UARPMetaDataTLV32)init;
- (id)tlvValue:(unsigned int)a3;
@end

@implementation UARPMetaDataTLV32

- (UARPMetaDataTLV32)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLV32;
  return [(UARPMetaDataTLV *)&v3 init];
}

- (id)tlvValue:(unsigned int)a3
{
  v5 = uarpHtonl(a3);
  v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v5 length:4];

  return v3;
}

@end