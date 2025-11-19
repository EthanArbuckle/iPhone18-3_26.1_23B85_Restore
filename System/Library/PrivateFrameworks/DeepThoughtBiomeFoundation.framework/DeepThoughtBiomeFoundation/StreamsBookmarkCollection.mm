@interface StreamsBookmarkCollection
- (_TtC26DeepThoughtBiomeFoundation25StreamsBookmarkCollection)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation StreamsBookmarkCollection

- (void)encodeWithCoder:(id)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation25StreamsBookmarkCollection_bookmarks);
  type metadata accessor for StreamsBookmark();
  v6 = a3;
  v9 = self;
  v7 = sub_248731230();
  v8 = sub_248730FC0();
  [v6 encodeObject:v7 forKey:v8];
}

- (_TtC26DeepThoughtBiomeFoundation25StreamsBookmarkCollection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end