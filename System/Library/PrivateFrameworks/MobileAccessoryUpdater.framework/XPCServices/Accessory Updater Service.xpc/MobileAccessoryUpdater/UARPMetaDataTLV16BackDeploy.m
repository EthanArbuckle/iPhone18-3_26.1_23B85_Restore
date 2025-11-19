@interface UARPMetaDataTLV16BackDeploy
- (UARPMetaDataTLV16BackDeploy)init;
- (id)tlvValue:(unsigned __int16)a3;
@end

@implementation UARPMetaDataTLV16BackDeploy

- (UARPMetaDataTLV16BackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLV16BackDeploy;
  return [(UARPMetaDataTLVBackDeploy *)&v3 init];
}

- (id)tlvValue:(unsigned __int16)a3
{
  v5 = uarpHtons(a3);
  v3 = [[NSData alloc] initWithBytes:&v5 length:2];

  return v3;
}

@end