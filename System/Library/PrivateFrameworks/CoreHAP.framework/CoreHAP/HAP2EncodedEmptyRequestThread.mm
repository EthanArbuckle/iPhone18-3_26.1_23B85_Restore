@interface HAP2EncodedEmptyRequestThread
- (HAP2EncodedEmptyRequestThread)initWithRequestType:(unint64_t)type;
@end

@implementation HAP2EncodedEmptyRequestThread

- (HAP2EncodedEmptyRequestThread)initWithRequestType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = HAP2EncodedEmptyRequestThread;
  result = [(HAP2EncodedEmptyRequestThread *)&v5 init];
  if (result)
  {
    result->_requestType = type;
  }

  return result;
}

@end