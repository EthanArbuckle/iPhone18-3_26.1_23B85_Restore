@interface CRSIconLayoutPage
- (CRSIconLayoutPage)initWithCoder:(id)a3;
- (CRSIconLayoutPage)initWithIcons:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRSIconLayoutPage

- (CRSIconLayoutPage)initWithIcons:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRSIconLayoutPage;
  v5 = [(CRSIconLayoutPage *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
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

  v6 = [(CRSIconLayoutPage *)self icons];
  v7 = [v6 componentsJoinedByString:{@", "}];
  [v5 appendFormat:@" %@", v7];

  return v5;
}

- (CRSIconLayoutPage)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CRSIconLayoutPage;
  v5 = [(CRSIconLayoutPage *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"CRSIconLayoutPageIcons"];
    icons = v5->_icons;
    v5->_icons = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CRSIconLayoutPage *)self icons];
  [v4 encodeObject:v5 forKey:@"CRSIconLayoutPageIcons"];
}

@end