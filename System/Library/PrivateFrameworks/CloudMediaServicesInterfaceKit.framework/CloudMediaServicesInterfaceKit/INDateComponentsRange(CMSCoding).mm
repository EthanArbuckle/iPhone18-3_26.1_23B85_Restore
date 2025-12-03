@interface INDateComponentsRange(CMSCoding)
+ (id)instanceFromCMSCoded:()CMSCoding;
- (id)cmsCoded;
@end

@implementation INDateComponentsRange(CMSCoding)

- (id)cmsCoded
{
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
  startDateComponents = [self startDateComponents];
  cmsCoded = [startDateComponents cmsCoded];
  [v2 cmsSetOptionalObject:cmsCoded forKey:@"startDateComponents"];

  endDateComponents = [self endDateComponents];
  cmsCoded2 = [endDateComponents cmsCoded];
  [v2 cmsSetOptionalObject:cmsCoded2 forKey:@"endDateComponents"];

  recurrenceRule = [self recurrenceRule];
  cmsCoded3 = [recurrenceRule cmsCoded];
  [v2 cmsSetOptionalObject:cmsCoded3 forKey:@"recurrenceRule"];

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