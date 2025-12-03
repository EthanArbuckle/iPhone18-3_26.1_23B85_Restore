@interface NullStream
- (_TtC7parsecd10NullStream)initWithURL:(id)l append:(BOOL)append;
@end

@implementation NullStream

- (_TtC7parsecd10NullStream)initWithURL:(id)l append:(BOOL)append
{
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_100108740(v8, append);
}

@end