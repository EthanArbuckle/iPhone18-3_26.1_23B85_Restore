@interface HMBProcessingResult
- (HMBProcessingResult)initWithOptions:(id)a3 mirrorOutputResult:(id)a4;
@end

@implementation HMBProcessingResult

- (HMBProcessingResult)initWithOptions:(id)a3 mirrorOutputResult:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMBProcessingResult;
  v9 = [(HMBProcessingResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_options, a3);
    objc_storeStrong(&v10->_mirrorOutputResult, a4);
  }

  return v10;
}

@end