@interface CAFSymbolImageWithColor
- (CAFSymbolImageWithColor)initWithColor:(unsigned __int8)color name:(id)name;
- (CAFSymbolImageWithColor)initWithDictionary:(id)dictionary;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFSymbolImageWithColor

- (CAFSymbolImageWithColor)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = CAFSymbolImageWithColor;
  v5 = [(CAFSymbolImageWithColor *)&v12 init];
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
    v8 = [dictionaryCopy objectForKey:@"name"];
    if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    name = v5->_name;
    v5->_name = v9;
  }

  return v5;
}

- (CAFSymbolImageWithColor)initWithColor:(unsigned __int8)color name:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = CAFSymbolImageWithColor;
  v8 = [(CAFSymbolImageWithColor *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_color = color;
    objc_storeStrong(&v8->_name, name);
  }

  return v9;
}

- (NSDictionary)dictionaryRepresentation
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"color";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CAFSymbolImageWithColor color](self, "color")}];
  v9[1] = @"name";
  v10[0] = v3;
  name = [(CAFSymbolImageWithColor *)self name];
  null = name;
  if (!name)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v10[1] = null;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  if (!name)
  {
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  color = [(CAFSymbolImageWithColor *)self color];
  name = [(CAFSymbolImageWithColor *)self name];
  v7 = [v3 stringWithFormat:@"<%@: %p { %@: %hhu, %@: %@ }>", v4, self, @"color", color, @"name", name];

  return v7;
}

@end