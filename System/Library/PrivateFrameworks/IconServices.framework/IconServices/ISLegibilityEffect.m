@interface ISLegibilityEffect
- (ISLegibilityEffect)init;
- (id)filterWithBackgroundImage:(id)a3 inputImage:(id)a4;
@end

@implementation ISLegibilityEffect

- (ISLegibilityEffect)init
{
  v3.receiver = self;
  v3.super_class = ISLegibilityEffect;
  return [(ISLegibilityEffect *)&v3 init];
}

- (id)filterWithBackgroundImage:(id)a3 inputImage:(id)a4
{
  v5 = MEMORY[0x1E69A8968];
  v32 = a4;
  v31 = a3;
  v6 = [[v5 alloc] initWithWhite:1.0 alpha:1.0];
  v7 = [MEMORY[0x1E695F648] filterWithName:@"CIConstantColorGenerator"];
  v8 = [v6 ciColor];
  v9 = *MEMORY[0x1E695FA78];
  [v7 setValue:v8 forKey:*MEMORY[0x1E695FA78]];

  v10 = [MEMORY[0x1E695F648] filterWithName:@"CIDifferenceBlendMode"];
  v11 = [v7 outputImage];
  v12 = *MEMORY[0x1E695FAB0];
  [v10 setValue:v11 forKey:*MEMORY[0x1E695FAB0]];

  v13 = *MEMORY[0x1E695FA48];
  [v10 setValue:v31 forKey:*MEMORY[0x1E695FA48]];

  v14 = [objc_alloc(MEMORY[0x1E69A8968]) initWithWhite:1.0 alpha:0.25];
  v15 = [MEMORY[0x1E695F648] filterWithName:@"CIConstantColorGenerator"];
  v16 = [v14 ciColor];
  [v15 setValue:v16 forKey:v9];

  v17 = [MEMORY[0x1E695F648] filterWithName:@"CISourceOverCompositing"];
  v18 = [v15 outputImage];
  [v17 setValue:v18 forKey:v12];

  v19 = [v10 outputImage];
  [v17 setValue:v19 forKey:v13];

  v20 = [objc_alloc(MEMORY[0x1E69A8968]) initWithWhite:0.0 alpha:0.43];
  v21 = [MEMORY[0x1E695F648] filterWithName:@"CIConstantColorGenerator"];
  v22 = [v20 ciColor];
  [v21 setValue:v22 forKey:v9];

  v23 = [MEMORY[0x1E695F648] filterWithName:@"CIMultiplyBlendMode"];
  v24 = [v21 outputImage];
  [v23 setValue:v24 forKey:v12];

  v25 = [v17 outputImage];
  [v23 setValue:v25 forKey:v13];

  v26 = [MEMORY[0x1E695F648] filterWithName:@"CIColorBlendMode"];
  [v26 setValue:v31 forKey:v12];

  v27 = [v23 outputImage];
  [v26 setValue:v27 forKey:v13];

  v28 = [MEMORY[0x1E695F648] filterWithName:@"CISourceInCompositing"];
  v29 = [v26 outputImage];
  [v28 setValue:v29 forKey:v12];

  [v28 setValue:v32 forKey:v13];

  return v28;
}

@end