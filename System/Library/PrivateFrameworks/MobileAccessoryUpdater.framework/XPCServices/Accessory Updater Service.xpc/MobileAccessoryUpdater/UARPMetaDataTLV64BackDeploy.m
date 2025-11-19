@interface UARPMetaDataTLV64BackDeploy
- (UARPMetaDataTLV64BackDeploy)init;
- (id)generateTLV:(unsigned int)a3 tlvValue:(unint64_t)a4;
- (id)tlvValue:(unint64_t)a3;
@end

@implementation UARPMetaDataTLV64BackDeploy

- (UARPMetaDataTLV64BackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLV64BackDeploy;
  return [(UARPMetaDataTLVBackDeploy *)&v3 init];
}

- (id)generateTLV:(unsigned int)a3 tlvValue:(unint64_t)a4
{
  v7 = objc_alloc_init(NSMutableData);
  v12 = uarpHtonl(a3);
  [v7 appendBytes:&v12 length:4];
  v11 = uarpHtonl(8u);
  [v7 appendBytes:&v11 length:4];
  v8 = [(UARPMetaDataTLV64BackDeploy *)self tlvValue:a4];
  [v7 appendData:v8];
  v9 = [NSData dataWithData:v7];

  return v9;
}

- (id)tlvValue:(unint64_t)a3
{
  v5 = uarpHtonll(a3);
  v3 = [[NSData alloc] initWithBytes:&v5 length:8];

  return v3;
}

@end