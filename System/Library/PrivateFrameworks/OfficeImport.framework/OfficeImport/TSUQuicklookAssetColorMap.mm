@interface TSUQuicklookAssetColorMap
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)colorForResource:(id)a3;
+ (id)quicklookAssetMap;
@end

@implementation TSUQuicklookAssetColorMap

+ (id)quicklookAssetMap
{
  result = sharedInstance;
  if (!sharedInstance)
  {
    v4.receiver = a1;
    v4.super_class = &OBJC_METACLASS___TSUQuicklookAssetColorMap;
    result = [objc_msgSendSuper2(&v4 allocWithZone_];
    sharedInstance = result;
  }

  return result;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v3 = [a1 quicklookAssetMap];

  return v3;
}

+ (id)colorForResource:(id)a3
{
  result = [objc_msgSend(objc_msgSend(a1 "quicklookAssetMap")];
  if (!result)
  {

    return +[OITSUColor grayColor];
  }

  return result;
}

@end