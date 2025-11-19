@interface ISSegmentDarkEffect
- (ISSegmentDarkEffect)init;
- (id)filterWithBackgroundImage:(id)a3 inputImage:(id)a4;
- (void)prepareSegmentedImageFromImage:(id)a3;
@end

@implementation ISSegmentDarkEffect

- (ISSegmentDarkEffect)init
{
  v3.receiver = self;
  v3.super_class = ISSegmentDarkEffect;
  return [(ISSegmentDarkEffect *)&v3 init];
}

- (void)prepareSegmentedImageFromImage:(id)a3
{
  v10 = a3;
  v4 = +[ISDefaults sharedInstance];
  if ([(ISIconSegmentation *)v4 isDarkIconSegmentationEnabled])
  {
    v5 = [(ISSegmentDarkEffect *)self segmentedImage];

    if (v5)
    {
      goto LABEL_6;
    }

    v4 = [[ISIconSegmentation alloc] initWithIdiom:1];
    v6 = +[ISDefaults sharedInstance];
    -[ISIconSegmentation setEnableColorEnhancementInDarkImage:](v4, "setEnableColorEnhancementInDarkImage:", [v6 isDarkIconColorEnhancementEnabled]);

    [(ISIconSegmentation *)v4 setEnableRecoloringSingleForegroundColorWithGradientBackgroundInDarkImage:1];
    v7 = -[ISIconSegmentation createDarkImageWithCGImage:](v4, "createDarkImageWithCGImage:", [v10 CGImage]);
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

- (id)filterWithBackgroundImage:(id)a3 inputImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = v7;
  [(ISSegmentDarkEffect *)self prepareSegmentedImageFromImage:v9];
  v10 = [(ISSegmentDarkEffect *)self segmentedImage];

  v11 = v9;
  if (v10)
  {
    v11 = [(ISSegmentDarkEffect *)self segmentedImage];
  }

  v12 = objc_alloc_init(ISIntelligentDimEffect);
  [(ISIntelligentDimEffect *)v12 setFlagDimming:0];
  v13 = [(ISIntelligentDimEffect *)v12 filterWithBackgroundImage:v6 inputImage:v11];

  objc_autoreleasePoolPop(v8);

  return v13;
}

@end