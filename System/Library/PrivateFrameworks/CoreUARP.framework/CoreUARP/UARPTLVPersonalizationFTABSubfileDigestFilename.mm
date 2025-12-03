@interface UARPTLVPersonalizationFTABSubfileDigestFilename
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationFTABSubfileDigestFilename)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setFilename:(id)filename;
@end

@implementation UARPTLVPersonalizationFTABSubfileDigestFilename

- (UARPTLVPersonalizationFTABSubfileDigestFilename)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationFTABSubfileDigestFilename;
  return [(UARPMetaDataTLVString *)&v3 init];
}

- (void)setFilename:(id)filename
{
  filenameCopy = filename;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [filenameCopy copy];
  filename = selfCopy->_filename;
  selfCopy->_filename = v5;

  objc_sync_exit(selfCopy);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationFTABSubfileDigestFilename metaDataTableEntry];
  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 objectForKeyedSubscript:@"Name"];
  v6 = [v4 stringWithFormat:@"<%@: %@>", v5, self->_filename];

  return v6;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationFTABSubfileDigestFilename tlvType];
  filename = self->_filename;
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationFTABSubfileDigestFilename;
  v5 = [(UARPMetaDataTLVString *)&v7 generateTLV:v3 tlvValue:filename];

  return v5;
}

- (id)tlvValue
{
  filename = self->_filename;
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationFTABSubfileDigestFilename;
  v3 = [(UARPMetaDataTLVString *)&v5 tlvValue:filename];

  return v3;
}

+ (id)metaDataTableEntry
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = &unk_2859CAC70;
  v6[0] = @"Name";
  v6[1] = @"Value";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{+[UARPTLVPersonalizationFTABSubfileDigestFilename tlvType](UARPTLVPersonalizationFTABSubfileDigestFilename, "tlvType")}];
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
    [v4 setFilename:valueCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)tlvWithLength:(unint64_t)length value:(void *)value
{
  v4 = strndup(value, length);
  v5 = objc_opt_new();
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
  [v5 setFilename:v6];

  free(v4);

  return v5;
}

@end