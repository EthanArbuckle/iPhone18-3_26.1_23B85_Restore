@interface HMIVideoFrameAnalyzerDelegateAdapter
- (void)frameAnalyzer:(id)analyzer didAnalyzeFrame:(id)frame;
- (void)frameAnalyzer:(id)analyzer didProduceAnalysisStateUpdate:(id)update;
@end

@implementation HMIVideoFrameAnalyzerDelegateAdapter

- (void)frameAnalyzer:(id)analyzer didAnalyzeFrame:(id)frame
{
  analyzerCopy = analyzer;
  frameCopy = frame;
  frameAnalyzerDidAnalyzeFrame = [(HMIVideoFrameAnalyzerDelegateAdapter *)self frameAnalyzerDidAnalyzeFrame];

  if (frameAnalyzerDidAnalyzeFrame)
  {
    frameAnalyzerDidAnalyzeFrame2 = [(HMIVideoFrameAnalyzerDelegateAdapter *)self frameAnalyzerDidAnalyzeFrame];
    (frameAnalyzerDidAnalyzeFrame2)[2](frameAnalyzerDidAnalyzeFrame2, analyzerCopy, frameCopy);
  }
}

- (void)frameAnalyzer:(id)analyzer didProduceAnalysisStateUpdate:(id)update
{
  analyzerCopy = analyzer;
  updateCopy = update;
  frameAnalyzerDidProduceAnalysisStateUpdate = [(HMIVideoFrameAnalyzerDelegateAdapter *)self frameAnalyzerDidProduceAnalysisStateUpdate];

  if (frameAnalyzerDidProduceAnalysisStateUpdate)
  {
    frameAnalyzerDidProduceAnalysisStateUpdate2 = [(HMIVideoFrameAnalyzerDelegateAdapter *)self frameAnalyzerDidProduceAnalysisStateUpdate];
    (frameAnalyzerDidProduceAnalysisStateUpdate2)[2](frameAnalyzerDidProduceAnalysisStateUpdate2, analyzerCopy, updateCopy);
  }
}

@end