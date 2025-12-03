@interface ISBlurEffect
- (ISBlurEffect)initWithRadius:(double)radius;
- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage;
@end

@implementation ISBlurEffect

- (ISBlurEffect)initWithRadius:(double)radius
{
  v5.receiver = self;
  v5.super_class = ISBlurEffect;
  result = [(ISBlurEffect *)&v5 init];
  if (result)
  {
    result->_radius = radius;
  }

  return result;
}

- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage
{
  v5 = MEMORY[0x1E695F648];
  inputImageCopy = inputImage;
  v7 = [v5 filterWithName:@"CIAffineClamp"];
  v8 = *MEMORY[0x1E695FAB0];
  [v7 setValue:inputImageCopy forKey:*MEMORY[0x1E695FAB0]];

  v9 = *(MEMORY[0x1E695EFD0] + 16);
  v15[0] = *MEMORY[0x1E695EFD0];
  v15[1] = v9;
  v15[2] = *(MEMORY[0x1E695EFD0] + 32);
  v10 = [MEMORY[0x1E696B098] valueWithBytes:v15 objCType:"{CGAffineTransform=dddddd}"];
  [v7 setValue:v10 forKey:@"inputTransform"];

  v11 = [MEMORY[0x1E695F648] filterWithName:@"CIDiscBlur"];
  outputImage = [v7 outputImage];
  [v11 setValue:outputImage forKey:v8];

  v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_radius];
  [v11 setValue:v13 forKey:*MEMORY[0x1E695FB10]];

  return v11;
}

@end