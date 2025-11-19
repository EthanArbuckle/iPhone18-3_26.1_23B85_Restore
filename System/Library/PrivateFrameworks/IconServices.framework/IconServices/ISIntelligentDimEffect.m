@interface ISIntelligentDimEffect
- (ISIntelligentDimEffect)init;
- (id)filterWithBackgroundImage:(id)a3 inputImage:(id)a4;
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

- (id)filterWithBackgroundImage:(id)a3 inputImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = v7;
  v10 = +[ISDefaults sharedInstance];
  v11 = [v10 isDarkIconDimmingEnabled];

  v12 = v9;
  if (v11)
  {
    v13 = -[ISDimmingConversion initWithCGImage:]([ISDimmingConversion alloc], "initWithCGImage:", [v9 CGImage]);
    v12 = v9;
    if ([(ISDimmingConversion *)v13 isDimmable])
    {
      v14 = [(ISDimmingConversion *)v13 createDimmedImage];
      v12 = v9;
      if (v14)
      {
        v15 = v14;
        v12 = [objc_alloc(MEMORY[0x1E695F658]) initWithCGImage:v14];

        CFRelease(v15);
        if ([(ISIntelligentDimEffect *)self flagDimming])
        {
          v16 = MEMORY[0x1E695F658];
          v17 = [MEMORY[0x1E695F610] magentaColor];
          v18 = [v16 imageWithColor:v17];

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