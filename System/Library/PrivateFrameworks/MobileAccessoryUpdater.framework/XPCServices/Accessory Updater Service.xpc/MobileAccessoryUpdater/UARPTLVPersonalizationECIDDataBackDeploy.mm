@interface UARPTLVPersonalizationECIDDataBackDeploy
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationECIDDataBackDeploy)init;
- (id)description;
- (id)generateTLV;
- (void)setEcID:(id)d;
@end

@implementation UARPTLVPersonalizationECIDDataBackDeploy

- (UARPTLVPersonalizationECIDDataBackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationECIDDataBackDeploy;
  return [(UARPMetaDataTLVDataBackDeploy *)&v3 init];
}

- (void)setEcID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [dCopy copy];
  v7 = *(&selfCopy->super.super._tlvLength + 1);
  *(&selfCopy->super.super._tlvLength + 1) = v6;

  objc_sync_exit(selfCopy);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationECIDDataBackDeploy metaDataTableEntry];
  v4 = [v3 objectForKeyedSubscript:@"Name"];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v4, *(&self->super.super._tlvLength + 1)];

  return v5;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationECIDDataBackDeploy tlvType];
  v4 = *(&self->super.super._tlvLength + 1);
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationECIDDataBackDeploy;
  v5 = [(UARPMetaDataTLVDataBackDeploy *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

+ (id)metaDataTableEntry
{
  v6[0] = @"Personalization ECID Data";
  v5[0] = @"Name";
  v5[1] = @"Value";
  v2 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", +[UARPTLVPersonalizationECIDDataBackDeploy tlvType]);
  v6[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

+ (id)tlvFromPropertyListValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_new();
    [v4 setEcID:valueCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)tlvWithLength:(unint64_t)length value:(void *)value
{
  v6 = objc_opt_new();
  v7 = [NSData dataWithBytes:value length:length];
  [v6 setEcID:v7];

  return v6;
}

@end