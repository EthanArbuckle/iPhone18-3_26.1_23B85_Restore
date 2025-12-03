@interface _HDQuantitySampleSeriesEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (BOOL)generateCodableRepresentationsForPersistentID:(int64_t)d row:(HDSQLiteRow *)row maxBytesPerRepresentation:(int64_t)representation error:(id *)error handler:(id)handler;
- (id)_codableQuantitySampleForPersistentID:(uint64_t)d row:(uint64_t)row error:;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)orderedProperties;
@end

@implementation _HDQuantitySampleSeriesEntityEncoder

- (id)orderedProperties
{
  v9[8] = *MEMORY[0x277D85DE8];
  v9[0] = @"count";
  v9[1] = @"insertion_era";
  v9[2] = @"hfd_key";
  v9[3] = @"min";
  v9[4] = @"max";
  v9[5] = @"most_recent";
  v9[6] = @"most_recent_date";
  v9[7] = @"most_recent_duration";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:8];
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:orderedProperties];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v9 = HDSQLiteColumnWithName();
  if (MEMORY[0x22AAC6CD0](row, v9))
  {
    v10 = 0;
  }

  else
  {
    v10 = [MEMORY[0x277CCD830] dataTypeWithCode:HDSQLiteColumnAsInt64()];
  }

  v11 = [objc_alloc(objc_msgSend(v10 "dataObjectClass"))];
  if ([(_HDQuantitySampleSeriesEntityEncoder *)self applyPropertiesToObject:v11 persistentID:d row:row error:error])
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  if ((v12 & 1) != 0 && (HDSQLiteColumnWithNameIsNull() & 1) == 0)
  {
    [objectCopy _setCount:HDSQLiteColumnWithNameAsInt64()];
    [objectCopy _setFrozen:HDSQLiteColumnWithNameIsNull()];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = objectCopy;
      quantity = [v13 quantity];
      _unit = [quantity _unit];

      v16 = HDSQLiteColumnWithName();
      if ((MEMORY[0x22AAC6CD0](row, v16) & 1) == 0)
      {
        v17 = MEMORY[0x277CCD7E8];
        MEMORY[0x22AAC6C50](row, v16);
        v18 = [v17 quantityWithUnit:_unit doubleValue:?];
        [v13 _setMinimumQuantity:v18];
      }

      v19 = HDSQLiteColumnWithName();
      if ((MEMORY[0x22AAC6CD0](row, v19) & 1) == 0)
      {
        v20 = MEMORY[0x277CCD7E8];
        MEMORY[0x22AAC6C50](row, v19);
        v21 = [v20 quantityWithUnit:_unit doubleValue:?];
        [v13 _setMaximumQuantity:v21];
      }

      v22 = HDSQLiteColumnWithName();
      if ((MEMORY[0x22AAC6CD0](row, v22) & 1) == 0)
      {
        v23 = MEMORY[0x277CCD7E8];
        MEMORY[0x22AAC6C50](row, v22);
        v24 = [v23 quantityWithUnit:_unit doubleValue:?];
        [v13 _setMostRecentQuantity:v24];
      }

      v25 = HDSQLiteColumnWithNameAsDate();
      if (v25)
      {
        v26 = HDSQLiteColumnWithName();
        v27 = 0.0;
        if ((MEMORY[0x22AAC6CD0](row, v26) & 1) == 0)
        {
          v27 = MEMORY[0x22AAC6C50](row, v26);
        }

        v28 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v25 duration:v27];
        [v13 _setMostRecentQuantityDateInterval:v28];
      }
    }
  }

  return v12;
}

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v9 = HDSQLiteColumnWithNameAsNumber();
  if (v9)
  {
    v10 = [(_HDQuantitySampleSeriesEntityEncoder *)self _codableQuantitySampleForPersistentID:d row:row error:error];
    longLongValue = [v9 longLongValue];
    v12 = v10;
    superclassEncoder = v12;
    if (self)
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 0;
      transaction = [(HDEntityEncoder *)self transaction];
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __78___HDQuantitySampleSeriesEntityEncoder_addSeriesDataForHFDKey_toSample_error___block_invoke;
      v24 = &unk_278624978;
      v26 = &v27;
      v15 = superclassEncoder;
      v25 = v15;
      v16 = [HDQuantitySeriesDataEntity enumerateSeries:longLongValue transaction:transaction error:error handler:&v21];

      if (v16)
      {
        [v15 setCount:{v28[3], v21, v22, v23, v24}];
        [v15 setFinal:1];
        v17 = v15;
      }

      else
      {
        v17 = 0;
      }

      _Block_object_dispose(&v27, 8);
    }

    else
    {

      v17 = 0;
    }

    v18 = v17;
  }

  else
  {
    superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
    v18 = [superclassEncoder codableRepresentationForPersistentID:d row:row error:error];
  }

  v19 = v18;

  return v19;
}

- (id)_codableQuantitySampleForPersistentID:(uint64_t)d row:(uint64_t)row error:
{
  if (self)
  {
    superclassEncoder = [self superclassEncoder];
    v8 = [superclassEncoder codableRepresentationForPersistentID:a2 row:d error:row];

    if (v8)
    {
      [v8 setFrozen:HDSQLiteColumnWithNameIsNull()];
      v9 = HDSQLiteColumnWithName();
      if ((MEMORY[0x22AAC6CD0](d, v9) & 1) == 0)
      {
        MEMORY[0x22AAC6C50](d, v9);
        [v8 setMin:?];
      }

      v10 = HDSQLiteColumnWithName();
      if ((MEMORY[0x22AAC6CD0](d, v10) & 1) == 0)
      {
        MEMORY[0x22AAC6C50](d, v10);
        [v8 setMax:?];
      }

      v11 = HDSQLiteColumnWithName();
      if ((MEMORY[0x22AAC6CD0](d, v11) & 1) == 0)
      {
        MEMORY[0x22AAC6C50](d, v11);
        [v8 setMostRecent:?];
      }

      v12 = HDSQLiteColumnWithName();
      if ((MEMORY[0x22AAC6CD0](d, v12) & 1) == 0)
      {
        MEMORY[0x22AAC6C50](d, v12);
        [v8 setMostRecentDate:?];
      }

      v13 = HDSQLiteColumnWithName();
      if ((MEMORY[0x22AAC6CD0](d, v13) & 1) == 0)
      {
        MEMORY[0x22AAC6C50](d, v13);
        [v8 setMostRecentDuration:?];
      }

      v14 = v8;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)generateCodableRepresentationsForPersistentID:(int64_t)d row:(HDSQLiteRow *)row maxBytesPerRepresentation:(int64_t)representation error:(id *)error handler:(id)handler
{
  handlerCopy = handler;
  v13 = HDSQLiteColumnWithNameAsNumber();
  if (v13)
  {
    v39 = v13;
    v38 = [(_HDQuantitySampleSeriesEntityEncoder *)self _codableQuantitySampleForPersistentID:d row:row error:error];
    longLongValue = [v13 longLongValue];
    superclassEncoder = v38;
    v41 = handlerCopy;
    if (!self)
    {
      v32 = 0;
      goto LABEL_24;
    }

    v40 = superclassEncoder;
    data = [superclassEncoder data];
    v17 = [data length];

    transaction = [(HDEntityEncoder *)self transaction];
    v78[0] = 0;
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __127___HDQuantitySampleSeriesEntityEncoder_generateCodableRepresentationsForHFDKey_sample_maxBytesPerRepresentation_error_handler___block_invoke;
    v76[3] = &unk_2786249A0;
    v19 = superclassEncoder;
    v77 = v19;
    v20 = [HDQuantitySeriesDataEntity getRangeAndCountForSeriesIdentifier:longLongValue transaction:transaction error:v78 handler:v76];
    v21 = v78[0];

    if (!v20)
    {
      v33 = v21;
      v25 = v33;
      v13 = v39;
      superclassEncoder = v40;
      if (v33)
      {
        if (error)
        {
          v34 = v33;
          *error = v25;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v32 = 0;
      goto LABEL_23;
    }

    v70 = 0;
    v71 = &v70;
    v72 = 0x3032000000;
    v73 = __Block_byref_object_copy__123;
    v74 = __Block_byref_object_dispose__123;
    v75 = [v19 copy];
    v66 = 0;
    v67 = &v66;
    v68 = 0x2020000000;
    v69 = v17;
    v62 = 0;
    v63 = &v62;
    v64 = 0x2020000000;
    v65 = 1;
    v60[0] = 0;
    v60[1] = v60;
    v60[2] = 0x2020000000;
    v61 = 0;
    v54 = 0;
    v55 = &v54;
    v56 = 0x3032000000;
    v57 = __Block_byref_object_copy__123;
    v58 = __Block_byref_object_dispose__123;
    v59 = 0;
    transaction2 = [(HDEntityEncoder *)self transaction];
    v53 = v21;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __127___HDQuantitySampleSeriesEntityEncoder_generateCodableRepresentationsForHFDKey_sample_maxBytesPerRepresentation_error_handler___block_invoke_2;
    v43[3] = &unk_2786249C8;
    v46 = &v66;
    v47 = &v70;
    representationCopy = representation;
    v48 = v60;
    v23 = v41;
    v45 = v23;
    v49 = &v54;
    v50 = &v62;
    v44 = v19;
    v52 = v17;
    v24 = [HDQuantitySeriesDataEntity enumerateSeries:longLongValue transaction:transaction2 error:&v53 handler:v43];
    v25 = v53;

    superclassEncoder = v40;
    if (v24)
    {
      v13 = v39;
      if (*(v63 + 24) == 1)
      {
        v26 = v71[5];
        if (!v26)
        {
          goto LABEL_8;
        }

        [v26 setFinal:1];
        v27 = v71[5];
        v28 = v67[3];
        v29 = (v55 + 5);
        obj = v55[5];
        v30 = (*(v23 + 2))(v23, v27, v28, 1, &obj);
        objc_storeStrong(v29, obj);
        v31 = v30 == 2;
        *(v63 + 24) = v30 != 2;
        superclassEncoder = v40;
        if (!v31)
        {
LABEL_8:
          v32 = 1;
LABEL_20:

          _Block_object_dispose(&v54, 8);
          _Block_object_dispose(v60, 8);
          _Block_object_dispose(&v62, 8);
          _Block_object_dispose(&v66, 8);
          _Block_object_dispose(&v70, 8);

LABEL_23:
LABEL_24:

          goto LABEL_25;
        }
      }

      v35 = v55[5];
      if (v35)
      {
        if (!error)
        {
          _HKLogDroppedError();
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v35 = v25;
      v13 = v39;
      if (v35)
      {
        if (error)
        {
LABEL_18:
          v36 = v35;
          *error = v35;
          goto LABEL_19;
        }

        _HKLogDroppedError();
      }
    }

LABEL_19:

    v32 = 0;
    goto LABEL_20;
  }

  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v32 = [superclassEncoder generateCodableRepresentationsForPersistentID:d row:row maxBytesPerRepresentation:representation error:error handler:handlerCopy];
LABEL_25:

  return v32;
}

@end