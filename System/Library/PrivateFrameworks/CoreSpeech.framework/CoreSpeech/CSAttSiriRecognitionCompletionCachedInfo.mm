@interface CSAttSiriRecognitionCompletionCachedInfo
- (CSAttSiriRecognitionCompletionCachedInfo)initWithRequestId:(id)a3 completionStatistics:(id)a4 endpointMode:(int64_t)a5 completionError:(id)a6;
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

- (CSAttSiriRecognitionCompletionCachedInfo)initWithRequestId:(id)a3 completionStatistics:(id)a4 endpointMode:(int64_t)a5 completionError:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = CSAttSiriRecognitionCompletionCachedInfo;
  v14 = [(CSAttSiriRecognitionCompletionCachedInfo *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_requestId, a3);
    v16 = [[NSDictionary alloc] initWithDictionary:v12];
    statistics = v15->_statistics;
    v15->_statistics = v16;

    v15->_endpointMode = a5;
    objc_storeStrong(&v15->_completionError, a6);
  }

  return v15;
}

@end