@interface GTTelemetryRequestToken
- (GTTelemetryRequestToken)initWithService:(id)service andTokenId:(unint64_t)id;
@end

@implementation GTTelemetryRequestToken

- (GTTelemetryRequestToken)initWithService:(id)service andTokenId:(unint64_t)id
{
  serviceCopy = service;
  v13.receiver = self;
  v13.super_class = GTTelemetryRequestToken;
  v8 = [(GTTelemetryRequestToken *)&v13 init];
  if (v8)
  {
    v9 = dispatch_semaphore_create(0);
    finished = v8->_finished;
    v8->_finished = v9;

    v8->_tokenId = id;
    objc_storeStrong(&v8->_service, service);
    v11 = v8;
  }

  return v8;
}

@end