@interface ISTemplateEffect
- (ISTemplateEffect)init;
- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage;
@end

@implementation ISTemplateEffect

- (ISTemplateEffect)init
{
  v3.receiver = self;
  v3.super_class = ISTemplateEffect;
  return [(ISTemplateEffect *)&v3 init];
}

- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage
{
  inputImageCopy = inputImage;
  v5 = [MEMORY[0x1E695F648] filterWithName:@"CIAreaMinimumAlpha"];
  v6 = *MEMORY[0x1E695FAB0];
  [v5 setValue:inputImageCopy forKey:*MEMORY[0x1E695FAB0]];
  v7 = MEMORY[0x1E695F688];
  [inputImageCopy extent];
  v8 = [v7 vectorWithCGRect:?];
  [v5 setValue:v8 forKey:*MEMORY[0x1E695FAA8]];

  v17 = 0;
  _IS_sharedIconCompositorContext = [MEMORY[0x1E695F620] _IS_sharedIconCompositorContext];
  outputImage = [v5 outputImage];
  [_IS_sharedIconCompositorContext render:outputImage toBitmap:&v17 rowBytes:4 bounds:*MEMORY[0x1E695F910] format:0 colorSpace:{0.0, 0.0, 1.0, 1.0}];

  if (HIBYTE(v17))
  {
    v14 = [MEMORY[0x1E695F648] filterWithName:@"CIMaskToAlpha"];
    [v14 setValue:inputImageCopy forKey:v6];
  }

  else
  {
    white = [MEMORY[0x1E69A8968] white];
    v12 = [MEMORY[0x1E695F648] filterWithName:@"CIConstantColorGenerator"];
    ciColor = [white ciColor];
    [v12 setValue:ciColor forKey:*MEMORY[0x1E695FA78]];

    v14 = [MEMORY[0x1E695F648] filterWithName:@"CISourceInCompositing"];
    outputImage2 = [v12 outputImage];
    [v14 setValue:outputImage2 forKey:v6];

    [v14 setValue:inputImageCopy forKey:*MEMORY[0x1E695FA48]];
  }

  return v14;
}

@end