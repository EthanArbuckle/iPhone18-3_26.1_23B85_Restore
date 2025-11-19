@interface STKStickerUIStickerRepresentationClass
@end

@implementation STKStickerUIStickerRepresentationClass

Class __get_STKStickerUIStickerRepresentationClass_block_invoke(uint64_t a1)
{
  StickersLibraryCore();
  result = objc_getClass("_STKStickerUIStickerRepresentation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  get_STKStickerUIStickerRepresentationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end