@interface UARPTLVPersonalizationPayloadTag
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)a3;
+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPTLVPersonalizationPayloadTag)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setTag:(id)a3;
@end

@implementation UARPTLVPersonalizationPayloadTag

- (UARPTLVPersonalizationPayloadTag)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationPayloadTag;
  return [(UARPMetaDataTLV *)&v3 init];
}

- (void)setTag:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  tag = v4->_tag;
  v4->_tag = v5;

  objc_sync_exit(v4);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationPayloadTag metaDataTableEntry];
  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 objectForKeyedSubscript:@"Name"];
  v6 = [v4 stringWithFormat:@"<%@: %@>", v5, self->_tag];

  return v6;
}

- (id)generateTLV
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v8 = uarpHtonl(+[UARPTLVPersonalizationPayloadTag tlvType]);
  [v3 appendBytes:&v8 length:4];
  v7 = uarpHtonl(4u);
  [v3 appendBytes:&v7 length:4];
  v4 = [(UARPTLVPersonalizationPayloadTag *)self tlvValue];
  [v3 appendData:v4];

  v5 = [MEMORY[0x277CBEA90] dataWithData:v3];

  return v5;
}

- (id)tlvValue
{
  v4 = [(UARPAssetTag *)self->_tag tag];
  v2 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v4 length:4];

  return v2;
}

+ (id)metaDataTableEntry
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"Personalization Payload Tag";
  v6[0] = @"Name";
  v6[1] = @"Value";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{+[UARPTLVPersonalizationPayloadTag tlvType](UARPTLVPersonalizationPayloadTag, "tlvType")}];
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
    if ([v4 length] == 4)
    {
      v5 = [v4 UTF8String];
      v6 = objc_opt_new();
      v7 = [[UARPAssetTag alloc] initWithChar1:*v5 char2:v5[1] char3:v5[2] char4:v5[3]];
      [v6 setTag:v7];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4
{
  if (a3 == 4)
  {
    v5 = objc_opt_new();
    v6 = [[UARPAssetTag alloc] initWithChar1:*a4 char2:*(a4 + 1) char3:*(a4 + 2) char4:*(a4 + 3)];
    [v5 setTag:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end