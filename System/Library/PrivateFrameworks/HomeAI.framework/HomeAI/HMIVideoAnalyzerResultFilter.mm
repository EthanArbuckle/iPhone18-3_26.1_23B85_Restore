@interface HMIVideoAnalyzerResultFilter
- (HMIVideoAnalyzerResultFilter)initWith;
- (id)applyWithFrameResult:(id)result;
@end

@implementation HMIVideoAnalyzerResultFilter

- (HMIVideoAnalyzerResultFilter)initWith
{
  v3.receiver = self;
  v3.super_class = HMIVideoAnalyzerResultFilter;
  return [(HMIVideoAnalyzerResultFilter *)&v3 init];
}

- (id)applyWithFrameResult:(id)result
{
  resultCopy = result;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

@end