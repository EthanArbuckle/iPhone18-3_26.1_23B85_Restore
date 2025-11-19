@interface ConversationTitle
- (BOOL)isEqual:(id)a3;
- (_TtC7ChatKit17ConversationTitle)init;
@end

@implementation ConversationTitle

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_190C84594(v8);

  sub_19021E7D8(v8);
  return v6 & 1;
}

- (_TtC7ChatKit17ConversationTitle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end