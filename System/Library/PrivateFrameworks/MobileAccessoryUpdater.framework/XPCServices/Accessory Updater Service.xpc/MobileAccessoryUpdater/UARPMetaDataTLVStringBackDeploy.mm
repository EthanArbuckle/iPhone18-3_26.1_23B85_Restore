@interface UARPMetaDataTLVStringBackDeploy
- (UARPMetaDataTLVStringBackDeploy)init;
- (id)generateTLV:(unsigned int)v tlvValue:(id)value;
- (id)tlvValue:(id)value;
@end

@implementation UARPMetaDataTLVStringBackDeploy

- (UARPMetaDataTLVStringBackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLVStringBackDeploy;
  return [(UARPMetaDataTLVBackDeploy *)&v3 init];
}

- (id)generateTLV:(unsigned int)v tlvValue:(id)value
{
  valueCopy = value;
  v7 = objc_alloc_init(NSMutableData);
  v12 = uarpHtonl(v);
  [v7 appendBytes:&v12 length:4];
  v11 = uarpHtonl([valueCopy length]);
  [v7 appendBytes:&v11 length:4];
  v8 = [(UARPMetaDataTLVStringBackDeploy *)self tlvValue:valueCopy];

  [v7 appendData:v8];
  v9 = [NSData dataWithData:v7];

  return v9;
}

- (id)tlvValue:(id)value
{
  valueCopy = value;
  v4 = [NSData alloc];
  uTF8String = [valueCopy UTF8String];
  v6 = [valueCopy length];

  v7 = [v4 initWithBytes:uTF8String length:v6];

  return v7;
}

@end