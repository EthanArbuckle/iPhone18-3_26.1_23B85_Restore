@interface _HDCDASampleEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (BOOL)generateCodableRepresentationsForPersistentID:(int64_t)d row:(HDSQLiteRow *)row maxBytesPerRepresentation:(int64_t)representation error:(id *)error handler:(id)handler;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
- (id)orderedProperties;
@end

@implementation _HDCDASampleEntityEncoder

- (id)orderedProperties
{
  v12[5] = *MEMORY[0x277D85DE8];
  purpose = [(HDEntityEncoder *)self purpose];
  if (purpose == 1)
  {
    v11 = @"document_data";
    v4 = &v11;
    goto LABEL_5;
  }

  if (!purpose)
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
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v8 = [v5 arrayByAddingObjectsFromArray:orderedProperties];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v9 = [superclassEncoder codableRepresentationForPersistentID:d row:row error:error];

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

- (BOOL)generateCodableRepresentationsForPersistentID:(int64_t)d row:(HDSQLiteRow *)row maxBytesPerRepresentation:(int64_t)representation error:(id *)error handler:(id)handler
{
  handlerCopy = handler;
  v14 = [(_HDCDASampleEntityEncoder *)self codableRepresentationForPersistentID:d row:row error:error];
  v15 = v14;
  if (!v14)
  {
LABEL_11:
    v20 = 0;
    goto LABEL_12;
  }

  encodedByteCount = [v14 encodedByteCount];
  estimatedEncodedSize = [objc_opt_class() estimatedEncodedSize];
  if (encodedByteCount <= estimatedEncodedSize)
  {
    encodedByteCount = estimatedEncodedSize;
  }

  if (encodedByteCount > representation)
  {
    v18 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"encoded size (%ld) > maximum (%ld) so this entity will by skipped", encodedByteCount, representation}];
    if (v18)
    {
      if (error)
      {
        v19 = v18;
        *error = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_11;
  }

  v20 = handlerCopy[2](handlerCopy, v15, encodedByteCount, 1, error) != 2;
LABEL_12:

  return v20;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCD098]) _init];

  return _init;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  if (v12)
  {
    encodingOptions = [(HDEntityEncoder *)self encodingOptions];
    v14 = encodingOptions;
    if (encodingOptions)
    {
      v15 = [encodingOptions objectForKey:@"IncludeCDADocument"];

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
        [objectCopy _applyPropertiesWithOmittedFlags:v18 compressedDocumentData:v20 title:v21 patientName:v22 authorName:v23 custodianName:v24];

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