@interface _HDMedicationOrderEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
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
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:orderedProperties];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCD670]) _init];

  return _init;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  if (v12)
  {
    objc_opt_class();
    v29 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setMedicationCodingCollection:v29];
    v28 = HDSQLiteColumnWithNameAsString();
    [objectCopy _setPrescriber:v28];
    [objectCopy _setNumberOfFills:HDSQLiteColumnWithNameAsInt64()];
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v27 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setDosages:v27];
    objc_opt_class();
    v16 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setEarliestDosageDate:v16];
    objc_opt_class();
    v17 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setWrittenDate:v17];
    objc_opt_class();
    v18 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setEndedDate:v18];
    objc_opt_class();
    v19 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setStatusCoding:v19];
    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setReasonCodingCollections:v23];
    objc_opt_class();
    v24 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setReasonEndedCodingCollection:v24];
    objc_opt_class();
    v25 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setStatusReasonCodingCollection:v25];
  }

  return v12;
}

@end