@interface UARPTLVPersonalizationManifestPrefix
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationManifestPrefix)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setTicketPrefix:(id)prefix;
@end

@implementation UARPTLVPersonalizationManifestPrefix

- (UARPTLVPersonalizationManifestPrefix)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationManifestPrefix;
  return [(UARPMetaDataTLVString *)&v3 init];
}

- (void)setTicketPrefix:(id)prefix
{
  prefixCopy = prefix;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [prefixCopy copy];
  ticketPrefix = selfCopy->_ticketPrefix;
  selfCopy->_ticketPrefix = v5;

  objc_sync_exit(selfCopy);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationManifestPrefix metaDataTableEntry];
  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 objectForKeyedSubscript:@"Name"];
  v6 = [v4 stringWithFormat:@"<%@: %@>", v5, self->_ticketPrefix];

  return v6;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationManifestPrefix tlvType];
  ticketPrefix = self->_ticketPrefix;
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationManifestPrefix;
  v5 = [(UARPMetaDataTLVString *)&v7 generateTLV:v3 tlvValue:ticketPrefix];

  return v5;
}

- (id)tlvValue
{
  ticketPrefix = self->_ticketPrefix;
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationManifestPrefix;
  v3 = [(UARPMetaDataTLVString *)&v5 tlvValue:ticketPrefix];

  return v3;
}

+ (id)metaDataTableEntry
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"Personalization Manifest Prefix";
  v6[0] = @"Name";
  v6[1] = @"Value";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{+[UARPTLVPersonalizationManifestPrefix tlvType](UARPTLVPersonalizationManifestPrefix, "tlvType")}];
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
    [v4 setTicketPrefix:valueCopy];
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
  [v6 setTicketPrefix:v7];

  return v6;
}

@end