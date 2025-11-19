@interface _HDECGSampleEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation _HDECGSampleEntityEncoder

- (id)orderedProperties
{
  v9[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"private_classification";
  v9[1] = @"average_heart_rate";
  v9[2] = @"voltage_payload";
  v9[3] = @"symptoms_status";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];
  v4 = [(HDEntityEncoder *)self superclassEncoder];
  v5 = [v4 orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v8 = [(HDEntityEncoder *)self superclassEncoder];
  v9 = [v8 codableRepresentationForPersistentID:a3 row:a4 error:a5];

  if (v9)
  {
    v10 = objc_alloc_init(HDCodableECGSample);
    [(HDCodableECGSample *)v10 setSample:v9];
    [(HDCodableECGSample *)v10 setPrivateClassification:HDSQLiteColumnWithNameAsInt64()];
    v11 = HDSQLiteColumnWithNameAsData();
    [(HDCodableECGSample *)v10 setVoltagePayload:v11];

    [(HDCodableECGSample *)v10 setSymptomsStatus:HDSQLiteColumnWithNameAsInt64()];
    v12 = HDSQLiteColumnWithName();
    if ((MEMORY[0x22AAC6CD0](a4, v12) & 1) == 0)
    {
      MEMORY[0x22AAC6C50](a4, v12);
      [(HDCodableECGSample *)v10 setAverageHeartRateInBPM:?];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCD378]) _init];

  return v3;
}

- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [v11 applyPropertiesToObject:v10 persistentID:a4 row:a5 error:a6];

  if (v12)
  {
    [v10 _setPrivateClassification:HDSQLiteColumnWithNameAsInt64()];
    v13 = HDSQLiteColumnWithNameAsData();
    [v10 _setPayload:v13];

    [v10 _setSymptomsStatus:HDSQLiteColumnWithNameAsInt64()];
    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      v14 = MEMORY[0x277CCD7E8];
      v15 = [MEMORY[0x277CCDAB0] _countPerMinuteUnit];
      HDSQLiteColumnWithNameAsDouble();
      v16 = [v14 quantityWithUnit:v15 doubleValue:?];
      [v10 _setAverageHeartRate:v16];
    }
  }

  return v12;
}

@end