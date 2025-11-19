@interface ATHMAwaitingActivation
+ (id)verifyAndGetKeyIDFromKeyCommitmentsData:(id)a3 numBuckets:(unint64_t)a4 deploymentID:(id)a5;
- (ATHMAwaitingActivation)initWithKeyCommitmentsData:(id)a3 nbuckets:(unint64_t)a4 deploymentID:(id)a5 error:(id *)a6;
- (id)activateWithResponseData:(id)a3 error:(id *)a4;
@end

@implementation ATHMAwaitingActivation

- (ATHMAwaitingActivation)initWithKeyCommitmentsData:(id)a3 nbuckets:(unint64_t)a4 deploymentID:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = ATHMAwaitingActivation;
  v12 = [(ATHMAwaitingActivation *)&v19 init];
  if (v12)
  {
    v13 = [[_TtC16CryptoKitPrivate10ATHMClient alloc] initWithKeyCommitmentsData:v10 numBuckets:a4 deploymentID:v11 error:a6];
    client = v12->_client;
    v12->_client = v13;

    v15 = [(ATHMClient *)v12->_client request];
    requestData = v12->_requestData;
    v12->_requestData = v15;

    v17 = v12;
  }

  else
  {
    *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.cryptokit.ATHM.error" code:0 userInfo:0];
  }

  return v12;
}

- (id)activateWithResponseData:(id)a3 error:(id *)a4
{
  client = self->_client;
  v7 = a3;
  v8 = [[ATHMPresentation alloc] initWithClient:self->_client responseData:v7 nbuckets:[(ATHMClient *)client numBuckets] error:a4];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.cryptokit.ATHM.error" code:2 userInfo:0];
  }

  return v8;
}

+ (id)verifyAndGetKeyIDFromKeyCommitmentsData:(id)a3 numBuckets:(unint64_t)a4 deploymentID:(id)a5
{
  v7 = a3;
  if ([_TtC16CryptoKitPrivate18ATHMKeyCommitments verifyWithKeyCommitmentsData:v7 numBuckets:a4 deploymentID:a5])
  {
    v8 = [_TtC16CryptoKitPrivate18ATHMKeyCommitments getKeyIDWithKeyCommitmentsData:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end