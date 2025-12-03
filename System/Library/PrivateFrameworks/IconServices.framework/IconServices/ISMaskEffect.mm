@interface ISMaskEffect
- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage;
@end

@implementation ISMaskEffect

- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage
{
  v5 = MEMORY[0x1E695F648];
  inputImageCopy = inputImage;
  imageCopy = image;
  v8 = [v5 filterWithName:@"CISourceInCompositing"];
  [v8 setValue:inputImageCopy forKey:*MEMORY[0x1E695FAB0]];

  [v8 setValue:imageCopy forKey:*MEMORY[0x1E695FA48]];

  return v8;
}

@end