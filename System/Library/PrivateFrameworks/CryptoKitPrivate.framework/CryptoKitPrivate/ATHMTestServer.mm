@interface ATHMTestServer
- (ATHMTestServer)initWithNumBuckets:(unint64_t)a3 deploymentID:(id)a4 error:(id *)a5;
- (id)respondWithRequestData:(id)a3 metadata:(unint64_t)a4 error:(id *)a5;
- (int64_t)readMetadataWithPresentationData:(id)a3 nbuckets:(unint64_t)a4 error:(id *)a5;
@end

@implementation ATHMTestServer

- (ATHMTestServer)initWithNumBuckets:(unint64_t)a3 deploymentID:(id)a4 error:(id *)a5
{
  v8 = a4;
  v15.receiver = self;
  v15.super_class = ATHMTestServer;
  v9 = [(ATHMTestServer *)&v15 init];
  if (v9)
  {
    v10 = [[_TtC16CryptoKitPrivate10ATHMServer alloc] initWithNumBuckets:a3 deploymentID:v8];
    server = v9->_server;
    v9->_server = v10;

    v12 = [(ATHMServer *)v9->_server exportKeyCommitmentsAndReturnError:a5];
    keyCommitmentsData = v9->_keyCommitmentsData;
    v9->_keyCommitmentsData = v12;
  }

  return v9;
}

- (id)respondWithRequestData:(id)a3 metadata:(unint64_t)a4 error:(id *)a5
{
  server = self->_server;
  v9 = a3;
  v10 = [(ATHMServer *)self->_server respondWithRequestData:v9 metadata:a4 nbuckets:[(ATHMServer *)server numBuckets] error:a5];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.cryptokit.ATHM.error" code:1 userInfo:0];
  }

  return v10;
}

- (int64_t)readMetadataWithPresentationData:(id)a3 nbuckets:(unint64_t)a4 error:(id *)a5
{
  v6 = [(ATHMServer *)self->_server readMetadataWithPresentationData:a3 nbuckets:a4];
  if (v6 < 0)
  {
    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.cryptokit.ATHM.error" code:4 userInfo:0];
  }

  return v6;
}

@end