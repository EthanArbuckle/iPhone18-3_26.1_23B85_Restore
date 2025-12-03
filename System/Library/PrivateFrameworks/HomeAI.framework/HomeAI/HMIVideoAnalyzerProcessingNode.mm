@interface HMIVideoAnalyzerProcessingNode
- (HMIVideoAnalyzerProcessingNode)initWithConfiguration:(id)configuration workQueue:(id)queue;
@end

@implementation HMIVideoAnalyzerProcessingNode

- (HMIVideoAnalyzerProcessingNode)initWithConfiguration:(id)configuration workQueue:(id)queue
{
  configurationCopy = configuration;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = HMIVideoAnalyzerProcessingNode;
  v9 = [(HMIVideoAnalyzerProcessingNode *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, configuration);
    objc_storeStrong(&v10->_workQueue, queue);
  }

  return v10;
}

@end