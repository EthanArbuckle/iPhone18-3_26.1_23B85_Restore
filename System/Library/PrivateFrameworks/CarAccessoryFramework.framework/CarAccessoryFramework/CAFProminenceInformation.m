@interface CAFProminenceInformation
- (CAFProminenceInformation)initWithColor:(unsigned __int8)a3 prominenceLevel:(unint64_t)a4 sortOrder:(unsigned __int8)a5 userVisibleLabel:(id)a6 userVisibleValue:(id)a7;
- (CAFProminenceInformation)initWithDictionary:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFProminenceInformation

- (CAFProminenceInformation)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CAFProminenceInformation;
  v5 = [(CAFProminenceInformation *)&v19 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [v4 objectForKey:@"color"];
    if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v5->_color = [v7 unsignedCharValue];
    objc_opt_class();
    v8 = [v4 objectForKey:@"prominenceLevel"];
    if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v5->_prominenceLevel = [v9 unsignedLongLongValue];
    objc_opt_class();
    v10 = [v4 objectForKey:@"sortOrder"];
    if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v5->_sortOrder = [v11 unsignedCharValue];
    objc_opt_class();
    v12 = [v4 objectForKey:@"userVisibleLabel"];
    if (v12 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    userVisibleLabel = v5->_userVisibleLabel;
    v5->_userVisibleLabel = v13;

    objc_opt_class();
    v15 = [v4 objectForKey:@"userVisibleValue"];
    if (v15 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    userVisibleValue = v5->_userVisibleValue;
    v5->_userVisibleValue = v16;
  }

  return v5;
}

- (CAFProminenceInformation)initWithColor:(unsigned __int8)a3 prominenceLevel:(unint64_t)a4 sortOrder:(unsigned __int8)a5 userVisibleLabel:(id)a6 userVisibleValue:(id)a7
{
  v13 = a6;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = CAFProminenceInformation;
  v15 = [(CAFProminenceInformation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_color = a3;
    v15->_prominenceLevel = a4;
    v15->_sortOrder = a5;
    objc_storeStrong(&v15->_userVisibleLabel, a6);
    objc_storeStrong(&v16->_userVisibleValue, a7);
  }

  return v16;
}

- (NSDictionary)dictionaryRepresentation
{
  v14[5] = *MEMORY[0x277D85DE8];
  v13[0] = @"color";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CAFProminenceInformation color](self, "color")}];
  v14[0] = v3;
  v13[1] = @"prominenceLevel";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[CAFProminenceInformation prominenceLevel](self, "prominenceLevel")}];
  v14[1] = v4;
  v13[2] = @"sortOrder";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CAFProminenceInformation sortOrder](self, "sortOrder")}];
  v14[2] = v5;
  v13[3] = @"userVisibleLabel";
  v6 = [(CAFProminenceInformation *)self userVisibleLabel];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x277CBEB68] null];
  }

  v14[3] = v7;
  v13[4] = @"userVisibleValue";
  v8 = [(CAFProminenceInformation *)self userVisibleValue];
  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x277CBEB68] null];
  }

  v14[4] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:5];
  if (!v8)
  {
  }

  if (!v6)
  {
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CAFProminenceInformation *)self color];
  v6 = [(CAFProminenceInformation *)self prominenceLevel];
  v7 = [(CAFProminenceInformation *)self sortOrder];
  v8 = [(CAFProminenceInformation *)self userVisibleLabel];
  v9 = [(CAFProminenceInformation *)self userVisibleValue];
  v10 = [v3 stringWithFormat:@"<%@: %p { %@: %hhu, %@: %llu, %@: %hhu, %@: %@, %@: %@ }>", v4, self, @"color", v5, @"prominenceLevel", v6, @"sortOrder", v7, @"userVisibleLabel", v8, @"userVisibleValue", v9];

  return v10;
}

@end