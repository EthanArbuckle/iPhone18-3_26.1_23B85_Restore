@interface ISMaskEffect
- (id)filterWithBackgroundImage:(id)a3 inputImage:(id)a4;
@end

@implementation ISMaskEffect

- (id)filterWithBackgroundImage:(id)a3 inputImage:(id)a4
{
  v5 = MEMORY[0x1E695F648];
  v6 = a4;
  v7 = a3;
  v8 = [v5 filterWithName:@"CISourceInCompositing"];
  [v8 setValue:v6 forKey:*MEMORY[0x1E695FAB0]];

  [v8 setValue:v7 forKey:*MEMORY[0x1E695FA48]];

  return v8;
}

@end