@interface AXLiveCaptionSourceInfo
- (BOOL)isEqual:(id)equal;
- (NSLocale)locale;
- (_TtC17LiveTranscription23AXLiveCaptionSourceInfo)init;
- (_TtC17LiveTranscription23AXLiveCaptionSourceInfo)initWithSourceType:(int64_t)type pid:(int)pid appID:(id)d appName:(id)name locale:(id)locale;
- (int64_t)hash;
- (void)setLocale:(id)locale;
@end

@implementation AXLiveCaptionSourceInfo

- (NSLocale)locale
{
  v3 = sub_25605347C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
  swift_beginAccess();
  (*(v4 + 16))(v7, self + v8, v3);
  v9 = sub_25605340C();
  (*(v4 + 8))(v7, v3);

  return v9;
}

- (void)setLocale:(id)locale
{
  v4 = sub_25605347C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25605342C();
  v9 = OBJC_IVAR____TtC17LiveTranscription23AXLiveCaptionSourceInfo_locale;
  swift_beginAccess();
  v10 = *(v5 + 40);
  selfCopy = self;
  v10(self + v9, v8, v4);
  swift_endAccess();
}

- (_TtC17LiveTranscription23AXLiveCaptionSourceInfo)initWithSourceType:(int64_t)type pid:(int)pid appID:(id)d appName:(id)name locale:(id)locale
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8256A8, &qword_2560559A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_2560536AC();
  v16 = v15;
  v17 = sub_2560536AC();
  v19 = v18;
  if (locale)
  {
    sub_25605342C();
    v20 = sub_25605347C();
    (*(*(v20 - 8) + 56))(v13, 0, 1, v20);
  }

  else
  {
    v21 = sub_25605347C();
    (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  }

  return AXLiveCaptionSourceInfo.init(sourceType:pid:appID:appName:locale:)(type, pid, v14, v16, v17, v19, v13);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_25605388C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_25603138C(v8);

  sub_256033238(v8, &qword_27F8256B0, &qword_2560559A8);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_2560316B8();

  return v3;
}

- (_TtC17LiveTranscription23AXLiveCaptionSourceInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end