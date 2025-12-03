@interface UARPTLVPersonalizationECIDData
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationECIDData)init;
- (id)description;
- (id)generateTLV;
- (void)setEcID:(id)d;
@end

@implementation UARPTLVPersonalizationECIDData

- (UARPTLVPersonalizationECIDData)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationECIDData;
  return [(UARPMetaDataTLVData *)&v3 init];
}

- (void)setEcID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [dCopy copy];
  ecID = selfCopy->_ecID;
  selfCopy->_ecID = v5;

  objc_sync_exit(selfCopy);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationECIDData metaDataTableEntry];
  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 objectForKeyedSubscript:@"Name"];
  v6 = [v4 stringWithFormat:@"<%@: %@>", v5, self->_ecID];

  return v6;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationECIDData tlvType];
  ecID = self->_ecID;
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationECIDData;
  v5 = [(UARPMetaDataTLVData *)&v7 generateTLV:v3 tlvValue:ecID];

  return v5;
}

+ (id)metaDataTableEntry
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"Personalization ECID Data";
  v6[0] = @"Name";
  v6[1] = @"Value";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{+[UARPTLVPersonalizationECIDData tlvType](UARPTLVPersonalizationECIDData, "tlvType")}];
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
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:value length:length];
  [v6 setEcID:v7];

  return v6;
}

@end