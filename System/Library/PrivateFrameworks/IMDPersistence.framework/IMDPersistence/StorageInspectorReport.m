@interface StorageInspectorReport
+ (id)createFromData:(id)a3 error:(id *)a4;
- (NSString)description;
- (_TtC14IMDPersistence22StorageInspectorReport)init;
- (id)encodeToData:(id *)a3;
@end

@implementation StorageInspectorReport

- (NSString)description
{
  v2 = self;
  sub_1B7C75B18();

  v3 = sub_1B7CFEA30();

  return v3;
}

- (_TtC14IMDPersistence22StorageInspectorReport)init
{
  *(&self->super.isa + OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_databaseInspectionReport) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_attachmentStorageInspectorReport) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_exportableDatabaseRecordCountReport) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_crossCheckReport) = 0;
  v3 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_reportDirectoryURL;
  v4 = sub_1B7CFDFF0();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v6.receiver = self;
  v6.super_class = type metadata accessor for StorageInspectorReport();
  return [(StorageInspectorReport *)&v6 init];
}

- (id)encodeToData:(id *)a3
{
  v4 = sub_1B7CFDC10();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = self;
  sub_1B7CFDC00();
  type metadata accessor for StorageInspectorReport();
  sub_1B7C77334(&qword_1EBA52E38, type metadata accessor for StorageInspectorReport);
  v8 = sub_1B7CFDBF0();
  v10 = v9;

  v11 = sub_1B7CFE010();
  sub_1B7C204B0(v8, v10);

  return v11;
}

+ (id)createFromData:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = sub_1B7CFE020();
  v7 = v6;

  v8 = sub_1B7CFDBE0();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1B7CFDBD0();
  type metadata accessor for StorageInspectorReport();
  sub_1B7C77334(&qword_1EBA52E40, type metadata accessor for StorageInspectorReport);
  sub_1B7CFDBC0();
  sub_1B7C204B0(v5, v7);

  return v12;
}

@end