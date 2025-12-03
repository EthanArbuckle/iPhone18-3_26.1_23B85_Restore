@interface StreamsBookmarkCollection
- (_TtC26DeepThoughtBiomeFoundation25StreamsBookmarkCollection)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation StreamsBookmarkCollection

- (void)encodeWithCoder:(id)coder
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation25StreamsBookmarkCollection_bookmarks);
  type metadata accessor for StreamsBookmark();
  coderCopy = coder;
  selfCopy = self;
  v7 = sub_248731230();
  v8 = sub_248730FC0();
  [coderCopy encodeObject:v7 forKey:v8];
}

- (_TtC26DeepThoughtBiomeFoundation25StreamsBookmarkCollection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end