@interface IDSLinksQualityReportDeltaObject
+ (id)createWithJSON:(id)n error:(id *)error;
- (IDSLinksQualityReportDeltaObject)init;
- (IDSLinksQualityReportSyncTokenObject)syncToken;
- (id)jsonWithError:(id *)error;
@end

@implementation IDSLinksQualityReportDeltaObject

- (IDSLinksQualityReportSyncTokenObject)syncToken
{
  v3 = OBJC_IVAR___IDSLinksQualityReportDeltaObject_delta;
  result = swift_beginAccess();
  v5 = *(&self->super.isa + v3);
  if (v5)
  {
    v6 = objc_allocWithZone(IDSLinksQualityReportSyncTokenObject);

    v7 = [v6 init];
    v8 = OBJC_IVAR___IDSLinksQualityReportSyncTokenObject_syncToken;
    swift_beginAccess();
    *&v7[v8] = v5;

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

+ (id)createWithJSON:(id)n error:(id *)error
{
  nCopy = n;
  v5 = sub_1A7E21A10();
  v7 = v6;

  v8 = sub_1A7CD41DC();
  sub_1A7CC7E50(v5, v7);

  return v8;
}

- (id)jsonWithError:(id *)error
{
  v3 = qword_1EB2B46F8;
  selfCopy = self;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = (selfCopy + OBJC_IVAR___IDSLinksQualityReportDeltaObject_delta);
  swift_beginAccess();
  v11 = *v5;
  sub_1A7CD3B24(*v5);
  sub_1A7CC7FFC(&qword_1EB2B4D98);
  sub_1A7CD42F8();
  v6 = sub_1A7E215E0();
  v8 = v7;

  sub_1A7CD3BC0(v11);
  v9 = sub_1A7E219F0();
  sub_1A7CC7E50(v6, v8);

  return v9;
}

- (IDSLinksQualityReportDeltaObject)init
{
  v2 = (&self->super.isa + OBJC_IVAR___IDSLinksQualityReportDeltaObject_delta);
  *v2 = 0;
  v2[1] = 0;
  v4.receiver = self;
  v4.super_class = IDSLinksQualityReportDeltaObject;
  return [(IDSLinksQualityReportDeltaObject *)&v4 init];
}

@end