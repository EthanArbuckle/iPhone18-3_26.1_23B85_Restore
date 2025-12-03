@interface ISSegmentDarkEffect
- (ISSegmentDarkEffect)init;
- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage;
- (void)prepareSegmentedImageFromImage:(id)image;
@end

@implementation ISSegmentDarkEffect

- (ISSegmentDarkEffect)init
{
  v3.receiver = self;
  v3.super_class = ISSegmentDarkEffect;
  return [(ISSegmentDarkEffect *)&v3 init];
}

- (void)prepareSegmentedImageFromImage:(id)image
{
  imageCopy = image;
  v4 = +[ISDefaults sharedInstance];
  if ([(ISIconSegmentation *)v4 isDarkIconSegmentationEnabled])
  {
    segmentedImage = [(ISSegmentDarkEffect *)self segmentedImage];

    if (segmentedImage)
    {
      goto LABEL_6;
    }

    v4 = [[ISIconSegmentation alloc] initWithIdiom:1];
    v6 = +[ISDefaults sharedInstance];
    -[ISIconSegmentation setEnableColorEnhancementInDarkImage:](v4, "setEnableColorEnhancementInDarkImage:", [v6 isDarkIconColorEnhancementEnabled]);

    [(ISIconSegmentation *)v4 setEnableRecoloringSingleForegroundColorWithGradientBackgroundInDarkImage:1];
    v7 = -[ISIconSegmentation createDarkImageWithCGImage:](v4, "createDarkImageWithCGImage:", [imageCopy CGImage]);
    if (v7)
    {
      v8 = v7;
      v9 = [objc_alloc(MEMORY[0x1E695F658]) initWithCGImage:v7];
      CFRelease(v8);
      [(ISSegmentDarkEffect *)self setSegmentedImage:v9];
      [(ISSegmentDarkEffect *)self setHasSegmentedImage:1];
    }
  }

LABEL_6:
}

- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage
{
  imageCopy = image;
  inputImageCopy = inputImage;
  v8 = objc_autoreleasePoolPush();
  v9 = inputImageCopy;
  [(ISSegmentDarkEffect *)self prepareSegmentedImageFromImage:v9];
  segmentedImage = [(ISSegmentDarkEffect *)self segmentedImage];

  segmentedImage2 = v9;
  if (segmentedImage)
  {
    segmentedImage2 = [(ISSegmentDarkEffect *)self segmentedImage];
  }

  v12 = objc_alloc_init(ISIntelligentDimEffect);
  [(ISIntelligentDimEffect *)v12 setFlagDimming:0];
  v13 = [(ISIntelligentDimEffect *)v12 filterWithBackgroundImage:imageCopy inputImage:segmentedImage2];

  objc_autoreleasePoolPop(v8);

  return v13;
}

@end