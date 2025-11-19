@interface HAP2EncodedEmptyRequestThread
- (HAP2EncodedEmptyRequestThread)initWithRequestType:(unint64_t)a3;
@end

@implementation HAP2EncodedEmptyRequestThread

- (HAP2EncodedEmptyRequestThread)initWithRequestType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HAP2EncodedEmptyRequestThread;
  result = [(HAP2EncodedEmptyRequestThread *)&v5 init];
  if (result)
  {
    result->_requestType = a3;
  }

  return result;
}

@end