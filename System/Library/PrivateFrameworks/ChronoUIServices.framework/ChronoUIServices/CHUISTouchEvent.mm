@interface CHUISTouchEvent
- (BOOL)isEqual:(id)equal;
- (CHUISTouchEvent)initWithBaseContentTouchedDown:(BOOL)down;
@end

@implementation CHUISTouchEvent

- (CHUISTouchEvent)initWithBaseContentTouchedDown:(BOOL)down
{
  v5.receiver = self;
  v5.super_class = CHUISTouchEvent;
  result = [(CHUISTouchEvent *)&v5 init];
  if (result)
  {
    result->_baseContentTouchedDown = down;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && equalCopy[8] == self->_baseContentTouchedDown;

  return v5;
}

@end