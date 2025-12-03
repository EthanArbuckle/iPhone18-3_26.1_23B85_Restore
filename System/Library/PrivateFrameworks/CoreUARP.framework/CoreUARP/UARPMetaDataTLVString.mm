@interface UARPMetaDataTLVString
- (UARPMetaDataTLVString)init;
- (id)generateTLV:(unsigned int)v tlvValue:(id)value;
- (id)tlvValue:(id)value;
@end

@implementation UARPMetaDataTLVString

- (UARPMetaDataTLVString)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLVString;
  return [(UARPMetaDataTLV *)&v3 init];
}

- (id)generateTLV:(unsigned int)v tlvValue:(id)value
{
  v6 = MEMORY[0x277CBEB28];
  valueCopy = value;
  v8 = objc_alloc_init(v6);
  v13 = uarpHtonl(v);
  [v8 appendBytes:&v13 length:4];
  v12 = uarpHtonl([valueCopy length]);
  [v8 appendBytes:&v12 length:4];
  v9 = [(UARPMetaDataTLVString *)self tlvValue:valueCopy];

  [v8 appendData:v9];
  v10 = [MEMORY[0x277CBEA90] dataWithData:v8];

  return v10;
}

- (id)tlvValue:(id)value
{
  v3 = MEMORY[0x277CBEA90];
  valueCopy = value;
  v5 = [v3 alloc];
  uTF8String = [valueCopy UTF8String];
  v7 = [valueCopy length];

  v8 = [v5 initWithBytes:uTF8String length:v7];

  return v8;
}

@end