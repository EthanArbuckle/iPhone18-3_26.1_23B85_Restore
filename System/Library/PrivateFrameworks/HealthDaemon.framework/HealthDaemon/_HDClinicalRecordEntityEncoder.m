@interface _HDClinicalRecordEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation _HDClinicalRecordEntityEncoder

- (id)orderedProperties
{
  v9[11] = *MEMORY[0x277D85DE8];
  v9[0] = @"display_name";
  v9[1] = @"fhir_resource_fhir_version_major";
  v9[2] = @"fhir_resource_fhir_version_minor";
  v9[3] = @"fhir_resource_fhir_version_patch";
  v9[4] = @"fhir_resource_resource_type";
  v9[5] = @"fhir_resource_identifier";
  v9[6] = @"fhir_resource_data";
  v9[7] = @"fhir_resource_source_url";
  v9[8] = @"fhir_resource_last_updated_date";
  v9[9] = @"original_fhir_resource_rowid";
  v9[10] = @"original_signed_clinical_data_rowid";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:11];
  v4 = [(HDEntityEncoder *)self superclassEncoder];
  v5 = [v4 orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCD110]) _init];

  return v3;
}

- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [v11 applyPropertiesToObject:v10 persistentID:a4 row:a5 error:a6];

  if (v12)
  {
    v13 = HDSQLiteColumnWithNameAsString();
    [v10 _setDisplayName:v13];
    if (HDSQLiteColumnWithNameIsNull())
    {
      v14 = 0;
    }

    else
    {
      v22[0] = HDSQLiteColumnWithNameAsInt64();
      v22[1] = HDSQLiteColumnWithNameAsInt64();
      v22[2] = HDSQLiteColumnWithNameAsInt64();
      v15 = [objc_alloc(MEMORY[0x277CCD3D0]) initWithSemanticVersion:v22];
      v16 = HDSQLiteColumnWithNameAsString();
      v17 = HDSQLiteColumnWithNameAsString();
      v18 = HDSQLiteColumnWithNameAsData();
      v19 = HDSQLiteColumnWithNameAsURL();
      v20 = HDSQLiteColumnWithNameAsDate();
      v14 = [objc_alloc(MEMORY[0x277CCD3C8]) initWithResourceType:v16 identifier:v17 FHIRVersion:v15 data:v18 sourceURL:v19 lastUpdatedDate:v20];
    }

    [v10 _setFHIRResource:v14];
  }

  return v12;
}

@end