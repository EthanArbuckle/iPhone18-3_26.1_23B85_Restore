@interface UARPTLVPersonalizationFTABSubfileLongnameBackDeploy
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)a3;
+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPTLVPersonalizationFTABSubfileLongnameBackDeploy)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setLongname:(id)a3;
@end

@implementation UARPTLVPersonalizationFTABSubfileLongnameBackDeploy

- (UARPTLVPersonalizationFTABSubfileLongnameBackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationFTABSubfileLongnameBackDeploy;
  return [(UARPMetaDataTLVStringBackDeploy *)&v3 init];
}

- (void)setLongname:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 copy];
  v7 = *(&v5->super.super._tlvLength + 1);
  *(&v5->super.super._tlvLength + 1) = v6;

  objc_sync_exit(v5);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationFTABSubfileLongnameBackDeploy metaDataTableEntry];
  v4 = [v3 objectForKeyedSubscript:@"Name"];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v4, *(&self->super.super._tlvLength + 1)];

  return v5;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationFTABSubfileLongnameBackDeploy tlvType];
  v4 = *(&self->super.super._tlvLength + 1);
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationFTABSubfileLongnameBackDeploy;
  v5 = [(UARPMetaDataTLVStringBackDeploy *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

- (id)tlvValue
{
  v2 = *(&self->super.super._tlvLength + 1);
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationFTABSubfileLongnameBackDeploy;
  v3 = [(UARPMetaDataTLVStringBackDeploy *)&v5 tlvValue:v2];

  return v3;
}

+ (id)metaDataTableEntry
{
  v6[0] = @"Personalization FTAB Payload Longname";
  v5[0] = @"Name";
  v5[1] = @"Value";
  v2 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", +[UARPTLVPersonalizationFTABSubfileLongnameBackDeploy tlvType]);
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
    v4 = objc_opt_new();
    [v4 setLongname:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4
{
  v4 = strndup(a4, a3);
  v5 = objc_opt_new();
  v6 = [NSString stringWithUTF8String:v4];
  [v5 setLongname:v6];

  free(v4);

  return v5;
}

@end