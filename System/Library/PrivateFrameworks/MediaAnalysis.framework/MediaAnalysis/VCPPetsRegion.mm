@interface VCPPetsRegion
- (CGRect)bound;
- (VCPPetsRegion)initWith:(CGRect)with confidence:(float)confidence;
@end

@implementation VCPPetsRegion

- (VCPPetsRegion)initWith:(CGRect)with confidence:(float)confidence
{
  height = with.size.height;
  width = with.size.width;
  y = with.origin.y;
  x = with.origin.x;
  v10.receiver = self;
  v10.super_class = VCPPetsRegion;
  result = [(VCPPetsRegion *)&v10 init];
  if (result)
  {
    result->_bound.origin.x = x;
    result->_bound.origin.y = y;
    result->_bound.size.width = width;
    result->_bound.size.height = height;
    result->_confidence = confidence;
  }

  return result;
}

- (CGRect)bound
{
  objc_copyStruct(v6, &self->_bound, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end