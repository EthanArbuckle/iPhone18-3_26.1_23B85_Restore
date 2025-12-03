@interface CSAttSiriRecognitionCompletionCachedInfo
- (CSAttSiriRecognitionCompletionCachedInfo)initWithRequestId:(id)id completionStatistics:(id)statistics endpointMode:(int64_t)mode completionError:(id)error;
- (id)description;
@end

@implementation CSAttSiriRecognitionCompletionCachedInfo

- (id)description
{
  v3 = +[NSMutableString string];
  [v3 appendFormat:@"requestId : %@", self->_requestId];
  [v3 appendFormat:@"statistics : %@", self->_statistics];
  [v3 appendFormat:@"endpointMode : %ld", self->_endpointMode];
  [v3 appendFormat:@"error:%@", self->_completionError];

  return v3;
}

- (CSAttSiriRecognitionCompletionCachedInfo)initWithRequestId:(id)id completionStatistics:(id)statistics endpointMode:(int64_t)mode completionError:(id)error
{
  idCopy = id;
  statisticsCopy = statistics;
  errorCopy = error;
  v19.receiver = self;
  v19.super_class = CSAttSiriRecognitionCompletionCachedInfo;
  v14 = [(CSAttSiriRecognitionCompletionCachedInfo *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_requestId, id);
    v16 = [[NSDictionary alloc] initWithDictionary:statisticsCopy];
    statistics = v15->_statistics;
    v15->_statistics = v16;

    v15->_endpointMode = mode;
    objc_storeStrong(&v15->_completionError, error);
  }

  return v15;
}

@end