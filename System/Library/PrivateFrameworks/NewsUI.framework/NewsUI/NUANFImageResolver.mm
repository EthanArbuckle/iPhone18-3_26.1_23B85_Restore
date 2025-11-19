@interface NUANFImageResolver
+ (id)imageResourceResponseForFileURL:(id)a3 perserveColorSpace:(BOOL)a4 withSize:(CGSize)a5 andQuality:(unint64_t)a6;
@end

@implementation NUANFImageResolver

+ (id)imageResourceResponseForFileURL:(id)a3 perserveColorSpace:(BOOL)a4 withSize:(CGSize)a5 andQuality:(unint64_t)a6
{
  height = a5.height;
  width = a5.width;
  v9 = MEMORY[0x277CBEA90];
  v10 = a3;
  v11 = [v9 dataWithContentsOfURL:v10];
  v12 = [MEMORY[0x277D550A0] sharedInstance];
  v13 = [v12 dataIsAnimatedImage:v11];

  v14 = [MEMORY[0x277D550A0] sharedInstance];
  v15 = v14;
  if (v13)
  {
    v16 = [v14 loadAnimatedImageFromImageData:v11 size:{width, height}];

    v17 = objc_alloc_init(MEMORY[0x277D55068]);
    [v17 setAnimatedImage:v16];
  }

  else
  {
    v16 = [v14 imageFromData:v11 size:{width, height}];

    v17 = objc_alloc_init(MEMORY[0x277D550A8]);
    [v17 setImage:v16];
  }

  [v17 setFileURL:v10];

  [v17 setImageQuality:a6];

  return v17;
}

@end