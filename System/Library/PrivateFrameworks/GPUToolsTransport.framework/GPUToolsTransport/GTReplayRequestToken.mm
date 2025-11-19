@interface GTReplayRequestToken
- (GTReplayRequestToken)initWithService:(id)a3 andTokenId:(unint64_t)a4;
@end

@implementation GTReplayRequestToken

- (GTReplayRequestToken)initWithService:(id)a3 andTokenId:(unint64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = GTReplayRequestToken;
  v8 = [(GTReplayRequestToken *)&v13 init];
  if (v8)
  {
    v9 = dispatch_semaphore_create(0);
    finished = v8->_finished;
    v8->_finished = v9;

    v8->_tokenId = a4;
    objc_storeStrong(&v8->_replayer, a3);
    v11 = v8;
  }

  return v8;
}

@end