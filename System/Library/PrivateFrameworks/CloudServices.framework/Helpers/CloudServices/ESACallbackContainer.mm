@interface ESACallbackContainer
- (ESACallbackContainer)initWithCallback:(id)callback;
@end

@implementation ESACallbackContainer

- (ESACallbackContainer)initWithCallback:(id)callback
{
  callbackCopy = callback;
  v10.receiver = self;
  v10.super_class = ESACallbackContainer;
  v5 = [(ESACallbackContainer *)&v10 init];
  if (v5)
  {
    v6 = objc_retainBlock(callbackCopy);
    callback = v5->_callback;
    v5->_callback = v6;

    v8 = v5;
  }

  return v5;
}

@end