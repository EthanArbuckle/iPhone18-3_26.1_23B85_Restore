@interface MLPNDArrayLossLabels
- (MLPNDArrayLossLabels)init;
@end

@implementation MLPNDArrayLossLabels

- (MLPNDArrayLossLabels)init
{
  v14.receiver = self;
  v14.super_class = MLPNDArrayLossLabels;
  v5 = [(MLPNDArrayLossLabels *)&v14 init];
  if (v5)
  {
    v6 = objc_msgSend_array(MEMORY[0x1E695DF70], v2, v3, v4);
    largeReductionSumResult = v5->_largeReductionSumResult;
    v5->_largeReductionSumResult = v6;

    v11 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9, v10);
    smallReductionSumResult = v5->_smallReductionSumResult;
    v5->_smallReductionSumResult = v11;
  }

  return v5;
}

@end