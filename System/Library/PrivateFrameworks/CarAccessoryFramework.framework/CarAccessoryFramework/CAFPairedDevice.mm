@interface CAFPairedDevice
- (CAFPairedDevice)initWithDictionary:(id)a3;
- (CAFPairedDevice)initWithIdentifier:(id)a3 name:(id)a4 sortOrder:(unsigned __int16)a5 state:(unsigned __int8)a6;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFPairedDevice

- (CAFPairedDevice)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CAFPairedDevice;
  v5 = [(CAFPairedDevice *)&v17 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [v4 objectForKey:@"identifier"];
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
    v9 = [v4 objectForKey:@"name"];
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
    v12 = [v4 objectForKey:@"sortOrder"];
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
    v14 = [v4 objectForKey:@"state"];
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

- (CAFPairedDevice)initWithIdentifier:(id)a3 name:(id)a4 sortOrder:(unsigned __int16)a5 state:(unsigned __int8)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = CAFPairedDevice;
  v13 = [(CAFPairedDevice *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, a3);
    objc_storeStrong(&v14->_name, a4);
    v14->_sortOrder = a5;
    v14->_state = a6;
  }

  return v14;
}

- (NSDictionary)dictionaryRepresentation
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12[0] = @"identifier";
  v3 = [(CAFPairedDevice *)self identifier];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v13[0] = v4;
  v12[1] = @"name";
  v5 = [(CAFPairedDevice *)self name];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v13[1] = v6;
  v12[2] = @"sortOrder";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[CAFPairedDevice sortOrder](self, "sortOrder")}];
  v13[2] = v7;
  v12[3] = @"state";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CAFPairedDevice state](self, "state")}];
  v13[3] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CAFPairedDevice *)self identifier];
  v6 = [(CAFPairedDevice *)self name];
  v7 = [v3 stringWithFormat:@"<%@: %p { %@: %@, %@: %@, %@: %hu, %@: %hhu }>", v4, self, @"identifier", v5, @"name", v6, @"sortOrder", -[CAFPairedDevice sortOrder](self, "sortOrder"), @"state", -[CAFPairedDevice state](self, "state")];

  return v7;
}

@end