@interface CAFSupportedColor
- (CAFSupportedColor)initWithColor:(id)a3;
- (CAFSupportedColor)initWithDictionary:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFSupportedColor

- (CAFSupportedColor)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CAFSupportedColor;
  v5 = [(CAFSupportedColor *)&v10 init];
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

    color = v5->_color;
    v5->_color = v7;
  }

  return v5;
}

- (CAFSupportedColor)initWithColor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CAFSupportedColor;
  v6 = [(CAFSupportedColor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_color, a3);
  }

  return v7;
}

- (NSDictionary)dictionaryRepresentation
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"color";
  v2 = [(CAFSupportedColor *)self color];
  v3 = v2;
  if (!v2)
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!v2)
  {
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CAFSupportedColor *)self color];
  v6 = [v3 stringWithFormat:@"<%@: %p { %@: %@ }>", v4, self, @"color", v5];

  return v6;
}

@end