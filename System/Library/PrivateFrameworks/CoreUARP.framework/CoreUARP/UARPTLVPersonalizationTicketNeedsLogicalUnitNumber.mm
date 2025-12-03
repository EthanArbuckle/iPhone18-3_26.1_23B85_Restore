@interface UARPTLVPersonalizationTicketNeedsLogicalUnitNumber
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationTicketNeedsLogicalUnitNumber)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setTicketNeedsLogicalUnitNumber:(unsigned __int8)number;
@end

@implementation UARPTLVPersonalizationTicketNeedsLogicalUnitNumber

- (UARPTLVPersonalizationTicketNeedsLogicalUnitNumber)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationTicketNeedsLogicalUnitNumber;
  return [(UARPMetaDataTLV8 *)&v3 init];
}

- (void)setTicketNeedsLogicalUnitNumber:(unsigned __int8)number
{
  obj = self;
  objc_sync_enter(obj);
  *(&obj->super.super._tlvLength + 4) = number;
  objc_sync_exit(obj);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationTicketNeedsLogicalUnitNumber metaDataTableEntry];
  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 objectForKeyedSubscript:@"Name"];
  v6 = v5;
  if (*(&self->super.super._tlvLength + 4))
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v4 stringWithFormat:@"<%@: %@>", v5, v7];

  return v8;
}

- (id)generateTLV
{
  v3 = +[UARPTLVPersonalizationTicketNeedsLogicalUnitNumber tlvType];
  v4 = *(&self->super.super._tlvLength + 4);
  v7.receiver = self;
  v7.super_class = UARPTLVPersonalizationTicketNeedsLogicalUnitNumber;
  v5 = [(UARPMetaDataTLV8 *)&v7 generateTLV:v3 tlvValue:v4];

  return v5;
}

- (id)tlvValue
{
  v2 = *(&self->super.super._tlvLength + 4);
  v5.receiver = self;
  v5.super_class = UARPTLVPersonalizationTicketNeedsLogicalUnitNumber;
  v3 = [(UARPMetaDataTLV8 *)&v5 tlvValue:v2];

  return v3;
}

+ (id)metaDataTableEntry
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"Personalization Ticket Needs Logical Unit Number";
  v6[0] = @"Name";
  v6[1] = @"Value";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{+[UARPTLVPersonalizationTicketNeedsLogicalUnitNumber tlvType](UARPTLVPersonalizationTicketNeedsLogicalUnitNumber, "tlvType")}];
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
    unsignedCharValue = [v4 unsignedCharValue];

    [v5 setTicketNeedsLogicalUnitNumber:unsignedCharValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)tlvWithLength:(unint64_t)length value:(void *)value
{
  if (length == 1)
  {
    v5 = objc_opt_new();
    [v5 setTicketNeedsLogicalUnitNumber:*value];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end