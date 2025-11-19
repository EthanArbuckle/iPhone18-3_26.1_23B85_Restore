@interface FPFSSearchEnumerator
- (NSString)description;
- (_TtC18FileProviderDaemon20FPFSSearchEnumerator)init;
- (void)currentSyncAnchorWithCompletion:(id)a3;
- (void)dealloc;
- (void)enumerateChangesFromToken:(id)a3 suggestedBatchSize:(int64_t)a4 reply:(id)a5;
- (void)enumerateItemsFromPage:(id)a3 suggestedPageSize:(int64_t)a4 reply:(id)a5;
- (void)enumerateItemsFromPage:(id)a3 suggestedPageSize:(int64_t)a4 upTo:(int64_t)a5 reply:(id)a6;
- (void)invalidate;
- (void)keepAliveConnectionForRegisteredObserver:(id)a3;
@end

@implementation FPFSSearchEnumerator

- (void)dealloc
{
  v2 = self;
  sub_1CF92A904();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for FPFSSearchEnumerator();
  [(FPFSSearchEnumerator *)&v3 dealloc];
}

- (void)invalidate
{
  v2 = self;
  sub_1CF92A904();
}

- (void)currentSyncAnchorWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1CF92C344(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)enumerateItemsFromPage:(id)a3 suggestedPageSize:(int64_t)a4 reply:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = self;
  sub_1CF92C644(v9, a4, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)enumerateItemsFromPage:(id)a3 suggestedPageSize:(int64_t)a4 upTo:(int64_t)a5 reply:(id)a6
{
  v7 = sub_1CF9E5248();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1CF9E5268();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a6);
  sub_1CF9E5108();
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF01C4BC(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
  sub_1CF9E57D8();
  v15 = sub_1CF9E50D8();
  (*(v10 + 8))(v13, v9);
  v16 = sub_1CF9E57E8();
  v14[2](v14, 0, v16);

  _Block_release(v14);
}

- (void)enumerateChangesFromToken:(id)a3 suggestedBatchSize:(int64_t)a4 reply:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = a3;
  v13 = self;
  v10 = sub_1CF9E5B88();
  v12 = v11;

  _Block_copy(v8);
  sub_1CF92CEB4(v10, v12, a4, v13, v8);
  _Block_release(v8);
  _Block_release(v8);
  sub_1CEFE4714(v10, v12);
}

- (void)keepAliveConnectionForRegisteredObserver:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_keepAlive);
  v7 = *(&self->super.isa + OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_keepAlive);
  v8 = *&self->observer[OBJC_IVAR____TtC18FileProviderDaemon20FPFSSearchEnumerator_keepAlive];
  *v6 = sub_1CF92C334;
  v6[1] = v5;
  v9 = self;
  sub_1CF045404(v7);
}

- (NSString)description
{
  v2 = self;
  sub_1CF92C078();

  v3 = sub_1CF9E6888();

  return v3;
}

- (_TtC18FileProviderDaemon20FPFSSearchEnumerator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end