@interface UARPMetaDataTLV64
- (UARPMetaDataTLV64)init;
- (id)generateTLV:(unsigned int)v tlvValue:(unint64_t)value;
- (id)tlvValue:(unint64_t)value;
@end

@implementation UARPMetaDataTLV64

- (UARPMetaDataTLV64)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLV64;
  return [(UARPMetaDataTLV *)&v3 init];
}

- (id)generateTLV:(unsigned int)v tlvValue:(unint64_t)value
{
  v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v12 = uarpHtonl(v);
  [v7 appendBytes:&v12 length:4];
  v11 = uarpHtonl(8u);
  [v7 appendBytes:&v11 length:4];
  v8 = [(UARPMetaDataTLV64 *)self tlvValue:value];
  [v7 appendData:v8];
  v9 = [MEMORY[0x277CBEA90] dataWithData:v7];

  return v9;
}

- (id)tlvValue:(unint64_t)value
{
  v5 = uarpHtonll(value);
  v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v5 length:8];

  return v3;
}

@end