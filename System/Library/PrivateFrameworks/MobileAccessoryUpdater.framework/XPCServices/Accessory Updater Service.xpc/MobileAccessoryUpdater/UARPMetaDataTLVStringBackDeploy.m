@interface UARPMetaDataTLVStringBackDeploy
- (UARPMetaDataTLVStringBackDeploy)init;
- (id)generateTLV:(unsigned int)a3 tlvValue:(id)a4;
- (id)tlvValue:(id)a3;
@end

@implementation UARPMetaDataTLVStringBackDeploy

- (UARPMetaDataTLVStringBackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLVStringBackDeploy;
  return [(UARPMetaDataTLVBackDeploy *)&v3 init];
}

- (id)generateTLV:(unsigned int)a3 tlvValue:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(NSMutableData);
  v12 = uarpHtonl(a3);
  [v7 appendBytes:&v12 length:4];
  v11 = uarpHtonl([v6 length]);
  [v7 appendBytes:&v11 length:4];
  v8 = [(UARPMetaDataTLVStringBackDeploy *)self tlvValue:v6];

  [v7 appendData:v8];
  v9 = [NSData dataWithData:v7];

  return v9;
}

- (id)tlvValue:(id)a3
{
  v3 = a3;
  v4 = [NSData alloc];
  v5 = [v3 UTF8String];
  v6 = [v3 length];

  v7 = [v4 initWithBytes:v5 length:v6];

  return v7;
}

@end