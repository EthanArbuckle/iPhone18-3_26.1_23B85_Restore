@interface UARPTLVPersonalizationRequiredBackDeploy
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationRequiredBackDeploy)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setIsRequired:(unsigned int)required;
@end

@implementation UARPTLVPersonalizationRequiredBackDeploy

- (UARPTLVPersonalizationRequiredBackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationRequiredBackDeploy;
  return [(UARPMetaDataTLV32BackDeploy *)&v3 init];
}

- (void)setIsRequired:(unsigned int)required
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  *(&selfCopy->super.super._tlvLength + 1) = required;
  objc_sync_exit(selfCopy);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationRequiredBackDeploy metaDataTableEntry];
  v4 = [v3 objectForKeyedSubscript:@"Name"];
  v5 = v4;
  if (*(&self->super.super._tlvLength + 1))
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [NSString stringWithFormat:@"<%@: %@>", v4, v6];

  return v7;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationRequiredBackDeploy tlvType];
  v4 = *(&self->super.super._tlvLength + 1);
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationRequiredBackDeploy;
  v5 = [(UARPMetaDataTLV32BackDeploy *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

- (id)tlvValue
{
  v2 = *(&self->super.super._tlvLength + 1);
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationRequiredBackDeploy;
  v3 = [(UARPMetaDataTLV32BackDeploy *)&v5 tlvValue:v2];

  return v3;
}

+ (id)metaDataTableEntry
{
  v6[0] = @"Personalization Required";
  v5[0] = @"Name";
  v5[1] = @"Value";
  v2 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", +[UARPTLVPersonalizationRequiredBackDeploy tlvType]);
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
    unsignedLongValue = [v4 unsignedLongValue];

    [v5 setIsRequired:unsignedLongValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)tlvWithLength:(unint64_t)length value:(void *)value
{
  if (length == 4)
  {
    v5 = objc_opt_new();
    [v5 setIsRequired:uarpNtohl(*value)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end