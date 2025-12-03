@interface NSUserActivity(CMSCoding)
+ (id)instanceFromCMSCoded:()CMSCoding;
- (id)cmsCoded;
@end

@implementation NSUserActivity(CMSCoding)

- (id)cmsCoded
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
  activityType = [self activityType];
  if (activityType)
  {
    [v2 setValue:activityType forKey:@"activityType"];
  }

  expirationDate = [self expirationDate];
  v5 = expirationDate;
  if (expirationDate)
  {
    cmsCoded = [expirationDate cmsCoded];
    [v2 setValue:cmsCoded forKey:@"expirationDate"];
  }

  userInfo = [self userInfo];
  v8 = [userInfo count];

  if (v8)
  {
    userInfo2 = [self userInfo];
    v10 = _userInfoValueToJSONValue(userInfo2);
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