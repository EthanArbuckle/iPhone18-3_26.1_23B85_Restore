@interface _HDMedicationDispenseRecordEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation _HDMedicationDispenseRecordEntityEncoder

- (id)orderedProperties
{
  v9[8] = *MEMORY[0x277D85DE8];
  v9[0] = @"medication_codings";
  v9[1] = @"quantity_dispensed";
  v9[2] = @"preparation_date";
  v9[3] = @"hand_over_date";
  v9[4] = @"dosages";
  v9[5] = @"earliest_dosage_date";
  v9[6] = @"status_coding";
  v9[7] = @"days_supply_quantity";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:8];
  v4 = [(HDEntityEncoder *)self superclassEncoder];
  v5 = [v4 orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCD630]) _init];

  return v3;
}

- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [v11 applyPropertiesToObject:v10 persistentID:a4 row:a5 error:a6];

  if (v12)
  {
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setMedicationCodings:v16];
    objc_opt_class();
    v17 = HDSQLiteColumnWithNameAsObject();
    [v10 _setQuantityDispensed:v17];
    objc_opt_class();
    v18 = HDSQLiteColumnWithNameAsObject();
    [v10 _setPreparationDate:v18];
    objc_opt_class();
    v19 = HDSQLiteColumnWithNameAsObject();
    [v10 _setHandOverDate:v19];
    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setDosages:v23];
    objc_opt_class();
    v24 = HDSQLiteColumnWithNameAsObject();
    [v10 _setEarliestDosageDate:v24];
    objc_opt_class();
    v25 = HDSQLiteColumnWithNameAsObject();
    [v10 _setStatusCoding:v25];
    objc_opt_class();
    v26 = HDSQLiteColumnWithNameAsObject();
    [v10 _setDaysSupplyQuantity:v26];
  }

  return v12;
}

@end