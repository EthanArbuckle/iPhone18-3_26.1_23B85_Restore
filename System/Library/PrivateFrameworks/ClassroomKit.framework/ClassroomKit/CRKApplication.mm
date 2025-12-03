@interface CRKApplication
- (CRKApplication)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKApplication

- (CRKApplication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = CRKApplication;
  v5 = [(CRKApplication *)&v22 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"name"];
    name = v5->_name;
    v5->_name = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"iconData"];
    iconData = v5->_iconData;
    v5->_iconData = v13;

    v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"badgeIconData"];
    badgeIconData = v5->_badgeIconData;
    v5->_badgeIconData = v16;

    v18 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"shortVersionString"];
    shortVersionString = v5->_shortVersionString;
    v5->_shortVersionString = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleIdentifier = [(CRKApplication *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  name = [(CRKApplication *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  iconData = [(CRKApplication *)self iconData];
  [coderCopy encodeObject:iconData forKey:@"iconData"];

  badgeIconData = [(CRKApplication *)self badgeIconData];
  [coderCopy encodeObject:badgeIconData forKey:@"badgeIconData"];

  shortVersionString = [(CRKApplication *)self shortVersionString];
  [coderCopy encodeObject:shortVersionString forKey:@"shortVersionString"];
}

@end