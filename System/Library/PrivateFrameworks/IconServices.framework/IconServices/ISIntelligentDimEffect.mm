@interface ISIntelligentDimEffect
- (ISIntelligentDimEffect)init;
- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage;
@end

@implementation ISIntelligentDimEffect

- (ISIntelligentDimEffect)init
{
  v5.receiver = self;
  v5.super_class = ISIntelligentDimEffect;
  v2 = [(ISIntelligentDimEffect *)&v5 init];
  if (v2)
  {
    v3 = +[ISDefaults sharedInstance];
    v2->_flagDimming = [v3 isFlagDimmedDedicatedAssetsEnabled];
  }

  return v2;
}

- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage
{
  imageCopy = image;
  inputImageCopy = inputImage;
  v8 = objc_autoreleasePoolPush();
  v9 = inputImageCopy;
  v10 = +[ISDefaults sharedInstance];
  isDarkIconDimmingEnabled = [v10 isDarkIconDimmingEnabled];

  v12 = v9;
  if (isDarkIconDimmingEnabled)
  {
    v13 = -[ISDimmingConversion initWithCGImage:]([ISDimmingConversion alloc], "initWithCGImage:", [v9 CGImage]);
    v12 = v9;
    if ([(ISDimmingConversion *)v13 isDimmable])
    {
      createDimmedImage = [(ISDimmingConversion *)v13 createDimmedImage];
      v12 = v9;
      if (createDimmedImage)
      {
        v15 = createDimmedImage;
        v12 = [objc_alloc(MEMORY[0x1E695F658]) initWithCGImage:createDimmedImage];

        CFRelease(v15);
        if ([(ISIntelligentDimEffect *)self flagDimming])
        {
          v16 = MEMORY[0x1E695F658];
          magentaColor = [MEMORY[0x1E695F610] magentaColor];
          v18 = [v16 imageWithColor:magentaColor];

          v12 = v18;
        }
      }
    }
  }

  v19 = [MEMORY[0x1E695F648] filterWithName:@"CICrop"];
  v20 = MEMORY[0x1E695F688];
  [v12 extent];
  v21 = [v20 vectorWithCGRect:?];
  [v19 setValue:v21 forKey:@"inputRectangle"];

  [v19 setValue:v12 forKey:*MEMORY[0x1E695FAB0]];
  objc_autoreleasePoolPop(v8);

  return v19;
}

@end