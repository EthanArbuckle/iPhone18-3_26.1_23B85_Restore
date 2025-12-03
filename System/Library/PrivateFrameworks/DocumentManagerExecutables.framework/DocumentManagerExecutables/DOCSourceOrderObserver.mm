@interface DOCSourceOrderObserver
- (DOCSourceOrderObserver)init;
- (DOCSourceOrderObserver)initWithConfiguration:(id)configuration sourceObserver:(id)observer updateBlock:(id)block;
- (void)invokeUpdateBlock;
- (void)moveSource:(id)source toIndex:(int64_t)index;
@end

@implementation DOCSourceOrderObserver

- (DOCSourceOrderObserver)initWithConfiguration:(id)configuration sourceObserver:(id)observer updateBlock:(id)block
{
  v7 = _Block_copy(block);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  return DOCSourceOrderObserver.init(configuration:sourceObserver:update:)(configuration, observer, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned DOCSourceByType) -> (), v8);
}

- (void)invokeUpdateBlock
{
  v3 = (self + OBJC_IVAR___DOCSourceOrderObserver_updateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(**(&self->super.isa + OBJC_IVAR___DOCSourceOrderObserver_strategy) + 136);
  selfCopy = self;

  v8 = v5(v7);
  v4();
}

- (void)moveSource:(id)source toIndex:(int64_t)index
{
  v6 = *(&self->super.isa + OBJC_IVAR___DOCSourceOrderObserver_strategy);
  v7 = *(*v6 + 120);
  sourceCopy = source;
  selfCopy = self;
  if (v7(sourceCopy, index))
  {
    v9 = (selfCopy + OBJC_IVAR___DOCSourceOrderObserver_updateBlock);
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