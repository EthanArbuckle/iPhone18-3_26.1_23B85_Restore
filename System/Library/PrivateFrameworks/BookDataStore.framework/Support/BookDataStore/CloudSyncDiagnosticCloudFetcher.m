@interface CloudSyncDiagnosticCloudFetcher
- (_TtC14bookdatastored31CloudSyncDiagnosticCloudFetcher)init;
- (_TtC14bookdatastored31CloudSyncDiagnosticCloudFetcher)initWithCloudKitDatabaseController:(id)a3;
@end

@implementation CloudSyncDiagnosticCloudFetcher

- (_TtC14bookdatastored31CloudSyncDiagnosticCloudFetcher)initWithCloudKitDatabaseController:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = a3;
  sub_1001C5138();
  *(&self->super.isa + OBJC_IVAR____TtC14bookdatastored31CloudSyncDiagnosticCloudFetcher_cloudKitDatabaseController) = v6;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(CloudSyncDiagnosticCloudFetcher *)&v8 init];
}

- (_TtC14bookdatastored31CloudSyncDiagnosticCloudFetcher)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end