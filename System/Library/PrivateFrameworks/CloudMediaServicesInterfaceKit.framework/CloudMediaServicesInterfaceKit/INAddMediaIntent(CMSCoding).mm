@interface INAddMediaIntent(CMSCoding)
+ (id)instanceFromCMSCoded:()CMSCoding;
- (id)cmsCoded;
@end

@implementation INAddMediaIntent(CMSCoding)

+ (id)instanceFromCMSCoded:()CMSCoding
{
  v3 = cmsSafeDictionary(a3);
  if (v3)
  {
    v4 = [v3 cmsOptionalArrayOfDecodedClass:objc_opt_class() forKey:@"mediaItems"];
    v5 = [v3 cmsOptionalDecodedClass:objc_opt_class() forKey:@"mediaSearch"];
    v6 = [v3 cmsOptionalDecodedClass:objc_opt_class() forKey:@"mediaDestination"];
    v7 = [objc_alloc(MEMORY[0x277CD39F0]) initWithMediaItems:v4 mediaSearch:v5 mediaDestination:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)cmsCoded
{
  v7.receiver = self;
  v7.super_class = &off_2856BA2B0;
  v2 = objc_msgSendSuper2(&v7, sel_cmsCoded);
  [v2 setObject:@"AddMediaIntent" forKey:@"class"];
  mediaItems = [self mediaItems];
  [v2 cmsSetOptionalCodedObject:mediaItems forKey:@"mediaItems"];

  mediaSearch = [self mediaSearch];
  [v2 cmsSetOptionalCodedObject:mediaSearch forKey:@"mediaSearch"];

  mediaDestination = [self mediaDestination];
  [v2 cmsSetOptionalCodedObject:mediaDestination forKey:@"mediaDestination"];

  return v2;
}

@end