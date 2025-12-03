@interface OADValueColorTransform
- (BOOL)isEqual:(id)equal;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (([equalCopy isMemberOfClass:objc_opt_class()] & 1) != 0 && (v5 = *(&self->super.mType + 1), objc_msgSend(equalCopy, "value"), v5 == v6))
  {
    v9.receiver = self;
    v9.super_class = OADValueColorTransform;
    v7 = [(OADColorTransform *)&v9 isEqual:equalCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end