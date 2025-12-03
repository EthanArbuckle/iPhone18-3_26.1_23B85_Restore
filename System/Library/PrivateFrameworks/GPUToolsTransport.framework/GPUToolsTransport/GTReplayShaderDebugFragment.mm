@interface GTReplayShaderDebugFragment
- (GTPoint2D)maxPixelPosition;
- (GTPoint2D)minPixelPosition;
- (GTReplayShaderDebugFragment)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTReplayShaderDebugFragment

- (GTReplayShaderDebugFragment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = GTReplayShaderDebugFragment;
  v5 = [(GTReplayShaderDebugRequest *)&v11 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v5->_minPixelPosition.x = GTPoint2DDecode(coderCopy, @"MinPixelPosition");
    v6->_minPixelPosition.y = v7;
    v6->_maxPixelPosition.x = GTPoint2DDecode(coderCopy, @"MaxPixelPosition");
    v6->_maxPixelPosition.y = v8;
    v6->_minSampleID = [coderCopy decodeInt32ForKey:@"MinSampleID"];
    v6->_maxSampleID = [coderCopy decodeInt32ForKey:@"MaxSampleID"];
    v6->_renderTargetArrayIndex = [coderCopy decodeInt32ForKey:@"RenderTargetArrayIndex"];
    v9 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GTReplayShaderDebugFragment;
  coderCopy = coder;
  [(GTReplayShaderDebugRequest *)&v5 encodeWithCoder:coderCopy];
  GTPoint2DEncode(coderCopy, self->_minPixelPosition.x, self->_minPixelPosition.y, @"MinPixelPosition");
  GTPoint2DEncode(coderCopy, self->_maxPixelPosition.x, self->_maxPixelPosition.y, @"MaxPixelPosition");
  [coderCopy encodeInt32:self->_minSampleID forKey:{@"MinSampleID", v5.receiver, v5.super_class}];
  [coderCopy encodeInt32:self->_maxSampleID forKey:@"MaxSampleID"];
  [coderCopy encodeInt32:self->_renderTargetArrayIndex forKey:@"RenderTargetArrayIndex"];
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