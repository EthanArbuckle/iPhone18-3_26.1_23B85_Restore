@interface OADCharacterBulletProperties
- (BOOL)isEqual:(id)a3;
- (OADCharacterBulletProperties)initWithBullet:(id)a3;
@end

@implementation OADCharacterBulletProperties

- (OADCharacterBulletProperties)initWithBullet:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  mBullet = self->mBullet;
  self->mBullet = v5;

  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSString *)self->mBullet isEqual:v4[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end