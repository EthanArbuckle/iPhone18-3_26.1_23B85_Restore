@interface CAFSupportedColor
- (CAFSupportedColor)initWithColor:(id)color;
- (CAFSupportedColor)initWithDictionary:(id)dictionary;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFSupportedColor

- (CAFSupportedColor)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = CAFSupportedColor;
  v5 = [(CAFSupportedColor *)&v10 init];
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

    color = v5->_color;
    v5->_color = v7;
  }

  return v5;
}

- (CAFSupportedColor)initWithColor:(id)color
{
  colorCopy = color;
  v9.receiver = self;
  v9.super_class = CAFSupportedColor;
  v6 = [(CAFSupportedColor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_color, color);
  }

  return v7;
}

- (NSDictionary)dictionaryRepresentation
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"color";
  color = [(CAFSupportedColor *)self color];
  null = color;
  if (!color)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v8[0] = null;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!color)
  {
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  color = [(CAFSupportedColor *)self color];
  v6 = [v3 stringWithFormat:@"<%@: %p { %@: %@ }>", v4, self, @"color", color];

  return v6;
}

@end