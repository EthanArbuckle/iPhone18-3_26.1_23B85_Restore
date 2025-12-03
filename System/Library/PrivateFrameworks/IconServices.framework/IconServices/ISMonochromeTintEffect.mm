@interface ISMonochromeTintEffect
- (ISMonochromeTintEffect)initWithColor:(id)color;
- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage;
@end

@implementation ISMonochromeTintEffect

- (ISMonochromeTintEffect)initWithColor:(id)color
{
  colorCopy = color;
  v9.receiver = self;
  v9.super_class = ISMonochromeTintEffect;
  v6 = [(ISMonochromeTintEffect *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_color, color);
  }

  return v7;
}

- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage
{
  imageCopy = image;
  inputImageCopy = inputImage;
  v8 = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x1E695F648] filterWithName:@"CIColorMonochrome"];
  [v9 setValue:inputImageCopy forKey:*MEMORY[0x1E695FAB0]];
  color = [(ISMonochromeTintEffect *)self color];
  ciColor = [color ciColor];
  [v9 setValue:ciColor forKey:*MEMORY[0x1E695FA78]];

  objc_autoreleasePoolPop(v8);

  return v9;
}

@end