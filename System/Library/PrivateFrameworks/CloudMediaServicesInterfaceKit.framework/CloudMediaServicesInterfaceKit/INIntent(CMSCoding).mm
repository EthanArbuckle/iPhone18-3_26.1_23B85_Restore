@interface INIntent(CMSCoding)
+ (id)instanceFromCMSCoded:()CMSCoding;
- (id)cmsCoded;
@end

@implementation INIntent(CMSCoding)

- (id)cmsCoded
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  identifier = [self identifier];
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  intentDescription = [self intentDescription];
  if (intentDescription)
  {
    [dictionary setObject:intentDescription forKey:@"intentDescription"];
  }

  [dictionary setObject:@"Intent" forKey:@"class"];

  return dictionary;
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