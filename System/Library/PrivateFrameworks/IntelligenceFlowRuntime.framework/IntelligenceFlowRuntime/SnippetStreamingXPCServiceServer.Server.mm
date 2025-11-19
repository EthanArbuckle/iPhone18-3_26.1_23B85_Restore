@interface SnippetStreamingXPCServiceServer.Server
- (void)checkInParameters:(id)a3 reply:(id)a4;
- (void)postWithUpdate:(id)a3 reply:(id)a4;
@end

@implementation SnippetStreamingXPCServiceServer.Server

- (void)checkInParameters:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v12 = self;
  v8 = sub_22BDB4304();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  sub_22BDA0EB8(v8, v10, sub_22BB3C488, v11);

  sub_22BB3531C(v8, v10);
}

- (void)postWithUpdate:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v12 = self;
  v8 = sub_22BDB4304();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  sub_22BDA0EB8(v8, v10, sub_22BB3C480, v11);

  sub_22BB3531C(v8, v10);
}

@end