@interface IDSTestableLinkWithScheduler
- (IDSTestableLinkWithScheduler)init;
- (IDSTestableLinkWithScheduler)initWithLink:(id)link addBlock:(id)block;
@end

@implementation IDSTestableLinkWithScheduler

- (IDSTestableLinkWithScheduler)initWithLink:(id)link addBlock:(id)block
{
  v5 = _Block_copy(block);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  type metadata accessor for _IDSTestableLinkWithScheduler();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  type metadata accessor for _IDSTestableLinkWithScheduler.Executor();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1A7D3F570;
  *(v8 + 24) = v6;
  *(v7 + 3) = v8;
  *(&self->super.isa + OBJC_IVAR___IDSTestableLinkWithScheduler_link) = v7;
  v10.receiver = self;
  v10.super_class = IDSTestableLinkWithScheduler;
  return [(IDSTestableLinkWithScheduler *)&v10 init];
}

- (IDSTestableLinkWithScheduler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end