@interface LocalFileEnumerator
- (NSString)description;
- (_TtC18FileProviderDaemon19LocalFileEnumerator)init;
- (void)currentSyncAnchorWithCompletionHandler:(id)a3;
- (void)invalidate;
@end

@implementation LocalFileEnumerator

- (NSString)description
{
  v2 = self;
  sub_1CF019EF0();

  v3 = sub_1CF9E6888();

  return v3;
}

- (void)currentSyncAnchorWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1CF4FADF4(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)invalidate
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_enumeratorsQueue);
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1CF4EC194;
  *(v5 + 24) = v4;
  v8[4] = sub_1CEFFD054;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1CEFFD02C;
  v8[3] = &block_descriptor_23;
  v6 = _Block_copy(v8);
  v7 = self;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

- (_TtC18FileProviderDaemon19LocalFileEnumerator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end