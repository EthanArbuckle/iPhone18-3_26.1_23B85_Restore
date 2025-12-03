@interface _HDECGSampleEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
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
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:orderedProperties];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v9 = [superclassEncoder codableRepresentationForPersistentID:d row:row error:error];

  if (v9)
  {
    v10 = objc_alloc_init(HDCodableECGSample);
    [(HDCodableECGSample *)v10 setSample:v9];
    [(HDCodableECGSample *)v10 setPrivateClassification:HDSQLiteColumnWithNameAsInt64()];
    v11 = HDSQLiteColumnWithNameAsData();
    [(HDCodableECGSample *)v10 setVoltagePayload:v11];

    [(HDCodableECGSample *)v10 setSymptomsStatus:HDSQLiteColumnWithNameAsInt64()];
    v12 = HDSQLiteColumnWithName();
    if ((MEMORY[0x22AAC6CD0](row, v12) & 1) == 0)
    {
      MEMORY[0x22AAC6C50](row, v12);
      [(HDCodableECGSample *)v10 setAverageHeartRateInBPM:?];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCD378]) _init];

  return _init;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  if (v12)
  {
    [objectCopy _setPrivateClassification:HDSQLiteColumnWithNameAsInt64()];
    v13 = HDSQLiteColumnWithNameAsData();
    [objectCopy _setPayload:v13];

    [objectCopy _setSymptomsStatus:HDSQLiteColumnWithNameAsInt64()];
    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      v14 = MEMORY[0x277CCD7E8];
      _countPerMinuteUnit = [MEMORY[0x277CCDAB0] _countPerMinuteUnit];
      HDSQLiteColumnWithNameAsDouble();
      v16 = [v14 quantityWithUnit:_countPerMinuteUnit doubleValue:?];
      [objectCopy _setAverageHeartRate:v16];
    }
  }

  return v12;
}

@end