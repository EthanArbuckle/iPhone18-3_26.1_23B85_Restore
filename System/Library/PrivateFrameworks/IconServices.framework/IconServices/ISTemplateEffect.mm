@interface ISTemplateEffect
- (ISTemplateEffect)init;
- (id)filterWithBackgroundImage:(id)a3 inputImage:(id)a4;
@end

@implementation ISTemplateEffect

- (ISTemplateEffect)init
{
  v3.receiver = self;
  v3.super_class = ISTemplateEffect;
  return [(ISTemplateEffect *)&v3 init];
}

- (id)filterWithBackgroundImage:(id)a3 inputImage:(id)a4
{
  v4 = a4;
  v5 = [MEMORY[0x1E695F648] filterWithName:@"CIAreaMinimumAlpha"];
  v6 = *MEMORY[0x1E695FAB0];
  [v5 setValue:v4 forKey:*MEMORY[0x1E695FAB0]];
  v7 = MEMORY[0x1E695F688];
  [v4 extent];
  v8 = [v7 vectorWithCGRect:?];
  [v5 setValue:v8 forKey:*MEMORY[0x1E695FAA8]];

  v17 = 0;
  v9 = [MEMORY[0x1E695F620] _IS_sharedIconCompositorContext];
  v10 = [v5 outputImage];
  [v9 render:v10 toBitmap:&v17 rowBytes:4 bounds:*MEMORY[0x1E695F910] format:0 colorSpace:{0.0, 0.0, 1.0, 1.0}];

  if (HIBYTE(v17))
  {
    v14 = [MEMORY[0x1E695F648] filterWithName:@"CIMaskToAlpha"];
    [v14 setValue:v4 forKey:v6];
  }

  else
  {
    v11 = [MEMORY[0x1E69A8968] white];
    v12 = [MEMORY[0x1E695F648] filterWithName:@"CIConstantColorGenerator"];
    v13 = [v11 ciColor];
    [v12 setValue:v13 forKey:*MEMORY[0x1E695FA78]];

    v14 = [MEMORY[0x1E695F648] filterWithName:@"CISourceInCompositing"];
    v15 = [v12 outputImage];
    [v14 setValue:v15 forKey:v6];

    [v14 setValue:v4 forKey:*MEMORY[0x1E695FA48]];
  }

  return v14;
}

@end