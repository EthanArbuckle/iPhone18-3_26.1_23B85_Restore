@interface FCSelectorValue
- (FCSelectorValue)initWithSelector:(id)selector value:(id)value;
@end

@implementation FCSelectorValue

- (FCSelectorValue)initWithSelector:(id)selector value:(id)value
{
  selectorCopy = selector;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = FCSelectorValue;
  v9 = [(FCSelectorValue *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_selector, selector);
    objc_storeStrong(&v10->_value, value);
  }

  return v10;
}

@end