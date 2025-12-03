@interface LocalizedStringsCache.Key
- (BOOL)isEqual:(id)equal;
- (_TtCC9JetEngine21LocalizedStringsCacheP33_5B10CF4EC9E6563F43A45CEBFA8559793Key)init;
- (int64_t)hash;
@end

@implementation LocalizedStringsCache.Key

- (int64_t)hash
{
  sub_1AB462114();
  selfCopy = self;
  sub_1AB460684();
  if (*&selfCopy->key[OBJC_IVAR____TtCC9JetEngine21LocalizedStringsCacheP33_5B10CF4EC9E6563F43A45CEBFA8559793Key_domain])
  {
    sub_1AB4620C4();
    sub_1AB460684();
  }

  else
  {
    sub_1AB4620C4();
  }

  v4 = sub_1AB4620F4();

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1AB461494();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1AB163E00(v8);

  sub_1AB0167A8(v8);
  return v6 & 1;
}

- (_TtCC9JetEngine21LocalizedStringsCacheP33_5B10CF4EC9E6563F43A45CEBFA8559793Key)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end