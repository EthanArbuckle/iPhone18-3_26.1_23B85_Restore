@interface _HDVerifiableClinicalRecordEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation _HDVerifiableClinicalRecordEntityEncoder

- (id)orderedProperties
{
  v9[10] = *MEMORY[0x277D85DE8];
  v9[0] = @"record_types";
  v9[1] = @"issued_date";
  v9[2] = @"relevant_date";
  v9[3] = @"expiration_date";
  v9[4] = @"issuer_identifier";
  v9[5] = @"subject";
  v9[6] = @"item_names";
  v9[7] = @"jws_representation";
  v9[8] = @"origin_identifier";
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
  v3 = [objc_alloc(MEMORY[0x277CCDBA8]) _init];

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
    v28 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setRecordTypes:v28];
    v27 = HDSQLiteColumnWithNameAsDate();
    [v10 _setIssuedDate:v27];
    v16 = HDSQLiteColumnWithNameAsDate();
    [v10 _setRelevantDate:v16];
    v17 = HDSQLiteColumnWithNameAsDate();
    [v10 _setExpirationDate:v17];
    v18 = HDSQLiteColumnWithNameAsString();
    [v10 _setIssuerIdentifier:v18];
    objc_opt_class();
    v19 = HDSQLiteColumnWithNameAsObject();
    [v10 _setSubject:v19];
    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setItemNames:v23];
    v24 = HDSQLiteColumnWithNameAsData();
    [v10 _setDataRepresentation:v24];
    v25 = HDSQLiteColumnWithNameAsUUID();
    [v10 _setOriginIdentifier:v25];
    [v10 _setSourceType:HDSQLiteColumnWithNameAsInt64()];
  }

  return v12;
}

@end