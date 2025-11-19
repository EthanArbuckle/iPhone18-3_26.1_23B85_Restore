@interface CRKApplication
- (CRKApplication)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKApplication

- (CRKApplication)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CRKApplication;
  v5 = [(CRKApplication *)&v22 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"name"];
    name = v5->_name;
    v5->_name = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"iconData"];
    iconData = v5->_iconData;
    v5->_iconData = v13;

    v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"badgeIconData"];
    badgeIconData = v5->_badgeIconData;
    v5->_badgeIconData = v16;

    v18 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"shortVersionString"];
    shortVersionString = v5->_shortVersionString;
    v5->_shortVersionString = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CRKApplication *)self bundleIdentifier];
  [v4 encodeObject:v5 forKey:@"bundleIdentifier"];

  v6 = [(CRKApplication *)self name];
  [v4 encodeObject:v6 forKey:@"name"];

  v7 = [(CRKApplication *)self iconData];
  [v4 encodeObject:v7 forKey:@"iconData"];

  v8 = [(CRKApplication *)self badgeIconData];
  [v4 encodeObject:v8 forKey:@"badgeIconData"];

  v9 = [(CRKApplication *)self shortVersionString];
  [v4 encodeObject:v9 forKey:@"shortVersionString"];
}

@end