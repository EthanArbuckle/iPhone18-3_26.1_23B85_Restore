@interface NTPBTagFollowed(FCAdditions)
- (void)initWithTagID:()FCAdditions followMode:isALaCarteSubscribed:;
@end

@implementation NTPBTagFollowed(FCAdditions)

- (void)initWithTagID:()FCAdditions followMode:isALaCarteSubscribed:
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = &off_1F2EE8300;
  v9 = objc_msgSendSuper2(&v12, sel_init);
  v10 = v9;
  if (v9)
  {
    [v9 setTagId:v8];
    [v10 setTagFollowMode:a4];
    [v10 setALaCarteSubscribed:a5];
  }

  return v10;
}

@end