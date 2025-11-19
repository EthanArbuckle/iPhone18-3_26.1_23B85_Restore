@interface HMIVideoFrameAnalyzerDelegateAdapter
- (void)frameAnalyzer:(id)a3 didAnalyzeFrame:(id)a4;
- (void)frameAnalyzer:(id)a3 didProduceAnalysisStateUpdate:(id)a4;
@end

@implementation HMIVideoFrameAnalyzerDelegateAdapter

- (void)frameAnalyzer:(id)a3 didAnalyzeFrame:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(HMIVideoFrameAnalyzerDelegateAdapter *)self frameAnalyzerDidAnalyzeFrame];

  if (v7)
  {
    v8 = [(HMIVideoFrameAnalyzerDelegateAdapter *)self frameAnalyzerDidAnalyzeFrame];
    (v8)[2](v8, v9, v6);
  }
}

- (void)frameAnalyzer:(id)a3 didProduceAnalysisStateUpdate:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(HMIVideoFrameAnalyzerDelegateAdapter *)self frameAnalyzerDidProduceAnalysisStateUpdate];

  if (v7)
  {
    v8 = [(HMIVideoFrameAnalyzerDelegateAdapter *)self frameAnalyzerDidProduceAnalysisStateUpdate];
    (v8)[2](v8, v9, v6);
  }
}

@end