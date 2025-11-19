@interface MonzaV4_1Output
- (MonzaV4_1Output)initWithAngle:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation MonzaV4_1Output

- (MonzaV4_1Output)initWithAngle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MonzaV4_1Output;
  v6 = [(MonzaV4_1Output *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_angle, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"angle"])
  {
    v4 = MEMORY[0x1E695FE60];
    v5 = [(MonzaV4_1Output *)self angle];
    v6 = [v4 featureValueWithMultiArray:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end