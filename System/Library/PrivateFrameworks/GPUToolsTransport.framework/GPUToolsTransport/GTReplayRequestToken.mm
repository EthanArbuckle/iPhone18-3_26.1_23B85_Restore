@interface GTReplayRequestToken
- (GTReplayRequestToken)initWithService:(id)service andTokenId:(unint64_t)id;
@end

@implementation GTReplayRequestToken

- (GTReplayRequestToken)initWithService:(id)service andTokenId:(unint64_t)id
{
  serviceCopy = service;
  v13.receiver = self;
  v13.super_class = GTReplayRequestToken;
  v8 = [(GTReplayRequestToken *)&v13 init];
  if (v8)
  {
    v9 = dispatch_semaphore_create(0);
    finished = v8->_finished;
    v8->_finished = v9;

    v8->_tokenId = id;
    objc_storeStrong(&v8->_replayer, service);
    v11 = v8;
  }

  return v8;
}

@end