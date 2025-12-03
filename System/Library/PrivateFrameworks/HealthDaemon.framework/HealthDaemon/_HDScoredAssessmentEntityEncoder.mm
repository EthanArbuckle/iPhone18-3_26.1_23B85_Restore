@interface _HDScoredAssessmentEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)orderedProperties;
@end

@implementation _HDScoredAssessmentEntityEncoder

- (id)orderedProperties
{
  v9[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"score";
  v9[1] = @"answers";
  v9[2] = @"risk";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:orderedProperties];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
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
  if ([(_HDScoredAssessmentEntityEncoder *)self applyPropertiesToObject:v11 persistentID:d row:row error:error])
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v9 = [superclassEncoder codableRepresentationForPersistentID:d row:row error:error];

  if (v9)
  {
    v10 = objc_alloc_init(HDCodableScoredAssessment);
    [(HDCodableScoredAssessment *)v10 setSample:v9];
    [(HDCodableScoredAssessment *)v10 setScore:HDSQLiteColumnWithNameAsInt64()];
    v11 = HDSQLiteColumnWithNameAsData();
    [(HDCodableScoredAssessment *)v10 setAnswers:v11];

    [(HDCodableScoredAssessment *)v10 setRisk:HDSQLiteColumnWithNameAsInt64()];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  LODWORD(error) = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  if (error)
  {
    [objectCopy _setScore:HDSQLiteColumnWithNameAsInt64()];
    error = MEMORY[0x277CCAAC8];
    v12 = objc_opt_class();
    v13 = HDSQLiteColumnWithNameAsData();
    v16 = 0;
    v14 = [error unarchivedArrayOfObjectsOfClass:v12 fromData:v13 error:&v16];

    LOBYTE(error) = v14 != 0;
    if (v14)
    {
      [objectCopy _setAnswers:v14];
      [objectCopy _setRisk:HDSQLiteColumnWithNameAsInt64()];
    }
  }

  return error;
}

@end