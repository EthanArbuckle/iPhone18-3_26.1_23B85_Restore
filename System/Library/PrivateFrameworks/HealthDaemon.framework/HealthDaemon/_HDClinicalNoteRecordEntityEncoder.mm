@interface _HDClinicalNoteRecordEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
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
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:orderedProperties];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCD100]) _init];

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
    v26 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setStatusCoding:v26];
    objc_opt_class();
    v13 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setDocumentTypeCodingCollection:v13];
    objc_opt_class();
    v14 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setNoteCreationDate:v14];
    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setCategoriesCodingCollections:v18];
    objc_opt_class();
    v19 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setRelevantStartDate:v19];
    objc_opt_class();
    v20 = HDSQLiteColumnWithNameAsObject();
    [objectCopy _setRelevantEndDate:v20];
    v21 = MEMORY[0x277CBEB98];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = HDSQLiteColumnWithNameAsObjectWithClasses();

    [objectCopy _setAuthors:v24];
  }

  return v12;
}

@end