@interface UARPTLVPersonalizationManifestSuffix
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)a3;
+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPTLVPersonalizationManifestSuffix)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setManifestSuffix:(id)a3;
@end

@implementation UARPTLVPersonalizationManifestSuffix

- (UARPTLVPersonalizationManifestSuffix)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationManifestSuffix;
  return [(UARPMetaDataTLVString *)&v3 init];
}

- (void)setManifestSuffix:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  manifestSuffix = v4->_manifestSuffix;
  v4->_manifestSuffix = v5;

  objc_sync_exit(v4);
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

+ (id)tlvFromPropertyListValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_new();
    [v4 setManifestSuffix:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = objc_opt_new();
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a4 length:a3 encoding:4];
  [v6 setManifestSuffix:v7];

  return v6;
}

@end