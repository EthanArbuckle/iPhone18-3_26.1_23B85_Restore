@interface BWRedEyeReductionRequest
- (BWRedEyeReductionRequest)initWithInput:(id)a3 delegate:(id)a4;
- (void)dealloc;
@end

@implementation BWRedEyeReductionRequest

- (BWRedEyeReductionRequest)initWithInput:(id)a3 delegate:(id)a4
{
  v8.receiver = self;
  v8.super_class = BWRedEyeReductionRequest;
  v6 = [(BWRedEyeReductionRequest *)&v8 init];
  if (v6)
  {
    v6->_input = a3;
    v6->_delegate = a4;
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