@interface UARPMetaDataTLVDataBackDeploy
- (UARPMetaDataTLVDataBackDeploy)init;
- (id)generateTLV:(unsigned int)v tlvValue:(id)value;
@end

@implementation UARPMetaDataTLVDataBackDeploy

- (UARPMetaDataTLVDataBackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLVDataBackDeploy;
  return [(UARPMetaDataTLVBackDeploy *)&v3 init];
}

- (id)generateTLV:(unsigned int)v tlvValue:(id)value
{
  valueCopy = value;
  v6 = objc_alloc_init(NSMutableData);
  v10 = uarpHtonl(v);
  [v6 appendBytes:&v10 length:4];
  v9 = uarpHtonl([valueCopy length]);
  [v6 appendBytes:&v9 length:4];
  [v6 appendData:valueCopy];

  v7 = [NSData dataWithData:v6];

  return v7;
}

@end