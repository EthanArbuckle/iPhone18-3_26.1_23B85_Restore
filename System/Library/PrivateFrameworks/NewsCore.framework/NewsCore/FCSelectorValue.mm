@interface FCSelectorValue
- (FCSelectorValue)initWithSelector:(id)a3 value:(id)a4;
@end

@implementation FCSelectorValue

- (FCSelectorValue)initWithSelector:(id)a3 value:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FCSelectorValue;
  v9 = [(FCSelectorValue *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_selector, a3);
    objc_storeStrong(&v10->_value, a4);
  }

  return v10;
}

@end