@interface CKSettingsMeCardSharingNameProvider
+ (id)nameProviderForNickname:(id)a3;
@end

@implementation CKSettingsMeCardSharingNameProvider

+ (id)nameProviderForNickname:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(CKSettingsMeCardSharingNameProvider);
    if (v4)
    {
      v5 = [v3 firstName];
      [(CKSettingsMeCardSharingNameProvider *)v4 setGivenName:v5];

      v6 = [v3 lastName];
      [(CKSettingsMeCardSharingNameProvider *)v4 setFamilyName:v6];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end