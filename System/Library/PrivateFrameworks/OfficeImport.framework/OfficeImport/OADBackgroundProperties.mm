@interface OADBackgroundProperties
- (BOOL)isEqual:(id)a3;
@end

@implementation OADBackgroundProperties

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
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