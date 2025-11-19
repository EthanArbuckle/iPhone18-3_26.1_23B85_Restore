@interface HKElectrocardiogram(HKCodingSupport)
+ (id)createWithCodableECG:()HKCodingSupport;
- (HKCodableElectrocardiogramSample)codableECG;
@end

@implementation HKElectrocardiogram(HKCodingSupport)

+ (id)createWithCodableECG:()HKCodingSupport
{
  v24[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E696AB80];
  v5 = [v3 dateInterval];
  v6 = [v4 hk_dateIntervalWithCodableDateInterval:v5 sourceTimeZone:0];

  v23[0] = *MEMORY[0x1E696C6F8];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v3, "privateSymptoms")}];
  v24[0] = v7;
  v23[1] = *MEMORY[0x1E696BA20];
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v3, "algorithmVersionRawValue")}];
  v24[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v10 = MEMORY[0x1E696C128];
  v11 = [MEMORY[0x1E696C3D0] electrocardiogramType];
  v12 = [v6 startDate];
  [v12 timeIntervalSinceReferenceDate];
  v14 = v13;
  v15 = [v6 endDate];
  [v15 timeIntervalSinceReferenceDate];
  v17 = v16;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __61__HKElectrocardiogram_HKCodingSupport__createWithCodableECG___block_invoke;
  v21[3] = &unk_1E81BC9E0;
  v22 = v3;
  v18 = v3;
  v19 = [v10 _newSampleWithType:v11 startDate:0 endDate:v9 device:v21 metadata:v14 config:v17];

  return v19;
}

- (HKCodableElectrocardiogramSample)codableECG
{
  v2 = objc_alloc_init(HKCodableElectrocardiogramSample);
  v3 = objc_alloc(MEMORY[0x1E696AB80]);
  v4 = [a1 startDate];
  v5 = [a1 endDate];
  v6 = [v3 initWithStartDate:v4 endDate:v5];
  v7 = [v6 hk_codableDateInterval];
  [(HKCodableElectrocardiogramSample *)v2 setDateInterval:v7];

  -[HKCodableElectrocardiogramSample setClassificationRawValue:](v2, "setClassificationRawValue:", [a1 privateClassification]);
  v8 = [a1 averageHeartRate];
  v9 = [v8 codableRepresentation];
  [(HKCodableElectrocardiogramSample *)v2 setAverageHeartRate:v9];

  -[HKCodableElectrocardiogramSample setSymptomsStatusRawValue:](v2, "setSymptomsStatusRawValue:", [a1 symptomsStatus]);
  -[HKCodableElectrocardiogramSample setPrivateSymptoms:](v2, "setPrivateSymptoms:", [a1 privateSymptoms]);
  v10 = [a1 _algorithmVersion];
  -[HKCodableElectrocardiogramSample setAlgorithmVersionRawValue:](v2, "setAlgorithmVersionRawValue:", [v10 longLongValue]);

  return v2;
}

@end