@interface TSCachePreFlushTask
- (TSCachePreFlushTask)init;
- (void)dealloc;
- (void)finish;
@end

@implementation TSCachePreFlushTask

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR___TSCachePreFlushTask_block);
  v5 = *(&self->super.isa + OBJC_IVAR___TSCachePreFlushTask_block);
  v6 = self;
  if (v5)
  {
    v7 = sub_2188202A8(v5);
    v5(v7);
    sub_2187FABEC(v5);
    v8 = *v4;
  }

  else
  {
    v8 = 0;
  }

  *v4 = 0;
  v4[1] = 0;
  sub_2187FABEC(v8);
  v9.receiver = self;
  v9.super_class = ObjectType;
  [(TSCachePreFlushTask *)&v9 dealloc];
}

- (void)finish
{
  v2 = (self + OBJC_IVAR___TSCachePreFlushTask_block);
  v3 = *(&self->super.isa + OBJC_IVAR___TSCachePreFlushTask_block);
  v4 = self;
  if (v3)
  {
    v5 = sub_2188202A8(v3);
    v3(v5);
    sub_2187FABEC(v3);
    v6 = *v2;
  }

  else
  {
    v6 = 0;
  }

  *v2 = 0;
  v2[1] = 0;
  sub_2187FABEC(v6);
}

- (TSCachePreFlushTask)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end