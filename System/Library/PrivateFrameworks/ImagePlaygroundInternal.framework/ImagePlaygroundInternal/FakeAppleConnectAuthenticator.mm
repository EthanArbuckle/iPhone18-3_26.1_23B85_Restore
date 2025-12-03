@interface FakeAppleConnectAuthenticator
- (_TtC23ImagePlaygroundInternalP33_036306B80E81D2889B124F17B9D88FE529FakeAppleConnectAuthenticator)init;
- (void)authenticateIfNeededWithCompletion:(id)completion;
@end

@implementation FakeAppleConnectAuthenticator

- (void)authenticateIfNeededWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  v4 = sub_1D2878068();
  v3[2](v3, v4, 0);

  _Block_release(v3);
}

- (_TtC23ImagePlaygroundInternalP33_036306B80E81D2889B124F17B9D88FE529FakeAppleConnectAuthenticator)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(FakeAppleConnectAuthenticator *)&v3 init];
}

@end