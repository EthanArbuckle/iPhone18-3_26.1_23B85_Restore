@interface BubbleImagePathNSCacheKey
- (BOOL)isEqual:(id)a3;
- (_TtC7ChatKitP33_CC83C8481FCA2C96C65233668A9F66CB25BubbleImagePathNSCacheKey)init;
- (int64_t)hash;
@end

@implementation BubbleImagePathNSCacheKey

- (int64_t)hash
{
  v2 = self;
  v3 = sub_190D56D10();

  return v3;
}

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

  v6 = sub_1909B330C(v8);

  sub_19022EEA4(v8, &unk_1EAD551C0);
  return v6 & 1;
}

- (_TtC7ChatKitP33_CC83C8481FCA2C96C65233668A9F66CB25BubbleImagePathNSCacheKey)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end