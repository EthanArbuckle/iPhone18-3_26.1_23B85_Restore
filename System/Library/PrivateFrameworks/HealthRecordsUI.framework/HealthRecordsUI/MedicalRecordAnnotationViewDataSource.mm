@interface MedicalRecordAnnotationViewDataSource
- (id)dateViewWithOrientation:(int64_t)orientation;
@end

@implementation MedicalRecordAnnotationViewDataSource

- (id)dateViewWithOrientation:(int64_t)orientation
{
  v5 = OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_dateGroup;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_dateGroup);
  selfCopy = self;
  sub_1D129C760(orientation, v6);
  v8 = *(&self->super.isa + v5);
  v9 = v8;

  return v8;
}

@end