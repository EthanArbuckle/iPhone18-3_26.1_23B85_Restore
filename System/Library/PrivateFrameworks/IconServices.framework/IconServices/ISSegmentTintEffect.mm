@interface ISSegmentTintEffect
- (ISSegmentTintEffect)initWithColor:(id)color;
- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage;
- (void)prepareSegmentedImageFromImage:(id)image;
@end

@implementation ISSegmentTintEffect

- (ISSegmentTintEffect)initWithColor:(id)color
{
  colorCopy = color;
  v9.receiver = self;
  v9.super_class = ISSegmentTintEffect;
  v6 = [(ISSegmentTintEffect *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_color, color);
  }

  return v7;
}

- (void)prepareSegmentedImageFromImage:(id)image
{
  imageCopy = image;
  v4 = +[ISDefaults sharedInstance];
  if (([(ISIconSegmentation *)v4 disableLegacyIconSegmentation]& 1) != 0)
  {
LABEL_2:

    goto LABEL_4;
  }

  segmentedImage = [(ISSegmentTintEffect *)self segmentedImage];

  if (!segmentedImage)
  {
    v4 = [[ISIconSegmentation alloc] initWithIdiom:1];
    v6 = -[ISIconSegmentation createTintableImageMaskWithCGImage:tintableOpacityImageMask:](v4, "createTintableImageMaskWithCGImage:tintableOpacityImageMask:", [imageCopy CGImage], 0);
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

- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage
{
  imageCopy = image;
  inputImageCopy = inputImage;
  v8 = objc_autoreleasePoolPush();
  [(ISSegmentTintEffect *)self prepareSegmentedImageFromImage:inputImageCopy];
  segmentedImage = [(ISSegmentTintEffect *)self segmentedImage];

  if (segmentedImage)
  {
    v10 = [ISTemplateTintEffect alloc];
    color = [(ISSegmentTintEffect *)self color];
    v12 = [(ISTemplateTintEffect *)v10 initWithColor:color];

    segmentedImage2 = [(ISSegmentTintEffect *)self segmentedImage];
    v14 = [(ISTemplateTintEffect *)v12 filterWithBackgroundImage:imageCopy inputImage:segmentedImage2];
  }

  else
  {
    segmentedImage2 = objc_alloc_init(ISGreyscaleEffect);
    v15 = [(ISGreyscaleEffect *)segmentedImage2 filterWithBackgroundImage:imageCopy inputImage:inputImageCopy];
    v16 = [MEMORY[0x1E695F648] filterWithName:@"CIConstantColorGenerator"];
    color2 = [(ISSegmentTintEffect *)self color];
    ciColor = [color2 ciColor];
    [v16 setValue:ciColor forKey:*MEMORY[0x1E695FA78]];

    v19 = [MEMORY[0x1E695F648] filterWithName:@"CIMultiplyCompositing"];
    outputImage = [v16 outputImage];
    [v19 setValue:outputImage forKey:*MEMORY[0x1E695FAB0]];

    outputImage2 = [v15 outputImage];
    [v19 setValue:outputImage2 forKey:*MEMORY[0x1E695FA48]];

    v12 = v19;
    v14 = v12;
  }

  objc_autoreleasePoolPop(v8);

  return v14;
}

@end