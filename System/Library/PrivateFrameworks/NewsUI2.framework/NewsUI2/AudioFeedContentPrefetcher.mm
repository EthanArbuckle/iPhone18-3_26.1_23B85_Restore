@interface AudioFeedContentPrefetcher
- (_TtC7NewsUI226AudioFeedContentPrefetcher)init;
- (void)bundleSubscriptionDidSubscribe:(id)subscribe;
@end

@implementation AudioFeedContentPrefetcher

- (_TtC7NewsUI226AudioFeedContentPrefetcher)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)bundleSubscriptionDidSubscribe:(id)subscribe
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  v8[4] = sub_219A960BC;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_218793E0C;
  v8[3] = &block_descriptor_206;
  v6 = _Block_copy(v8);
  selfCopy = self;

  [v4 scheduleLowPriorityBlock_];

  _Block_release(v6);
}

@end