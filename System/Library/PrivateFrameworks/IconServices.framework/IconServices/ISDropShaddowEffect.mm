@interface ISDropShaddowEffect
- (CGSize)offset;
- (ISDropShaddowEffect)init;
- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage;
@end

@implementation ISDropShaddowEffect

- (ISDropShaddowEffect)init
{
  v7.receiver = self;
  v7.super_class = ISDropShaddowEffect;
  v2 = [(ISDropShaddowEffect *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 40) = xmmword_1A78251F0;
    *(v2 + 8) = xmmword_1A7825200;
    v4 = [objc_alloc(MEMORY[0x1E69A8968]) initWithWhite:0.0 alpha:0.5];
    color = v3->_color;
    v3->_color = v4;

    v3->_spread = 0.0;
  }

  return v3;
}

- (id)filterWithBackgroundImage:(id)image inputImage:(id)inputImage
{
  scale = self->_scale;
  color = self->_color;
  inputImageCopy = inputImage;
  ciColor = [(IFColor *)color ciColor];
  v9 = [MEMORY[0x1E695F648] filterWithName:@"CUIOuterGlowOrShadowFilter"];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:scale];
  [v9 setValue:v10 forKey:*MEMORY[0x1E695FB10]];

  v11 = MEMORY[0x1E695F688];
  [(ISDropShaddowEffect *)self offset];
  v13 = scale * v12;
  [(ISDropShaddowEffect *)self offset];
  v15 = [v11 vectorWithX:v13 Y:scale * v14];
  [v9 setValue:v15 forKey:@"inputOffset"];

  [v9 setValue:ciColor forKey:*MEMORY[0x1E695FA78]];
  v16 = MEMORY[0x1E696AD98];
  [(ISDropShaddowEffect *)self blur];
  v18 = [v16 numberWithDouble:scale * v17];
  [v9 setValue:v18 forKey:@"inputSize"];

  v19 = [MEMORY[0x1E696AD98] numberWithDouble:scale];
  [v9 setValue:v19 forKey:@"inputRange"];

  v20 = [MEMORY[0x1E696AD98] numberWithDouble:scale * self->_spread];
  [v9 setValue:v20 forKey:@"inputSpread"];

  v21 = *MEMORY[0x1E695FAB0];
  [v9 setValue:inputImageCopy forKey:*MEMORY[0x1E695FAB0]];
  v22 = [MEMORY[0x1E695F648] filterWithName:@"CISourceOverCompositing"];
  [v22 setValue:inputImageCopy forKey:v21];

  outputImage = [v9 outputImage];
  [v22 setValue:outputImage forKey:*MEMORY[0x1E695FA48]];

  return v22;
}

- (CGSize)offset
{
  objc_copyStruct(v4, &self->_offset, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end