@interface HKSignedClinicalDataItem(HealthRecordServices)
- (uint64_t)copyWithMedicalRecordSampleID:()HealthRecordServices;
@end

@implementation HKSignedClinicalDataItem(HealthRecordServices)

- (uint64_t)copyWithMedicalRecordSampleID:()HealthRecordServices
{
  v4 = MEMORY[0x277CCD990];
  v5 = a3;
  primaryConceptCodingCollection = [self primaryConceptCodingCollection];
  relevantDate = [self relevantDate];
  v8 = [v4 itemWithPrimaryConceptCodingCollection:primaryConceptCodingCollection relevantDate:relevantDate medicalRecordSampleID:v5];

  return v8;
}

@end