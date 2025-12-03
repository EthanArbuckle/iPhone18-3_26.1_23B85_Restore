@interface CSVTRejectEventMetadata
- (CSVTRejectEventMetadata)initWithEventType:(unint64_t)type score:(float)score threshold:(float)threshold deltaTime:(double)time;
@end

@implementation CSVTRejectEventMetadata

- (CSVTRejectEventMetadata)initWithEventType:(unint64_t)type score:(float)score threshold:(float)threshold deltaTime:(double)time
{
  v11.receiver = self;
  v11.super_class = CSVTRejectEventMetadata;
  result = [(CSVTRejectEventMetadata *)&v11 init];
  if (result)
  {
    result->_eventType = type;
    result->_score = score;
    result->_threshold = threshold;
    result->_deltaTimeFromActivation = time;
  }

  return result;
}

@end