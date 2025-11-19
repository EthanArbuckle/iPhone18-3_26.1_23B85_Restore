@interface CAFEntry
- (CAFEntry)initWithDictionary:(id)a3;
- (CAFEntry)initWithSymbolName:(id)a3 userVisibleLabel:(id)a4;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFEntry

- (CAFEntry)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CAFEntry;
  v5 = [(CAFEntry *)&v13 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [v4 objectForKey:@"symbolName"];
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
    v9 = [v4 objectForKey:@"userVisibleLabel"];
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

- (CAFEntry)initWithSymbolName:(id)a3 userVisibleLabel:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CAFEntry;
  v9 = [(CAFEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_symbolName, a3);
    objc_storeStrong(&v10->_userVisibleLabel, a4);
  }

  return v10;
}

- (NSDictionary)dictionaryRepresentation
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"symbolName";
  v3 = [(CAFEntry *)self symbolName];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v10[1] = @"userVisibleLabel";
  v11[0] = v4;
  v5 = [(CAFEntry *)self userVisibleLabel];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CAFEntry *)self symbolName];
  v6 = [(CAFEntry *)self userVisibleLabel];
  v7 = [v3 stringWithFormat:@"<%@: %p { %@: %@, %@: %@ }>", v4, self, @"symbolName", v5, @"userVisibleLabel", v6];

  return v7;
}

@end