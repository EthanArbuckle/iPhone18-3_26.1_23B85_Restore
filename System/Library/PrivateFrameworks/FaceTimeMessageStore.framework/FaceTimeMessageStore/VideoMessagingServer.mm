@interface VideoMessagingServer
- (void)sendVideoMessageWithData:(NSData *)data url:(_TtC20FaceTimeMessageStore18SandboxExtendedURL *)url completionHandler:(id)handler;
@end

@implementation VideoMessagingServer

- (void)sendVideoMessageWithData:(NSData *)data url:(_TtC20FaceTimeMessageStore18SandboxExtendedURL *)url completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = data;
  v9[3] = url;
  v9[4] = v8;
  v9[5] = self;
  dataCopy = data;
  urlCopy = url;

  sub_1BC887CDC();
}

@end