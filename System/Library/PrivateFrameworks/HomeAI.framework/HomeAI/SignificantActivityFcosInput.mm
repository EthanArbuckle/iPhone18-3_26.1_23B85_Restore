@interface SignificantActivityFcosInput
- (BOOL)setImage_PlaceholderWithCGImage:(CGImage *)a3 error:(id *)a4;
- (BOOL)setImage_PlaceholderWithURL:(id)a3 error:(id *)a4;
- (SignificantActivityFcosInput)initWithImage_Placeholder:(__CVBuffer *)a3;
- (SignificantActivityFcosInput)initWithImage_PlaceholderAtURL:(id)a3 error:(id *)a4;
- (SignificantActivityFcosInput)initWithImage_PlaceholderFromCGImage:(CGImage *)a3 error:(id *)a4;
- (id)featureValueForName:(id)a3;
- (void)dealloc;
@end

@implementation SignificantActivityFcosInput

- (SignificantActivityFcosInput)initWithImage_Placeholder:(__CVBuffer *)a3
{
  v7.receiver = self;
  v7.super_class = SignificantActivityFcosInput;
  v4 = [(SignificantActivityFcosInput *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_image_Placeholder = a3;
    CVPixelBufferRetain(a3);
  }

  return v5;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_image_Placeholder);
  v3.receiver = self;
  v3.super_class = SignificantActivityFcosInput;
  [(SignificantActivityFcosInput *)&v3 dealloc];
}

- (SignificantActivityFcosInput)initWithImage_PlaceholderFromCGImage:(CGImage *)a3 error:(id *)a4
{
  if (!self)
  {
    return 0;
  }

  v6 = self;
  v7 = objc_autoreleasePoolPush();
  v13 = 0;
  v8 = [MEMORY[0x277CBFEF8] featureValueWithCGImage:a3 pixelsWide:384 pixelsHigh:384 pixelFormatType:32 options:0 error:&v13];
  v9 = v13;
  if (v8)
  {
    v6 = -[SignificantActivityFcosInput initWithImage_Placeholder:](v6, "initWithImage_Placeholder:", [v8 imageBufferValue]);
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v7);
  if (a4)
  {
    v11 = v9;
    *a4 = v9;
  }

  return v10;
}

- (SignificantActivityFcosInput)initWithImage_PlaceholderAtURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (self)
  {
    v7 = objc_autoreleasePoolPush();
    v13 = 0;
    v8 = [MEMORY[0x277CBFEF8] featureValueWithImageAtURL:v6 pixelsWide:384 pixelsHigh:384 pixelFormatType:32 options:0 error:&v13];
    v9 = v13;
    if (v8)
    {
      self = -[SignificantActivityFcosInput initWithImage_Placeholder:](self, "initWithImage_Placeholder:", [v8 imageBufferValue]);
      v10 = self;
    }

    else
    {
      v10 = 0;
    }

    objc_autoreleasePoolPop(v7);
    if (a4)
    {
      v11 = v9;
      *a4 = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)setImage_PlaceholderWithCGImage:(CGImage *)a3 error:(id *)a4
{
  v7 = objc_autoreleasePoolPush();
  v12 = 0;
  v8 = [MEMORY[0x277CBFEF8] featureValueWithCGImage:a3 pixelsWide:384 pixelsHigh:384 pixelFormatType:32 options:0 error:&v12];
  v9 = v12;
  if (v8)
  {
    CVPixelBufferRelease([(SignificantActivityFcosInput *)self image_Placeholder]);
    -[SignificantActivityFcosInput setImage_Placeholder:](self, "setImage_Placeholder:", [v8 imageBufferValue]);
    CVPixelBufferRetain([(SignificantActivityFcosInput *)self image_Placeholder]);
  }

  objc_autoreleasePoolPop(v7);
  if (a4)
  {
    v10 = v9;
    *a4 = v9;
  }

  return v8 != 0;
}

- (BOOL)setImage_PlaceholderWithURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v12 = 0;
  v8 = [MEMORY[0x277CBFEF8] featureValueWithImageAtURL:v6 pixelsWide:384 pixelsHigh:384 pixelFormatType:32 options:0 error:&v12];
  v9 = v12;
  if (v8)
  {
    CVPixelBufferRelease([(SignificantActivityFcosInput *)self image_Placeholder]);
    -[SignificantActivityFcosInput setImage_Placeholder:](self, "setImage_Placeholder:", [v8 imageBufferValue]);
    CVPixelBufferRetain([(SignificantActivityFcosInput *)self image_Placeholder]);
  }

  objc_autoreleasePoolPop(v7);
  if (a4)
  {
    v10 = v9;
    *a4 = v9;
  }

  return v8 != 0;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"image_Placeholder"])
  {
    v4 = [MEMORY[0x277CBFEF8] featureValueWithPixelBuffer:{-[SignificantActivityFcosInput image_Placeholder](self, "image_Placeholder")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end