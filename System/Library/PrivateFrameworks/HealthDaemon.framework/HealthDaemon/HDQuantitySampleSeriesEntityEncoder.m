@interface HDQuantitySampleSeriesEntityEncoder
@end

@implementation HDQuantitySampleSeriesEntityEncoder

uint64_t __78___HDQuantitySampleSeriesEntityEncoder_addSeriesDataForHFDKey_toSample_error___block_invoke(uint64_t a1, double a2, double a3, double a4)
{
  ++*(*(*(a1 + 40) + 8) + 24);
  v7 = *(a1 + 32);
  v8 = objc_alloc_init(HDCodableQuantitySeriesDatum);
  [(HDCodableQuantitySeriesDatum *)v8 setValue:a3];
  if (a4 != -1.0)
  {
    [(HDCodableQuantitySeriesDatum *)v8 setStartDate:a2];
    a2 = a2 + a4;
  }

  [(HDCodableQuantitySeriesDatum *)v8 setEndDate:a2];
  [v7 addQuantitySeriesData:v8];

  return 1;
}

uint64_t __127___HDQuantitySampleSeriesEntityEncoder_generateCodableRepresentationsForHFDKey_sample_maxBytesPerRepresentation_error_handler___block_invoke_2(uint64_t a1, double a2, double a3, double a4)
{
  v60 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 48) + 8) + 24) + 32 > *(a1 + 88))
  {
    [*(*(*(a1 + 56) + 8) + 40) setFinal:0];
    v8 = *(*(a1 + 64) + 8);
    if ((*(v8 + 24) & 1) == 0)
    {
      *(v8 + 24) = 1;
      v9 = *(*(*(a1 + 48) + 8) + 24);
      v10 = *(a1 + 88);
      v11 = *(*(*(a1 + 56) + 8) + 40);
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v11 sample];
        [v11 valueInCanonicalUnit];
        v15 = v14;
        v16 = [v11 count];
        v17 = [v11 frozen];
        v18 = [v11 final];
        v19 = [v11 quantitySeriesDatas];
        *buf = 138545154;
        v45 = v13;
        v46 = 2048;
        v47 = v15;
        v48 = 2048;
        v49 = v16;
        v50 = 1024;
        v51 = v17;
        v52 = 1024;
        v53 = v18;
        v54 = 2048;
        v55 = [v19 count];
        v56 = 2048;
        v57 = v9 + 32;
        v58 = 2048;
        v59 = v10;
        _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "Non-final quantity sample generated %{public}@, value=%f, count=%lld, frozen=%{BOOL}d, final=%{BOOL}d, datumsCount=%lu, estimatedSize=%ld, maxSize=%ld", buf, 0x4Au);
      }

      v20 = MEMORY[0x277CCD830];
      v21 = [v11 sample];
      v22 = [v20 dataTypeWithCode:{objc_msgSend(v21, "dataType")}];

      v23 = [v22 dataObjectClass];
      v24 = [v11 count];
      v25 = [v11 quantitySeriesDatas];
      +[HDAutoBugCaptureReporter reportNotFinalSeriesSampleWithClass:count:datumCount:reason:](HDAutoBugCaptureReporter, "reportNotFinalSeriesSampleWithClass:count:datumCount:reason:", v23, v24, [v25 count], @"generate");
    }

    v26 = *(*(*(a1 + 56) + 8) + 40);
    v27 = *(*(*(a1 + 48) + 8) + 24);
    v28 = (*(*(a1 + 40) + 16))();
    v29 = 0;
    v30 = *(*(a1 + 56) + 8);
    v31 = *(v30 + 40);
    *(v30 + 40) = 0;

    *(*(*(a1 + 48) + 8) + 24) = 0;
    if (v28 == 1)
    {
      goto LABEL_11;
    }

    if (v28 == 2)
    {
      v32 = *(*(a1 + 72) + 8);
      v35 = *(v32 + 40);
      v34 = (v32 + 40);
      v33 = v35;
      if (v29)
      {
        v36 = v29;
        v33 = v29;
      }

      objc_storeStrong(v34, v33);
      *(*(*(a1 + 80) + 8) + 24) = 0;
LABEL_11:

      result = 0;
      goto LABEL_18;
    }
  }

  v38 = *(*(*(a1 + 56) + 8) + 40);
  if (!v38)
  {
    v39 = [*(a1 + 32) copy];
    v40 = *(*(a1 + 56) + 8);
    v41 = *(v40 + 40);
    *(v40 + 40) = v39;

    *(*(*(a1 + 48) + 8) + 24) = *(a1 + 96);
    v38 = *(*(*(a1 + 56) + 8) + 40);
  }

  v42 = objc_alloc_init(HDCodableQuantitySeriesDatum);
  [(HDCodableQuantitySeriesDatum *)v42 setValue:a3];
  if (a4 != -1.0)
  {
    [(HDCodableQuantitySeriesDatum *)v42 setStartDate:a2];
    a2 = a2 + a4;
  }

  [(HDCodableQuantitySeriesDatum *)v42 setEndDate:a2];
  [v38 addQuantitySeriesData:v42];

  *(*(*(a1 + 48) + 8) + 24) += 32;
  result = 1;
LABEL_18:
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

@end