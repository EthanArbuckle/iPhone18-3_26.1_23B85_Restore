@interface UARPTLVRequiredPersonalizationOption
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVRequiredPersonalizationOption)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setTssOption:(unsigned int)option;
@end

@implementation UARPTLVRequiredPersonalizationOption

- (UARPTLVRequiredPersonalizationOption)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVRequiredPersonalizationOption;
  return [(UARPMetaDataTLV32 *)&v3 init];
}

- (void)setTssOption:(unsigned int)option
{
  obj = self;
  objc_sync_enter(obj);
  *(&obj->super.super._tlvLength + 1) = option;
  objc_sync_exit(obj);
}

- (id)description
{
  v3 = +[UARPTLVRequiredPersonalizationOption metaDataTableEntry];
  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 objectForKeyedSubscript:@"Name"];
  v6 = [UARPMetaDataTLV tlvTypeName:*(&self->super.super._tlvLength + 1)];
  v7 = [v4 stringWithFormat:@"<%@: %@>", v5, v6];

  return v7;
}

- (id)generateTLV
{
  v3 = +[UARPTLVRequiredPersonalizationOption tlvType];
  v4 = *(&self->super.super._tlvLength + 1);
  v7.receiver = self;
  v7.super_class = UARPTLVRequiredPersonalizationOption;
  v5 = [(UARPMetaDataTLV32 *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

- (id)tlvValue
{
  v2 = *(&self->super.super._tlvLength + 1);
  v5.receiver = self;
  v5.super_class = UARPTLVRequiredPersonalizationOption;
  v3 = [(UARPMetaDataTLV32 *)&v5 tlvValue:v2];

  return v3;
}

+ (id)metaDataTableEntry
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"Required Personalization Option";
  v6[0] = @"Name";
  v6[1] = @"Value";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{+[UARPTLVRequiredPersonalizationOption tlvType](UARPTLVRequiredPersonalizationOption, "tlvType")}];
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
    unsignedLongValue = [v4 unsignedLongValue];

    [v5 setTssOption:unsignedLongValue];
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
    [v5 setTssOption:uarpHtonl(*value)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end