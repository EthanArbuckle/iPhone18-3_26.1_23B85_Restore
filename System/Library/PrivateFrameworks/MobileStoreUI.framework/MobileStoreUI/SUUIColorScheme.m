@interface SUUIColorScheme
- (SUUIColorScheme)initWithCoder:(id)a3;
- (SUUIColorScheme)initWithColorSchemeDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUUIColorScheme

- (SUUIColorScheme)initWithColorSchemeDictionary:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = SUUIColorScheme;
  v5 = [(SUUIColorScheme *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = SUUIColorWithHTMLCode(v6);
      backgroundColor = v5->_backgroundColor;
      v5->_backgroundColor = v7;
    }

    v9 = [v4 objectForKey:@"primaryTextColor"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = SUUIColorWithHTMLCode(v9);
      primaryTextColor = v5->_primaryTextColor;
      v5->_primaryTextColor = v10;
    }

    v12 = [v4 objectForKey:@"titleTextColor"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = SUUIColorWithHTMLCode(v12);
      secondaryTextColor = v5->_secondaryTextColor;
      v5->_secondaryTextColor = v13;
    }

    v20 = 0.0;
    v21 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
    [(UIColor *)v5->_primaryTextColor getHue:&v21 saturation:&v20 brightness:&v19 alpha:&v18];
    v15 = [MEMORY[0x277D75348] colorWithHue:v21 saturation:v20 brightness:v19 + dbl_259FCAE30[v19 < 0.5] alpha:v18];
    highlightedTextColor = v5->_highlightedTextColor;
    v5->_highlightedTextColor = v15;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(UIColor *)self->_backgroundColor copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(UIColor *)self->_highlightedTextColor copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(UIColor *)self->_primaryTextColor copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(UIColor *)self->_secondaryTextColor copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (SUUIColorScheme)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SUUIColorScheme;
  v5 = [(SUUIColorScheme *)&v14 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"bgc"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v7;

    v9 = [v4 decodeObjectOfClass:v6 forKey:@"ptc"];
    primaryTextColor = v5->_primaryTextColor;
    v5->_primaryTextColor = v9;

    v11 = [v4 decodeObjectOfClass:v6 forKey:@"ttc"];
    secondaryTextColor = v5->_secondaryTextColor;
    v5->_secondaryTextColor = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  backgroundColor = self->_backgroundColor;
  v5 = a3;
  [v5 encodeObject:backgroundColor forKey:@"bgc"];
  [v5 encodeObject:self->_primaryTextColor forKey:@"ptc"];
  [v5 encodeObject:self->_secondaryTextColor forKey:@"ttc"];
}

@end