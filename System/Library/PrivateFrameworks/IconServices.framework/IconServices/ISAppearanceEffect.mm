@interface ISAppearanceEffect
- (ISAppearanceEffect)initWithAppearance:(int64_t)appearance;
- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage;
@end

@implementation ISAppearanceEffect

- (ISAppearanceEffect)initWithAppearance:(int64_t)appearance
{
  v5.receiver = self;
  v5.super_class = ISAppearanceEffect;
  result = [(ISAppearanceEffect *)&v5 init];
  if (result)
  {
    result->_appearance = appearance;
  }

  return result;
}

- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage
{
  inputImageCopy = inputImage;
  if ([(ISAppearanceEffect *)self appearance]== 1)
  {
    v6 = [MEMORY[0x1E695F648] filterWithName:@"CIColorControls"];
    [v6 setValue:inputImageCopy forKey:@"inputImage"];
    v7 = &unk_1F1A65900;
    v8 = @"inputBrightness";
    v9 = v6;
LABEL_5:
    [v9 setValue:v7 forKey:v8];
    goto LABEL_7;
  }

  if ([(ISAppearanceEffect *)self appearance]== 2)
  {
    v9 = [MEMORY[0x1E695F648] filterWithName:@"CIPhotoEffectNoir"];
    v6 = v9;
    v8 = @"inputImage";
    v7 = inputImageCopy;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

@end