@interface _HDClinicalNoteRecordEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation _HDClinicalNoteRecordEntityEncoder

- (id)orderedProperties
{
  v9[7] = *MEMORY[0x277D85DE8];
  v9[0] = @"status_coding";
  v9[1] = @"document_type_coding_collection";
  v9[2] = @"note_creation_date";
  v9[3] = @"categories_coding_collections";
  v9[4] = @"relevant_start_date";
  v9[5] = @"relevant_end_date";
  v9[6] = @"authors";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:7];
  v4 = [(HDEntityEncoder *)self superclassEncoder];
  v5 = [v4 orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCD100]) _init];

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
    v26 = HDSQLiteColumnWithNameAsObject();
    [v10 _setStatusCoding:v26];
    objc_opt_class();
    v13 = HDSQLiteColumnWithNameAsObject();
    [v10 _setDocumentTypeCodingCollection:v13];
    objc_opt_class();
    v14 = HDSQLiteColumnWithNameAsObject();
    [v10 _setNoteCreationDate:v14];
    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setCategoriesCodingCollections:v18];
    objc_opt_class();
    v19 = HDSQLiteColumnWithNameAsObject();
    [v10 _setRelevantStartDate:v19];
    objc_opt_class();
    v20 = HDSQLiteColumnWithNameAsObject();
    [v10 _setRelevantEndDate:v20];
    v21 = MEMORY[0x277CBEB98];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [v10 _setAuthors:v24];
  }

  return v12;
}

@end