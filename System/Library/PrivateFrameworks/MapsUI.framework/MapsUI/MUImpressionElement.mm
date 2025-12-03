@interface MUImpressionElement
- (CGRect)frame;
- (MUImpressionElement)initWithElementIdentifier:(id)identifier visibilityThreshold:(double)threshold;
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

- (MUImpressionElement)initWithElementIdentifier:(id)identifier visibilityThreshold:(double)threshold
{
  identifierCopy = identifier;
  if (identifierCopy && (threshold > 0.0 ? (v8 = threshold <= 1.0) : (v8 = 0), v8))
  {
    v13.receiver = self;
    v13.super_class = MUImpressionElement;
    v10 = [(MUImpressionElement *)&v13 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_elementIdentifier, identifier);
      v11[3] = threshold;
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end