@interface CRSIconLayoutPage
- (CRSIconLayoutPage)initWithCoder:(id)coder;
- (CRSIconLayoutPage)initWithIcons:(id)icons;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRSIconLayoutPage

- (CRSIconLayoutPage)initWithIcons:(id)icons
{
  iconsCopy = icons;
  v9.receiver = self;
  v9.super_class = CRSIconLayoutPage;
  v5 = [(CRSIconLayoutPage *)&v9 init];
  if (v5)
  {
    v6 = [iconsCopy copy];
    icons = v5->_icons;
    v5->_icons = v6;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v9.receiver = self;
  v9.super_class = CRSIconLayoutPage;
  v4 = [(CRSIconLayoutPage *)&v9 description];
  v5 = [v3 stringWithString:v4];

  icons = [(CRSIconLayoutPage *)self icons];
  v7 = [icons componentsJoinedByString:{@", "}];
  [v5 appendFormat:@" %@", v7];

  return v5;
}

- (CRSIconLayoutPage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CRSIconLayoutPage;
  v5 = [(CRSIconLayoutPage *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"CRSIconLayoutPageIcons"];
    icons = v5->_icons;
    v5->_icons = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  icons = [(CRSIconLayoutPage *)self icons];
  [coderCopy encodeObject:icons forKey:@"CRSIconLayoutPageIcons"];
}

@end