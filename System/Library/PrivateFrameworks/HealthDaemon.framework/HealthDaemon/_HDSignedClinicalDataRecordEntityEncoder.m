@interface _HDSignedClinicalDataRecordEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation _HDSignedClinicalDataRecordEntityEncoder

- (id)orderedProperties
{
  v9[10] = *MEMORY[0x277D85DE8];
  v9[0] = @"credential_types";
  v9[1] = @"issuer_identifier";
  v9[2] = @"issued_date";
  v9[3] = @"relevant_date";
  v9[4] = @"expiration_date";
  v9[5] = @"signature_status";
  v9[6] = @"subject";
  v9[7] = @"items";
  v9[8] = @"data_value";
  v9[9] = @"source_type";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:10];
  v4 = [(HDEntityEncoder *)self superclassEncoder];
  v5 = [v4 orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCD998]) _init];

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
    v27 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setCredentialTypes:v27];
    v16 = HDSQLiteColumnWithNameAsString();
    [v10 _setIssuerIdentifier:v16];
    v17 = HDSQLiteColumnWithNameAsDate();
    [v10 _setIssuedDate:v17];
    v18 = HDSQLiteColumnWithNameAsDate();
    [v10 _setRelevantDate:v18];
    v19 = HDSQLiteColumnWithNameAsDate();
    [v10 _setExpirationDate:v19];
    [v10 _setSignatureStatus:HDSQLiteColumnWithNameAsInt64()];
    objc_opt_class();
    v20 = HDSQLiteColumnWithNameAsObject();
    [v10 _setSubject:v20];
    v21 = MEMORY[0x277CBEB98];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setItems:v24];
    v25 = HDSQLiteColumnWithNameAsData();
    [v10 _setDataValue:v25];
    [v10 _setSourceType:HDSQLiteColumnWithNameAsInt64()];
  }

  return v12;
}

@end