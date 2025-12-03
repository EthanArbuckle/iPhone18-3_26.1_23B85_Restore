@interface RecentlyClosedTabsMenuProvider
- (RecentlyClosedTabsMenuProvider)init;
- (id)makeMenuElementsForPersona:(int64_t)persona;
@end

@implementation RecentlyClosedTabsMenuProvider

- (RecentlyClosedTabsMenuProvider)init
{
  v3.receiver = self;
  v3.super_class = RecentlyClosedTabsMenuProvider;
  return [(RecentlyClosedTabsMenuProvider *)&v3 init];
}

- (id)makeMenuElementsForPersona:(int64_t)persona
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_215A96990;
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v12[4] = sub_2159F96F8;
  v12[5] = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2159F92E8;
  v12[3] = &block_descriptor_9;
  v7 = _Block_copy(v12);
  selfCopy = self;

  elementWithUncachedProvider_ = [v5 elementWithUncachedProvider_];
  _Block_release(v7);
  *(v4 + 32) = elementWithUncachedProvider_;

  sub_2159F7DA8(0, &unk_2811A25B0);
  v10 = sub_215A705D0();

  return v10;
}

@end