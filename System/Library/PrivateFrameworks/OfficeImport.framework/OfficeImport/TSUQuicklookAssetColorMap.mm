@interface TSUQuicklookAssetColorMap
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)colorForResource:(id)resource;
+ (id)quicklookAssetMap;
@end

@implementation TSUQuicklookAssetColorMap

+ (id)quicklookAssetMap
{
  result = sharedInstance;
  if (!sharedInstance)
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___TSUQuicklookAssetColorMap;
    result = [objc_msgSendSuper2(&v4 allocWithZone_];
    sharedInstance = result;
  }

  return result;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  quicklookAssetMap = [self quicklookAssetMap];

  return quicklookAssetMap;
}

+ (id)colorForResource:(id)resource
{
  result = [objc_msgSend(objc_msgSend(self "quicklookAssetMap")];
  if (!result)
  {

    return +[OITSUColor grayColor];
  }

  return result;
}

@end