@interface OADBlip
+ (id)pathExtensionForBlipType:(int)a3;
- (BOOL)isEqual:(id)a3;
@end

@implementation OADBlip

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = 0;
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v5 = v4;
  if (!v5 || !TCObjectEqual(self->mMainSubBlip, v5[2]))
  {
    goto LABEL_6;
  }

  v6 = TCObjectEqual(self->mAltSubBlip, v5[3]);
LABEL_7:

  return v6;
}

+ (id)pathExtensionForBlipType:(int)a3
{
  if ((a3 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return off_2799C7C80[a3 - 1];
  }
}

@end