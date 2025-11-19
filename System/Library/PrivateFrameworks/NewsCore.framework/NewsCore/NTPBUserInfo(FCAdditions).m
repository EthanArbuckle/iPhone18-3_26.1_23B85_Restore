@interface NTPBUserInfo(FCAdditions)
- (void)initWithStorefrontID:()FCAdditions preferredLanguages:subscriberType:;
@end

@implementation NTPBUserInfo(FCAdditions)

- (void)initWithStorefrontID:()FCAdditions preferredLanguages:subscriberType:
{
  v8 = a3;
  v9 = a4;
  v14.receiver = a1;
  v14.super_class = &off_1F2EE7978;
  v10 = objc_msgSendSuper2(&v14, sel_init);
  v11 = v10;
  if (v10)
  {
    [v10 setStorefrontId:v8];
    v12 = [v9 copy];
    [v11 setPreferredLanguages:v12];

    [v11 setSubscriberType:a5];
  }

  return v11;
}

@end