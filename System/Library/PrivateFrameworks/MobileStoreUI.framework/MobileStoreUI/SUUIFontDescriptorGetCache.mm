@interface SUUIFontDescriptorGetCache
@end

@implementation SUUIFontDescriptorGetCache

uint64_t ___SUUIFontDescriptorGetCache_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = _SUUIFontDescriptorGetCache_fontDescriptorCache;
  _SUUIFontDescriptorGetCache_fontDescriptorCache = v0;

  v2 = _SUUIFontDescriptorGetCache_fontDescriptorCache;

  return [v2 setName:@"com.apple.iTunesStoreUI.SUUIFontDescriptor.cache"];
}

@end