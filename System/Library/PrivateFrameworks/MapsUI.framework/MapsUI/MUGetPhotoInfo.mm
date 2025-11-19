@interface MUGetPhotoInfo
@end

@implementation MUGetPhotoInfo

uint64_t ___MUGetPhotoInfo_block_invoke()
{
  _MUGetPhotoInfo_options = [MEMORY[0x1E69A21D8] defaultPhotoOptionsWithAllowSmaller:1];

  return MEMORY[0x1EEE66BB8]();
}

@end