@interface _HDBinarySampleEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)orderedProperties;
@end

@implementation _HDBinarySampleEntityEncoder

- (id)orderedProperties
{
  v12[1] = *MEMORY[0x277D85DE8];
  purpose = [(HDEntityEncoder *)self purpose];
  if (purpose == 1)
  {
    v11 = @"payload";
    v5 = &v11;
  }

  else
  {
    if (purpose)
    {
      goto LABEL_6;
    }

    v12[0] = @"payload";
    v5 = v12;
  }

  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v2 = [v6 arrayByAddingObjectsFromArray:orderedProperties];

LABEL_6:
  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v9 = [superclassEncoder codableRepresentationForPersistentID:d row:row error:error];

  if (v9)
  {
    v10 = objc_alloc_init(HDCodableBinarySample);
    [(HDCodableBinarySample *)v10 setSample:v9];
    v11 = HDSQLiteColumnWithNameAsData();
    [(HDCodableBinarySample *)v10 setPayload:v11];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v9 = HDSQLiteColumnWithName();
  if (MEMORY[0x22AAC6CD0](row, v9))
  {
    v10 = 0;
  }

  else
  {
    v10 = [MEMORY[0x277CCD8D8] dataTypeWithCode:HDSQLiteColumnAsInt64()];
  }

  v11 = [objc_alloc(objc_msgSend(v10 "dataObjectClass"))];
  if ([(_HDBinarySampleEntityEncoder *)self applyPropertiesToObject:v11 persistentID:d row:row error:error])
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  if (v12)
  {
    v13 = HDSQLiteColumnWithNameAsData();
    [objectCopy _setPayload:v13];
  }

  return v12;
}

@end