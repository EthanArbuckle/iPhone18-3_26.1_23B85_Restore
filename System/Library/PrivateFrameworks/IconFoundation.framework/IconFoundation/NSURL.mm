@interface NSURL
@end

@implementation NSURL

uint64_t __62__NSURL_IconFoundationAdditions_Internal__coreGlyphsBundleURL__block_invoke()
{
  v0 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/System/Library/CoreServices/CoreGlyphs.bundle"];
  v1 = coreGlyphsBundleURL_url;
  coreGlyphsBundleURL_url = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __69__NSURL_IconFoundationAdditions_Internal__coreGlyphsPrivateBundleURL__block_invoke()
{
  v0 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/System/Library/CoreServices/CoreGlyphsPrivate.bundle"];
  v1 = coreGlyphsPrivateBundleURL_url;
  coreGlyphsPrivateBundleURL_url = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end