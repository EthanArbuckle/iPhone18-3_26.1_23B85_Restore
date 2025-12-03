@interface CAFAppLink
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAppLink:(id)link;
- (CAFAppLink)initWithCoder:(id)coder;
- (CAFAppLink)initWithIdentifier:(id)identifier title:(id)title contentURLAction:(id)action symbolNameAndColor:(id)color;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CAFAppLink

- (CAFAppLink)initWithIdentifier:(id)identifier title:(id)title contentURLAction:(id)action symbolNameAndColor:(id)color
{
  identifierCopy = identifier;
  titleCopy = title;
  actionCopy = action;
  colorCopy = color;
  v18.receiver = self;
  v18.super_class = CAFAppLink;
  v15 = [(CAFAppLink *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, identifier);
    objc_storeStrong(&v16->_contentURLAction, action);
    objc_storeStrong(&v16->_title, title);
    objc_storeStrong(&v16->_symbolNameAndColor, color);
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CAFAppLink;
  v4 = [(CAFAppLink *)&v11 description];
  identifier = [(CAFAppLink *)self identifier];
  contentURLAction = [(CAFAppLink *)self contentURLAction];
  title = [(CAFAppLink *)self title];
  symbolNameAndColor = [(CAFAppLink *)self symbolNameAndColor];
  v9 = [v3 stringWithFormat:@"%@: identifier: %@, contentURLAction: %@, title: %@, symbolNameAndColor: %@", v4, identifier, contentURLAction, title, symbolNameAndColor];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(CAFAppLink *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"kCAFAppLinksIdentifierKey"];

  contentURLAction = [(CAFAppLink *)self contentURLAction];
  [coderCopy encodeObject:contentURLAction forKey:@"kCAFAppLinksContentURLKey"];

  title = [(CAFAppLink *)self title];
  [coderCopy encodeObject:title forKey:@"kCAFAppLinksTitleKey"];

  symbolNameAndColor = [(CAFAppLink *)self symbolNameAndColor];
  dictionaryRepresentation = [symbolNameAndColor dictionaryRepresentation];
  [coderCopy encodeObject:dictionaryRepresentation forKey:@"kCAFAppLinksSymbolNameAndColorKey"];
}

- (CAFAppLink)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = CAFAppLink;
  v5 = [(CAFAppLink *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCAFAppLinksIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCAFAppLinksContentURLKey"];
    contentURLAction = v5->_contentURLAction;
    v5->_contentURLAction = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCAFAppLinksTitleKey"];
    title = v5->_title;
    v5->_title = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"kCAFAppLinksSymbolNameAndColorKey"];

    if (v16)
    {
      v17 = [[CAFSymbolImageWithColor alloc] initWithDictionary:v16];
      symbolNameAndColor = v5->_symbolNameAndColor;
      v5->_symbolNameAndColor = v17;
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CAFAppLink *)self isEqualToAppLink:equalCopy];

  return v5;
}

- (BOOL)isEqualToAppLink:(id)link
{
  linkCopy = link;
  identifier = [linkCopy identifier];
  identifier2 = [(CAFAppLink *)self identifier];
  if ([identifier isEqualToString:identifier2])
  {
    contentURLAction = [linkCopy contentURLAction];
    contentURLAction2 = [(CAFAppLink *)self contentURLAction];
    if ([contentURLAction isEqualToString:contentURLAction2])
    {
      title = [linkCopy title];
      title2 = [(CAFAppLink *)self title];
      if ([title isEqualToString:title2])
      {
        symbolNameAndColor = [(CAFAppLink *)self symbolNameAndColor];
        dictionaryRepresentation = [symbolNameAndColor dictionaryRepresentation];
        symbolNameAndColor2 = [linkCopy symbolNameAndColor];
        dictionaryRepresentation2 = [symbolNameAndColor2 dictionaryRepresentation];
        v13 = [dictionaryRepresentation isEqualToDictionary:dictionaryRepresentation2];
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
  identifier = [(CAFAppLink *)self identifier];
  v4 = [identifier hash];
  title = [(CAFAppLink *)self title];
  v6 = [title hash] ^ v4;
  contentURLAction = [(CAFAppLink *)self contentURLAction];
  v8 = v6 ^ [contentURLAction hash];
  symbolNameAndColor = [(CAFAppLink *)self symbolNameAndColor];
  dictionaryRepresentation = [symbolNameAndColor dictionaryRepresentation];
  v11 = [dictionaryRepresentation hash];

  return v8 ^ v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CAFAppLink alloc];
  identifier = [(CAFAppLink *)self identifier];
  title = [(CAFAppLink *)self title];
  contentURLAction = [(CAFAppLink *)self contentURLAction];
  symbolNameAndColor = [(CAFAppLink *)self symbolNameAndColor];
  v9 = [(CAFAppLink *)v4 initWithIdentifier:identifier title:title contentURLAction:contentURLAction symbolNameAndColor:symbolNameAndColor];

  return v9;
}

@end