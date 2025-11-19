@interface UARPTLVPersonalizationNonce
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)a3;
+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPTLVPersonalizationNonce)init;
- (id)description;
- (id)generateTLV;
- (void)setNonce:(id)a3;
@end

@implementation UARPTLVPersonalizationNonce

- (UARPTLVPersonalizationNonce)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationNonce;
  return [(UARPMetaDataTLVData *)&v3 init];
}

- (void)setNonce:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  nonce = v4->_nonce;
  v4->_nonce = v5;

  objc_sync_exit(v4);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationNonce metaDataTableEntry];
  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 objectForKeyedSubscript:@"Name"];
  v6 = [v4 stringWithFormat:@"<%@: %@>", v5, self->_nonce];

  return v6;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationNonce tlvType];
  nonce = self->_nonce;
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationNonce;
  v5 = [(UARPMetaDataTLVData *)&v7 generateTLV:v3 tlvValue:nonce];

  return v5;
}

+ (id)metaDataTableEntry
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"Personalization Nonce";
  v6[0] = @"Name";
  v6[1] = @"Value";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{+[UARPTLVPersonalizationNonce tlvType](UARPTLVPersonalizationNonce, "tlvType")}];
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
    [v4 setNonce:v3];
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
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:a4 length:a3];
  [v6 setNonce:v7];

  return v6;
}

@end