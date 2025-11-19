@interface CAFAppLink
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAppLink:(id)a3;
- (CAFAppLink)initWithCoder:(id)a3;
- (CAFAppLink)initWithIdentifier:(id)a3 title:(id)a4 contentURLAction:(id)a5 symbolNameAndColor:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CAFAppLink

- (CAFAppLink)initWithIdentifier:(id)a3 title:(id)a4 contentURLAction:(id)a5 symbolNameAndColor:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CAFAppLink;
  v15 = [(CAFAppLink *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, a3);
    objc_storeStrong(&v16->_contentURLAction, a5);
    objc_storeStrong(&v16->_title, a4);
    objc_storeStrong(&v16->_symbolNameAndColor, a6);
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CAFAppLink;
  v4 = [(CAFAppLink *)&v11 description];
  v5 = [(CAFAppLink *)self identifier];
  v6 = [(CAFAppLink *)self contentURLAction];
  v7 = [(CAFAppLink *)self title];
  v8 = [(CAFAppLink *)self symbolNameAndColor];
  v9 = [v3 stringWithFormat:@"%@: identifier: %@, contentURLAction: %@, title: %@, symbolNameAndColor: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CAFAppLink *)self identifier];
  [v4 encodeObject:v5 forKey:@"kCAFAppLinksIdentifierKey"];

  v6 = [(CAFAppLink *)self contentURLAction];
  [v4 encodeObject:v6 forKey:@"kCAFAppLinksContentURLKey"];

  v7 = [(CAFAppLink *)self title];
  [v4 encodeObject:v7 forKey:@"kCAFAppLinksTitleKey"];

  v9 = [(CAFAppLink *)self symbolNameAndColor];
  v8 = [v9 dictionaryRepresentation];
  [v4 encodeObject:v8 forKey:@"kCAFAppLinksSymbolNameAndColorKey"];
}

- (CAFAppLink)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CAFAppLink;
  v5 = [(CAFAppLink *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCAFAppLinksIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCAFAppLinksContentURLKey"];
    contentURLAction = v5->_contentURLAction;
    v5->_contentURLAction = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCAFAppLinksTitleKey"];
    title = v5->_title;
    v5->_title = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"kCAFAppLinksSymbolNameAndColorKey"];

    if (v16)
    {
      v17 = [[CAFSymbolImageWithColor alloc] initWithDictionary:v16];
      symbolNameAndColor = v5->_symbolNameAndColor;
      v5->_symbolNameAndColor = v17;
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CAFAppLink *)self isEqualToAppLink:v4];

  return v5;
}

- (BOOL)isEqualToAppLink:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(CAFAppLink *)self identifier];
  if ([v5 isEqualToString:v6])
  {
    v7 = [v4 contentURLAction];
    v8 = [(CAFAppLink *)self contentURLAction];
    if ([v7 isEqualToString:v8])
    {
      v9 = [v4 title];
      v10 = [(CAFAppLink *)self title];
      if ([v9 isEqualToString:v10])
      {
        v16 = [(CAFAppLink *)self symbolNameAndColor];
        v15 = [v16 dictionaryRepresentation];
        v11 = [v4 symbolNameAndColor];
        v12 = [v11 dictionaryRepresentation];
        v13 = [v15 isEqualToDictionary:v12];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(CAFAppLink *)self identifier];
  v4 = [v3 hash];
  v5 = [(CAFAppLink *)self title];
  v6 = [v5 hash] ^ v4;
  v7 = [(CAFAppLink *)self contentURLAction];
  v8 = v6 ^ [v7 hash];
  v9 = [(CAFAppLink *)self symbolNameAndColor];
  v10 = [v9 dictionaryRepresentation];
  v11 = [v10 hash];

  return v8 ^ v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CAFAppLink alloc];
  v5 = [(CAFAppLink *)self identifier];
  v6 = [(CAFAppLink *)self title];
  v7 = [(CAFAppLink *)self contentURLAction];
  v8 = [(CAFAppLink *)self symbolNameAndColor];
  v9 = [(CAFAppLink *)v4 initWithIdentifier:v5 title:v6 contentURLAction:v7 symbolNameAndColor:v8];

  return v9;
}

@end