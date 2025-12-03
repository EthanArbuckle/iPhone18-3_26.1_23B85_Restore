@interface UARPMetaDataTLVData
- (UARPMetaDataTLVData)init;
- (id)generateTLV:(unsigned int)v tlvValue:(id)value;
@end

@implementation UARPMetaDataTLVData

- (UARPMetaDataTLVData)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLVData;
  return [(UARPMetaDataTLV *)&v3 init];
}

- (id)generateTLV:(unsigned int)v tlvValue:(id)value
{
  v5 = MEMORY[0x277CBEB28];
  valueCopy = value;
  v7 = objc_alloc_init(v5);
  v11 = uarpHtonl(v);
  [v7 appendBytes:&v11 length:4];
  v10 = uarpHtonl([valueCopy length]);
  [v7 appendBytes:&v10 length:4];
  [v7 appendData:valueCopy];

  v8 = [MEMORY[0x277CBEA90] dataWithData:v7];

  return v8;
}

@end