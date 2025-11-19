@interface NSUserActivity(CMSCoding)
+ (id)instanceFromCMSCoded:()CMSCoding;
- (id)cmsCoded;
@end

@implementation NSUserActivity(CMSCoding)

- (id)cmsCoded
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
  v3 = [a1 activityType];
  if (v3)
  {
    [v2 setValue:v3 forKey:@"activityType"];
  }

  v4 = [a1 expirationDate];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 cmsCoded];
    [v2 setValue:v6 forKey:@"expirationDate"];
  }

  v7 = [a1 userInfo];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [a1 userInfo];
    v10 = _userInfoValueToJSONValue(v9);
    [v2 setValue:v10 forKey:@"userInfo"];
  }

  return v2;
}

+ (id)instanceFromCMSCoded:()CMSCoding
{
  v3 = cmsSafeDictionary(a3);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 cmsOptionalStringForKey:@"activityType"];
    if (v5)
    {
      v6 = [v4 cmsOptionalStringForKey:@"title"];
      v7 = [objc_alloc(MEMORY[0x277CCAE58]) initWithActivityType:v5];
      v8 = [v4 cmsOptionalDateForKey:@"expirationDate"];
      [v7 setExpirationDate:v8];

      [v7 setTitle:v6];
      v9 = [v4 cmsOptionalDictionaryForKey:@"userInfo"];
      v10 = v9;
      if (v9)
      {
        v11 = _JSONValueToUserInfoValue(v9);
        [v7 setUserInfo:v11];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end