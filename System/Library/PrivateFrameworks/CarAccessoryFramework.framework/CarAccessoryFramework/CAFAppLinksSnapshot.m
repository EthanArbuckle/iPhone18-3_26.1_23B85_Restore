@interface CAFAppLinksSnapshot
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSnapshot:(id)a3;
- (CAFAppLinksSnapshot)initWithAppLinks:(id)a3;
- (CAFAppLinksSnapshot)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CAFAppLinksSnapshot

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CAFAppLinksSnapshot *)self appLinks];
  [v4 encodeObject:v5 forKey:@"kCAFAppLinkstKey"];
}

- (CAFAppLinksSnapshot)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CAFAppLinksSnapshot;
  v5 = [(CAFAppLinksSnapshot *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kCAFAppLinkstKey"];
    appLinks = v5->_appLinks;
    v5->_appLinks = v9;
  }

  return v5;
}

- (CAFAppLinksSnapshot)initWithAppLinks:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CAFAppLinksSnapshot;
  v6 = [(CAFAppLinksSnapshot *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appLinks, a3);
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
  v6 = [(CAFAppLinksSnapshot *)self appLinks];
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
  v8 = [v3 stringWithFormat:@"%@: appLinks count %@", v4, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CAFAppLinksSnapshot *)self isEqualToSnapshot:v4];

  return v5;
}

- (BOOL)isEqualToSnapshot:(id)a3
{
  v4 = [a3 appLinks];
  v5 = [(CAFAppLinksSnapshot *)self appLinks];
  v6 = [v4 isEqualToArray:v5];

  return v6;
}

- (unint64_t)hash
{
  v2 = [(CAFAppLinksSnapshot *)self appLinks];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CAFAppLinksSnapshot alloc];
  v5 = [(CAFAppLinksSnapshot *)self appLinks];
  v6 = [(CAFAppLinksSnapshot *)v4 initWithAppLinks:v5];

  return v6;
}

@end