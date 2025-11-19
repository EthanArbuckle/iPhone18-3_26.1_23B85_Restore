@interface ISBorderEffect
- (ISBorderEffect)initWithLineWidth:(double)a3 color:(id)a4;
- (id)filterWithBackgroundImage:(id)a3 inputImage:(id)a4;
@end

@implementation ISBorderEffect

- (ISBorderEffect)initWithLineWidth:(double)a3 color:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ISBorderEffect;
  v8 = [(ISBorderEffect *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_lineWidth = a3;
    objc_storeStrong(&v8->_color, a4);
  }

  return v9;
}

- (id)filterWithBackgroundImage:(id)a3 inputImage:(id)a4
{
  v25 = a3;
  v6 = a4;
  v7 = [(IFColor *)self->_color ciColor];
  v8 = v6;
  v24 = v8;
  v9 = 0;
  if (self->_lineWidth < 1)
  {
    v21 = v8;
  }

  else
  {
    v10 = 0;
    v29 = *MEMORY[0x1E695FA78];
    v27 = self;
    v28 = *MEMORY[0x1E695FB10];
    v11 = *MEMORY[0x1E695FAB0];
    v26 = *MEMORY[0x1E695FA48];
    v12 = v8;
    do
    {
      v13 = [MEMORY[0x1E695F648] filterWithName:{@"CUIInnerGlowOrShadowFilter", v24}];
      v14 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0];
      [v13 setValue:v14 forKey:@"inputOffset"];

      [v13 setValue:v7 forKey:v29];
      [v13 setValue:&unk_1F1A658E0 forKey:v28];
      [v13 setValue:&unk_1F1A658F0 forKey:@"inputRange"];
      [v13 setValue:v12 forKey:v11];
      v15 = v13;

      v16 = [MEMORY[0x1E695F648] filterWithName:@"CISourceOverCompositing"];
      v17 = [v15 outputImage];

      [v16 setValue:v17 forKey:v11];
      [v16 setValue:v12 forKey:v26];
      v18 = v16;
      v19 = [MEMORY[0x1E695F648] filterWithName:@"CISourceInCompositing"];
      v20 = [v18 outputImage];

      [v19 setValue:v20 forKey:v11];
      [v19 setValue:v12 forKey:v26];
      v9 = v19;
      v21 = [v9 outputImage];

      ++v10;
      v12 = v21;
    }

    while (v10 < v27->_lineWidth);
  }

  if (v25)
  {
    v22 = [MEMORY[0x1E695F648] filterWithName:@"CISourceOverCompositing"];
    [v22 setValue:v21 forKey:*MEMORY[0x1E695FAB0]];
    [v22 setValue:v25 forKey:*MEMORY[0x1E695FA48]];

    v9 = v22;
  }

  return v9;
}

@end