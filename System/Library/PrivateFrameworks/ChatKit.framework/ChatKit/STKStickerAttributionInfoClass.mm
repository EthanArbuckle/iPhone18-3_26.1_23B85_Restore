@interface STKStickerAttributionInfoClass
@end

@implementation STKStickerAttributionInfoClass

Class __get_STKStickerAttributionInfoClass_block_invoke(uint64_t a1)
{
  StickersLibraryCore();
  result = objc_getClass("_STKStickerAttributionInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_STKStickerAttributionInfoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end