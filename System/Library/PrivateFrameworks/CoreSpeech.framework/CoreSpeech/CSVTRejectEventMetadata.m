@interface CSVTRejectEventMetadata
- (CSVTRejectEventMetadata)initWithEventType:(unint64_t)a3 score:(float)a4 threshold:(float)a5 deltaTime:(double)a6;
@end

@implementation CSVTRejectEventMetadata

- (CSVTRejectEventMetadata)initWithEventType:(unint64_t)a3 score:(float)a4 threshold:(float)a5 deltaTime:(double)a6
{
  v11.receiver = self;
  v11.super_class = CSVTRejectEventMetadata;
  result = [(CSVTRejectEventMetadata *)&v11 init];
  if (result)
  {
    result->_eventType = a3;
    result->_score = a4;
    result->_threshold = a5;
    result->_deltaTimeFromActivation = a6;
  }

  return result;
}

@end