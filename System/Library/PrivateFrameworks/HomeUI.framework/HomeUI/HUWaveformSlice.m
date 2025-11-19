@interface HUWaveformSlice
- (CGRect)layerFrame;
- (void)dealloc;
@end

@implementation HUWaveformSlice

- (void)dealloc
{
  [(CALayer *)self->_waveformlayer removeFromSuperlayer];
  v3.receiver = self;
  v3.super_class = HUWaveformSlice;
  [(HUWaveformSlice *)&v3 dealloc];
}

- (CGRect)layerFrame
{
  x = self->_layerFrame.origin.x;
  y = self->_layerFrame.origin.y;
  width = self->_layerFrame.size.width;
  height = self->_layerFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end