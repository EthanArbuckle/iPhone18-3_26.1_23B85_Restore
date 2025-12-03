@interface FPCKDetachedRoot
- (NSURL)logicalLocation;
- (NSURL)physicalLocation;
- (_TtC18FileProviderDaemon16FPCKDetachedRoot)init;
- (_TtC18FileProviderDaemon16FPCKDetachedRoot)initWithPhysicalLocation:(id)location rootURL:(id)l error:(id *)error;
@end

@implementation FPCKDetachedRoot

- (NSURL)physicalLocation
{
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, self + OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_physicalLocation, v3, v6);
  v9 = sub_1CF9E5928();
  (*(v4 + 8))(v8, v3);

  return v9;
}

- (NSURL)logicalLocation
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  sub_1CEFCCBDC(self + OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_logicalLocation, &v13 - v5, &unk_1EC4BE310, qword_1CF9FCBE0);
  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_1CF9E5928();
    (*(v8 + 8))(v6, v7);
    v10 = v11;
  }

  return v10;
}

- (_TtC18FileProviderDaemon16FPCKDetachedRoot)initWithPhysicalLocation:(id)location rootURL:(id)l error:(id *)error
{
  v5 = sub_1CF9E5A58();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13[-v10];
  sub_1CF9E59D8();
  sub_1CF9E59D8();
  return FPCKDetachedRoot.init(physicalLocation:rootURL:)(v11, v8);
}

- (_TtC18FileProviderDaemon16FPCKDetachedRoot)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end