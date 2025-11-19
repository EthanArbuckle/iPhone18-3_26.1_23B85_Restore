@interface NSURL(IconFoundationAdditions_Internal)
+ (id)coreGlyphsBundleURL;
+ (id)coreGlyphsPrivateBundleURL;
@end

@implementation NSURL(IconFoundationAdditions_Internal)

+ (id)coreGlyphsBundleURL
{
  if (coreGlyphsBundleURL_onceToken != -1)
  {
    +[NSURL(IconFoundationAdditions_Internal) coreGlyphsBundleURL];
  }

  v1 = coreGlyphsBundleURL_url;

  return v1;
}

+ (id)coreGlyphsPrivateBundleURL
{
  if (coreGlyphsPrivateBundleURL_onceToken != -1)
  {
    +[NSURL(IconFoundationAdditions_Internal) coreGlyphsPrivateBundleURL];
  }

  v1 = coreGlyphsPrivateBundleURL_url;

  return v1;
}

@end