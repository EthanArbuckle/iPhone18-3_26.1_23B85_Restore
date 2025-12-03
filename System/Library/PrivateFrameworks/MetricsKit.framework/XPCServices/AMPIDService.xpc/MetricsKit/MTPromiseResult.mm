@interface MTPromiseResult
- (MTPromiseResult)initWithResult:(id)result error:(id)error;
@end

@implementation MTPromiseResult

- (MTPromiseResult)initWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  v14.receiver = self;
  v14.super_class = MTPromiseResult;
  v9 = [(MTPromiseResult *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_result, result);
    v11 = [errorCopy copy];
    error = v10->_error;
    v10->_error = v11;
  }

  return v10;
}

@end