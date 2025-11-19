@interface ISTemplateTintEffect
- (ISTemplateTintEffect)initWithColor:(id)a3;
- (id)filterWithBackgroundImage:(id)a3 inputImage:(id)a4;
@end

@implementation ISTemplateTintEffect

- (ISTemplateTintEffect)initWithColor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ISTemplateTintEffect;
  v6 = [(ISTemplateTintEffect *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_color, a3);
  }

  return v7;
}

- (id)filterWithBackgroundImage:(id)a3 inputImage:(id)a4
{
  v5 = MEMORY[0x1E695F648];
  v6 = a4;
  v7 = [v5 filterWithName:@"CIConstantColorGenerator"];
  v8 = [(ISTemplateTintEffect *)self color];
  v9 = [v8 ciColor];
  [v7 setValue:v9 forKey:*MEMORY[0x1E695FA78]];

  v10 = [MEMORY[0x1E695F648] filterWithName:@"CISourceInCompositing"];
  v11 = [v7 outputImage];
  [v10 setValue:v11 forKey:*MEMORY[0x1E695FAB0]];

  [v10 setValue:v6 forKey:*MEMORY[0x1E695FA48]];

  return v10;
}

@end