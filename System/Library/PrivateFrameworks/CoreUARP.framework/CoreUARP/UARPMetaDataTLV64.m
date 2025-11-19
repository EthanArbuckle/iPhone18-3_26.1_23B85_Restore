@interface UARPMetaDataTLV64
- (UARPMetaDataTLV64)init;
- (id)generateTLV:(unsigned int)a3 tlvValue:(unint64_t)a4;
- (id)tlvValue:(unint64_t)a3;
@end

@implementation UARPMetaDataTLV64

- (UARPMetaDataTLV64)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLV64;
  return [(UARPMetaDataTLV *)&v3 init];
}

- (id)generateTLV:(unsigned int)a3 tlvValue:(unint64_t)a4
{
  v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v12 = uarpHtonl(a3);
  [v7 appendBytes:&v12 length:4];
  v11 = uarpHtonl(8u);
  [v7 appendBytes:&v11 length:4];
  v8 = [(UARPMetaDataTLV64 *)self tlvValue:a4];
  [v7 appendData:v8];
  v9 = [MEMORY[0x277CBEA90] dataWithData:v7];

  return v9;
}

- (id)tlvValue:(unint64_t)a3
{
  v5 = uarpHtonll(a3);
  v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v5 length:8];

  return v3;
}

@end