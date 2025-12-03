@interface ATHMAwaitingActivation
+ (id)verifyAndGetKeyIDFromKeyCommitmentsData:(id)data numBuckets:(unint64_t)buckets deploymentID:(id)d;
- (ATHMAwaitingActivation)initWithKeyCommitmentsData:(id)data nbuckets:(unint64_t)nbuckets deploymentID:(id)d error:(id *)error;
- (id)activateWithResponseData:(id)data error:(id *)error;
@end

@implementation ATHMAwaitingActivation

- (ATHMAwaitingActivation)initWithKeyCommitmentsData:(id)data nbuckets:(unint64_t)nbuckets deploymentID:(id)d error:(id *)error
{
  dataCopy = data;
  dCopy = d;
  v19.receiver = self;
  v19.super_class = ATHMAwaitingActivation;
  v12 = [(ATHMAwaitingActivation *)&v19 init];
  if (v12)
  {
    v13 = [[_TtC16CryptoKitPrivate10ATHMClient alloc] initWithKeyCommitmentsData:dataCopy numBuckets:nbuckets deploymentID:dCopy error:error];
    client = v12->_client;
    v12->_client = v13;

    request = [(ATHMClient *)v12->_client request];
    requestData = v12->_requestData;
    v12->_requestData = request;

    v17 = v12;
  }

  else
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.cryptokit.ATHM.error" code:0 userInfo:0];
  }

  return v12;
}

- (id)activateWithResponseData:(id)data error:(id *)error
{
  client = self->_client;
  dataCopy = data;
  v8 = [[ATHMPresentation alloc] initWithClient:self->_client responseData:dataCopy nbuckets:[(ATHMClient *)client numBuckets] error:error];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.cryptokit.ATHM.error" code:2 userInfo:0];
  }

  return v8;
}

+ (id)verifyAndGetKeyIDFromKeyCommitmentsData:(id)data numBuckets:(unint64_t)buckets deploymentID:(id)d
{
  dataCopy = data;
  if ([_TtC16CryptoKitPrivate18ATHMKeyCommitments verifyWithKeyCommitmentsData:dataCopy numBuckets:buckets deploymentID:d])
  {
    v8 = [_TtC16CryptoKitPrivate18ATHMKeyCommitments getKeyIDWithKeyCommitmentsData:dataCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end