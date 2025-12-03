@interface UARPTLVPersonalizationEnableMixMatch
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationEnableMixMatch)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setEnableMixMatch:(unsigned __int8)match;
@end

@implementation UARPTLVPersonalizationEnableMixMatch

- (UARPTLVPersonalizationEnableMixMatch)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationEnableMixMatch;
  return [(UARPMetaDataTLV8 *)&v3 init];
}

- (void)setEnableMixMatch:(unsigned __int8)match
{
  obj = self;
  objc_sync_enter(obj);
  *(&obj->super.super._tlvLength + 4) = match;
  objc_sync_exit(obj);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationEnableMixMatch metaDataTableEntry];
  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 objectForKeyedSubscript:@"Name"];
  v6 = v5;
  if (*(&self->super.super._tlvLength + 4))
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v4 stringWithFormat:@"<%@: %@>", v5, v7];

  return v8;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationEnableMixMatch tlvType];
  v4 = *(&self->super.super._tlvLength + 4);
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationEnableMixMatch;
  v5 = [(UARPMetaDataTLV8 *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

- (id)tlvValue
{
  v2 = *(&self->super.super._tlvLength + 4);
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationEnableMixMatch;
  v3 = [(UARPMetaDataTLV8 *)&v5 tlvValue:v2];

  return v3;
}

+ (id)metaDataTableEntry
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"Personalization Enable Mix Match";
  v6[0] = @"Name";
  v6[1] = @"Value";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{+[UARPTLVPersonalizationEnableMixMatch tlvType](UARPTLVPersonalizationEnableMixMatch, "tlvType")}];
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
    unsignedCharValue = [v4 unsignedCharValue];

    [v5 setEnableMixMatch:unsignedCharValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)tlvWithLength:(unint64_t)length value:(void *)value
{
  if (length == 1)
  {
    v5 = objc_opt_new();
    [v5 setEnableMixMatch:*value];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end