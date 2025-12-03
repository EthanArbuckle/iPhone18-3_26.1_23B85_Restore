@interface UARPTLVPersonalizationNonceHash
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationNonceHash)init;
- (id)description;
- (id)generateTLV;
- (void)setNonceHash:(id)hash;
@end

@implementation UARPTLVPersonalizationNonceHash

- (UARPTLVPersonalizationNonceHash)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationNonceHash;
  return [(UARPMetaDataTLVData *)&v3 init];
}

- (void)setNonceHash:(id)hash
{
  hashCopy = hash;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [hashCopy copy];
  nonceHash = selfCopy->_nonceHash;
  selfCopy->_nonceHash = v5;

  objc_sync_exit(selfCopy);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationNonceHash metaDataTableEntry];
  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 objectForKeyedSubscript:@"Name"];
  v6 = [v4 stringWithFormat:@"<%@: %@>", v5, self->_nonceHash];

  return v6;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationNonceHash tlvType];
  nonceHash = self->_nonceHash;
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationNonceHash;
  v5 = [(UARPMetaDataTLVData *)&v7 generateTLV:v3 tlvValue:nonceHash];

  return v5;
}

+ (id)metaDataTableEntry
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"Personalization Nonce Hash";
  v6[0] = @"Name";
  v6[1] = @"Value";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{+[UARPTLVPersonalizationNonceHash tlvType](UARPTLVPersonalizationNonceHash, "tlvType")}];
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
    [v4 setNonceHash:valueCopy];
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
  [v6 setNonceHash:v7];

  return v6;
}

@end