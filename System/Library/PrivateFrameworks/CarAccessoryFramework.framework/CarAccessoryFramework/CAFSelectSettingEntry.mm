@interface CAFSelectSettingEntry
- (CAFSelectSettingEntry)initWithDictionary:(id)a3;
- (CAFSelectSettingEntry)initWithDisabled:(BOOL)a3 symbolName:(id)a4 userVisibleDescription:(id)a5 userVisibleLabel:(id)a6;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFSelectSettingEntry

- (CAFSelectSettingEntry)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CAFSelectSettingEntry;
  v5 = [(CAFSelectSettingEntry *)&v18 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [v4 objectForKey:@"disabled"];
    if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v5->_disabled = [v7 BOOLValue];
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
    v11 = [v4 objectForKey:@"userVisibleDescription"];
    if (v11 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    userVisibleDescription = v5->_userVisibleDescription;
    v5->_userVisibleDescription = v12;

    objc_opt_class();
    v14 = [v4 objectForKey:@"userVisibleLabel"];
    if (v14 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    userVisibleLabel = v5->_userVisibleLabel;
    v5->_userVisibleLabel = v15;
  }

  return v5;
}

- (CAFSelectSettingEntry)initWithDisabled:(BOOL)a3 symbolName:(id)a4 userVisibleDescription:(id)a5 userVisibleLabel:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = CAFSelectSettingEntry;
  v14 = [(CAFSelectSettingEntry *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_disabled = a3;
    objc_storeStrong(&v14->_symbolName, a4);
    objc_storeStrong(&v15->_userVisibleDescription, a5);
    objc_storeStrong(&v15->_userVisibleLabel, a6);
  }

  return v15;
}

- (NSDictionary)dictionaryRepresentation
{
  v14[4] = *MEMORY[0x277D85DE8];
  v13[0] = @"disabled";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[CAFSelectSettingEntry disabled](self, "disabled")}];
  v14[0] = v3;
  v13[1] = @"symbolName";
  v4 = [(CAFSelectSettingEntry *)self symbolName];
  v5 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v14[1] = v5;
  v13[2] = @"userVisibleDescription";
  v6 = [(CAFSelectSettingEntry *)self userVisibleDescription];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x277CBEB68] null];
  }

  v14[2] = v7;
  v13[3] = @"userVisibleLabel";
  v8 = [(CAFSelectSettingEntry *)self userVisibleLabel];
  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x277CBEB68] null];
  }

  v14[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];
  if (!v8)
  {
  }

  if (!v6)
  {
  }

  if (!v4)
  {
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CAFSelectSettingEntry *)self disabled];
  v6 = [(CAFSelectSettingEntry *)self symbolName];
  v7 = [(CAFSelectSettingEntry *)self userVisibleDescription];
  v8 = [(CAFSelectSettingEntry *)self userVisibleLabel];
  v9 = [v3 stringWithFormat:@"<%@: %p { %@: %d, %@: %@, %@: %@, %@: %@ }>", v4, self, @"disabled", v5, @"symbolName", v6, @"userVisibleDescription", v7, @"userVisibleLabel", v8];

  return v9;
}

@end