@interface INIntent(CMSCoding)
+ (id)instanceFromCMSCoded:()CMSCoding;
- (id)cmsCoded;
@end

@implementation INIntent(CMSCoding)

- (id)cmsCoded
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [a1 identifier];
  if (v3)
  {
    [v2 setObject:v3 forKey:@"identifier"];
  }

  v4 = [a1 intentDescription];
  if (v4)
  {
    [v2 setObject:v4 forKey:@"intentDescription"];
  }

  [v2 setObject:@"Intent" forKey:@"class"];

  return v2;
}

+ (id)instanceFromCMSCoded:()CMSCoding
{
  v3 = a3;
  v4 = cmsSafeDictionary(v3);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 cmsOptionalStringForKey:@"class"];
    v7 = v6;
    if (v6 && [v6 isEqualToString:@"PlayMediaIntent"])
    {
      v8 = [MEMORY[0x277CD3EC0] instanceFromCMSCoded:v3];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end