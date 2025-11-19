@interface MonzaV4_1Input
- (BOOL)setInputImageWithCGImage:(CGImage *)a3 error:(id *)a4;
- (BOOL)setInputImageWithURL:(id)a3 error:(id *)a4;
- (MonzaV4_1Input)initWithInputImage:(__CVBuffer *)a3;
- (MonzaV4_1Input)initWithInputImageAtURL:(id)a3 error:(id *)a4;
- (MonzaV4_1Input)initWithInputImageFromCGImage:(CGImage *)a3 error:(id *)a4;
- (id)featureValueForName:(id)a3;
- (void)dealloc;
@end

@implementation MonzaV4_1Input

- (MonzaV4_1Input)initWithInputImage:(__CVBuffer *)a3
{
  v7.receiver = self;
  v7.super_class = MonzaV4_1Input;
  v4 = [(MonzaV4_1Input *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_inputImage = a3;
    CVPixelBufferRetain(a3);
  }

  return v5;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_inputImage);
  v3.receiver = self;
  v3.super_class = MonzaV4_1Input;
  [(MonzaV4_1Input *)&v3 dealloc];
}

- (MonzaV4_1Input)initWithInputImageFromCGImage:(CGImage *)a3 error:(id *)a4
{
  if (!self)
  {
    return 0;
  }

  v6 = self;
  v7 = objc_autoreleasePoolPush();
  v13 = 0;
  v8 = [MEMORY[0x1E695FE60] featureValueWithCGImage:a3 pixelsWide:224 pixelsHigh:224 pixelFormatType:1111970369 options:0 error:&v13];
  v9 = v13;
  if (v8)
  {
    v6 = -[MonzaV4_1Input initWithInputImage:](v6, "initWithInputImage:", [v8 imageBufferValue]);
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

- (MonzaV4_1Input)initWithInputImageAtURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (self)
  {
    v7 = objc_autoreleasePoolPush();
    v13 = 0;
    v8 = [MEMORY[0x1E695FE60] featureValueWithImageAtURL:v6 pixelsWide:224 pixelsHigh:224 pixelFormatType:1111970369 options:0 error:&v13];
    v9 = v13;
    if (v8)
    {
      self = -[MonzaV4_1Input initWithInputImage:](self, "initWithInputImage:", [v8 imageBufferValue]);
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

- (BOOL)setInputImageWithCGImage:(CGImage *)a3 error:(id *)a4
{
  v7 = objc_autoreleasePoolPush();
  v12 = 0;
  v8 = [MEMORY[0x1E695FE60] featureValueWithCGImage:a3 pixelsWide:224 pixelsHigh:224 pixelFormatType:1111970369 options:0 error:&v12];
  v9 = v12;
  if (v8)
  {
    CVPixelBufferRelease([(MonzaV4_1Input *)self inputImage]);
    -[MonzaV4_1Input setInputImage:](self, "setInputImage:", [v8 imageBufferValue]);
    CVPixelBufferRetain([(MonzaV4_1Input *)self inputImage]);
  }

  objc_autoreleasePoolPop(v7);
  if (a4)
  {
    v10 = v9;
    *a4 = v9;
  }

  return v8 != 0;
}

- (BOOL)setInputImageWithURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v12 = 0;
  v8 = [MEMORY[0x1E695FE60] featureValueWithImageAtURL:v6 pixelsWide:224 pixelsHigh:224 pixelFormatType:1111970369 options:0 error:&v12];
  v9 = v12;
  if (v8)
  {
    CVPixelBufferRelease([(MonzaV4_1Input *)self inputImage]);
    -[MonzaV4_1Input setInputImage:](self, "setInputImage:", [v8 imageBufferValue]);
    CVPixelBufferRetain([(MonzaV4_1Input *)self inputImage]);
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
  if ([a3 isEqualToString:@"inputImage"])
  {
    v4 = [MEMORY[0x1E695FE60] featureValueWithPixelBuffer:{-[MonzaV4_1Input inputImage](self, "inputImage")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end