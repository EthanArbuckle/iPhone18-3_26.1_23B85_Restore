@interface NUANFImageResolver
+ (id)imageResourceResponseForFileURL:(id)l perserveColorSpace:(BOOL)space withSize:(CGSize)size andQuality:(unint64_t)quality;
@end

@implementation NUANFImageResolver

+ (id)imageResourceResponseForFileURL:(id)l perserveColorSpace:(BOOL)space withSize:(CGSize)size andQuality:(unint64_t)quality
{
  height = size.height;
  width = size.width;
  v9 = MEMORY[0x277CBEA90];
  lCopy = l;
  v11 = [v9 dataWithContentsOfURL:lCopy];
  mEMORY[0x277D550A0] = [MEMORY[0x277D550A0] sharedInstance];
  v13 = [mEMORY[0x277D550A0] dataIsAnimatedImage:v11];

  mEMORY[0x277D550A0]2 = [MEMORY[0x277D550A0] sharedInstance];
  v15 = mEMORY[0x277D550A0]2;
  if (v13)
  {
    v16 = [mEMORY[0x277D550A0]2 loadAnimatedImageFromImageData:v11 size:{width, height}];

    v17 = objc_alloc_init(MEMORY[0x277D55068]);
    [v17 setAnimatedImage:v16];
  }

  else
  {
    v16 = [mEMORY[0x277D550A0]2 imageFromData:v11 size:{width, height}];

    v17 = objc_alloc_init(MEMORY[0x277D550A8]);
    [v17 setImage:v16];
  }

  [v17 setFileURL:lCopy];

  [v17 setImageQuality:quality];

  return v17;
}

@end