@interface CAUAssetLibrary
- (_TtC13CarAssetUtils15CAUAssetLibrary)init;
- (void)dealloc;
@end

@implementation CAUAssetLibrary

- (void)dealloc
{
  v3 = sub_242C1A380();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC13CarAssetUtils15CAUAssetLibrary_basePathURL, v3);
  v8 = self;
  sub_242C1A330();
  (*(v4 + 8))(v7, v3);
  v9 = type metadata accessor for CAUAssetLibrary();
  v10.receiver = v8;
  v10.super_class = v9;
  [(CAUAssetLibrary *)&v10 dealloc];
}

- (_TtC13CarAssetUtils15CAUAssetLibrary)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end