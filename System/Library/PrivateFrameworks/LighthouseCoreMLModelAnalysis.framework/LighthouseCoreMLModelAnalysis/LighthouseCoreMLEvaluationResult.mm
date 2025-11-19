@interface LighthouseCoreMLEvaluationResult
- (LighthouseCoreMLEvaluationResult)init;
@end

@implementation LighthouseCoreMLEvaluationResult

- (LighthouseCoreMLEvaluationResult)init
{
  v7.receiver = self;
  v7.super_class = LighthouseCoreMLEvaluationResult;
  v2 = [(LighthouseCoreMLEvaluationResult *)&v7 init];
  if (v2)
  {
    LODWORD(v3) = -1.0;
    v4 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
    accuracy = v2->_accuracy;
    v2->_accuracy = v4;
  }

  return v2;
}

@end