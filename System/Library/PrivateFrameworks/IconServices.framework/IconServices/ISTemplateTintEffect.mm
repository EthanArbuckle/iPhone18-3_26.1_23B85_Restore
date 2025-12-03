@interface ISTemplateTintEffect
- (ISTemplateTintEffect)initWithColor:(id)color;
- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage;
@end

@implementation ISTemplateTintEffect

- (ISTemplateTintEffect)initWithColor:(id)color
{
  colorCopy = color;
  v9.receiver = self;
  v9.super_class = ISTemplateTintEffect;
  v6 = [(ISTemplateTintEffect *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_color, color);
  }

  return v7;
}

- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage
{
  v5 = MEMORY[0x1E695F648];
  inputImageCopy = inputImage;
  v7 = [v5 filterWithName:@"CIConstantColorGenerator"];
  color = [(ISTemplateTintEffect *)self color];
  ciColor = [color ciColor];
  [v7 setValue:ciColor forKey:*MEMORY[0x1E695FA78]];

  v10 = [MEMORY[0x1E695F648] filterWithName:@"CISourceInCompositing"];
  outputImage = [v7 outputImage];
  [v10 setValue:outputImage forKey:*MEMORY[0x1E695FAB0]];

  [v10 setValue:inputImageCopy forKey:*MEMORY[0x1E695FA48]];

  return v10;
}

@end