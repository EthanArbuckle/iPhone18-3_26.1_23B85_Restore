@interface MedicalRecordAnnotationViewDataSource
- (id)dateViewWithOrientation:(int64_t)a3;
@end

@implementation MedicalRecordAnnotationViewDataSource

- (id)dateViewWithOrientation:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_dateGroup;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_dateGroup);
  v7 = self;
  sub_1D129C760(a3, v6);
  v8 = *(&self->super.isa + v5);
  v9 = v8;

  return v8;
}

@end