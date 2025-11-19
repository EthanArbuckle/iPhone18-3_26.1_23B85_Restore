@interface UARPTLVPersonalizationBoardID
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)a3;
+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPTLVPersonalizationBoardID)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setBoardID:(unsigned int)a3;
@end

@implementation UARPTLVPersonalizationBoardID

- (UARPTLVPersonalizationBoardID)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationBoardID;
  return [(UARPMetaDataTLV32 *)&v3 init];
}

- (void)setBoardID:(unsigned int)a3
{
  obj = self;
  objc_sync_enter(obj);
  *(&obj->super.super._tlvLength + 1) = a3;
  objc_sync_exit(obj);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationBoardID metaDataTableEntry];
  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 objectForKeyedSubscript:@"Name"];
  v6 = [v4 stringWithFormat:@"<%@: 0x%08x>", v5, *(&self->super.super._tlvLength + 1)];

  return v6;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationBoardID tlvType];
  v4 = *(&self->super.super._tlvLength + 1);
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationBoardID;
  v5 = [(UARPMetaDataTLV32 *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

- (id)tlvValue
{
  v2 = *(&self->super.super._tlvLength + 1);
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationBoardID;
  v3 = [(UARPMetaDataTLV32 *)&v5 tlvValue:v2];

  return v3;
}

+ (id)metaDataTableEntry
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"Personalization Board ID";
  v6[0] = @"Name";
  v6[1] = @"Value";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{+[UARPTLVPersonalizationBoardID tlvType](UARPTLVPersonalizationBoardID, "tlvType")}];
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
    v5 = objc_opt_new();
    v6 = [v4 unsignedLongValue];

    [v5 setBoardID:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4
{
  if (a3 == 4)
  {
    v5 = objc_opt_new();
    [v5 setBoardID:uarpHtonl(*a4)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end