@interface ITKImageDataRequirements
+ (ITKImageDataRequirements)stickerRequirements;
+ (ITKImageDataRequirements)stickerThumbnailRequirements;
@end

@implementation ITKImageDataRequirements

+ (ITKImageDataRequirements)stickerRequirements
{
  v2 = objc_alloc_init(ITKImageDataRequirements);
  v3 = [*MEMORY[0x277CE1D90] identifier];
  [(ITKImageDataRequirements *)v2 setUti:v3];

  [(ITKImageDataRequirements *)v2 setMaxLength:900];
  [(ITKImageDataRequirements *)v2 setMinLength:300];
  [(ITKImageDataRequirements *)v2 setMaxDataLength:500000];

  return v2;
}

+ (ITKImageDataRequirements)stickerThumbnailRequirements
{
  v2 = objc_alloc_init(ITKImageDataRequirements);
  v3 = [*MEMORY[0x277CE1E10] identifier];
  [(ITKImageDataRequirements *)v2 setUti:v3];

  [(ITKImageDataRequirements *)v2 setMaxLength:100];
  [(ITKImageDataRequirements *)v2 setMinLength:50];
  [(ITKImageDataRequirements *)v2 setMaxDataLength:500000];

  return v2;
}

@end