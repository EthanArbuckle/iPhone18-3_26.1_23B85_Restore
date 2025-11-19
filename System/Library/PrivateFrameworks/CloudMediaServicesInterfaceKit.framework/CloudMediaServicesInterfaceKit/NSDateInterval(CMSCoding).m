@interface NSDateInterval(CMSCoding)
+ (id)instanceFromCMSCoded:()CMSCoding;
- (id)cmsCoded;
@end

@implementation NSDateInterval(CMSCoding)

- (id)cmsCoded
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = @"startDate";
  v2 = [a1 startDate];
  v3 = [v2 cmsCoded];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_2856A7BB0;
  }

  v13[1] = @"endDate";
  v14[0] = v5;
  v6 = [a1 endDate];
  v7 = [v6 cmsCoded];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_2856A7BB0;
  }

  v14[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)instanceFromCMSCoded:()CMSCoding
{
  v3 = cmsSafeDictionary(a3);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 cmsOptionalDateForKey:@"startDate"];
    v6 = [v4 cmsOptionalDateForKey:@"endDate"];
    v7 = v6;
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v5 endDate:v6];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end