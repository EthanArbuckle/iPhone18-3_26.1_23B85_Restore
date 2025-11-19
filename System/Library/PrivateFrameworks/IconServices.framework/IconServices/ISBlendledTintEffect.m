@interface ISBlendledTintEffect
- (ISBlendledTintEffect)initWithColor:(id)a3;
- (id)filterWithBackgroundImage:(id)a3 inputImage:(id)a4;
@end

@implementation ISBlendledTintEffect

- (ISBlendledTintEffect)initWithColor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ISBlendledTintEffect;
  v6 = [(ISBlendledTintEffect *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_color, a3);
  }

  return v7;
}

- (id)filterWithBackgroundImage:(id)a3 inputImage:(id)a4
{
  v6 = MEMORY[0x1E695F648];
  v7 = a4;
  v8 = a3;
  v9 = [v6 filterWithName:@"CIConstantColorGenerator"];
  v10 = [(ISBlendledTintEffect *)self color];
  v11 = [v10 ciColor];
  [v9 setValue:v11 forKey:*MEMORY[0x1E695FA78]];

  v12 = [MEMORY[0x1E695F648] filterWithName:@"CIBlendWithMask"];
  [v12 setValue:v7 forKey:*MEMORY[0x1E695FAC8]];

  [v12 setValue:v8 forKey:*MEMORY[0x1E695FA48]];
  v13 = [v9 outputImage];
  [v12 setValue:v13 forKey:*MEMORY[0x1E695FAB0]];

  return v12;
}

@end