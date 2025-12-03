@interface ISBorderEffect
- (ISBorderEffect)initWithLineWidth:(double)width color:(id)color;
- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage;
@end

@implementation ISBorderEffect

- (ISBorderEffect)initWithLineWidth:(double)width color:(id)color
{
  colorCopy = color;
  v11.receiver = self;
  v11.super_class = ISBorderEffect;
  v8 = [(ISBorderEffect *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_lineWidth = width;
    objc_storeStrong(&v8->_color, color);
  }

  return v9;
}

- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage
{
  imageCopy = image;
  inputImageCopy = inputImage;
  ciColor = [(IFColor *)self->_color ciColor];
  v8 = inputImageCopy;
  v24 = v8;
  v9 = 0;
  if (self->_lineWidth < 1)
  {
    outputImage3 = v8;
  }

  else
  {
    v10 = 0;
    v29 = *MEMORY[0x1E695FA78];
    selfCopy = self;
    v28 = *MEMORY[0x1E695FB10];
    v11 = *MEMORY[0x1E695FAB0];
    v26 = *MEMORY[0x1E695FA48];
    v12 = v8;
    do
    {
      v13 = [MEMORY[0x1E695F648] filterWithName:{@"CUIInnerGlowOrShadowFilter", v24}];
      v14 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0];
      [v13 setValue:v14 forKey:@"inputOffset"];

      [v13 setValue:ciColor forKey:v29];
      [v13 setValue:&unk_1F1A658E0 forKey:v28];
      [v13 setValue:&unk_1F1A658F0 forKey:@"inputRange"];
      [v13 setValue:v12 forKey:v11];
      v15 = v13;

      v16 = [MEMORY[0x1E695F648] filterWithName:@"CISourceOverCompositing"];
      outputImage = [v15 outputImage];

      [v16 setValue:outputImage forKey:v11];
      [v16 setValue:v12 forKey:v26];
      v18 = v16;
      v19 = [MEMORY[0x1E695F648] filterWithName:@"CISourceInCompositing"];
      outputImage2 = [v18 outputImage];

      [v19 setValue:outputImage2 forKey:v11];
      [v19 setValue:v12 forKey:v26];
      v9 = v19;
      outputImage3 = [v9 outputImage];

      ++v10;
      v12 = outputImage3;
    }

    while (v10 < selfCopy->_lineWidth);
  }

  if (imageCopy)
  {
    v22 = [MEMORY[0x1E695F648] filterWithName:@"CISourceOverCompositing"];
    [v22 setValue:outputImage3 forKey:*MEMORY[0x1E695FAB0]];
    [v22 setValue:imageCopy forKey:*MEMORY[0x1E695FA48]];

    v9 = v22;
  }

  return v9;
}

@end