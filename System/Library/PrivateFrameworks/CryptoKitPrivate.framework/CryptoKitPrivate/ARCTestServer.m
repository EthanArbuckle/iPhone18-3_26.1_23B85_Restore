@interface ARCTestServer
- (ARCTestServer)init;
- (id)respondWithRequestData:(id)a3 error:(id *)a4;
@end

@implementation ARCTestServer

- (ARCTestServer)init
{
  v6.receiver = self;
  v6.super_class = ARCTestServer;
  v2 = [(ARCTestServer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC16CryptoKitPrivate9ARCServer);
    server = v2->_server;
    v2->_server = v3;
  }

  return v2;
}

- (id)respondWithRequestData:(id)a3 error:(id *)a4
{
  v5 = [(ARCServer *)self->_server respondWithRequestData:a3 error:?];
  if (v5)
  {
    v6 = [[ARCResponse alloc] initWithResponseData:v5];
  }

  else
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"ARC.error" code:1 userInfo:0];
    *a4 = v6 = 0;
  }

  return v6;
}

@end