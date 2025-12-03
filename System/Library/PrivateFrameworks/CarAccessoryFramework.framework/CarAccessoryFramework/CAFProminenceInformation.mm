@interface CAFProminenceInformation
- (CAFProminenceInformation)initWithColor:(unsigned __int8)color prominenceLevel:(unint64_t)level sortOrder:(unsigned __int8)order userVisibleLabel:(id)label userVisibleValue:(id)value;
- (CAFProminenceInformation)initWithDictionary:(id)dictionary;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFProminenceInformation

- (CAFProminenceInformation)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = CAFProminenceInformation;
  v5 = [(CAFProminenceInformation *)&v19 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [dictionaryCopy objectForKey:@"color"];
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
    v8 = [dictionaryCopy objectForKey:@"prominenceLevel"];
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
    v10 = [dictionaryCopy objectForKey:@"sortOrder"];
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
    v12 = [dictionaryCopy objectForKey:@"userVisibleLabel"];
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
    v15 = [dictionaryCopy objectForKey:@"userVisibleValue"];
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

- (CAFProminenceInformation)initWithColor:(unsigned __int8)color prominenceLevel:(unint64_t)level sortOrder:(unsigned __int8)order userVisibleLabel:(id)label userVisibleValue:(id)value
{
  labelCopy = label;
  valueCopy = value;
  v18.receiver = self;
  v18.super_class = CAFProminenceInformation;
  v15 = [(CAFProminenceInformation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_color = color;
    v15->_prominenceLevel = level;
    v15->_sortOrder = order;
    objc_storeStrong(&v15->_userVisibleLabel, label);
    objc_storeStrong(&v16->_userVisibleValue, value);
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
  userVisibleLabel = [(CAFProminenceInformation *)self userVisibleLabel];
  null = userVisibleLabel;
  if (!userVisibleLabel)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v14[3] = null;
  v13[4] = @"userVisibleValue";
  userVisibleValue = [(CAFProminenceInformation *)self userVisibleValue];
  null2 = userVisibleValue;
  if (!userVisibleValue)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v14[4] = null2;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:5];
  if (!userVisibleValue)
  {
  }

  if (!userVisibleLabel)
  {
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  color = [(CAFProminenceInformation *)self color];
  prominenceLevel = [(CAFProminenceInformation *)self prominenceLevel];
  sortOrder = [(CAFProminenceInformation *)self sortOrder];
  userVisibleLabel = [(CAFProminenceInformation *)self userVisibleLabel];
  userVisibleValue = [(CAFProminenceInformation *)self userVisibleValue];
  v10 = [v3 stringWithFormat:@"<%@: %p { %@: %hhu, %@: %llu, %@: %hhu, %@: %@, %@: %@ }>", v4, self, @"color", color, @"prominenceLevel", prominenceLevel, @"sortOrder", sortOrder, @"userVisibleLabel", userVisibleLabel, @"userVisibleValue", userVisibleValue];

  return v10;
}

@end