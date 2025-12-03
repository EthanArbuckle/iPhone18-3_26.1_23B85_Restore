@interface HRMedicalRecordFormatter
- (HRMedicalRecordFormatter)init;
- (HRMedicalRecordFormatter)initWithConceptStore:(id)store context:(int64_t)context;
- (id)attachmentItemsFromRecord:(id)record;
@end

@implementation HRMedicalRecordFormatter

- (HRMedicalRecordFormatter)initWithConceptStore:(id)store context:(int64_t)context
{
  *(&self->super.isa + OBJC_IVAR___HRMedicalRecordFormatter_store) = store;
  *(&self->super.isa + OBJC_IVAR___HRMedicalRecordFormatter_context) = context;
  v7.receiver = self;
  v7.super_class = type metadata accessor for MedicalRecordFormatter();
  storeCopy = store;
  return [(HRMedicalRecordFormatter *)&v7 init];
}

- (id)attachmentItemsFromRecord:(id)record
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