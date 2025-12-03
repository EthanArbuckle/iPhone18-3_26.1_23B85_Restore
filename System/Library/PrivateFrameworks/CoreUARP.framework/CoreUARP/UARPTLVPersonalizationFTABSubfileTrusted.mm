@interface UARPTLVPersonalizationFTABSubfileTrusted
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationFTABSubfileTrusted)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setTrusted:(unsigned __int16)trusted;
@end

@implementation UARPTLVPersonalizationFTABSubfileTrusted

- (UARPTLVPersonalizationFTABSubfileTrusted)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationFTABSubfileTrusted;
  return [(UARPMetaDataTLV16 *)&v3 init];
}

- (void)setTrusted:(unsigned __int16)trusted
{
  obj = self;
  objc_sync_enter(obj);
  *(&obj->super.super._tlvLength + 2) = trusted;
  objc_sync_exit(obj);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationFTABSubfileTrusted metaDataTableEntry];
  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 objectForKeyedSubscript:@"Name"];
  v6 = [v4 stringWithFormat:@"<%@: %u>", v5, *(&self->super.super._tlvLength + 2)];

  return v6;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationFTABSubfileTrusted tlvType];
  v4 = *(&self->super.super._tlvLength + 2);
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationFTABSubfileTrusted;
  v5 = [(UARPMetaDataTLV16 *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

- (id)tlvValue
{
  v2 = *(&self->super.super._tlvLength + 2);
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationFTABSubfileTrusted;
  v3 = [(UARPMetaDataTLV16 *)&v5 tlvValue:v2];

  return v3;
}

+ (id)metaDataTableEntry
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"Personalization FTAB Payload Trusted";
  v6[0] = @"Name";
  v6[1] = @"Value";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{+[UARPTLVPersonalizationFTABSubfileTrusted tlvType](UARPTLVPersonalizationFTABSubfileTrusted, "tlvType")}];
  v7[1] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v4 = *MEMORY[0x277D85DE8];

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

    [v5 setTrusted:unsignedShortValue];
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
    [v5 setTrusted:uarpHtons(*value)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end