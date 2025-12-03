@interface BubblePath.BubblePathNSCacheKey
- (BOOL)isEqual:(id)equal;
- (_TtCV9BubbleKit10BubblePathP33_5FD490854F6BA68D6285276740D9BC3D20BubblePathNSCacheKey)init;
- (int64_t)hash;
@end

@implementation BubblePath.BubblePathNSCacheKey

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_1D46038A0();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1D4606F50();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1D4603968(v8);

  sub_1D4604528(v8);
  return v6;
}

- (_TtCV9BubbleKit10BubblePathP33_5FD490854F6BA68D6285276740D9BC3D20BubblePathNSCacheKey)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end