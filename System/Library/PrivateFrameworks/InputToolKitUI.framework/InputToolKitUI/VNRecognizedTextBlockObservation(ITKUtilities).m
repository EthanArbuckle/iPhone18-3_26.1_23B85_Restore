@interface VNRecognizedTextBlockObservation(ITKUtilities)
- (id)itk_textBlock;
@end

@implementation VNRecognizedTextBlockObservation(ITKUtilities)

- (id)itk_textBlock
{
  v1 = [a1 topCandidates:1];
  v2 = [v1 firstObject];

  return v2;
}

@end