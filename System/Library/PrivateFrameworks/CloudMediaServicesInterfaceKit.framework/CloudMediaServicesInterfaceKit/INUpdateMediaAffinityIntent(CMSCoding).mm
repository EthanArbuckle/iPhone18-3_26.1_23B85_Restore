@interface INUpdateMediaAffinityIntent(CMSCoding)
+ (id)instanceFromCMSCoded:()CMSCoding;
- (id)cmsCoded;
@end

@implementation INUpdateMediaAffinityIntent(CMSCoding)

+ (id)instanceFromCMSCoded:()CMSCoding
{
  v3 = cmsSafeDictionary(a3);
  if (v3)
  {
    v4 = [v3 cmsOptionalArrayOfDecodedClass:objc_opt_class() forKey:@"mediaItems"];
    v5 = [v3 cmsOptionalDecodedClass:objc_opt_class() forKey:@"mediaSearch"];
    v6 = [v3 cmsOptionalStringForKey:@"affinityType"];
    v7 = INMediaAffinityTypeFromString(v6);

    v8 = [objc_alloc(MEMORY[0x277CD42B8]) initWithMediaItems:v4 mediaSearch:v5 affinityType:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)cmsCoded
{
  v7.receiver = self;
  v7.super_class = &off_2856BA800;
  v2 = objc_msgSendSuper2(&v7, sel_cmsCoded);
  [v2 setObject:@"UpdateMediaAffinityIntent" forKey:@"class"];
  mediaItems = [self mediaItems];
  [v2 cmsSetOptionalCodedObject:mediaItems forKey:@"mediaItems"];

  mediaSearch = [self mediaSearch];
  [v2 cmsSetOptionalCodedObject:mediaSearch forKey:@"mediaSearch"];

  v5 = INMediaAffinityTypeToString([self affinityType]);
  [v2 cmsSetOptionalObject:v5 forKey:@"affinityType"];

  return v2;
}

@end