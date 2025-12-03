@interface ATHMTestServer
- (ATHMTestServer)initWithNumBuckets:(unint64_t)buckets deploymentID:(id)d error:(id *)error;
- (id)respondWithRequestData:(id)data metadata:(unint64_t)metadata error:(id *)error;
- (int64_t)readMetadataWithPresentationData:(id)data nbuckets:(unint64_t)nbuckets error:(id *)error;
@end

@implementation ATHMTestServer

- (ATHMTestServer)initWithNumBuckets:(unint64_t)buckets deploymentID:(id)d error:(id *)error
{
  dCopy = d;
  v15.receiver = self;
  v15.super_class = ATHMTestServer;
  v9 = [(ATHMTestServer *)&v15 init];
  if (v9)
  {
    v10 = [[_TtC16CryptoKitPrivate10ATHMServer alloc] initWithNumBuckets:buckets deploymentID:dCopy];
    server = v9->_server;
    v9->_server = v10;

    v12 = [(ATHMServer *)v9->_server exportKeyCommitmentsAndReturnError:error];
    keyCommitmentsData = v9->_keyCommitmentsData;
    v9->_keyCommitmentsData = v12;
  }

  return v9;
}

- (id)respondWithRequestData:(id)data metadata:(unint64_t)metadata error:(id *)error
{
  server = self->_server;
  dataCopy = data;
  v10 = [(ATHMServer *)self->_server respondWithRequestData:dataCopy metadata:metadata nbuckets:[(ATHMServer *)server numBuckets] error:error];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.cryptokit.ATHM.error" code:1 userInfo:0];
  }

  return v10;
}

- (int64_t)readMetadataWithPresentationData:(id)data nbuckets:(unint64_t)nbuckets error:(id *)error
{
  v6 = [(ATHMServer *)self->_server readMetadataWithPresentationData:data nbuckets:nbuckets];
  if (v6 < 0)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.cryptokit.ATHM.error" code:4 userInfo:0];
  }

  return v6;
}

@end