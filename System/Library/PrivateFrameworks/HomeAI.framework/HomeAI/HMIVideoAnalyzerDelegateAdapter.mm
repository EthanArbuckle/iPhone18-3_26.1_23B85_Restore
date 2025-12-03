@interface HMIVideoAnalyzerDelegateAdapter
- (void)analyzer:(id)analyzer didAnalyzeFragmentWithResult:(id)result;
- (void)analyzer:(id)analyzer didAnalyzeFrameWithResult:(id)result;
- (void)analyzer:(id)analyzer didCreateTimelapseFragment:(id)fragment;
- (void)analyzer:(id)analyzer didFailWithError:(id)error;
- (void)analyzer:(id)analyzer didProduceAnalysisStateUpdate:(id)update;
@end

@implementation HMIVideoAnalyzerDelegateAdapter

- (void)analyzer:(id)analyzer didAnalyzeFrameWithResult:(id)result
{
  analyzerCopy = analyzer;
  resultCopy = result;
  analyzerDidAnalyzeFrameWithResult = [(HMIVideoAnalyzerDelegateAdapter *)self analyzerDidAnalyzeFrameWithResult];

  if (analyzerDidAnalyzeFrameWithResult)
  {
    analyzerDidAnalyzeFrameWithResult2 = [(HMIVideoAnalyzerDelegateAdapter *)self analyzerDidAnalyzeFrameWithResult];
    (analyzerDidAnalyzeFrameWithResult2)[2](analyzerDidAnalyzeFrameWithResult2, analyzerCopy, resultCopy);
  }
}

- (void)analyzer:(id)analyzer didAnalyzeFragmentWithResult:(id)result
{
  analyzerCopy = analyzer;
  resultCopy = result;
  analyzerDidAnalyzeFragmentWithResult = [(HMIVideoAnalyzerDelegateAdapter *)self analyzerDidAnalyzeFragmentWithResult];

  if (analyzerDidAnalyzeFragmentWithResult)
  {
    analyzerDidAnalyzeFragmentWithResult2 = [(HMIVideoAnalyzerDelegateAdapter *)self analyzerDidAnalyzeFragmentWithResult];
    (analyzerDidAnalyzeFragmentWithResult2)[2](analyzerDidAnalyzeFragmentWithResult2, analyzerCopy, resultCopy);
  }
}

- (void)analyzer:(id)analyzer didFailWithError:(id)error
{
  analyzerCopy = analyzer;
  errorCopy = error;
  analyzerDidFailWithError = [(HMIVideoAnalyzerDelegateAdapter *)self analyzerDidFailWithError];

  if (analyzerDidFailWithError)
  {
    analyzerDidFailWithError2 = [(HMIVideoAnalyzerDelegateAdapter *)self analyzerDidFailWithError];
    (analyzerDidFailWithError2)[2](analyzerDidFailWithError2, analyzerCopy, errorCopy);
  }
}

- (void)analyzer:(id)analyzer didCreateTimelapseFragment:(id)fragment
{
  analyzerCopy = analyzer;
  fragmentCopy = fragment;
  analyzerDidCreateTimelapseFragment = [(HMIVideoAnalyzerDelegateAdapter *)self analyzerDidCreateTimelapseFragment];

  if (analyzerDidCreateTimelapseFragment)
  {
    analyzerDidCreateTimelapseFragment2 = [(HMIVideoAnalyzerDelegateAdapter *)self analyzerDidCreateTimelapseFragment];
    (analyzerDidCreateTimelapseFragment2)[2](analyzerDidCreateTimelapseFragment2, analyzerCopy, fragmentCopy);
  }
}

- (void)analyzer:(id)analyzer didProduceAnalysisStateUpdate:(id)update
{
  analyzerCopy = analyzer;
  updateCopy = update;
  analyzerDidProduceAnalysisStateUpdate = [(HMIVideoAnalyzerDelegateAdapter *)self analyzerDidProduceAnalysisStateUpdate];

  if (analyzerDidProduceAnalysisStateUpdate)
  {
    analyzerDidProduceAnalysisStateUpdate2 = [(HMIVideoAnalyzerDelegateAdapter *)self analyzerDidProduceAnalysisStateUpdate];
    (analyzerDidProduceAnalysisStateUpdate2)[2](analyzerDidProduceAnalysisStateUpdate2, analyzerCopy, updateCopy);
  }
}

@end