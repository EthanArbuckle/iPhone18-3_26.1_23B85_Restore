@interface UARPTLVPersonalizationFTABSubfileLongname
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationFTABSubfileLongname)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setLongname:(id)longname;
@end

@implementation UARPTLVPersonalizationFTABSubfileLongname

- (UARPTLVPersonalizationFTABSubfileLongname)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationFTABSubfileLongname;
  return [(UARPMetaDataTLVString *)&v3 init];
}

- (void)setLongname:(id)longname
{
  longnameCopy = longname;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [longnameCopy copy];
  longname = selfCopy->_longname;
  selfCopy->_longname = v5;

  objc_sync_exit(selfCopy);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationFTABSubfileLongname metaDataTableEntry];
  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 objectForKeyedSubscript:@"Name"];
  v6 = [v4 stringWithFormat:@"<%@: %@>", v5, self->_longname];

  return v6;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationFTABSubfileLongname tlvType];
  longname = self->_longname;
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationFTABSubfileLongname;
  v5 = [(UARPMetaDataTLVString *)&v7 generateTLV:v3 tlvValue:longname];

  return v5;
}

- (id)tlvValue
{
  longname = self->_longname;
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationFTABSubfileLongname;
  v3 = [(UARPMetaDataTLVString *)&v5 tlvValue:longname];

  return v3;
}

+ (id)metaDataTableEntry
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"Personalization FTAB Payload Longname";
  v6[0] = @"Name";
  v6[1] = @"Value";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{+[UARPTLVPersonalizationFTABSubfileLongname tlvType](UARPTLVPersonalizationFTABSubfileLongname, "tlvType")}];
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
    [v4 setLongname:valueCopy];
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
  [v5 setLongname:v6];

  free(v4);

  return v5;
}

@end