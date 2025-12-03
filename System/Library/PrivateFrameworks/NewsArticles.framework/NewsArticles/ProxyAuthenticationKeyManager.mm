@interface ProxyAuthenticationKeyManager
- (_TtC12NewsArticles29ProxyAuthenticationKeyManager)init;
- (void)requestAuthenticationKeyWithCompletion:(id)completion;
@end

@implementation ProxyAuthenticationKeyManager

- (_TtC12NewsArticles29ProxyAuthenticationKeyManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)requestAuthenticationKeyWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1D79E85AC(sub_1D79E8DE4, v5);
}

@end