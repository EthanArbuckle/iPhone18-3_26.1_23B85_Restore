@interface BBBulletinRemoveUpdate
- (BBBulletinRemoveUpdate)initWithBulletin:(id)bulletin feeds:(unint64_t)feeds shouldSync:(BOOL)sync;
- (BBBulletinRemoveUpdate)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BBBulletinRemoveUpdate

- (BBBulletinRemoveUpdate)initWithBulletin:(id)bulletin feeds:(unint64_t)feeds shouldSync:(BOOL)sync
{
  v7.receiver = self;
  v7.super_class = BBBulletinRemoveUpdate;
  result = [(BBBulletinUpdate *)&v7 initWithBulletin:bulletin feeds:feeds];
  if (result)
  {
    result->_shouldSync = sync;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = equalCopy;
      v9.receiver = self;
      v9.super_class = BBBulletinRemoveUpdate;
      if ([(BBBulletinUpdate *)&v9 isEqual:v5])
      {
        shouldSync = [(BBBulletinRemoveUpdate *)self shouldSync];
        v7 = shouldSync ^ [(BBBulletinRemoveUpdate *)v5 shouldSync]^ 1;
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
  build = [v3 build];

  return build;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = BBBulletinRemoveUpdate;
  coderCopy = coder;
  [(BBBulletinUpdate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[BBBulletinRemoveUpdate shouldSync](self forKey:{"shouldSync", v5.receiver, v5.super_class), @"shouldSync"}];
}

- (BBBulletinRemoveUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = BBBulletinRemoveUpdate;
  v5 = [(BBBulletinUpdate *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_shouldSync = [coderCopy decodeBoolForKey:@"shouldSync"];
  }

  return v5;
}

@end