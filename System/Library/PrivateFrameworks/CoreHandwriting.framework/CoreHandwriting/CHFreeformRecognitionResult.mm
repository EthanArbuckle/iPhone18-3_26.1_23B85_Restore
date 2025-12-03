@interface CHFreeformRecognitionResult
- (CHFreeformRecognitionResult)initWithScore:(double)score;
@end

@implementation CHFreeformRecognitionResult

- (CHFreeformRecognitionResult)initWithScore:(double)score
{
  v4.receiver = self;
  v4.super_class = CHFreeformRecognitionResult;
  return [(CHSketchRecognitionResult *)&v4 initWithString:@"Freeform" score:score rotation:0.0];
}

@end