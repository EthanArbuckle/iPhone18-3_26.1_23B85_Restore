@interface _HDProcedureRecordEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
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
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:orderedProperties];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCD7B0]) _init];

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
    v43 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setProcedureCodingCollection:v43];
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v42 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setPerformers:v42];
    objc_opt_class();
    v41 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setExecutionStartDate:v41];
    objc_opt_class();
    v40 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setExecutionEndDate:v40];
    [objectCopy _setNotPerformed:HDSQLiteColumnWithNameAsBoolean()];
    objc_opt_class();
    v39 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setStatusCoding:v39];
    objc_opt_class();
    v38 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setCategoryCodingCollection:v38];
    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v37 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setReasonCodingCollections:v37];
    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setReasonsNotPerformedCodingCollections:v22];
    objc_opt_class();
    v23 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setOutcomeCodingCollection:v23];
    v24 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    v27 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setComplicationsCodingCollections:v27];
    v28 = MEMORY[0x277CBEB98];
    v29 = objc_opt_class();
    v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
    v31 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setFollowUpsCodingCollections:v31];
    v32 = MEMORY[0x277CBEB98];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setBodySitesCodingCollections:v35];
  }

  return v12;
}

@end