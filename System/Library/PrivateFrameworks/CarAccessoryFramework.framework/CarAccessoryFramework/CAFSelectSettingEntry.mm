@interface CAFSelectSettingEntry
- (CAFSelectSettingEntry)initWithDictionary:(id)dictionary;
- (CAFSelectSettingEntry)initWithDisabled:(BOOL)disabled symbolName:(id)name userVisibleDescription:(id)description userVisibleLabel:(id)label;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFSelectSettingEntry

- (CAFSelectSettingEntry)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = CAFSelectSettingEntry;
  v5 = [(CAFSelectSettingEntry *)&v18 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [dictionaryCopy objectForKey:@"disabled"];
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
    v11 = [dictionaryCopy objectForKey:@"userVisibleDescription"];
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
    v14 = [dictionaryCopy objectForKey:@"userVisibleLabel"];
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

- (CAFSelectSettingEntry)initWithDisabled:(BOOL)disabled symbolName:(id)name userVisibleDescription:(id)description userVisibleLabel:(id)label
{
  nameCopy = name;
  descriptionCopy = description;
  labelCopy = label;
  v17.receiver = self;
  v17.super_class = CAFSelectSettingEntry;
  v14 = [(CAFSelectSettingEntry *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_disabled = disabled;
    objc_storeStrong(&v14->_symbolName, name);
    objc_storeStrong(&v15->_userVisibleDescription, description);
    objc_storeStrong(&v15->_userVisibleLabel, label);
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
  symbolName = [(CAFSelectSettingEntry *)self symbolName];
  null = symbolName;
  if (!symbolName)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v14[1] = null;
  v13[2] = @"userVisibleDescription";
  userVisibleDescription = [(CAFSelectSettingEntry *)self userVisibleDescription];
  null2 = userVisibleDescription;
  if (!userVisibleDescription)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v14[2] = null2;
  v13[3] = @"userVisibleLabel";
  userVisibleLabel = [(CAFSelectSettingEntry *)self userVisibleLabel];
  null3 = userVisibleLabel;
  if (!userVisibleLabel)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v14[3] = null3;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];
  if (!userVisibleLabel)
  {
  }

  if (!userVisibleDescription)
  {
  }

  if (!symbolName)
  {
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  disabled = [(CAFSelectSettingEntry *)self disabled];
  symbolName = [(CAFSelectSettingEntry *)self symbolName];
  userVisibleDescription = [(CAFSelectSettingEntry *)self userVisibleDescription];
  userVisibleLabel = [(CAFSelectSettingEntry *)self userVisibleLabel];
  v9 = [v3 stringWithFormat:@"<%@: %p { %@: %d, %@: %@, %@: %@, %@: %@ }>", v4, self, @"disabled", disabled, @"symbolName", symbolName, @"userVisibleDescription", userVisibleDescription, @"userVisibleLabel", userVisibleLabel];

  return v9;
}

@end