@interface GTReplayShaderDebugFragment
- (GTPoint2D)maxPixelPosition;
- (GTPoint2D)minPixelPosition;
- (GTReplayShaderDebugFragment)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTReplayShaderDebugFragment

- (GTReplayShaderDebugFragment)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = GTReplayShaderDebugFragment;
  v5 = [(GTReplayShaderDebugRequest *)&v11 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v5->_minPixelPosition.x = GTPoint2DDecode(v4, @"MinPixelPosition");
    v6->_minPixelPosition.y = v7;
    v6->_maxPixelPosition.x = GTPoint2DDecode(v4, @"MaxPixelPosition");
    v6->_maxPixelPosition.y = v8;
    v6->_minSampleID = [v4 decodeInt32ForKey:@"MinSampleID"];
    v6->_maxSampleID = [v4 decodeInt32ForKey:@"MaxSampleID"];
    v6->_renderTargetArrayIndex = [v4 decodeInt32ForKey:@"RenderTargetArrayIndex"];
    v9 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GTReplayShaderDebugFragment;
  v4 = a3;
  [(GTReplayShaderDebugRequest *)&v5 encodeWithCoder:v4];
  GTPoint2DEncode(v4, self->_minPixelPosition.x, self->_minPixelPosition.y, @"MinPixelPosition");
  GTPoint2DEncode(v4, self->_maxPixelPosition.x, self->_maxPixelPosition.y, @"MaxPixelPosition");
  [v4 encodeInt32:self->_minSampleID forKey:{@"MinSampleID", v5.receiver, v5.super_class}];
  [v4 encodeInt32:self->_maxSampleID forKey:@"MaxSampleID"];
  [v4 encodeInt32:self->_renderTargetArrayIndex forKey:@"RenderTargetArrayIndex"];
}

- (GTPoint2D)minPixelPosition
{
  p_minPixelPosition = &self->_minPixelPosition;
  x = self->_minPixelPosition.x;
  y = p_minPixelPosition->y;
  result.y = y;
  result.x = x;
  return result;
}

- (GTPoint2D)maxPixelPosition
{
  p_maxPixelPosition = &self->_maxPixelPosition;
  x = self->_maxPixelPosition.x;
  y = p_maxPixelPosition->y;
  result.y = y;
  result.x = x;
  return result;
}

@end