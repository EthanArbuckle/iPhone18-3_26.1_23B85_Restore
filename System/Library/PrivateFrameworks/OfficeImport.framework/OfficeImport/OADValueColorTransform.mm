@interface OADValueColorTransform
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation OADValueColorTransform

- (unint64_t)hash
{
  v2 = *(&self->super.mType + 1);
  v4.receiver = self;
  v4.super_class = OADValueColorTransform;
  return [(OADColorTransform *)&v4 hash]^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (([v4 isMemberOfClass:objc_opt_class()] & 1) != 0 && (v5 = *(&self->super.mType + 1), objc_msgSend(v4, "value"), v5 == v6))
  {
    v9.receiver = self;
    v9.super_class = OADValueColorTransform;
    v7 = [(OADColorTransform *)&v9 isEqual:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end