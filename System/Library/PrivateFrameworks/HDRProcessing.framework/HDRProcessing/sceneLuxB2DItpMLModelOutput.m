@interface sceneLuxB2DItpMLModelOutput
- (id)featureValueForName:(id)a3;
- (sceneLuxB2DItpMLModelOutput)initWithAnchor_points:(id)a3;
@end

@implementation sceneLuxB2DItpMLModelOutput

- (sceneLuxB2DItpMLModelOutput)initWithAnchor_points:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = sceneLuxB2DItpMLModelOutput;
  v6 = [(sceneLuxB2DItpMLModelOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_anchor_points, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"anchor_points"])
  {
    v4 = MEMORY[0x277CBFEF8];
    v5 = [(sceneLuxB2DItpMLModelOutput *)self anchor_points];
    v6 = [v4 featureValueWithMultiArray:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end