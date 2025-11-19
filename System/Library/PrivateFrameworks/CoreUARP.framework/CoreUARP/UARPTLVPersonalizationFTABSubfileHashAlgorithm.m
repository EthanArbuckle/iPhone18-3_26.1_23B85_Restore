@interface UARPTLVPersonalizationFTABSubfileHashAlgorithm
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)a3;
+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPTLVPersonalizationFTABSubfileHashAlgorithm)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setHashAlgorithm:(unsigned __int16)a3;
@end

@implementation UARPTLVPersonalizationFTABSubfileHashAlgorithm

- (UARPTLVPersonalizationFTABSubfileHashAlgorithm)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationFTABSubfileHashAlgorithm;
  return [(UARPMetaDataTLV16 *)&v3 init];
}

- (void)setHashAlgorithm:(unsigned __int16)a3
{
  obj = self;
  objc_sync_enter(obj);
  *(&obj->super.super._tlvLength + 2) = a3;
  objc_sync_exit(obj);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationFTABSubfileHashAlgorithm metaDataTableEntry];
  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 objectForKeyedSubscript:@"Name"];
  v6 = [v4 stringWithFormat:@"<%@: %u>", v5, *(&self->super.super._tlvLength + 2)];

  return v6;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationFTABSubfileHashAlgorithm tlvType];
  v4 = *(&self->super.super._tlvLength + 2);
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationFTABSubfileHashAlgorithm;
  v5 = [(UARPMetaDataTLV16 *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

- (id)tlvValue
{
  v2 = *(&self->super.super._tlvLength + 2);
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationFTABSubfileHashAlgorithm;
  v3 = [(UARPMetaDataTLV16 *)&v5 tlvValue:v2];

  return v3;
}

+ (id)metaDataTableEntry
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = &unk_2859CAC88;
  v6[0] = @"Name";
  v6[1] = @"Value";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{+[UARPTLVPersonalizationFTABSubfileHashAlgorithm tlvType](UARPTLVPersonalizationFTABSubfileHashAlgorithm, "tlvType")}];
  v7[1] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v4 = *MEMORY[0x277D85DE8];

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

    [v5 setHashAlgorithm:v6];
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
    [v5 setHashAlgorithm:uarpHtons(*a4)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end