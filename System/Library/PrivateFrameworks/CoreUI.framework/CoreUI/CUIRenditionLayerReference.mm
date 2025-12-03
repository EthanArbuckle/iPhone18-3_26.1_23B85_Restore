@interface CUIRenditionLayerReference
- (CGRect)frame;
- (CUIRenditionLayerReference)init;
- (void)dealloc;
- (void)setColorName:(id)name;
@end

@implementation CUIRenditionLayerReference

- (CUIRenditionLayerReference)init
{
  v3.receiver = self;
  v3.super_class = CUIRenditionLayerReference;
  result = [(CUIRenditionLayerReference *)&v3 init];
  result->_opacity = 1.0;
  result->_blendMode = 0;
  *&result->_fixedFrame = 0;
  result->_blurStrength = 0.0;
  return result;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIRenditionLayerReference;
  [(CUIRenditionLayerReference *)&v3 dealloc];
}

- (void)setColorName:(id)name
{
  gradientOrColorName = self->_gradientOrColorName;
  if (gradientOrColorName != name)
  {

    self->_gradientOrColorName = name;
  }
}

@end