@interface _HDScoredAssessmentEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)objectForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
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
  v4 = [(HDEntityEncoder *)self superclassEncoder];
  v5 = [v4 orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)objectForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v9 = HDSQLiteColumnWithName();
  if (MEMORY[0x22AAC6CD0](a4, v9))
  {
    v10 = 0;
  }

  else
  {
    v10 = [MEMORY[0x277CCD8D8] dataTypeWithCode:HDSQLiteColumnAsInt64()];
  }

  v11 = [objc_alloc(objc_msgSend(v10 "dataObjectClass"))];
  if ([(_HDScoredAssessmentEntityEncoder *)self applyPropertiesToObject:v11 persistentID:a3 row:a4 error:a5])
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v8 = [(HDEntityEncoder *)self superclassEncoder];
  v9 = [v8 codableRepresentationForPersistentID:a3 row:a4 error:a5];

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

- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [(HDEntityEncoder *)self superclassEncoder];
  LODWORD(a6) = [v10 applyPropertiesToObject:v9 persistentID:a4 row:a5 error:a6];

  if (a6)
  {
    [v9 _setScore:HDSQLiteColumnWithNameAsInt64()];
    a6 = MEMORY[0x277CCAAC8];
    v12 = objc_opt_class();
    v13 = HDSQLiteColumnWithNameAsData();
    v16 = 0;
    v14 = [a6 unarchivedArrayOfObjectsOfClass:v12 fromData:v13 error:&v16];

    LOBYTE(a6) = v14 != 0;
    if (v14)
    {
      [v9 _setAnswers:v14];
      [v9 _setRisk:HDSQLiteColumnWithNameAsInt64()];
    }
  }

  return a6;
}

@end