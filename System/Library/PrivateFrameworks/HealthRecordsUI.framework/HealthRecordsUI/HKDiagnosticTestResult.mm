@interface HKDiagnosticTestResult
@end

@implementation HKDiagnosticTestResult

void __102__HKDiagnosticTestResult_Displayable__fetchDetailItemsWithHealthRecordsStore_conceptStore_completion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [[HRMedicalRecordFormatter alloc] initWithConceptStore:a1[4] context:0];
  v5 = [(HRMedicalRecordFormatter *)v4 displayItemsFromRecord:a1[5]];
  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  (*(a1[6] + 16))();
}

void __129__HKDiagnosticTestResult_Displayable___displayItemsForValuePreferedStyle_healthRecordsStore_signedClinicalDataRecord_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, int a5)
{
  v39 = a2;
  v9 = a4;
  if (*(a1 + 80) == 1)
  {
    a3 = *(a1 + 32);
  }

  v10 = a3;
  if (v39 && [v39 hasRenderableContent])
  {
    v11 = *(a1 + 72);
    if (v11 >= 2)
    {
      if (v11 != 2)
      {
        goto LABEL_20;
      }

      v12 = +[WDMedicalRecordDisplayItem timelineSummaryReferenceRangeItem];
      [v12 setChartValueWithRange:v39];
      [v12 setSeparatorStyle:0];
      [v12 setSeparatorHidden:0];
      [v12 setMedicalRecord:*(a1 + 40)];
      goto LABEL_18;
    }

    v12 = +[WDMedicalRecordDisplayItem timelineSummaryReferenceRangeItem];
    [v12 setChartValueWithRange:v39];
    [v12 setSeparatorStyle:0];
    [v12 setSeparatorHidden:0];
  }

  else
  {
    v13 = *(a1 + 72);
    if (v13 >= 2)
    {
      if (v13 != 2)
      {
        goto LABEL_20;
      }

      if (a5)
      {
        v20 = *(a1 + 56);
        v21 = HRLocalizedString(@"MEDICAL_RECORD_DETAIL_TITLE_VALUE");
        v22 = HRLocalizedString(@"MEDICAL_RECORD_DETAIL_VALUE_DATA_ABSENT");
        v23 = [WDMedicalRecordDisplayItem detailSubtitleItemWithTitle:v21 subtitle:v22];
        [v20 addObject:v23];

        v24 = *(a1 + 56);
        v12 = HRLocalizedString(@"MEDICAL_RECORD_DETAIL_TITLE_DATA_ABSENT_REASON");
        v25 = [WDMedicalRecordDisplayItem detailSubtitleItemWithTitle:v12 subtitle:v10];
        [v24 addObject:v25];
      }

      else
      {
        if (v9)
        {
          v34 = MEMORY[0x1E696AEC0];
          v35 = HRLocalizedString(@"MEDICAL_RECORD_VALUE_UNIT_JOINT_%1$@_%2$@");
          v12 = [v34 stringWithFormat:v35, v10, v9];
        }

        else
        {
          v12 = v10;
        }

        v36 = *(a1 + 56);
        v37 = HRLocalizedString(@"MEDICAL_RECORD_DETAIL_TITLE_VALUE");
        v38 = [WDMedicalRecordDisplayItem detailSubtitleItemWithTitle:v37 subtitle:v12];
        [v36 addObject:v38];
      }

      goto LABEL_19;
    }

    v14 = +[WDMedicalRecordDisplayItem timelineSummaryValueItem];
    v12 = v14;
    if (!a5)
    {
      [v14 setValueString:v10];
      [v12 setRecordCategoryType:{objc_msgSend(*(a1 + 40), "recordCategoryType")}];
      [v12 setPlacement:5];
      [v12 setSeparatorStyle:0];
      [v12 setSeparatorHidden:1];
      [v12 setMedicalRecord:*(a1 + 40)];
      v26 = [*(a1 + 40) meaningfulDateTitle];
      [v12 setSubtitle:v26];

      v27 = *(a1 + 48);
      v28 = [*(a1 + 40) meaningfulDateTitle];
      v29 = [v27 attributedMeaningfulDateStringWithDateTitle:v28];
      [v12 setAttributedSubtitle:v29];

      if (v9)
      {
        v30 = +[HRProfileManager sharedInstance];
        v31 = [v30 currentProfile];
        v32 = [v31 ucumDisplayConverter];
        v33 = [v32 synonymForUCUMUnitString:v9];
        [v12 setUnitString:v33];
      }

      goto LABEL_18;
    }

    v15 = HRLocalizedString(@"MEDICAL_RECORD_DETAIL_VALUE_DATA_ABSENT");
    [v12 setValueString:v15];

    [v12 setRecordCategoryType:{objc_msgSend(*(a1 + 40), "recordCategoryType")}];
    [v12 setPlacement:5];
    [v12 setSeparatorStyle:0];
    [v12 setSeparatorHidden:1];
    [v12 setTitle:0];
  }

  [v12 setMedicalRecord:*(a1 + 40)];
  v16 = [*(a1 + 40) meaningfulDateTitle];
  [v12 setSubtitle:v16];

  v17 = *(a1 + 48);
  v18 = [*(a1 + 40) meaningfulDateTitle];
  v19 = [v17 attributedMeaningfulDateStringWithDateTitle:v18];
  [v12 setAttributedSubtitle:v19];

LABEL_18:
  [*(a1 + 56) addObject:v12];
LABEL_19:

LABEL_20:
  (*(*(a1 + 64) + 16))();
}

void __146__HKDiagnosticTestResult_Displayable___displayItemsForCodedValueCollection_healthRecordsStore_preferredStyle_signedClinicalDataRecord_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 codings];

  if (v6)
  {
    v7 = [*(a1 + 32) codedValues];
    v8 = [v7 count] - 1 == a3;

    v9 = MEMORY[0x1E696C200];
    v10 = [v5 value];
    v11 = [v9 inspectableValueCollectionSingleWithValue:v10];

    v12 = MEMORY[0x1E696C200];
    v13 = [v5 referenceRanges];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __146__HKDiagnosticTestResult_Displayable___displayItemsForCodedValueCollection_healthRecordsStore_preferredStyle_signedClinicalDataRecord_completion___block_invoke_2;
    v16[3] = &unk_1E83DCEA0;
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v20 = *(a1 + 64);
    v16[4] = v14;
    v21 = v8;
    v17 = v15;
    v18 = *(a1 + 56);
    v19 = v5;
    [v12 parseUncodedValueCollection:v11 referenceRanges:v13 withCompletion:v16];
  }
}

void __146__HKDiagnosticTestResult_Displayable___displayItemsForCodedValueCollection_healthRecordsStore_preferredStyle_signedClinicalDataRecord_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, int a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = v11;
  v13 = *(a1 + 64);
  if (v13 < 2)
  {
    if (a5)
    {
      v14 = +[WDMedicalRecordDisplayItem timelineSummaryValueItem];
      v15 = HRLocalizedString(@"MEDICAL_RECORD_DETAIL_VALUE_DATA_ABSENT");
      [v14 setValueString:v15];

      [v14 setRecordCategoryType:{objc_msgSend(*(a1 + 32), "recordCategoryType")}];
      [v14 setPlacement:4];
      [v14 setSeparatorStyle:0];
      [v14 setSeparatorHidden:0];
      [v14 setTitle:0];
      [v14 setMedicalRecord:*(a1 + 32)];
      if (*(a1 + 72) == 1)
      {
        v16 = [*(a1 + 32) meaningfulDateTitle];
        [v14 setSubtitle:v16];

        v17 = *(a1 + 40);
        v18 = [*(a1 + 32) meaningfulDateTitle];
        v19 = [v17 attributedMeaningfulDateStringWithDateTitle:v18];
        [v14 setAttributedSubtitle:v19];
      }

      [*(a1 + 48) addObject:v14];
      goto LABEL_24;
    }

    v28 = [*(a1 + 56) ontologyConcept];
    v14 = [v28 localizedPreferredName];

    v29 = +[WDMedicalRecordDisplayItem timelineSummaryValueItem];
    [v29 setValueString:v10];
    [v29 setRecordCategoryType:{objc_msgSend(*(a1 + 32), "recordCategoryType")}];
    [v29 setPlacement:4];
    [v29 setSeparatorStyle:0];
    [v29 setSeparatorHidden:0];
    [v29 setTitle:v14];
    [v29 setMedicalRecord:*(a1 + 32)];
    if (*(a1 + 72) == 1)
    {
      v30 = [*(a1 + 32) meaningfulDateTitle];
      [v29 setSubtitle:v30];

      v31 = *(a1 + 40);
      v32 = [*(a1 + 32) meaningfulDateTitle];
      v33 = [v31 attributedMeaningfulDateStringWithDateTitle:v32];
      [v29 setAttributedSubtitle:v33];
    }

    if (v12)
    {
      v34 = +[HRProfileManager sharedInstance];
      v35 = [v34 currentProfile];
      v36 = [v35 ucumDisplayConverter];
      v37 = [v36 synonymForUCUMUnitString:v12];
      [v29 setUnitString:v37];
    }

    [*(a1 + 48) addObject:v29];
LABEL_23:

LABEL_24:
    goto LABEL_25;
  }

  if (v13 == 2)
  {
    if (!a5)
    {
      if (v11)
      {
        v38 = MEMORY[0x1E696AEC0];
        v39 = HRLocalizedString(@"MEDICAL_RECORD_VALUE_UNIT_JOINT_%1$@_%2$@");
        v14 = [v38 stringWithFormat:v39, v10, v12];
      }

      else
      {
        v14 = v10;
      }

      v40 = [*(a1 + 56) ontologyConcept];
      v29 = [v40 localizedPreferredName];

      v41 = [v29 hk_copyNonEmptyString];
      v42 = v41;
      if (v41)
      {
        v43 = v41;
      }

      else
      {
        v43 = [MEMORY[0x1E696C0F8] defaultDisplayString];
      }

      v44 = v43;

      v45 = *(a1 + 48);
      v46 = [WDMedicalRecordDisplayItem detailSubtitleItemWithTitle:v44 subtitle:v14 extraTopPadding:0];
      [v45 addObject:v46];

      goto LABEL_23;
    }

    _HKInitializeLogging();
    v20 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __146__HKDiagnosticTestResult_Displayable___displayItemsForCodedValueCollection_healthRecordsStore_preferredStyle_signedClinicalDataRecord_completion___block_invoke_2_cold_1(v20);
    }

    v21 = *(a1 + 48);
    v22 = HRLocalizedString(@"MEDICAL_RECORD_DETAIL_TITLE_VALUE");
    v23 = HRLocalizedString(@"MEDICAL_RECORD_DETAIL_VALUE_DATA_ABSENT");
    v24 = [WDMedicalRecordDisplayItem detailSubtitleItemWithTitle:v22 subtitle:v23];
    [v21 addObject:v24];

    v25 = *(a1 + 48);
    v26 = HRLocalizedString(@"MEDICAL_RECORD_DETAIL_TITLE_DATA_ABSENT_REASON");
    v27 = [WDMedicalRecordDisplayItem detailSubtitleItemWithTitle:v26 subtitle:v10];
    [v25 addObject:v27];
  }

LABEL_25:
}

@end