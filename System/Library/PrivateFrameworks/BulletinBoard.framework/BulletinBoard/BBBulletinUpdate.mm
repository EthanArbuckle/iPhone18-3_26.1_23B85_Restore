@interface BBBulletinUpdate
- (BBBulletinUpdate)initWithBulletin:(id)bulletin feeds:(unint64_t)feeds;
- (BBBulletinUpdate)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BBBulletinUpdate

- (BBBulletinUpdate)initWithBulletin:(id)bulletin feeds:(unint64_t)feeds
{
  bulletinCopy = bulletin;
  v11.receiver = self;
  v11.super_class = BBBulletinUpdate;
  v7 = [(BBBulletinUpdate *)&v11 init];
  if (v7)
  {
    v8 = [bulletinCopy copy];
    bulletin = v7->_bulletin;
    v7->_bulletin = v8;

    v7->_feeds = feeds;
  }

  return v7;
}

- (unint64_t)hash
{
  bulletin = [(BBBulletinUpdate *)self bulletin];
  v4 = [bulletin hash];
  feeds = [(BBBulletinUpdate *)self feeds];

  return feeds ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = equalCopy;
      bulletin = [(BBBulletinUpdate *)self bulletin];
      bulletin2 = [(BBBulletinUpdate *)v5 bulletin];
      if (BSEqualObjects())
      {
        feeds = [(BBBulletinUpdate *)self feeds];
        v9 = feeds == [(BBBulletinUpdate *)v5 feeds];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  bulletin = [(BBBulletinUpdate *)self bulletin];
  v5 = [v3 appendObject:bulletin withName:@"Bulletin"];

  v6 = [v3 appendInteger:-[BBBulletinUpdate feeds](self withName:{"feeds"), @"Feeds"}];
  typeDescription = [(BBBulletinUpdate *)self typeDescription];
  v8 = [v3 appendObject:typeDescription withName:@"Type"];

  build = [v3 build];

  return build;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bulletin = [(BBBulletinUpdate *)self bulletin];
  [coderCopy encodeObject:bulletin forKey:@"bulletin"];

  [coderCopy encodeInteger:-[BBBulletinUpdate feeds](self forKey:{"feeds"), @"feeds"}];
}

- (BBBulletinUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bulletin"];
  v6 = [coderCopy decodeIntegerForKey:@"feeds"];

  v7 = [(BBBulletinUpdate *)self initWithBulletin:v5 feeds:v6];
  return v7;
}

@end