@interface UARPMetaDataTLVDataBackDeploy
- (UARPMetaDataTLVDataBackDeploy)init;
- (id)generateTLV:(unsigned int)a3 tlvValue:(id)a4;
@end

@implementation UARPMetaDataTLVDataBackDeploy

- (UARPMetaDataTLVDataBackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLVDataBackDeploy;
  return [(UARPMetaDataTLVBackDeploy *)&v3 init];
}

- (id)generateTLV:(unsigned int)a3 tlvValue:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(NSMutableData);
  v10 = uarpHtonl(a3);
  [v6 appendBytes:&v10 length:4];
  v9 = uarpHtonl([v5 length]);
  [v6 appendBytes:&v9 length:4];
  [v6 appendData:v5];

  v7 = [NSData dataWithData:v6];

  return v7;
}

@end