@interface ISEmbossedEffect
- (CGSize)offset;
- (ISEmbossedEffect)init;
- (id)filterWithBackgroundImage:(id)a3 inputImage:(id)a4;
@end

@implementation ISEmbossedEffect

- (ISEmbossedEffect)init
{
  v3.receiver = self;
  v3.super_class = ISEmbossedEffect;
  result = [(ISEmbossedEffect *)&v3 init];
  if (result)
  {
    result->_variant = 0;
  }

  return result;
}

- (id)filterWithBackgroundImage:(id)a3 inputImage:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E695F648];
  v8 = a4;
  v9 = [v7 filterWithName:@"CIColorMatrix"];
  v10 = *MEMORY[0x1E695FAB0];
  v59 = v6;
  [v9 setValue:v6 forKey:*MEMORY[0x1E695FAB0]];
  variant = self->_variant;
  if (variant > 3)
  {
    v14 = 0.02;
    v13 = 0.2;
    v12 = 0.43;
  }

  else
  {
    v12 = dbl_1A782D070[variant];
    v13 = dbl_1A782D090[variant];
    v14 = dbl_1A782D0B0[variant];
  }

  v15 = +[ISDefaults sharedInstance];
  v16 = [v15 isSolariumEnabled];

  v17 = 1.0;
  if (v16)
  {
    v12 = 0.0;
    v17 = 0.3;
    v13 = 0.0;
    v14 = 0.0;
  }

  v18 = [MEMORY[0x1E695F688] vectorWithX:v14 Y:v14 Z:v14 W:0.0];
  [v9 setValue:v18 forKey:@"inputRVector"];

  v19 = [MEMORY[0x1E695F688] vectorWithX:v13 Y:v13 Z:v13 W:0.0];
  [v9 setValue:v19 forKey:@"inputGVector"];

  v20 = [MEMORY[0x1E695F688] vectorWithX:v12 Y:v12 Z:v12 W:0.0];
  [v9 setValue:v20 forKey:@"inputBVector"];

  v21 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:v17];
  [v9 setValue:v21 forKey:@"inputAVector"];

  v22 = [MEMORY[0x1E695F648] filterWithName:@"CUIInnerGlowOrShadowFilter"];
  v23 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:-2.0];
  [v22 setValue:v23 forKey:@"inputOffset"];

  v24 = [MEMORY[0x1E695F610] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.11];
  v25 = *MEMORY[0x1E695FA78];
  v58 = *MEMORY[0x1E695FA78];
  [v22 setValue:v24 forKey:*MEMORY[0x1E695FA78]];

  v26 = [MEMORY[0x1E696AD98] numberWithDouble:2.0];
  [v22 setValue:v26 forKey:@"inputRange"];

  LODWORD(v27) = 1074174045;
  v28 = [MEMORY[0x1E696AD98] numberWithFloat:v27];
  [v22 setValue:v28 forKey:@"inputRadius"];

  [v22 setValue:v8 forKey:v10];
  v29 = [MEMORY[0x1E695F648] filterWithName:@"CILinearBurnBlendMode"];
  v30 = [v22 outputImage];
  [v29 setValue:v30 forKey:v10];

  v31 = [v9 outputImage];
  v32 = v8;
  v33 = *MEMORY[0x1E695FA48];
  [v29 setValue:v31 forKey:*MEMORY[0x1E695FA48]];

  v34 = [MEMORY[0x1E695F648] filterWithName:@"CUIInnerGlowOrShadowFilter"];
  v35 = [MEMORY[0x1E696AD98] numberWithDouble:2.0];
  v57 = *MEMORY[0x1E695FB10];
  [v34 setValue:v35 forKey:?];

  v36 = [MEMORY[0x1E695F610] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.07];
  [v34 setValue:v36 forKey:v25];

  v37 = [MEMORY[0x1E696AD98] numberWithDouble:1.0];
  [v34 setValue:v37 forKey:@"inputRange"];

  [v34 setValue:v32 forKey:v10];
  v38 = [MEMORY[0x1E695F648] filterWithName:@"CIOverlayBlendMode"];
  v39 = [v34 outputImage];
  [v38 setValue:v39 forKey:v10];

  v40 = [v29 outputImage];
  [v38 setValue:v40 forKey:v33];

  v41 = [MEMORY[0x1E695F648] filterWithName:@"CISourceInCompositing"];
  v42 = [v38 outputImage];
  [v41 setValue:v42 forKey:v10];

  [v41 setValue:v32 forKey:v33];
  v43 = [MEMORY[0x1E695F648] filterWithName:@"CISourceOverCompositing"];
  v44 = [v41 outputImage];
  [v43 setValue:v44 forKey:v10];

  [v43 setValue:v59 forKey:v33];
  v45 = v43;

  v46 = [MEMORY[0x1E695F610] colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.2];
  v47 = [MEMORY[0x1E695F648] filterWithName:@"CUIOuterGlowOrShadowFilter"];
  v48 = [MEMORY[0x1E696AD98] numberWithDouble:2.0];
  [v47 setValue:v48 forKey:v57];

  v49 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:-2.0];
  [v47 setValue:v49 forKey:@"inputOffset"];

  [v47 setValue:v46 forKey:v58];
  v50 = [MEMORY[0x1E696AD98] numberWithDouble:2.0];
  [v47 setValue:v50 forKey:@"inputRange"];

  [v47 setValue:v32 forKey:v10];
  v51 = [MEMORY[0x1E695F648] filterWithName:@"CISourceOutCompositing"];
  v52 = [v47 outputImage];
  [v51 setValue:v52 forKey:v10];

  [v51 setValue:v32 forKey:v33];
  v53 = [MEMORY[0x1E695F648] filterWithName:@"CILinearDodgeBlendMode"];
  v54 = [v51 outputImage];
  [v53 setValue:v54 forKey:v10];

  v55 = [v45 outputImage];

  [v53 setValue:v55 forKey:v33];

  return v53;
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