@interface MonzaV4_1Output
- (MonzaV4_1Output)initWithAngle:(id)angle;
- (id)featureValueForName:(id)name;
@end

@implementation MonzaV4_1Output

- (MonzaV4_1Output)initWithAngle:(id)angle
{
  angleCopy = angle;
  v9.receiver = self;
  v9.super_class = MonzaV4_1Output;
  v6 = [(MonzaV4_1Output *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_angle, angle);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"angle"])
  {
    v4 = MEMORY[0x1E695FE60];
    angle = [(MonzaV4_1Output *)self angle];
    v6 = [v4 featureValueWithMultiArray:angle];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end