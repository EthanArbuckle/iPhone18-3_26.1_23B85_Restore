@interface NTPBPersonalizationParams(FCAdditions)
- (void)initWithUserInterestVector:()FCAdditions uivModelID:;
@end

@implementation NTPBPersonalizationParams(FCAdditions)

- (void)initWithUserInterestVector:()FCAdditions uivModelID:
{
  v6 = a3;
  v7 = a4;
  v11.receiver = a1;
  v11.super_class = &off_1F2EE7C18;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  v9 = v8;
  if (v8)
  {
    [v8 setUserInterestVector:v6];
    [v9 setUivModelId:v7];
  }

  return v9;
}

@end