@interface UARPTLVPersonalizationManifestSuffix
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationManifestSuffix)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setManifestSuffix:(id)suffix;
@end

@implementation UARPTLVPersonalizationManifestSuffix

- (UARPTLVPersonalizationManifestSuffix)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationManifestSuffix;
  return [(UARPMetaDataTLVString *)&v3 init];
}

- (void)setManifestSuffix:(id)suffix
{
  suffixCopy = suffix;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [suffixCopy copy];
  manifestSuffix = selfCopy->_manifestSuffix;
  selfCopy->_manifestSuffix = v5;

  objc_sync_exit(selfCopy);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationManifestSuffix metaDataTableEntry];
  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 objectForKeyedSubscript:@"Name"];
  v6 = [v4 stringWithFormat:@"<%@: %@>", v5, self->_manifestSuffix];

  return v6;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationManifestSuffix tlvType];
  manifestSuffix = self->_manifestSuffix;
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationManifestSuffix;
  v5 = [(UARPMetaDataTLVString *)&v7 generateTLV:v3 tlvValue:manifestSuffix];

  return v5;
}

- (id)tlvValue
{
  manifestSuffix = self->_manifestSuffix;
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationManifestSuffix;
  v3 = [(UARPMetaDataTLVString *)&v5 tlvValue:manifestSuffix];

  return v3;
}

+ (id)metaDataTableEntry
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"Personalization Manifest Suffix";
  v6[0] = @"Name";
  v6[1] = @"Value";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{+[UARPTLVPersonalizationManifestSuffix tlvType](UARPTLVPersonalizationManifestSuffix, "tlvType")}];
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
    [v4 setManifestSuffix:valueCopy];
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
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:value length:length encoding:4];
  [v6 setManifestSuffix:v7];

  return v6;
}

@end