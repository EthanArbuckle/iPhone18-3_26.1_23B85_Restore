@interface ISSegmentTintEffect
- (ISSegmentTintEffect)initWithColor:(id)a3;
- (id)filterWithBackgroundImage:(id)a3 inputImage:(id)a4;
- (void)prepareSegmentedImageFromImage:(id)a3;
@end

@implementation ISSegmentTintEffect

- (ISSegmentTintEffect)initWithColor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ISSegmentTintEffect;
  v6 = [(ISSegmentTintEffect *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_color, a3);
  }

  return v7;
}

- (void)prepareSegmentedImageFromImage:(id)a3
{
  v9 = a3;
  v4 = +[ISDefaults sharedInstance];
  if (([(ISIconSegmentation *)v4 disableLegacyIconSegmentation]& 1) != 0)
  {
LABEL_2:

    goto LABEL_4;
  }

  v5 = [(ISSegmentTintEffect *)self segmentedImage];

  if (!v5)
  {
    v4 = [[ISIconSegmentation alloc] initWithIdiom:1];
    v6 = -[ISIconSegmentation createTintableImageMaskWithCGImage:tintableOpacityImageMask:](v4, "createTintableImageMaskWithCGImage:tintableOpacityImageMask:", [v9 CGImage], 0);
    if (v6)
    {
      v7 = v6;
      v8 = [objc_alloc(MEMORY[0x1E695F658]) initWithCGImage:v6];
      CFRelease(v7);
      [(ISSegmentTintEffect *)self setSegmentedImage:v8];
      [(ISSegmentTintEffect *)self setHasSegmentedImage:1];
    }

    goto LABEL_2;
  }

LABEL_4:
}

- (id)filterWithBackgroundImage:(id)a3 inputImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  [(ISSegmentTintEffect *)self prepareSegmentedImageFromImage:v7];
  v9 = [(ISSegmentTintEffect *)self segmentedImage];

  if (v9)
  {
    v10 = [ISTemplateTintEffect alloc];
    v11 = [(ISSegmentTintEffect *)self color];
    v12 = [(ISTemplateTintEffect *)v10 initWithColor:v11];

    v13 = [(ISSegmentTintEffect *)self segmentedImage];
    v14 = [(ISTemplateTintEffect *)v12 filterWithBackgroundImage:v6 inputImage:v13];
  }

  else
  {
    v13 = objc_alloc_init(ISGreyscaleEffect);
    v15 = [(ISGreyscaleEffect *)v13 filterWithBackgroundImage:v6 inputImage:v7];
    v16 = [MEMORY[0x1E695F648] filterWithName:@"CIConstantColorGenerator"];
    v17 = [(ISSegmentTintEffect *)self color];
    v18 = [v17 ciColor];
    [v16 setValue:v18 forKey:*MEMORY[0x1E695FA78]];

    v19 = [MEMORY[0x1E695F648] filterWithName:@"CIMultiplyCompositing"];
    v20 = [v16 outputImage];
    [v19 setValue:v20 forKey:*MEMORY[0x1E695FAB0]];

    v21 = [v15 outputImage];
    [v19 setValue:v21 forKey:*MEMORY[0x1E695FA48]];

    v12 = v19;
    v14 = v12;
  }

  objc_autoreleasePoolPop(v8);

  return v14;
}

@end