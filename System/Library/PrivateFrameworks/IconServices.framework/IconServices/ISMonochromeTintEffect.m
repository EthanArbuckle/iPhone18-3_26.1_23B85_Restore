@interface ISMonochromeTintEffect
- (ISMonochromeTintEffect)initWithColor:(id)a3;
- (id)filterWithBackgroundImage:(id)a3 inputImage:(id)a4;
@end

@implementation ISMonochromeTintEffect

- (ISMonochromeTintEffect)initWithColor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ISMonochromeTintEffect;
  v6 = [(ISMonochromeTintEffect *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_color, a3);
  }

  return v7;
}

- (id)filterWithBackgroundImage:(id)a3 inputImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x1E695F648] filterWithName:@"CIColorMonochrome"];
  [v9 setValue:v7 forKey:*MEMORY[0x1E695FAB0]];
  v10 = [(ISMonochromeTintEffect *)self color];
  v11 = [v10 ciColor];
  [v9 setValue:v11 forKey:*MEMORY[0x1E695FA78]];

  objc_autoreleasePoolPop(v8);

  return v9;
}

@end