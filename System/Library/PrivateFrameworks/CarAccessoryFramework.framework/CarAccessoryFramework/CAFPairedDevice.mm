@interface CAFPairedDevice
- (CAFPairedDevice)initWithDictionary:(id)dictionary;
- (CAFPairedDevice)initWithIdentifier:(id)identifier name:(id)name sortOrder:(unsigned __int16)order state:(unsigned __int8)state;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFPairedDevice

- (CAFPairedDevice)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = CAFPairedDevice;
  v5 = [(CAFPairedDevice *)&v17 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [dictionaryCopy objectForKey:@"identifier"];
    if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    identifier = v5->_identifier;
    v5->_identifier = v7;

    objc_opt_class();
    v9 = [dictionaryCopy objectForKey:@"name"];
    if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    name = v5->_name;
    v5->_name = v10;

    objc_opt_class();
    v12 = [dictionaryCopy objectForKey:@"sortOrder"];
    if (v12 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v5->_sortOrder = [v13 unsignedShortValue];
    objc_opt_class();
    v14 = [dictionaryCopy objectForKey:@"state"];
    if (v14 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v5->_state = [v15 unsignedCharValue];
  }

  return v5;
}

- (CAFPairedDevice)initWithIdentifier:(id)identifier name:(id)name sortOrder:(unsigned __int16)order state:(unsigned __int8)state
{
  identifierCopy = identifier;
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = CAFPairedDevice;
  v13 = [(CAFPairedDevice *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, identifier);
    objc_storeStrong(&v14->_name, name);
    v14->_sortOrder = order;
    v14->_state = state;
  }

  return v14;
}

- (NSDictionary)dictionaryRepresentation
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12[0] = @"identifier";
  identifier = [(CAFPairedDevice *)self identifier];
  null = identifier;
  if (!identifier)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v13[0] = null;
  v12[1] = @"name";
  name = [(CAFPairedDevice *)self name];
  null2 = name;
  if (!name)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v13[1] = null2;
  v12[2] = @"sortOrder";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[CAFPairedDevice sortOrder](self, "sortOrder")}];
  v13[2] = v7;
  v12[3] = @"state";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CAFPairedDevice state](self, "state")}];
  v13[3] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];

  if (!name)
  {
  }

  if (!identifier)
  {
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(CAFPairedDevice *)self identifier];
  name = [(CAFPairedDevice *)self name];
  v7 = [v3 stringWithFormat:@"<%@: %p { %@: %@, %@: %@, %@: %hu, %@: %hhu }>", v4, self, @"identifier", identifier, @"name", name, @"sortOrder", -[CAFPairedDevice sortOrder](self, "sortOrder"), @"state", -[CAFPairedDevice state](self, "state")];

  return v7;
}

@end