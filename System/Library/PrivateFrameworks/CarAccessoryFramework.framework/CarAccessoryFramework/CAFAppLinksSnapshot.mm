@interface CAFAppLinksSnapshot
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSnapshot:(id)snapshot;
- (CAFAppLinksSnapshot)initWithAppLinks:(id)links;
- (CAFAppLinksSnapshot)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CAFAppLinksSnapshot

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  appLinks = [(CAFAppLinksSnapshot *)self appLinks];
  [coderCopy encodeObject:appLinks forKey:@"kCAFAppLinkstKey"];
}

- (CAFAppLinksSnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CAFAppLinksSnapshot;
  v5 = [(CAFAppLinksSnapshot *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kCAFAppLinkstKey"];
    appLinks = v5->_appLinks;
    v5->_appLinks = v9;
  }

  return v5;
}

- (CAFAppLinksSnapshot)initWithAppLinks:(id)links
{
  linksCopy = links;
  v9.receiver = self;
  v9.super_class = CAFAppLinksSnapshot;
  v6 = [(CAFAppLinksSnapshot *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appLinks, links);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = CAFAppLinksSnapshot;
  v4 = [(CAFAppLinksSnapshot *)&v10 description];
  v5 = MEMORY[0x277CCABB0];
  appLinks = [(CAFAppLinksSnapshot *)self appLinks];
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(appLinks, "count")}];
  v8 = [v3 stringWithFormat:@"%@: appLinks count %@", v4, v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CAFAppLinksSnapshot *)self isEqualToSnapshot:equalCopy];

  return v5;
}

- (BOOL)isEqualToSnapshot:(id)snapshot
{
  appLinks = [snapshot appLinks];
  appLinks2 = [(CAFAppLinksSnapshot *)self appLinks];
  v6 = [appLinks isEqualToArray:appLinks2];

  return v6;
}

- (unint64_t)hash
{
  appLinks = [(CAFAppLinksSnapshot *)self appLinks];
  v3 = [appLinks hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CAFAppLinksSnapshot alloc];
  appLinks = [(CAFAppLinksSnapshot *)self appLinks];
  v6 = [(CAFAppLinksSnapshot *)v4 initWithAppLinks:appLinks];

  return v6;
}

@end