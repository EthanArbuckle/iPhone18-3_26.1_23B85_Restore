@interface BundleHardPaywallViewProvider
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (_TtC16NewsSubscription29BundleHardPaywallViewProvider)init;
- (void)scrollViewDidScroll:(id)scroll;
@end

@implementation BundleHardPaywallViewProvider

- (_TtC16NewsSubscription29BundleHardPaywallViewProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v9 = sub_1D78B3294();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B3254();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(interaction) = sub_1D7785834(v12, interaction);

  (*(v10 + 8))(v12, v9);
  return interaction & 1;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1D77858CC();
}

@end