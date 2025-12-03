@interface LocalRootEnumerator
- (NSString)description;
- (_TtC18FileProviderDaemon19LocalRootEnumerator)init;
- (void)currentSyncAnchorWithCompletionHandler:(id)handler;
- (void)invalidate;
@end

@implementation LocalRootEnumerator

- (NSString)description
{
  selfCopy = self;
  sub_1CF015B18();

  v3 = sub_1CF9E6888();

  return v3;
}

- (void)currentSyncAnchorWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_fileEnumerator);
  selfCopy = self;
  v8 = v6;
  sub_1CF4FA78C(v8, sub_1CF4EC19C, v5, selfCopy);
}

- (void)invalidate
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_fileEnumerator);
  v4 = *&v3[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_enumeratorsQueue];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1CF4EC194;
  *(v6 + 24) = v5;
  v10[4] = sub_1CEFFD054;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1CEFFD02C;
  v10[3] = &block_descriptor_20;
  v7 = _Block_copy(v10);
  v8 = v3;
  selfCopy = self;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }
}

- (_TtC18FileProviderDaemon19LocalRootEnumerator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end