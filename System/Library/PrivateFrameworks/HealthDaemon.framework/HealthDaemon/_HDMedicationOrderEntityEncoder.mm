@interface _HDMedicationOrderEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation _HDMedicationOrderEntityEncoder

- (id)orderedProperties
{
  v9[11] = *MEMORY[0x277D85DE8];
  v9[0] = @"medication_coding_collection";
  v9[1] = @"prescriber";
  v9[2] = @"number_of_fills";
  v9[3] = @"dosages";
  v9[4] = @"earliest_dosage_date";
  v9[5] = @"written_date";
  v9[6] = @"ended_date";
  v9[7] = @"status_coding";
  v9[8] = @"reason_coding_collections";
  v9[9] = @"reason_ended_coding_collection";
  v9[10] = @"status_reason_coding_collection";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:11];
  v4 = [(HDEntityEncoder *)self superclassEncoder];
  v5 = [v4 orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCD670]) _init];

  return v3;
}

- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [v11 applyPropertiesToObject:v10 persistentID:a4 row:a5 error:a6];

  if (v12)
  {
    objc_opt_class();
    v29 = HDSQLiteColumnWithNameAsObject();
    [v10 _setMedicationCodingCollection:v29];
    v28 = HDSQLiteColumnWithNameAsString();
    [v10 _setPrescriber:v28];
    [v10 _setNumberOfFills:HDSQLiteColumnWithNameAsInt64()];
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v27 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setDosages:v27];
    objc_opt_class();
    v16 = HDSQLiteColumnWithNameAsObject();
    [v10 _setEarliestDosageDate:v16];
    objc_opt_class();
    v17 = HDSQLiteColumnWithNameAsObject();
    [v10 _setWrittenDate:v17];
    objc_opt_class();
    v18 = HDSQLiteColumnWithNameAsObject();
    [v10 _setEndedDate:v18];
    objc_opt_class();
    v19 = HDSQLiteColumnWithNameAsObject();
    [v10 _setStatusCoding:v19];
    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setReasonCodingCollections:v23];
    objc_opt_class();
    v24 = HDSQLiteColumnWithNameAsObject();
    [v10 _setReasonEndedCodingCollection:v24];
    objc_opt_class();
    v25 = HDSQLiteColumnWithNameAsObject();
    [v10 _setStatusReasonCodingCollection:v25];
  }

  return v12;
}

@end