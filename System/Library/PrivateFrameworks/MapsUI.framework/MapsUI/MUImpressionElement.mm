@interface MUImpressionElement
- (CGRect)frame;
- (MUImpressionElement)initWithElementIdentifier:(id)a3 visibilityThreshold:(double)a4;
@end

@implementation MUImpressionElement

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

- (MUImpressionElement)initWithElementIdentifier:(id)a3 visibilityThreshold:(double)a4
{
  v7 = a3;
  if (v7 && (a4 > 0.0 ? (v8 = a4 <= 1.0) : (v8 = 0), v8))
  {
    v13.receiver = self;
    v13.super_class = MUImpressionElement;
    v10 = [(MUImpressionElement *)&v13 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_elementIdentifier, a3);
      v11[3] = a4;
    }

    self = v11;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end