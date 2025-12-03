@interface OADBackgroundProperties
- (BOOL)isEqual:(id)equal;
@end

@implementation OADBackgroundProperties

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    if (TCObjectEqual(self->mFill, v5[1]))
    {
      v6 = TCObjectEqual(self->mEffects, v5[2]);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end