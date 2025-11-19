@interface CHUISTouchEvent
- (BOOL)isEqual:(id)a3;
- (CHUISTouchEvent)initWithBaseContentTouchedDown:(BOOL)a3;
@end

@implementation CHUISTouchEvent

- (CHUISTouchEvent)initWithBaseContentTouchedDown:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CHUISTouchEvent;
  result = [(CHUISTouchEvent *)&v5 init];
  if (result)
  {
    result->_baseContentTouchedDown = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && v4[8] == self->_baseContentTouchedDown;

  return v5;
}

@end