@interface OADBlip
+ (id)pathExtensionForBlipType:(int)type;
- (BOOL)isEqual:(id)equal;
@end

@implementation OADBlip

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = 0;
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v5 = equalCopy;
  if (!v5 || !TCObjectEqual(self->mMainSubBlip, v5[2]))
  {
    goto LABEL_6;
  }

  v6 = TCObjectEqual(self->mAltSubBlip, v5[3]);
LABEL_7:

  return v6;
}

+ (id)pathExtensionForBlipType:(int)type
{
  if ((type - 1) > 9)
  {
    return 0;
  }

  else
  {
    return off_2799C7C80[type - 1];
  }
}

@end