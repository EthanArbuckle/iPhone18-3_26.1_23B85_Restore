@interface BWRedEyeReductionRequest
- (BWRedEyeReductionRequest)initWithInput:(id)input delegate:(id)delegate;
- (void)dealloc;
@end

@implementation BWRedEyeReductionRequest

- (BWRedEyeReductionRequest)initWithInput:(id)input delegate:(id)delegate
{
  v8.receiver = self;
  v8.super_class = BWRedEyeReductionRequest;
  v6 = [(BWRedEyeReductionRequest *)&v8 init];
  if (v6)
  {
    v6->_input = input;
    v6->_delegate = delegate;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWRedEyeReductionRequest;
  [(BWRedEyeReductionRequest *)&v3 dealloc];
}

@end