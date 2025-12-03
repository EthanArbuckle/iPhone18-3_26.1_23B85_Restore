@interface MonzaV4_1Input
- (BOOL)setInputImageWithCGImage:(CGImage *)image error:(id *)error;
- (BOOL)setInputImageWithURL:(id)l error:(id *)error;
- (MonzaV4_1Input)initWithInputImage:(__CVBuffer *)image;
- (MonzaV4_1Input)initWithInputImageAtURL:(id)l error:(id *)error;
- (MonzaV4_1Input)initWithInputImageFromCGImage:(CGImage *)image error:(id *)error;
- (id)featureValueForName:(id)name;
- (void)dealloc;
@end

@implementation MonzaV4_1Input

- (MonzaV4_1Input)initWithInputImage:(__CVBuffer *)image
{
  v7.receiver = self;
  v7.super_class = MonzaV4_1Input;
  v4 = [(MonzaV4_1Input *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_inputImage = image;
    CVPixelBufferRetain(image);
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

- (MonzaV4_1Input)initWithInputImageFromCGImage:(CGImage *)image error:(id *)error
{
  if (!self)
  {
    return 0;
  }

  selfCopy = self;
  v7 = objc_autoreleasePoolPush();
  v13 = 0;
  v8 = [MEMORY[0x1E695FE60] featureValueWithCGImage:image pixelsWide:224 pixelsHigh:224 pixelFormatType:1111970369 options:0 error:&v13];
  v9 = v13;
  if (v8)
  {
    selfCopy = -[MonzaV4_1Input initWithInputImage:](selfCopy, "initWithInputImage:", [v8 imageBufferValue]);
    v10 = selfCopy;
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v7);
  if (error)
  {
    v11 = v9;
    *error = v9;
  }

  return v10;
}

- (MonzaV4_1Input)initWithInputImageAtURL:(id)l error:(id *)error
{
  lCopy = l;
  if (self)
  {
    v7 = objc_autoreleasePoolPush();
    v13 = 0;
    v8 = [MEMORY[0x1E695FE60] featureValueWithImageAtURL:lCopy pixelsWide:224 pixelsHigh:224 pixelFormatType:1111970369 options:0 error:&v13];
    v9 = v13;
    if (v8)
    {
      self = -[MonzaV4_1Input initWithInputImage:](self, "initWithInputImage:", [v8 imageBufferValue]);
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    objc_autoreleasePoolPop(v7);
    if (error)
    {
      v11 = v9;
      *error = v9;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)setInputImageWithCGImage:(CGImage *)image error:(id *)error
{
  v7 = objc_autoreleasePoolPush();
  v12 = 0;
  v8 = [MEMORY[0x1E695FE60] featureValueWithCGImage:image pixelsWide:224 pixelsHigh:224 pixelFormatType:1111970369 options:0 error:&v12];
  v9 = v12;
  if (v8)
  {
    CVPixelBufferRelease([(MonzaV4_1Input *)self inputImage]);
    -[MonzaV4_1Input setInputImage:](self, "setInputImage:", [v8 imageBufferValue]);
    CVPixelBufferRetain([(MonzaV4_1Input *)self inputImage]);
  }

  objc_autoreleasePoolPop(v7);
  if (error)
  {
    v10 = v9;
    *error = v9;
  }

  return v8 != 0;
}

- (BOOL)setInputImageWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = objc_autoreleasePoolPush();
  v12 = 0;
  v8 = [MEMORY[0x1E695FE60] featureValueWithImageAtURL:lCopy pixelsWide:224 pixelsHigh:224 pixelFormatType:1111970369 options:0 error:&v12];
  v9 = v12;
  if (v8)
  {
    CVPixelBufferRelease([(MonzaV4_1Input *)self inputImage]);
    -[MonzaV4_1Input setInputImage:](self, "setInputImage:", [v8 imageBufferValue]);
    CVPixelBufferRetain([(MonzaV4_1Input *)self inputImage]);
  }

  objc_autoreleasePoolPop(v7);
  if (error)
  {
    v10 = v9;
    *error = v9;
  }

  return v8 != 0;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"inputImage"])
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