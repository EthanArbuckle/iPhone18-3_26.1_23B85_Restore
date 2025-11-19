@interface _HDQuantitySampleSeriesEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (BOOL)generateCodableRepresentationsForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 maxBytesPerRepresentation:(int64_t)a5 error:(id *)a6 handler:(id)a7;
- (id)_codableQuantitySampleForPersistentID:(uint64_t)a3 row:(uint64_t)a4 error:;
- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)objectForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
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
  v4 = [(HDEntityEncoder *)self superclassEncoder];
  v5 = [v4 orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)objectForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v9 = HDSQLiteColumnWithName();
  if (MEMORY[0x22AAC6CD0](a4, v9))
  {
    v10 = 0;
  }

  else
  {
    v10 = [MEMORY[0x277CCD830] dataTypeWithCode:HDSQLiteColumnAsInt64()];
  }

  v11 = [objc_alloc(objc_msgSend(v10 "dataObjectClass"))];
  if ([(_HDQuantitySampleSeriesEntityEncoder *)self applyPropertiesToObject:v11 persistentID:a3 row:a4 error:a5])
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [v11 applyPropertiesToObject:v10 persistentID:a4 row:a5 error:a6];

  if ((v12 & 1) != 0 && (HDSQLiteColumnWithNameIsNull() & 1) == 0)
  {
    [v10 _setCount:HDSQLiteColumnWithNameAsInt64()];
    [v10 _setFrozen:HDSQLiteColumnWithNameIsNull()];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v10;
      v14 = [v13 quantity];
      v15 = [v14 _unit];

      v16 = HDSQLiteColumnWithName();
      if ((MEMORY[0x22AAC6CD0](a5, v16) & 1) == 0)
      {
        v17 = MEMORY[0x277CCD7E8];
        MEMORY[0x22AAC6C50](a5, v16);
        v18 = [v17 quantityWithUnit:v15 doubleValue:?];
        [v13 _setMinimumQuantity:v18];
      }

      v19 = HDSQLiteColumnWithName();
      if ((MEMORY[0x22AAC6CD0](a5, v19) & 1) == 0)
      {
        v20 = MEMORY[0x277CCD7E8];
        MEMORY[0x22AAC6C50](a5, v19);
        v21 = [v20 quantityWithUnit:v15 doubleValue:?];
        [v13 _setMaximumQuantity:v21];
      }

      v22 = HDSQLiteColumnWithName();
      if ((MEMORY[0x22AAC6CD0](a5, v22) & 1) == 0)
      {
        v23 = MEMORY[0x277CCD7E8];
        MEMORY[0x22AAC6C50](a5, v22);
        v24 = [v23 quantityWithUnit:v15 doubleValue:?];
        [v13 _setMostRecentQuantity:v24];
      }

      v25 = HDSQLiteColumnWithNameAsDate();
      if (v25)
      {
        v26 = HDSQLiteColumnWithName();
        v27 = 0.0;
        if ((MEMORY[0x22AAC6CD0](a5, v26) & 1) == 0)
        {
          v27 = MEMORY[0x22AAC6C50](a5, v26);
        }

        v28 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v25 duration:v27];
        [v13 _setMostRecentQuantityDateInterval:v28];
      }
    }
  }

  return v12;
}

- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v9 = HDSQLiteColumnWithNameAsNumber();
  if (v9)
  {
    v10 = [(_HDQuantitySampleSeriesEntityEncoder *)self _codableQuantitySampleForPersistentID:a3 row:a4 error:a5];
    v11 = [v9 longLongValue];
    v12 = v10;
    v13 = v12;
    if (self)
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 0;
      v14 = [(HDEntityEncoder *)self transaction];
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __78___HDQuantitySampleSeriesEntityEncoder_addSeriesDataForHFDKey_toSample_error___block_invoke;
      v24 = &unk_278624978;
      v26 = &v27;
      v15 = v13;
      v25 = v15;
      v16 = [HDQuantitySeriesDataEntity enumerateSeries:v11 transaction:v14 error:a5 handler:&v21];

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
    v13 = [(HDEntityEncoder *)self superclassEncoder];
    v18 = [v13 codableRepresentationForPersistentID:a3 row:a4 error:a5];
  }

  v19 = v18;

  return v19;
}

- (id)_codableQuantitySampleForPersistentID:(uint64_t)a3 row:(uint64_t)a4 error:
{
  if (a1)
  {
    v7 = [a1 superclassEncoder];
    v8 = [v7 codableRepresentationForPersistentID:a2 row:a3 error:a4];

    if (v8)
    {
      [v8 setFrozen:HDSQLiteColumnWithNameIsNull()];
      v9 = HDSQLiteColumnWithName();
      if ((MEMORY[0x22AAC6CD0](a3, v9) & 1) == 0)
      {
        MEMORY[0x22AAC6C50](a3, v9);
        [v8 setMin:?];
      }

      v10 = HDSQLiteColumnWithName();
      if ((MEMORY[0x22AAC6CD0](a3, v10) & 1) == 0)
      {
        MEMORY[0x22AAC6C50](a3, v10);
        [v8 setMax:?];
      }

      v11 = HDSQLiteColumnWithName();
      if ((MEMORY[0x22AAC6CD0](a3, v11) & 1) == 0)
      {
        MEMORY[0x22AAC6C50](a3, v11);
        [v8 setMostRecent:?];
      }

      v12 = HDSQLiteColumnWithName();
      if ((MEMORY[0x22AAC6CD0](a3, v12) & 1) == 0)
      {
        MEMORY[0x22AAC6C50](a3, v12);
        [v8 setMostRecentDate:?];
      }

      v13 = HDSQLiteColumnWithName();
      if ((MEMORY[0x22AAC6CD0](a3, v13) & 1) == 0)
      {
        MEMORY[0x22AAC6C50](a3, v13);
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

- (BOOL)generateCodableRepresentationsForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 maxBytesPerRepresentation:(int64_t)a5 error:(id *)a6 handler:(id)a7
{
  v12 = a7;
  v13 = HDSQLiteColumnWithNameAsNumber();
  if (v13)
  {
    v39 = v13;
    v38 = [(_HDQuantitySampleSeriesEntityEncoder *)self _codableQuantitySampleForPersistentID:a3 row:a4 error:a6];
    v14 = [v13 longLongValue];
    v15 = v38;
    v41 = v12;
    if (!self)
    {
      v32 = 0;
      goto LABEL_24;
    }

    v40 = v15;
    v16 = [v15 data];
    v17 = [v16 length];

    v18 = [(HDEntityEncoder *)self transaction];
    v78[0] = 0;
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __127___HDQuantitySampleSeriesEntityEncoder_generateCodableRepresentationsForHFDKey_sample_maxBytesPerRepresentation_error_handler___block_invoke;
    v76[3] = &unk_2786249A0;
    v19 = v15;
    v77 = v19;
    v20 = [HDQuantitySeriesDataEntity getRangeAndCountForSeriesIdentifier:v14 transaction:v18 error:v78 handler:v76];
    v21 = v78[0];

    if (!v20)
    {
      v33 = v21;
      v25 = v33;
      v13 = v39;
      v15 = v40;
      if (v33)
      {
        if (a6)
        {
          v34 = v33;
          *a6 = v25;
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
    v22 = [(HDEntityEncoder *)self transaction];
    v53 = v21;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __127___HDQuantitySampleSeriesEntityEncoder_generateCodableRepresentationsForHFDKey_sample_maxBytesPerRepresentation_error_handler___block_invoke_2;
    v43[3] = &unk_2786249C8;
    v46 = &v66;
    v47 = &v70;
    v51 = a5;
    v48 = v60;
    v23 = v41;
    v45 = v23;
    v49 = &v54;
    v50 = &v62;
    v44 = v19;
    v52 = v17;
    v24 = [HDQuantitySeriesDataEntity enumerateSeries:v14 transaction:v22 error:&v53 handler:v43];
    v25 = v53;

    v15 = v40;
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
        v15 = v40;
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
        if (!a6)
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
        if (a6)
        {
LABEL_18:
          v36 = v35;
          *a6 = v35;
          goto LABEL_19;
        }

        _HKLogDroppedError();
      }
    }

LABEL_19:

    v32 = 0;
    goto LABEL_20;
  }

  v15 = [(HDEntityEncoder *)self superclassEncoder];
  v32 = [v15 generateCodableRepresentationsForPersistentID:a3 row:a4 maxBytesPerRepresentation:a5 error:a6 handler:v12];
LABEL_25:

  return v32;
}

@end