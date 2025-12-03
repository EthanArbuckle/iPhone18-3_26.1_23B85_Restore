@interface UARPTLVPersonalizationFTABSubfileESECBackDeploy
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationFTABSubfileESECBackDeploy)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setEsec:(unsigned __int16)esec;
@end

@implementation UARPTLVPersonalizationFTABSubfileESECBackDeploy

- (UARPTLVPersonalizationFTABSubfileESECBackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationFTABSubfileESECBackDeploy;
  return [(UARPMetaDataTLV16BackDeploy *)&v3 init];
}

- (void)setEsec:(unsigned __int16)esec
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  *(&selfCopy->super.super._tlvLength + 2) = esec;
  objc_sync_exit(selfCopy);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationFTABSubfileESECBackDeploy metaDataTableEntry];
  v4 = [v3 objectForKeyedSubscript:@"Name"];
  v5 = [NSString stringWithFormat:@"<%@: %u>", v4, *(&self->super.super._tlvLength + 2)];

  return v5;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationFTABSubfileESECBackDeploy tlvType];
  v4 = *(&self->super.super._tlvLength + 2);
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationFTABSubfileESECBackDeploy;
  v5 = [(UARPMetaDataTLV16BackDeploy *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

- (id)tlvValue
{
  v2 = *(&self->super.super._tlvLength + 2);
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationFTABSubfileESECBackDeploy;
  v3 = [(UARPMetaDataTLV16BackDeploy *)&v5 tlvValue:v2];

  return v3;
}

+ (id)metaDataTableEntry
{
  v6[0] = @"Personalization FTAB Payload Security Mode";
  v5[0] = @"Name";
  v5[1] = @"Value";
  v2 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", +[UARPTLVPersonalizationFTABSubfileESECBackDeploy tlvType]);
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
    v4 = valueCopy;
    v5 = objc_opt_new();
    unsignedShortValue = [v4 unsignedShortValue];

    [v5 setEsec:unsignedShortValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)tlvWithLength:(unint64_t)length value:(void *)value
{
  if (length == 2)
  {
    v5 = objc_opt_new();
    [v5 setEsec:uarpNtohs(*value)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end