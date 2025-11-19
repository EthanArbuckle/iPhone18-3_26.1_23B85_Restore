@interface _HDLocationSeriesSampleEntityEncoder
- (BOOL)_enumerateCodableSeries:(void *)a3 transaction:(uint64_t)a4 error:(void *)a5 handler:;
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (BOOL)generateCodableRepresentationsForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 maxBytesPerRepresentation:(int64_t)a5 error:(id *)a6 handler:(id)a7;
- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)objectForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)orderedProperties;
@end

@implementation _HDLocationSeriesSampleEntityEncoder

- (id)orderedProperties
{
  v9[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"frozen";
  v9[1] = @"count";
  v9[2] = @"hfd_key";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
  v4 = [(HDEntityEncoder *)self superclassEncoder];
  v5 = [v4 orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v9 = [(HDEntityEncoder *)self superclassEncoder];
  v10 = [v9 codableRepresentationForPersistentID:a3 row:a4 error:a5];

  if (v10)
  {
    v11 = objc_alloc_init(HDCodableLocationSeries);
    [(HDCodableLocationSeries *)v11 setSample:v10];
    [(HDCodableLocationSeries *)v11 setFrozen:HDSQLiteColumnWithNameAsBoolean()];
    v12 = HDSQLiteColumnWithNameAsNumber();
    v13 = [(HDEntityEncoder *)self transaction];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __87___HDLocationSeriesSampleEntityEncoder_codableRepresentationForPersistentID_row_error___block_invoke;
    v19[3] = &unk_278624718;
    v14 = v11;
    v20 = v14;
    v15 = [(_HDLocationSeriesSampleEntityEncoder *)self _enumerateCodableSeries:v12 transaction:v13 error:a5 handler:v19];

    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)_enumerateCodableSeries:(void *)a3 transaction:(uint64_t)a4 error:(void *)a5 handler:
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a1)
  {
    v12 = [v9 longLongValue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __90___HDLocationSeriesSampleEntityEncoder__enumerateCodableSeries_transaction_error_handler___block_invoke;
    v15[3] = &unk_278624600;
    v16 = v11;
    v13 = [HDLocationSeriesDataEntity enumerateSeries:v12 transaction:v10 error:a4 handler:v15];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)generateCodableRepresentationsForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 maxBytesPerRepresentation:(int64_t)a5 error:(id *)a6 handler:(id)a7
{
  v13 = a7;
  v14 = [(HDEntityEncoder *)self superclassEncoder];
  v15 = [v14 codableRepresentationForPersistentID:a3 row:a4 error:a6];

  if (v15)
  {
    v33 = a2;
    v16 = HDSQLiteColumnWithNameAsBoolean();
    v17 = [v15 encodedByteCount];
    HDSQLiteColumnWithNameAsNumber();
    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v61 = v17;
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy__122;
    v34 = v56 = __Block_byref_object_dispose__122;
    v57 = objc_alloc_init(HDCodableLocationSeries);
    [v53[5] setSample:v15];
    [v53[5] setFrozen:v16];
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy__122;
    v50 = __Block_byref_object_dispose__122;
    v51 = 0;
    v18 = [(HDEntityEncoder *)self transaction];
    v45 = 0;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __130___HDLocationSeriesSampleEntityEncoder_generateCodableRepresentationsForPersistentID_row_maxBytesPerRepresentation_error_handler___block_invoke;
    v36[3] = &unk_278624740;
    v39 = &v58;
    v42 = a5;
    v19 = v13;
    v38 = v19;
    v40 = &v52;
    v41 = &v46;
    v44 = v16;
    v37 = v15;
    v43 = v17;
    LOBYTE(v16) = [(_HDLocationSeriesSampleEntityEncoder *)self _enumerateCodableSeries:v34 transaction:v18 error:&v45 handler:v36];
    v20 = v45;

    if (v16 & 1) != 0 || ([v20 hk_isHealthKitErrorWithCode:1100])
    {
      v22 = (v47 + 5);
      v21 = v47[5];
      if (v21)
      {
        v23 = v21;
        if (!a6)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v25 = v53[5];
        if (!v25 || (v26 = v59[3], obj = 0, v27 = (*(v19 + 2))(v19, v25, v26, 1, &obj), objc_storeStrong(v22, obj), !v27))
        {
          v24 = 1;
LABEL_20:

          _Block_object_dispose(&v46, 8);
          _Block_object_dispose(&v52, 8);

          _Block_object_dispose(&v58, 8);
          goto LABEL_21;
        }

        v28 = v47[5];
        if (v28)
        {
          v23 = v28;
        }

        else
        {
          v29 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:v33 format:@"Failed to lookup HFD series for location sample."];
          v30 = v47[5];
          v47[5] = v29;

          v23 = v47[5];
          if (!v23)
          {
            goto LABEL_19;
          }
        }

        if (!a6)
        {
          _HKLogDroppedError();
          goto LABEL_19;
        }
      }
    }

    else
    {
      v23 = v20;
      if (!v23)
      {
        goto LABEL_19;
      }

      if (!a6)
      {
LABEL_6:
        _HKLogDroppedError();
LABEL_19:

        v24 = 0;
        goto LABEL_20;
      }
    }

    v31 = v23;
    *a6 = v23;
    goto LABEL_19;
  }

  v24 = 0;
LABEL_21:

  return v24;
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
    v10 = [MEMORY[0x277CCD8D8] dataTypeWithCode:HDSQLiteColumnAsInt64()];
  }

  v11 = [objc_alloc(objc_msgSend(v10 "dataObjectClass"))];
  if ([(_HDLocationSeriesSampleEntityEncoder *)self applyPropertiesToObject:v11 persistentID:a3 row:a4 error:a5])
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

  if (v12)
  {
    [v10 _setFrozen:HDSQLiteColumnWithNameAsBoolean()];
    [v10 _setCount:HDSQLiteColumnWithNameAsInt64()];
  }

  return v12;
}

@end