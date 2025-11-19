@interface HKSignedClinicalDataItem(HealthRecordServices)
- (uint64_t)copyWithMedicalRecordSampleID:()HealthRecordServices;
@end

@implementation HKSignedClinicalDataItem(HealthRecordServices)

- (uint64_t)copyWithMedicalRecordSampleID:()HealthRecordServices
{
  v4 = MEMORY[0x277CCD990];
  v5 = a3;
  v6 = [a1 primaryConceptCodingCollection];
  v7 = [a1 relevantDate];
  v8 = [v4 itemWithPrimaryConceptCodingCollection:v6 relevantDate:v7 medicalRecordSampleID:v5];

  return v8;
}

@end