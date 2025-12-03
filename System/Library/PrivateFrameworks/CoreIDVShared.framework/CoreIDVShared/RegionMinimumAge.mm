@interface RegionMinimumAge
- (_TtC13CoreIDVShared16RegionMinimumAge)init;
- (_TtC13CoreIDVShared16RegionMinimumAge)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RegionMinimumAge

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_225CCE444();
  v7 = sub_225CCE444();
  [coderCopy encodeObject:v6 forKey:v7];

  v8 = *(&selfCopy->super.isa + OBJC_IVAR____TtC13CoreIDVShared16RegionMinimumAge_age);
  v9 = sub_225CCE444();
  [coderCopy encodeInteger:v8 forKey:v9];
}

- (_TtC13CoreIDVShared16RegionMinimumAge)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_225B752D0(coderCopy);

  return v4;
}

- (_TtC13CoreIDVShared16RegionMinimumAge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end