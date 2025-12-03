@interface NSDateInterval(CMSCoding)
+ (id)instanceFromCMSCoded:()CMSCoding;
- (id)cmsCoded;
@end

@implementation NSDateInterval(CMSCoding)

- (id)cmsCoded
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = @"startDate";
  startDate = [self startDate];
  cmsCoded = [startDate cmsCoded];
  v4 = cmsCoded;
  if (cmsCoded)
  {
    v5 = cmsCoded;
  }

  else
  {
    v5 = &stru_2856A7BB0;
  }

  v13[1] = @"endDate";
  v14[0] = v5;
  endDate = [self endDate];
  cmsCoded2 = [endDate cmsCoded];
  v8 = cmsCoded2;
  if (cmsCoded2)
  {
    v9 = cmsCoded2;
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