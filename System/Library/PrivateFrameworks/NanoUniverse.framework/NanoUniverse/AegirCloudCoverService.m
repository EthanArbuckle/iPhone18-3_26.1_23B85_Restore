@interface AegirCloudCoverService
+ (NSString)cloudLevelHighFileName;
+ (NSString)cloudLevelLowFileName;
+ (NSString)cloudLevelMidFileName;
+ (NSString)cloudLevelPrefix;
- (BOOL)canFetchData;
- (BOOL)disableFetch;
- (NSArray)allCloudLevelFileNames;
- (NSURL)directory;
- (NUNIFileConverter)fileConverter;
- (_TtC12NanoUniverse22AegirCloudCoverService)init;
- (_TtC12NanoUniverse22AegirCloudCoverService)initWithImageScale:(float)a3;
- (id)cloudTextureURLs;
- (void)retrieveCloudTextureURLsWithNotifyOn:(id)a3 completionHandler:(id)a4;
- (void)setDirectory:(id)a3;
- (void)setDisableFetch:(BOOL)a3;
- (void)setFileConverter:(id)a3;
@end

@implementation AegirCloudCoverService

- (NUNIFileConverter)fileConverter
{
  v3 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_fileConverter;
  swift_beginAccess();
  v4 = *(self + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setFileConverter:(id)a3
{
  v5 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_fileConverter;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (BOOL)disableFetch
{
  v3 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_disableFetch;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDisableFetch:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_disableFetch;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSURL)directory
{
  v3 = sub_25B716250();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_directory;
  swift_beginAccess();
  (*(v4 + 16))(v7, self + v8, v3);
  v9 = sub_25B7161F0();
  (*(v4 + 8))(v7, v3);

  return v9;
}

- (void)setDirectory:(id)a3
{
  v4 = sub_25B716250();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v16[-v10];
  sub_25B716220();
  v12 = OBJC_IVAR____TtC12NanoUniverse22AegirCloudCoverService_directory;
  swift_beginAccess();
  (*(v5 + 16))(v9, self + v12, v4);
  swift_beginAccess();
  v13 = *(v5 + 24);
  v14 = self;
  v13(self + v12, v11, v4);
  swift_endAccess();
  sub_25B702CE0();

  v15 = *(v5 + 8);
  v15(v9, v4);
  v15(v11, v4);
}

- (_TtC12NanoUniverse22AegirCloudCoverService)initWithImageScale:(float)a3
{
  static AegirCloudCoverService.Configuration.prodEnvironment.getter(v13);
  v10[0] = v13[0];
  v10[1] = v13[1];
  v11 = v14;
  v12 = v15;
  v5 = objc_allocWithZone(type metadata accessor for AegirCloudCoverService());
  v6 = AegirCloudCoverService.init(configuration:imageScale:)(v10, a3);
  swift_getObjectType();
  v7 = *((*MEMORY[0x277D85000] & *self) + 0x30);
  v8 = *((*MEMORY[0x277D85000] & *self) + 0x34);
  swift_deallocPartialClassInstance();
  return v6;
}

- (void)retrieveCloudTextureURLsWithNotifyOn:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_25B704BD4(v8, sub_25B715214, v7);
}

- (id)cloudTextureURLs
{
  v2 = self;
  sub_25B704FCC();

  sub_25B716250();
  v3 = sub_25B716830();

  return v3;
}

- (BOOL)canFetchData
{
  v2 = self;
  v3 = sub_25B7055DC(v2);

  return v3 & 1;
}

- (_TtC12NanoUniverse22AegirCloudCoverService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (NSString)cloudLevelPrefix
{
  v2 = sub_25B7167A0();

  return v2;
}

+ (NSString)cloudLevelLowFileName
{
  v2 = sub_25B7167A0();

  return v2;
}

+ (NSString)cloudLevelMidFileName
{
  v2 = sub_25B7167A0();

  return v2;
}

+ (NSString)cloudLevelHighFileName
{
  v2 = sub_25B7167A0();

  return v2;
}

- (NSArray)allCloudLevelFileNames
{
  _s12NanoUniverse22AegirCloudCoverServiceC03allD14LevelFileNamesSaySSGvg_0();
  v2 = sub_25B716830();

  return v2;
}

@end