@interface HKUnknownRecord
@end

@implementation HKUnknownRecord

void __95__HKUnknownRecord_Displayable__fetchDetailItemsWithHealthRecordsStore_conceptStore_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x1E696B948];
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEBUG))
    {
      __95__HKUnknownRecord_Displayable__fetchDetailItemsWithHealthRecordsStore_conceptStore_completion___block_invoke_cold_1(v7);
    }
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v5 count])
  {
    v9 = HRNewlineJoinedStrings();
    v10 = HRLocalizedString(@"MEDICAL_RECORD_DETAIL_TITLE_EXTRACTION_FAILURE_REASON");
    v11 = [WDMedicalRecordDisplayItem detailSubtitleItemWithTitle:v10 subtitle:v9 extraTopPadding:0];

    if (v11)
    {
      [v8 addObject:v11];
    }
  }

  v12 = [*(a1 + 32) note];
  v13 = [v12 length];

  if (v13)
  {
    v14 = HRLocalizedString(@"MEDICAL_RECORD_DETAIL_TITLE_NOTE");
    v15 = [*(a1 + 32) note];
    v16 = [WDMedicalRecordDisplayItem detailSubtitleItemWithTitle:v14 subtitle:v15 extraTopPadding:0];
    [v8 addObject:v16];
  }

  (*(*(a1 + 40) + 16))();
}

void __95__HKUnknownRecord_Displayable__fetchDetailItemsWithHealthRecordsStore_conceptStore_completion___block_invoke_cold_1(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = HKSensitiveLogItem();
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_1D101F000, v1, OS_LOG_TYPE_DEBUG, "Error stringifying failure reasons: %{public}@", &v3, 0xCu);
}

@end