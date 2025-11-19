@interface DOCSourceOrderObserver
- (DOCSourceOrderObserver)init;
- (DOCSourceOrderObserver)initWithConfiguration:(id)a3 sourceObserver:(id)a4 updateBlock:(id)a5;
- (void)invokeUpdateBlock;
- (void)moveSource:(id)a3 toIndex:(int64_t)a4;
@end

@implementation DOCSourceOrderObserver

- (DOCSourceOrderObserver)initWithConfiguration:(id)a3 sourceObserver:(id)a4 updateBlock:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  return DOCSourceOrderObserver.init(configuration:sourceObserver:update:)(a3, a4, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned DOCSourceByType) -> (), v8);
}

- (void)invokeUpdateBlock
{
  v3 = (self + OBJC_IVAR___DOCSourceOrderObserver_updateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(**(&self->super.isa + OBJC_IVAR___DOCSourceOrderObserver_strategy) + 136);
  v6 = self;

  v8 = v5(v7);
  v4();
}

- (void)moveSource:(id)a3 toIndex:(int64_t)a4
{
  v6 = *(&self->super.isa + OBJC_IVAR___DOCSourceOrderObserver_strategy);
  v7 = *(*v6 + 120);
  v8 = a3;
  v14 = self;
  if (v7(v8, a4))
  {
    v9 = (v14 + OBJC_IVAR___DOCSourceOrderObserver_updateBlock);
    swift_beginAccess();
    v10 = *v9;
    v11 = *(*v6 + 136);

    v13 = v11(v12);
    v10();

    (*(*v6 + 144))();
  }

  else
  {
  }
}

- (DOCSourceOrderObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end