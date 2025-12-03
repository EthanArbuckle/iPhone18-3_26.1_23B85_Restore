@interface QuickReplyContent
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (NSArray)rowHeights;
- (NSArray)rows;
- (NSArray)strings;
- (NSDictionary)indicesForReply;
- (NSString)debugDescription;
- (_TtC7ChatKit17QuickReplyContent)init;
- (int64_t)indexForReply:(id)reply;
@end

@implementation QuickReplyContent

- (CGSize)size
{
  v2 = *(self + OBJC_IVAR____TtC7ChatKit17QuickReplyContent_size);
  v3 = *(self + OBJC_IVAR____TtC7ChatKit17QuickReplyContent_size + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (NSArray)rows
{
  sub_190D52690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920);
  v2 = sub_190D57160();

  return v2;
}

- (NSArray)rowHeights
{
  sub_190D52690();
  v2 = sub_190D57160();

  return v2;
}

- (NSDictionary)indicesForReply
{
  sub_190D52690();
  v2 = sub_190D56D60();

  return v2;
}

- (NSString)debugDescription
{
  selfCopy = self;
  sub_190874624();

  v3 = sub_190D56ED0();

  return v3;
}

- (int64_t)indexForReply:(id)reply
{
  if (reply)
  {
    v4 = sub_190D56F10();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_1908752E4(v4, v6);

  return v8;
}

- (NSArray)strings
{
  selfCopy = self;
  sub_190875414();

  v3 = sub_190D57160();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_190875570(v8);

  sub_19022EEA4(v8, &unk_1EAD551C0);
  return v6 & 1;
}

- (_TtC7ChatKit17QuickReplyContent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end