@interface IDSLinksQualityReportSyncTokenObject
+ (id)createWithJSON:(id)a3 error:(id *)a4;
- (IDSLinksQualityReportSyncTokenObject)init;
- (id)jsonWithError:(id *)a3;
@end

@implementation IDSLinksQualityReportSyncTokenObject

+ (id)createWithJSON:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = sub_1A7E21A10();
  v7 = v6;

  v8 = sub_1A7D56218();
  sub_1A7CC7E50(v5, v7);

  return v8;
}

- (id)jsonWithError:(id *)a3
{
  v3 = qword_1EB2B47F0;
  v4 = self;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  sub_1A7CC7FFC(&qword_1EB2B64E8);
  sub_1A7D56358();
  v5 = sub_1A7E215E0();
  v7 = v6;

  v8 = sub_1A7E219F0();
  sub_1A7CC7E50(v5, v7);

  return v8;
}

- (IDSLinksQualityReportSyncTokenObject)init
{
  *(&self->super.isa + OBJC_IVAR___IDSLinksQualityReportSyncTokenObject_syncToken) = 0;
  v3.receiver = self;
  v3.super_class = IDSLinksQualityReportSyncTokenObject;
  return [(IDSLinksQualityReportSyncTokenObject *)&v3 init];
}

@end