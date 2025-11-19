@interface BundleHardPaywallViewProvider
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (_TtC16NewsSubscription29BundleHardPaywallViewProvider)init;
- (void)scrollViewDidScroll:(id)a3;
@end

@implementation BundleHardPaywallViewProvider

- (_TtC16NewsSubscription29BundleHardPaywallViewProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v9 = sub_1D78B3294();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B3254();
  v13 = a3;
  v14 = self;
  LOBYTE(a6) = sub_1D7785834(v12, a6);

  (*(v10 + 8))(v12, v9);
  return a6 & 1;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D77858CC();
}

@end