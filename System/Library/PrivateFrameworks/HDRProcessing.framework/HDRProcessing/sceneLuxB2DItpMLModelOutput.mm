@interface sceneLuxB2DItpMLModelOutput
- (id)featureValueForName:(id)name;
- (sceneLuxB2DItpMLModelOutput)initWithAnchor_points:(id)anchor_points;
@end

@implementation sceneLuxB2DItpMLModelOutput

- (sceneLuxB2DItpMLModelOutput)initWithAnchor_points:(id)anchor_points
{
  anchor_pointsCopy = anchor_points;
  v9.receiver = self;
  v9.super_class = sceneLuxB2DItpMLModelOutput;
  v6 = [(sceneLuxB2DItpMLModelOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_anchor_points, anchor_points);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"anchor_points"])
  {
    v4 = MEMORY[0x277CBFEF8];
    anchor_points = [(sceneLuxB2DItpMLModelOutput *)self anchor_points];
    v6 = [v4 featureValueWithMultiArray:anchor_points];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end