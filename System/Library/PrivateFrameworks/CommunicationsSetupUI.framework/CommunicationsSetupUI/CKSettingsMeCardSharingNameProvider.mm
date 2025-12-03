@interface CKSettingsMeCardSharingNameProvider
+ (id)nameProviderForNickname:(id)nickname;
@end

@implementation CKSettingsMeCardSharingNameProvider

+ (id)nameProviderForNickname:(id)nickname
{
  nicknameCopy = nickname;
  if (nicknameCopy)
  {
    v4 = objc_alloc_init(CKSettingsMeCardSharingNameProvider);
    if (v4)
    {
      firstName = [nicknameCopy firstName];
      [(CKSettingsMeCardSharingNameProvider *)v4 setGivenName:firstName];

      lastName = [nicknameCopy lastName];
      [(CKSettingsMeCardSharingNameProvider *)v4 setFamilyName:lastName];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end