@interface EvictionCounter
- (_TtC12IMDaemonCoreP33_BB25839AF7989309BBD0C1A20CE96CCC15EvictionCounter)init;
- (void)cache:(id)cache willEvictObject:(id)object;
@end

@implementation EvictionCounter

- (void)cache:(id)cache willEvictObject:(id)object
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22B7DC118();
  swift_unknownObjectRelease();
  sub_22B4CFB78(v9);
  v6 = *(&selfCopy->super.isa + OBJC_IVAR____TtC12IMDaemonCoreP33_BB25839AF7989309BBD0C1A20CE96CCC15EvictionCounter_evictionCount);
  v7 = __OFADD__(v6, 1);
  v8 = (v6 + 1);
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(&selfCopy->super.isa + OBJC_IVAR____TtC12IMDaemonCoreP33_BB25839AF7989309BBD0C1A20CE96CCC15EvictionCounter_evictionCount) = v8;
  }
}

- (_TtC12IMDaemonCoreP33_BB25839AF7989309BBD0C1A20CE96CCC15EvictionCounter)init
{
  *(&self->super.isa + OBJC_IVAR____TtC12IMDaemonCoreP33_BB25839AF7989309BBD0C1A20CE96CCC15EvictionCounter_evictionCount) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for EvictionCounter();
  return [(EvictionCounter *)&v3 init];
}

@end