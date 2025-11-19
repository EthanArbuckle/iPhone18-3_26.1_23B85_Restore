@interface BBBulletinUpdate
- (BBBulletinUpdate)initWithBulletin:(id)a3 feeds:(unint64_t)a4;
- (BBBulletinUpdate)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BBBulletinUpdate

- (BBBulletinUpdate)initWithBulletin:(id)a3 feeds:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = BBBulletinUpdate;
  v7 = [(BBBulletinUpdate *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    bulletin = v7->_bulletin;
    v7->_bulletin = v8;

    v7->_feeds = a4;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(BBBulletinUpdate *)self bulletin];
  v4 = [v3 hash];
  v5 = [(BBBulletinUpdate *)self feeds];

  return v5 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = v4;
      v6 = [(BBBulletinUpdate *)self bulletin];
      v7 = [(BBBulletinUpdate *)v5 bulletin];
      if (BSEqualObjects())
      {
        v8 = [(BBBulletinUpdate *)self feeds];
        v9 = v8 == [(BBBulletinUpdate *)v5 feeds];
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
  v4 = [(BBBulletinUpdate *)self bulletin];
  v5 = [v3 appendObject:v4 withName:@"Bulletin"];

  v6 = [v3 appendInteger:-[BBBulletinUpdate feeds](self withName:{"feeds"), @"Feeds"}];
  v7 = [(BBBulletinUpdate *)self typeDescription];
  v8 = [v3 appendObject:v7 withName:@"Type"];

  v9 = [v3 build];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(BBBulletinUpdate *)self bulletin];
  [v5 encodeObject:v4 forKey:@"bulletin"];

  [v5 encodeInteger:-[BBBulletinUpdate feeds](self forKey:{"feeds"), @"feeds"}];
}

- (BBBulletinUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bulletin"];
  v6 = [v4 decodeIntegerForKey:@"feeds"];

  v7 = [(BBBulletinUpdate *)self initWithBulletin:v5 feeds:v6];
  return v7;
}

@end