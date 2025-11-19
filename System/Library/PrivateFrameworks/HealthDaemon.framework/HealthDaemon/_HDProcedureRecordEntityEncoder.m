@interface _HDProcedureRecordEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation _HDProcedureRecordEntityEncoder

- (id)orderedProperties
{
  v9[13] = *MEMORY[0x277D85DE8];
  v9[0] = @"procedure_coding_collection";
  v9[1] = @"performers";
  v9[2] = @"execution_start_date";
  v9[3] = @"execution_end_date";
  v9[4] = @"not_performed";
  v9[5] = @"status_coding";
  v9[6] = @"category_coding_collection";
  v9[7] = @"reason_coding_collections";
  v9[8] = @"reasons_not_performed_coding_collections";
  v9[9] = @"outcome_coding_collection";
  v9[10] = @"complications_coding_collections";
  v9[11] = @"follow_ups_coding_collections";
  v9[12] = @"body_sites_coding_collections";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:13];
  v4 = [(HDEntityEncoder *)self superclassEncoder];
  v5 = [v4 orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCD7B0]) _init];

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
    v43 = HDSQLiteColumnWithNameAsObject();
    [v10 _setProcedureCodingCollection:v43];
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v42 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setPerformers:v42];
    objc_opt_class();
    v41 = HDSQLiteColumnWithNameAsObject();
    [v10 _setExecutionStartDate:v41];
    objc_opt_class();
    v40 = HDSQLiteColumnWithNameAsObject();
    [v10 _setExecutionEndDate:v40];
    [v10 _setNotPerformed:HDSQLiteColumnWithNameAsBoolean()];
    objc_opt_class();
    v39 = HDSQLiteColumnWithNameAsObject();
    [v10 _setStatusCoding:v39];
    objc_opt_class();
    v38 = HDSQLiteColumnWithNameAsObject();
    [v10 _setCategoryCodingCollection:v38];
    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v37 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setReasonCodingCollections:v37];
    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setReasonsNotPerformedCodingCollections:v22];
    objc_opt_class();
    v23 = HDSQLiteColumnWithNameAsObject();
    [v10 _setOutcomeCodingCollection:v23];
    v24 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    v27 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setComplicationsCodingCollections:v27];
    v28 = MEMORY[0x277CBEB98];
    v29 = objc_opt_class();
    v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
    v31 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setFollowUpsCodingCollections:v31];
    v32 = MEMORY[0x277CBEB98];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setBodySitesCodingCollections:v35];
  }

  return v12;
}

@end