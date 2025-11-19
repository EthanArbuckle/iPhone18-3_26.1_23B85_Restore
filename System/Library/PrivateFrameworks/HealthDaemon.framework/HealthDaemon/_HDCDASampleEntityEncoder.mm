@interface _HDCDASampleEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (BOOL)generateCodableRepresentationsForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 maxBytesPerRepresentation:(int64_t)a5 error:(id *)a6 handler:(id)a7;
- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation _HDCDASampleEntityEncoder

- (id)orderedProperties
{
  v12[5] = *MEMORY[0x277D85DE8];
  v3 = [(HDEntityEncoder *)self purpose];
  if (v3 == 1)
  {
    v11 = @"document_data";
    v4 = &v11;
    goto LABEL_5;
  }

  if (!v3)
  {
    v12[0] = @"document_data";
    v4 = v12;
LABEL_5:
    v4[1] = @"title";
    v4[2] = @"patient_name";
    v4[3] = @"author_name";
    v4[4] = @"custodian_name";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  v6 = [(HDEntityEncoder *)self superclassEncoder];
  v7 = [v6 orderedProperties];
  v8 = [v5 arrayByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v8 = [(HDEntityEncoder *)self superclassEncoder];
  v9 = [v8 codableRepresentationForPersistentID:a3 row:a4 error:a5];

  if (v9)
  {
    v10 = objc_alloc_init(HDCodableCDADocumentSample);
    [(HDCodableCDADocumentSample *)v10 setSample:v9];
    v11 = HDSQLiteColumnWithNameAsData();
    v12 = HDSQLiteColumnWithNameAsString();
    v13 = HDSQLiteColumnWithNameAsString();
    v14 = HDSQLiteColumnWithNameAsString();
    v15 = HDSQLiteColumnWithNameAsString();
    [(HDCodableCDADocumentSample *)v10 setDocumentData:v11];
    [(HDCodableCDADocumentSample *)v10 setTitle:v12];
    [(HDCodableCDADocumentSample *)v10 setPatientName:v13];
    [(HDCodableCDADocumentSample *)v10 setAuthorName:v14];
    [(HDCodableCDADocumentSample *)v10 setCustodianName:v15];
    [(HDCodableCDADocumentSample *)v10 setOmittedContent:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)generateCodableRepresentationsForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 maxBytesPerRepresentation:(int64_t)a5 error:(id *)a6 handler:(id)a7
{
  v13 = a7;
  v14 = [(_HDCDASampleEntityEncoder *)self codableRepresentationForPersistentID:a3 row:a4 error:a6];
  v15 = v14;
  if (!v14)
  {
LABEL_11:
    v20 = 0;
    goto LABEL_12;
  }

  v16 = [v14 encodedByteCount];
  v17 = [objc_opt_class() estimatedEncodedSize];
  if (v16 <= v17)
  {
    v16 = v17;
  }

  if (v16 > a5)
  {
    v18 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"encoded size (%ld) > maximum (%ld) so this entity will by skipped", v16, a5}];
    if (v18)
    {
      if (a6)
      {
        v19 = v18;
        *a6 = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_11;
  }

  v20 = v13[2](v13, v15, v16, 1, a6) != 2;
LABEL_12:

  return v20;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCD098]) _init];

  return v3;
}

- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [v11 applyPropertiesToObject:v10 persistentID:a4 row:a5 error:a6];

  if (v12)
  {
    v13 = [(HDEntityEncoder *)self encodingOptions];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKey:@"IncludeCDADocument"];

      v16 = [v14 objectForKey:@"IncludeCDADocumentData"];

      v17 = v15 == 0;
      v18 = v15 == 0;
      v19 = 2;
      if (v17)
      {
        v19 = 3;
      }

      if (!v16)
      {
        v18 = v19;
      }

      if ((v18 & 2) == 0)
      {
        v20 = HDSQLiteColumnWithNameAsData();
LABEL_11:
        v21 = HDSQLiteColumnWithNameAsString();
        v22 = HDSQLiteColumnWithNameAsString();
        v23 = HDSQLiteColumnWithNameAsString();
        v24 = HDSQLiteColumnWithNameAsString();
        [v10 _applyPropertiesWithOmittedFlags:v18 compressedDocumentData:v20 title:v21 patientName:v22 authorName:v23 custodianName:v24];

        goto LABEL_12;
      }
    }

    else
    {
      v18 = 3;
    }

    v20 = 0;
    goto LABEL_11;
  }

LABEL_12:

  return v12;
}

@end