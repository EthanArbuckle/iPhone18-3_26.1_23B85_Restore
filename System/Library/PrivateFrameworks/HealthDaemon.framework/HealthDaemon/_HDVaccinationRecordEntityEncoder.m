@interface _HDVaccinationRecordEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation _HDVaccinationRecordEntityEncoder

- (id)orderedProperties
{
  v9[15] = *MEMORY[0x277D85DE8];
  v9[0] = @"vaccination_codings";
  v9[1] = @"expiration_date";
  v9[2] = @"dose_number";
  v9[3] = @"dose_quantity";
  v9[4] = @"lot_number";
  v9[5] = @"performer";
  v9[6] = @"body_site_codings";
  v9[7] = @"reaction";
  v9[8] = @"not_given";
  v9[9] = @"administration_date";
  v9[10] = @"status_coding";
  v9[11] = @"patient_reported";
  v9[12] = @"route_codings";
  v9[13] = @"reasons_codings";
  v9[14] = @"reasons_not_given_codings";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:15];
  v4 = [(HDEntityEncoder *)self superclassEncoder];
  v5 = [v4 orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCDB78]) _init];

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
    v41 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setVaccinationCodings:v41];
    objc_opt_class();
    v40 = HDSQLiteColumnWithNameAsObject();
    [v10 _setExpirationDate:v40];
    v39 = HDSQLiteColumnWithNameAsString();
    [v10 _setDoseNumber:v39];
    v38 = HDSQLiteColumnWithNameAsString();
    [v10 _setDoseQuantity:v38];
    v37 = HDSQLiteColumnWithNameAsString();
    [v10 _setLotNumber:v37];
    v36 = HDSQLiteColumnWithNameAsString();
    [v10 _setPerformer:v36];
    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v35 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setBodySiteCodings:v35];
    v34 = HDSQLiteColumnWithNameAsString();
    [v10 _setReaction:v34];
    [v10 _setNotGiven:HDSQLiteColumnWithNameAsBoolean()];
    objc_opt_class();
    v33 = HDSQLiteColumnWithNameAsObject();
    [v10 _setAdministrationDate:v33];
    objc_opt_class();
    v19 = HDSQLiteColumnWithNameAsObject();
    [v10 _setStatusCoding:v19];
    [v10 _setPatientReported:HDSQLiteColumnWithNameAsBoolean()];
    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setRouteCodings:v23];
    v24 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    v27 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setReasonsCodings:v27];
    v28 = MEMORY[0x277CBEB98];
    v29 = objc_opt_class();
    v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
    v31 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setReasonsNotGivenCodings:v31];
  }

  return v12;
}

@end