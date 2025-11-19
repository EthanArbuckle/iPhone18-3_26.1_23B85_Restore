@interface HMIVideoAnalyzerProcessingNode
- (HMIVideoAnalyzerProcessingNode)initWithConfiguration:(id)a3 workQueue:(id)a4;
@end

@implementation HMIVideoAnalyzerProcessingNode

- (HMIVideoAnalyzerProcessingNode)initWithConfiguration:(id)a3 workQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMIVideoAnalyzerProcessingNode;
  v9 = [(HMIVideoAnalyzerProcessingNode *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, a3);
    objc_storeStrong(&v10->_workQueue, a4);
  }

  return v10;
}

@end