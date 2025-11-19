@interface INUpdateMediaAffinityIntentResponse(CMSCoding)
+ (id)instanceFromCMSCoded:()CMSCoding;
- (id)cmsCoded;
@end

@implementation INUpdateMediaAffinityIntentResponse(CMSCoding)

+ (id)instanceFromCMSCoded:()CMSCoding
{
  v3 = cmsSafeDictionary(a3);
  if (v3)
  {
    v4 = [v3 cmsOptionalDecodedClass:objc_opt_class() forKey:@"userActivity"];
    v5 = [v3 cmsOptionalStringForKey:@"code"];
    v6 = INUpdateMediaAffinityIntentResponseCodeFromString(v5);

    v7 = [objc_alloc(MEMORY[0x277CD42C0]) initWithCode:v6 userActivity:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)cmsCoded
{
  v8.receiver = a1;
  v8.super_class = &off_2856BA9F0;
  v2 = objc_msgSendSuper2(&v8, sel_cmsCoded);
  [v2 setObject:@"UpdateMediaAffinityIntentResponse" forKey:@"class"];
  v3 = [a1 userActivity];
  v4 = v3;
  if (v3)
  {
    [v3 cmsCoded];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v5 = ;
  [v2 setObject:v5 forKey:@"userActivity"];

  v6 = INUpdateMediaAffinityIntentResponseCodeToString([a1 code]);
  [v2 setObject:v6 forKey:@"code"];

  return v2;
}

@end