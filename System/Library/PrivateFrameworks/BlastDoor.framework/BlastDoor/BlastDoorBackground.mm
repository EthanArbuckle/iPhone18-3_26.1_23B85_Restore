@interface BlastDoorBackground
- (BlastDoorBackground)init;
- (BlastDoorWatchBackground)watchBackground;
- (NSData)poster;
@end

@implementation BlastDoorBackground

- (NSData)poster
{
  selfCopy = self;
  v3 = sub_214551A44();

  return v3;
}

- (BlastDoorWatchBackground)watchBackground
{
  v2 = self + OBJC_IVAR___BlastDoorBackground_background;
  v3 = type metadata accessor for Background();
  sub_2140A6810(&v2[*(v3 + 20)], v9);
  v4 = type metadata accessor for _ObjCWatchBackgroundWrapper();
  v5 = objc_allocWithZone(v4);
  sub_2140A6810(v9, v5 + OBJC_IVAR___BlastDoorWatchBackground_watchBackground);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = [(BlastDoorBackground *)&v8 init];
  sub_2142E4DA0(v9);

  return v6;
}

- (BlastDoorBackground)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end