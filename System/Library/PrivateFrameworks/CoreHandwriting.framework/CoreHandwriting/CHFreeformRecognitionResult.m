@interface CHFreeformRecognitionResult
- (CHFreeformRecognitionResult)initWithScore:(double)a3;
@end

@implementation CHFreeformRecognitionResult

- (CHFreeformRecognitionResult)initWithScore:(double)a3
{
  v4.receiver = self;
  v4.super_class = CHFreeformRecognitionResult;
  return [(CHSketchRecognitionResult *)&v4 initWithString:@"Freeform" score:a3 rotation:0.0];
}

@end