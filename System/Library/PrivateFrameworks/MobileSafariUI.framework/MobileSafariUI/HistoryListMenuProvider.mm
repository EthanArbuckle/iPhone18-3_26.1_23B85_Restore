@interface HistoryListMenuProvider
- (HistoryListMenuProvider)init;
- (id)makeMenuElementsForPersona:(int64_t)persona;
- (void)historyViewDataSource:(id)source didComputeSessions:(id)sessions;
@end

@implementation HistoryListMenuProvider

- (HistoryListMenuProvider)init
{
  *(&self->super.isa + OBJC_IVAR___HistoryListMenuProvider_inlineRecentHistoryLimit) = 18;
  *(&self->super.isa + OBJC_IVAR___HistoryListMenuProvider_dataSource) = 0;
  v2 = (self + OBJC_IVAR___HistoryListMenuProvider__dataSourceContinuation);
  *v2 = 0u;
  v2[1] = 0u;
  v4.receiver = self;
  v4.super_class = HistoryListMenuProvider;
  return [(HistoryListMenuProvider *)&v4 init];
}

- (id)makeMenuElementsForPersona:(int64_t)persona
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_215A96990;
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v12[4] = sub_215A07640;
  v12[5] = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2159F92E8;
  v12[3] = &block_descriptor_9_0;
  v7 = _Block_copy(v12);
  selfCopy = self;

  elementWithUncachedProvider_ = [v5 elementWithUncachedProvider_];
  _Block_release(v7);
  *(v4 + 32) = elementWithUncachedProvider_;

  sub_2159F7DA8(0, &unk_2811A25B0);
  v10 = sub_215A705D0();

  return v10;
}

- (void)historyViewDataSource:(id)source didComputeSessions:(id)sessions
{
  sourceCopy = source;
  sessionsCopy = sessions;
  selfCopy = self;
  sub_215A06D90(sessionsCopy);
}

@end