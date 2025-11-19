@interface ESACallbackContainer
- (ESACallbackContainer)initWithCallback:(id)a3;
@end

@implementation ESACallbackContainer

- (ESACallbackContainer)initWithCallback:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ESACallbackContainer;
  v5 = [(ESACallbackContainer *)&v10 init];
  if (v5)
  {
    v6 = objc_retainBlock(v4);
    callback = v5->_callback;
    v5->_callback = v6;

    v8 = v5;
  }

  return v5;
}

@end