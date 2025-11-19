@interface INDateComponentsRange(CMSCoding)
+ (id)instanceFromCMSCoded:()CMSCoding;
- (id)cmsCoded;
@end

@implementation INDateComponentsRange(CMSCoding)

- (id)cmsCoded
{
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
  v3 = [a1 startDateComponents];
  v4 = [v3 cmsCoded];
  [v2 cmsSetOptionalObject:v4 forKey:@"startDateComponents"];

  v5 = [a1 endDateComponents];
  v6 = [v5 cmsCoded];
  [v2 cmsSetOptionalObject:v6 forKey:@"endDateComponents"];

  v7 = [a1 recurrenceRule];
  v8 = [v7 cmsCoded];
  [v2 cmsSetOptionalObject:v8 forKey:@"recurrenceRule"];

  return v2;
}

+ (id)instanceFromCMSCoded:()CMSCoding
{
  v3 = cmsSafeDictionary(a3);
  if (v3)
  {
    v4 = [v3 cmsOptionalDecodedClass:objc_opt_class() forKey:@"startDateComponents"];
    v5 = [v3 cmsOptionalDecodedClass:objc_opt_class() forKey:@"endDateComponents"];
    v6 = [v3 cmsOptionalDecodedClass:objc_opt_class() forKey:@"recurranceRule"];
    v7 = [objc_alloc(MEMORY[0x277CD3B68]) initWithStartDateComponents:v4 endDateComponents:v5 recurrenceRule:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end