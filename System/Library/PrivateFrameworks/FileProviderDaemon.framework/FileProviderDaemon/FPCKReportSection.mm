@interface FPCKReportSection
- (NSDate)date;
- (NSString)build;
- (NSString)description;
- (_TtC18FileProviderDaemon17FPCKReportSection)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPCKReportSection

- (NSDate)date
{
  v3 = sub_1CF9E5CF8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, self + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date, v3, v6);
  v9 = sub_1CF9E5C48();
  (*(v4 + 8))(v8, v3);

  return v9;
}

- (NSString)build
{
  v2 = *(self + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build);
  v3 = *(self + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build + 8);

  v4 = sub_1CF9E6888();

  return v4;
}

- (NSString)description
{
  v2 = self;
  sub_1CF4D639C();

  v3 = sub_1CF9E6888();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CF4D7040(v4);
}

- (_TtC18FileProviderDaemon17FPCKReportSection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end