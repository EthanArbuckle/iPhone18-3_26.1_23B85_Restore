@interface HMIVideoAnalyzerDelegateAdapter
- (void)analyzer:(id)a3 didAnalyzeFragmentWithResult:(id)a4;
- (void)analyzer:(id)a3 didAnalyzeFrameWithResult:(id)a4;
- (void)analyzer:(id)a3 didCreateTimelapseFragment:(id)a4;
- (void)analyzer:(id)a3 didFailWithError:(id)a4;
- (void)analyzer:(id)a3 didProduceAnalysisStateUpdate:(id)a4;
@end

@implementation HMIVideoAnalyzerDelegateAdapter

- (void)analyzer:(id)a3 didAnalyzeFrameWithResult:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(HMIVideoAnalyzerDelegateAdapter *)self analyzerDidAnalyzeFrameWithResult];

  if (v7)
  {
    v8 = [(HMIVideoAnalyzerDelegateAdapter *)self analyzerDidAnalyzeFrameWithResult];
    (v8)[2](v8, v9, v6);
  }
}

- (void)analyzer:(id)a3 didAnalyzeFragmentWithResult:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(HMIVideoAnalyzerDelegateAdapter *)self analyzerDidAnalyzeFragmentWithResult];

  if (v7)
  {
    v8 = [(HMIVideoAnalyzerDelegateAdapter *)self analyzerDidAnalyzeFragmentWithResult];
    (v8)[2](v8, v9, v6);
  }
}

- (void)analyzer:(id)a3 didFailWithError:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(HMIVideoAnalyzerDelegateAdapter *)self analyzerDidFailWithError];

  if (v7)
  {
    v8 = [(HMIVideoAnalyzerDelegateAdapter *)self analyzerDidFailWithError];
    (v8)[2](v8, v9, v6);
  }
}

- (void)analyzer:(id)a3 didCreateTimelapseFragment:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(HMIVideoAnalyzerDelegateAdapter *)self analyzerDidCreateTimelapseFragment];

  if (v7)
  {
    v8 = [(HMIVideoAnalyzerDelegateAdapter *)self analyzerDidCreateTimelapseFragment];
    (v8)[2](v8, v9, v6);
  }
}

- (void)analyzer:(id)a3 didProduceAnalysisStateUpdate:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(HMIVideoAnalyzerDelegateAdapter *)self analyzerDidProduceAnalysisStateUpdate];

  if (v7)
  {
    v8 = [(HMIVideoAnalyzerDelegateAdapter *)self analyzerDidProduceAnalysisStateUpdate];
    (v8)[2](v8, v9, v6);
  }
}

@end