@interface BBBulletinRemoveUpdate
- (BBBulletinRemoveUpdate)initWithBulletin:(id)a3 feeds:(unint64_t)a4 shouldSync:(BOOL)a5;
- (BBBulletinRemoveUpdate)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BBBulletinRemoveUpdate

- (BBBulletinRemoveUpdate)initWithBulletin:(id)a3 feeds:(unint64_t)a4 shouldSync:(BOOL)a5
{
  v7.receiver = self;
  v7.super_class = BBBulletinRemoveUpdate;
  result = [(BBBulletinUpdate *)&v7 initWithBulletin:a3 feeds:a4];
  if (result)
  {
    result->_shouldSync = a5;
  }

  return result;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = BBBulletinRemoveUpdate;
  v3 = [(BBBulletinUpdate *)&v5 hash];
  return v3 ^ [(BBBulletinRemoveUpdate *)self shouldSync];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = v4;
      v9.receiver = self;
      v9.super_class = BBBulletinRemoveUpdate;
      if ([(BBBulletinUpdate *)&v9 isEqual:v5])
      {
        v6 = [(BBBulletinRemoveUpdate *)self shouldSync];
        v7 = v6 ^ [(BBBulletinRemoveUpdate *)v5 shouldSync]^ 1;
      }

      else
      {
        LOBYTE(v7) = 0;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[BBBulletinRemoveUpdate shouldSync](self withName:{"shouldSync"), @"Should Sync"}];
  v5 = [v3 build];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = BBBulletinRemoveUpdate;
  v4 = a3;
  [(BBBulletinUpdate *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:-[BBBulletinRemoveUpdate shouldSync](self forKey:{"shouldSync", v5.receiver, v5.super_class), @"shouldSync"}];
}

- (BBBulletinRemoveUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = BBBulletinRemoveUpdate;
  v5 = [(BBBulletinUpdate *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_shouldSync = [v4 decodeBoolForKey:@"shouldSync"];
  }

  return v5;
}

@end