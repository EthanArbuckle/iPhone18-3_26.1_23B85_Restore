@interface UARPTLVPersonalizationFTABSubfileTrustedBackDeploy
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)a3;
+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPTLVPersonalizationFTABSubfileTrustedBackDeploy)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setTrusted:(unsigned __int16)a3;
@end

@implementation UARPTLVPersonalizationFTABSubfileTrustedBackDeploy

- (UARPTLVPersonalizationFTABSubfileTrustedBackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationFTABSubfileTrustedBackDeploy;
  return [(UARPMetaDataTLV16BackDeploy *)&v3 init];
}

- (void)setTrusted:(unsigned __int16)a3
{
  v4 = self;
  objc_sync_enter(v4);
  *(&v4->super.super._tlvLength + 2) = a3;
  objc_sync_exit(v4);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationFTABSubfileTrustedBackDeploy metaDataTableEntry];
  v4 = [v3 objectForKeyedSubscript:@"Name"];
  v5 = [NSString stringWithFormat:@"<%@: %u>", v4, *(&self->super.super._tlvLength + 2)];

  return v5;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationFTABSubfileTrustedBackDeploy tlvType];
  v4 = *(&self->super.super._tlvLength + 2);
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationFTABSubfileTrustedBackDeploy;
  v5 = [(UARPMetaDataTLV16BackDeploy *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

- (id)tlvValue
{
  v2 = *(&self->super.super._tlvLength + 2);
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationFTABSubfileTrustedBackDeploy;
  v3 = [(UARPMetaDataTLV16BackDeploy *)&v5 tlvValue:v2];

  return v3;
}

+ (id)metaDataTableEntry
{
  v6[0] = @"Personalization FTAB Payload Trusted";
  v5[0] = @"Name";
  v5[1] = @"Value";
  v2 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", +[UARPTLVPersonalizationFTABSubfileTrustedBackDeploy tlvType]);
  v6[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

+ (id)tlvFromPropertyListValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = objc_opt_new();
    v6 = [v4 unsignedShortValue];

    [v5 setTrusted:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4
{
  if (a3 == 2)
  {
    v5 = objc_opt_new();
    [v5 setTrusted:uarpNtohs(*a4)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end