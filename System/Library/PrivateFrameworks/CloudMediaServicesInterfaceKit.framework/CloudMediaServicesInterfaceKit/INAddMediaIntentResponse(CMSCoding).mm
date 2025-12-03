@interface INAddMediaIntentResponse(CMSCoding)
+ (id)instanceFromCMSCoded:()CMSCoding;
- (id)cmsCoded;
@end

@implementation INAddMediaIntentResponse(CMSCoding)

+ (id)instanceFromCMSCoded:()CMSCoding
{
  v3 = cmsSafeDictionary(a3);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 cmsOptionalStringForKey:@"code"];
    v6 = INAddMediaIntentResponseCodeFromString(v5);

    v7 = [v4 cmsOptionalDecodedClass:objc_opt_class() forKey:@"userActivity"];
    v8 = [objc_alloc(MEMORY[0x277CD39F8]) initWithCode:v6 userActivity:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)cmsCoded
{
  v8.receiver = self;
  v8.super_class = &off_2856BA488;
  v2 = objc_msgSendSuper2(&v8, sel_cmsCoded);
  [v2 setObject:@"AddMediaIntentResponse" forKey:@"class"];
  userActivity = [self userActivity];
  v4 = userActivity;
  if (userActivity)
  {
    [userActivity cmsCoded];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v5 = ;
  [v2 setObject:v5 forKey:@"userActivity"];

  v6 = INAddMediaIntentResponseCodeToString([self code]);
  [v2 setObject:v6 forKey:@"code"];

  return v2;
}

@end