@interface MUPlaceActionBarConfiguration
- (BOOL)hasContent;
- (MUPlaceActionBarConfiguration)init;
@end

@implementation MUPlaceActionBarConfiguration

- (BOOL)hasContent
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FE18, &unk_1C5877850);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = self + OBJC_IVAR___MUPlaceActionBarConfiguration_layout;
  sub_1C57045AC(self + OBJC_IVAR___MUPlaceActionBarConfiguration_layout, &v13 - v6);
  v9 = type metadata accessor for PlaceActionBarLayoutItem(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    selfCopy = self;
    sub_1C570461C(v7);
    v11 = *(*&v8[*(type metadata accessor for PlaceActionBarLayout(0) + 20)] + 16);

    return v11 != 0;
  }

  else
  {
    sub_1C570461C(v7);
    return 1;
  }
}

- (MUPlaceActionBarConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end