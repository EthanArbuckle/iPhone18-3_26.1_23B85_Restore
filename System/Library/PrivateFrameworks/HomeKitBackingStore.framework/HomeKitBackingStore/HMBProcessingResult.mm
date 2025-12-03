@interface HMBProcessingResult
- (HMBProcessingResult)initWithOptions:(id)options mirrorOutputResult:(id)result;
@end

@implementation HMBProcessingResult

- (HMBProcessingResult)initWithOptions:(id)options mirrorOutputResult:(id)result
{
  optionsCopy = options;
  resultCopy = result;
  v12.receiver = self;
  v12.super_class = HMBProcessingResult;
  v9 = [(HMBProcessingResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_options, options);
    objc_storeStrong(&v10->_mirrorOutputResult, result);
  }

  return v10;
}

@end