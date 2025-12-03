@interface VNRecognizedTextBlockObservation(ITKUtilities)
- (id)itk_textBlock;
@end

@implementation VNRecognizedTextBlockObservation(ITKUtilities)

- (id)itk_textBlock
{
  v1 = [self topCandidates:1];
  firstObject = [v1 firstObject];

  return firstObject;
}

@end