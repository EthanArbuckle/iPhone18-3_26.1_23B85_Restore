@interface CAFSelectSettingNotificationEntry
- (CAFSelectSettingNotificationEntry)initWithDictionary:(id)dictionary;
- (CAFSelectSettingNotificationEntry)initWithSymbolColor:(unsigned __int8)color symbolName:(id)name userVisibleLabel:(id)label;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFSelectSettingNotificationEntry

- (CAFSelectSettingNotificationEntry)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = CAFSelectSettingNotificationEntry;
  v5 = [(CAFSelectSettingNotificationEntry *)&v15 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [dictionaryCopy objectForKey:@"symbolColor"];
    if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v5->_symbolColor = [v7 unsignedCharValue];
    objc_opt_class();
    v8 = [dictionaryCopy objectForKey:@"symbolName"];
    if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    symbolName = v5->_symbolName;
    v5->_symbolName = v9;

    objc_opt_class();
    v11 = [dictionaryCopy objectForKey:@"userVisibleLabel"];
    if (v11 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    userVisibleLabel = v5->_userVisibleLabel;
    v5->_userVisibleLabel = v12;
  }

  return v5;
}

- (CAFSelectSettingNotificationEntry)initWithSymbolColor:(unsigned __int8)color symbolName:(id)name userVisibleLabel:(id)label
{
  nameCopy = name;
  labelCopy = label;
  v14.receiver = self;
  v14.super_class = CAFSelectSettingNotificationEntry;
  v11 = [(CAFSelectSettingNotificationEntry *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_symbolColor = color;
    objc_storeStrong(&v11->_symbolName, name);
    objc_storeStrong(&v12->_userVisibleLabel, label);
  }

  return v12;
}

- (NSDictionary)dictionaryRepresentation
{
  v12[3] = *MEMORY[0x277D85DE8];
  v11[0] = @"symbolColor";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CAFSelectSettingNotificationEntry symbolColor](self, "symbolColor")}];
  v12[0] = v3;
  v11[1] = @"symbolName";
  symbolName = [(CAFSelectSettingNotificationEntry *)self symbolName];
  null = symbolName;
  if (!symbolName)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v12[1] = null;
  v11[2] = @"userVisibleLabel";
  userVisibleLabel = [(CAFSelectSettingNotificationEntry *)self userVisibleLabel];
  null2 = userVisibleLabel;
  if (!userVisibleLabel)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v12[2] = null2;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  if (!userVisibleLabel)
  {
  }

  if (!symbolName)
  {
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  symbolColor = [(CAFSelectSettingNotificationEntry *)self symbolColor];
  symbolName = [(CAFSelectSettingNotificationEntry *)self symbolName];
  userVisibleLabel = [(CAFSelectSettingNotificationEntry *)self userVisibleLabel];
  v8 = [v3 stringWithFormat:@"<%@: %p { %@: %hhu, %@: %@, %@: %@ }>", v4, self, @"symbolColor", symbolColor, @"symbolName", symbolName, @"userVisibleLabel", userVisibleLabel];

  return v8;
}

@end