@interface OADImageBulletProperties
- (BOOL)isEqual:(id)a3;
@end

@implementation OADImageBulletProperties

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(OADBlipRef *)self->mImage blip];
    v6 = [v4[1] blip];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end