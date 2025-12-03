@interface UARPTLVPersonalizationECID
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationECID)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setEcID:(unint64_t)d;
@end

@implementation UARPTLVPersonalizationECID

- (UARPTLVPersonalizationECID)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationECID;
  return [(UARPMetaDataTLV64 *)&v3 init];
}

- (void)setEcID:(unint64_t)d
{
  obj = self;
  objc_sync_enter(obj);
  obj->_ecID = d;
  objc_sync_exit(obj);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationECID metaDataTableEntry];
  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 objectForKeyedSubscript:@"Name"];
  v6 = [v4 stringWithFormat:@"<%@: 0x%016llx>", v5, self->_ecID];

  return v6;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationECID tlvType];
  ecID = self->_ecID;
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationECID;
  v5 = [(UARPMetaDataTLV64 *)&v7 generateTLV:v3 tlvValue:ecID];

  return v5;
}

- (id)tlvValue
{
  ecID = self->_ecID;
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationECID;
  v3 = [(UARPMetaDataTLV64 *)&v5 tlvValue:ecID];

  return v3;
}

+ (id)metaDataTableEntry
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"Personalization ECID";
  v6[0] = @"Name";
  v6[1] = @"Value";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{+[UARPTLVPersonalizationECID tlvType](UARPTLVPersonalizationECID, "tlvType")}];
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
    unsignedLongLongValue = [v4 unsignedLongLongValue];

    [v5 setEcID:unsignedLongLongValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)tlvWithLength:(unint64_t)length value:(void *)value
{
  if (length == 8)
  {
    v5 = objc_opt_new();
    [v5 setEcID:uarpHtonll(*value)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end