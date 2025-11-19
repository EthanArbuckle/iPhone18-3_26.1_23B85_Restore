@interface INPlayMediaIntentResponse(CMSCoding)
+ (id)instanceFromCMSCoded:()CMSCoding;
- (id)cmsCoded;
@end

@implementation INPlayMediaIntentResponse(CMSCoding)

+ (id)instanceFromCMSCoded:()CMSCoding
{
  v3 = cmsSafeDictionary(a3);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 cmsOptionalDictionaryForKey:@"nowPlayingInfo"];
    v6 = [v4 cmsOptionalDecodedClass:objc_opt_class() forKey:@"userActivity"];
    v7 = [v4 cmsOptionalStringForKey:@"code"];
    v8 = INPlayMediaIntentResponseCodeFromString(v7);

    v9 = [objc_alloc(MEMORY[0x277CD3EC8]) initWithCode:v8 userActivity:v6];
    [v9 setNowPlayingInfo:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)cmsCoded
{
  v9.receiver = a1;
  v9.super_class = &off_2856B9F48;
  v2 = objc_msgSendSuper2(&v9, sel_cmsCoded);
  [v2 setObject:@"PlayMediaIntentResponse" forKey:@"class"];
  v3 = [a1 nowPlayingInfo];
  if (v3)
  {
    [v2 setObject:v3 forKey:@"nowPlayingInfo"];
  }

  v4 = [a1 userActivity];
  v5 = v4;
  if (v4)
  {
    [v4 cmsCoded];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v6 = ;
  [v2 setObject:v6 forKey:@"userActivity"];

  v7 = INPlayMediaIntentResponseCodeToString([a1 code]);
  [v2 setObject:v7 forKey:@"code"];

  return v2;
}

@end