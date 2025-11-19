@interface CAFSelectSettingNotificationEntry
- (CAFSelectSettingNotificationEntry)initWithDictionary:(id)a3;
- (CAFSelectSettingNotificationEntry)initWithSymbolColor:(unsigned __int8)a3 symbolName:(id)a4 userVisibleLabel:(id)a5;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFSelectSettingNotificationEntry

- (CAFSelectSettingNotificationEntry)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CAFSelectSettingNotificationEntry;
  v5 = [(CAFSelectSettingNotificationEntry *)&v15 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [v4 objectForKey:@"symbolColor"];
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
    v8 = [v4 objectForKey:@"symbolName"];
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
    v11 = [v4 objectForKey:@"userVisibleLabel"];
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

- (CAFSelectSettingNotificationEntry)initWithSymbolColor:(unsigned __int8)a3 symbolName:(id)a4 userVisibleLabel:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CAFSelectSettingNotificationEntry;
  v11 = [(CAFSelectSettingNotificationEntry *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_symbolColor = a3;
    objc_storeStrong(&v11->_symbolName, a4);
    objc_storeStrong(&v12->_userVisibleLabel, a5);
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
  v4 = [(CAFSelectSettingNotificationEntry *)self symbolName];
  v5 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v12[1] = v5;
  v11[2] = @"userVisibleLabel";
  v6 = [(CAFSelectSettingNotificationEntry *)self userVisibleLabel];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x277CBEB68] null];
  }

  v12[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  if (!v6)
  {
  }

  if (!v4)
  {
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CAFSelectSettingNotificationEntry *)self symbolColor];
  v6 = [(CAFSelectSettingNotificationEntry *)self symbolName];
  v7 = [(CAFSelectSettingNotificationEntry *)self userVisibleLabel];
  v8 = [v3 stringWithFormat:@"<%@: %p { %@: %hhu, %@: %@, %@: %@ }>", v4, self, @"symbolColor", v5, @"symbolName", v6, @"userVisibleLabel", v7];

  return v8;
}

@end