@interface ISBlendledTintEffect
- (ISBlendledTintEffect)initWithColor:(id)color;
- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage;
@end

@implementation ISBlendledTintEffect

- (ISBlendledTintEffect)initWithColor:(id)color
{
  colorCopy = color;
  v9.receiver = self;
  v9.super_class = ISBlendledTintEffect;
  v6 = [(ISBlendledTintEffect *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_color, color);
  }

  return v7;
}

- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage
{
  v6 = MEMORY[0x1E695F648];
  inputImageCopy = inputImage;
  imageCopy = image;
  v9 = [v6 filterWithName:@"CIConstantColorGenerator"];
  color = [(ISBlendledTintEffect *)self color];
  ciColor = [color ciColor];
  [v9 setValue:ciColor forKey:*MEMORY[0x1E695FA78]];

  v12 = [MEMORY[0x1E695F648] filterWithName:@"CIBlendWithMask"];
  [v12 setValue:inputImageCopy forKey:*MEMORY[0x1E695FAC8]];

  [v12 setValue:imageCopy forKey:*MEMORY[0x1E695FA48]];
  outputImage = [v9 outputImage];
  [v12 setValue:outputImage forKey:*MEMORY[0x1E695FAB0]];

  return v12;
}

@end