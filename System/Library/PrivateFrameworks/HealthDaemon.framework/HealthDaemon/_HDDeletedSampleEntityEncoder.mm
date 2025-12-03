@interface _HDDeletedSampleEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)orderedProperties;
@end

@implementation _HDDeletedSampleEntityEncoder

- (id)orderedProperties
{
  v5[9] = *MEMORY[0x277D85DE8];
  v5[0] = @"uuid";
  v5[1] = @"creation_date";
  v5[2] = @"provenance";
  v5[3] = @"data_type";
  v5[4] = @"start_date";
  v5[5] = @"end_date";
  v5[6] = @"external_sync_ids.sid";
  v5[7] = @"external_sync_ids.version";
  v5[8] = @"external_sync_ids.object_code";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:9];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v6 = objc_alloc_init(HDCodableHealthObject);
  v7 = +[HDDeletedSampleEntity _externalSyncMetadataForRow:];
  hk_codableMetadata = [v7 hk_codableMetadata];
  [(HDCodableHealthObject *)v6 setMetadataDictionary:hk_codableMetadata];

  v9 = HDSQLiteColumnWithNameAsData();
  [(HDCodableHealthObject *)v6 setUuid:v9];

  HDSQLiteColumnWithNameAsDouble();
  [(HDCodableHealthObject *)v6 setCreationDate:?];
  if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
  {
    [(HDCodableHealthObject *)v6 setExternalSyncObjectCode:HDSQLiteColumnWithNameAsInt64()];
  }

  v10 = objc_alloc_init(HDCodableSample);
  [(HDCodableSample *)v10 setObject:v6];
  [(HDCodableSample *)v10 setDataType:HDSQLiteColumnWithNameAsInt64()];
  v11 = HDSQLiteColumnWithName();
  if ((MEMORY[0x22AAC6CD0](row, v11) & 1) == 0)
  {
    MEMORY[0x22AAC6C50](row, v11);
    [(HDCodableSample *)v10 setStartDate:?];
  }

  v12 = HDSQLiteColumnWithName();
  if ((MEMORY[0x22AAC6CD0](row, v12) & 1) == 0)
  {
    MEMORY[0x22AAC6C50](row, v12);
    [(HDCodableSample *)v10 setEndDate:?];
  }

  v13 = objc_alloc_init(HDCodableDeletedSample);
  [(HDCodableDeletedSample *)v13 setSample:v10];

  return v13;
}

- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v5 = HDSQLiteColumnWithNameAsUUID();
  v6 = MEMORY[0x277CCD2E0];
  v7 = +[HDDeletedSampleEntity _externalSyncMetadataForRow:];
  v8 = [v6 _deletedObjectWithUUID:v5 metadata:v7];

  return v8;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  LOBYTE(error) = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  return error;
}

@end