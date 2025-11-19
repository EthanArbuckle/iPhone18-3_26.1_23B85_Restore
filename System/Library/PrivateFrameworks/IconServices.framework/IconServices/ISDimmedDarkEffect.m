@interface ISDimmedDarkEffect
- (id)filterWithBackgroundImage:(id)a3 inputImage:(id)a4;
@end

@implementation ISDimmedDarkEffect

- (id)filterWithBackgroundImage:(id)a3 inputImage:(id)a4
{
  v4 = MEMORY[0x1E695F688];
  v5 = a3;
  v6 = [v4 vectorWithX:0.5 Y:0.0 Z:0.0 W:0.0];
  v7 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.5 Z:0.0 W:0.0];
  v8 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.5 W:0.0];
  v9 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:1.0];
  v10 = [MEMORY[0x1E695F688] vectorWithX:0.1 Y:0.1 Z:0.1 W:0.0];
  v11 = [MEMORY[0x1E695F648] filterWithName:@"CIColorMatrix"];
  [v11 setValue:v6 forKey:@"inputRVector"];
  [v11 setValue:v7 forKey:@"inputGVector"];
  [v11 setValue:v8 forKey:@"inputBVector"];
  [v11 setValue:v9 forKey:@"inputAVector"];
  [v11 setValue:v10 forKey:@"inputBiasVector"];
  [v11 setValue:v5 forKey:*MEMORY[0x1E695FAB0]];

  return v11;
}

@end