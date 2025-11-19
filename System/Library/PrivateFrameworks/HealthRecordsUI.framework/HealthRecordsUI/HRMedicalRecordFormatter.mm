@interface HRMedicalRecordFormatter
- (HRMedicalRecordFormatter)init;
- (HRMedicalRecordFormatter)initWithConceptStore:(id)a3 context:(int64_t)a4;
- (id)attachmentItemsFromRecord:(id)a3;
@end

@implementation HRMedicalRecordFormatter

- (HRMedicalRecordFormatter)initWithConceptStore:(id)a3 context:(int64_t)a4
{
  *(&self->super.isa + OBJC_IVAR___HRMedicalRecordFormatter_store) = a3;
  *(&self->super.isa + OBJC_IVAR___HRMedicalRecordFormatter_context) = a4;
  v7.receiver = self;
  v7.super_class = type metadata accessor for MedicalRecordFormatter();
  v5 = a3;
  return [(HRMedicalRecordFormatter *)&v7 init];
}

- (id)attachmentItemsFromRecord:(id)a3
{
  sub_1D118F960(0, &qword_1EC60AD10, MEMORY[0x1E69E62F8]);
  v3 = sub_1D139044C();

  return v3;
}

- (HRMedicalRecordFormatter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end