@interface TSCacheFlushingManager
- (TSCacheFlushingManager)init;
- (id)createPreFlushTask;
- (void)addPreFlushTask:(id)task;
- (void)enableFlushing;
@end

@implementation TSCacheFlushingManager

- (void)addPreFlushTask:(id)task
{
  v4 = _Block_copy(task);
  v5 = *(&self->super.isa + OBJC_IVAR___TSCacheFlushingManager_preFlushGroup);
  selfCopy = self;
  dispatch_group_enter(v5);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_2187E8A60;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_218793E0C;
  v10[3] = &block_descriptor_26_1;
  v8 = _Block_copy(v10);
  v9 = v4[2];
  swift_retain_n();
  v9(v4, v8);
  _Block_release(v4);

  _Block_release(v8);
}

- (id)createPreFlushTask
{
  v2 = *(&self->super.isa + OBJC_IVAR___TSCacheFlushingManager_preFlushGroup);
  selfCopy = self;
  dispatch_group_enter(v2);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = type metadata accessor for CachePreFlushTask();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___TSCachePreFlushTask_block];
  *v7 = sub_2187E8A60;
  *(v7 + 1) = v4;
  v10.receiver = v6;
  v10.super_class = v5;
  v8 = [(TSCacheFlushingManager *)&v10 init];

  return v8;
}

- (void)enableFlushing
{
  selfCopy = self;
  _s7NewsUI220CacheFlushingManagerC06enableD0yyF_0();
}

- (TSCacheFlushingManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end