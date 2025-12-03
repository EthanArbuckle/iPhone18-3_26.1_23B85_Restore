@interface OADCharacterBulletProperties
- (BOOL)isEqual:(id)equal;
- (OADCharacterBulletProperties)initWithBullet:(id)bullet;
@end

@implementation OADCharacterBulletProperties

- (OADCharacterBulletProperties)initWithBullet:(id)bullet
{
  bulletCopy = bullet;
  v5 = [bulletCopy copy];
  mBullet = self->mBullet;
  self->mBullet = v5;

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSString *)self->mBullet isEqual:equalCopy[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end