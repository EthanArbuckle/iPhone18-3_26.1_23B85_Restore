@interface OADImageBulletProperties
- (BOOL)isEqual:(id)equal;
@end

@implementation OADImageBulletProperties

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    blip = [(OADBlipRef *)self->mImage blip];
    blip2 = [equalCopy[1] blip];
    v7 = [blip isEqual:blip2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end