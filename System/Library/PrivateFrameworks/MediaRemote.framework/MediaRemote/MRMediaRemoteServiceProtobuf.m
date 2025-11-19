@interface MRMediaRemoteServiceProtobuf
@end

@implementation MRMediaRemoteServiceProtobuf

void ___MRMediaRemoteServiceProtobuf_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = [[MRProtocolMessage alloc] initWithUnderlyingCodableMessage:0 error:v5];
  }

  else
  {
    v6 = MRCreateProtobufFromXPCMessage(v9);
  }

  v7 = v6;
  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v7);
  }
}

@end