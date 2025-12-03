@interface CAFEntry
- (CAFEntry)initWithDictionary:(id)dictionary;
- (CAFEntry)initWithSymbolName:(id)name userVisibleLabel:(id)label;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFEntry

- (CAFEntry)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = CAFEntry;
  v5 = [(CAFEntry *)&v13 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [dictionaryCopy objectForKey:@"symbolName"];
    if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    symbolName = v5->_symbolName;
    v5->_symbolName = v7;

    objc_opt_class();
    v9 = [dictionaryCopy objectForKey:@"userVisibleLabel"];
    if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    userVisibleLabel = v5->_userVisibleLabel;
    v5->_userVisibleLabel = v10;
  }

  return v5;
}

- (CAFEntry)initWithSymbolName:(id)name userVisibleLabel:(id)label
{
  nameCopy = name;
  labelCopy = label;
  v12.receiver = self;
  v12.super_class = CAFEntry;
  v9 = [(CAFEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_symbolName, name);
    objc_storeStrong(&v10->_userVisibleLabel, label);
  }

  return v10;
}

- (NSDictionary)dictionaryRepresentation
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"symbolName";
  symbolName = [(CAFEntry *)self symbolName];
  null = symbolName;
  if (!symbolName)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v10[1] = @"userVisibleLabel";
  v11[0] = null;
  userVisibleLabel = [(CAFEntry *)self userVisibleLabel];
  null2 = userVisibleLabel;
  if (!userVisibleLabel)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!userVisibleLabel)
  {
  }

  if (!symbolName)
  {
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  symbolName = [(CAFEntry *)self symbolName];
  userVisibleLabel = [(CAFEntry *)self userVisibleLabel];
  v7 = [v3 stringWithFormat:@"<%@: %p { %@: %@, %@: %@ }>", v4, self, @"symbolName", symbolName, @"userVisibleLabel", userVisibleLabel];

  return v7;
}

@end