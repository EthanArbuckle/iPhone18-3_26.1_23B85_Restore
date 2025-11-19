@interface RegionMinimumAge
- (_TtC13CoreIDVShared16RegionMinimumAge)init;
- (_TtC13CoreIDVShared16RegionMinimumAge)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RegionMinimumAge

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_225CCE444();
  v7 = sub_225CCE444();
  [v4 encodeObject:v6 forKey:v7];

  v8 = *(&v5->super.isa + OBJC_IVAR____TtC13CoreIDVShared16RegionMinimumAge_age);
  v9 = sub_225CCE444();
  [v4 encodeInteger:v8 forKey:v9];
}

- (_TtC13CoreIDVShared16RegionMinimumAge)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_225B752D0(v3);

  return v4;
}

- (_TtC13CoreIDVShared16RegionMinimumAge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end