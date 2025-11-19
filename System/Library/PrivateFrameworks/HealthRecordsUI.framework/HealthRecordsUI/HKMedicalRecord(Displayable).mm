@interface HKMedicalRecord(Displayable)
- (id)conceptNameItems;
- (id)meaningfulDate;
- (id)meaningfulDateDisplayStringWithPreferredForm:()Displayable showTime:;
- (id)sortDateTitle;
- (uint64_t)canDefineConceptRoom;
- (uint64_t)isDateLess;
- (void)fetchAttachmentItemsWithHealthRecordsStore:()Displayable conceptStore:completion:;
- (void)fetchConceptRoomItemsWithHealthRecordsStore:()Displayable conceptStore:completion:;
- (void)fetchCorrespondingSignedClinicalDataRecordWithHealthRecordsStore:()Displayable completion:;
- (void)fetchDetailItemsWithHealthRecordsStore:()Displayable conceptStore:completion:;
- (void)fetchDisplayNameItemWithHealthRecordsStore:()Displayable completion:;
- (void)fetchStructuredFieldItemsWithHealthRecordsStore:()Displayable conceptStore:completion:;
@end

@implementation HKMedicalRecord(Displayable)

- (void)fetchDetailItemsWithHealthRecordsStore:()Displayable conceptStore:completion:
{
  v7 = a5;
  v8 = a4;
  v10 = [[HRMedicalRecordFormatter alloc] initWithConceptStore:v8 context:0];

  v9 = [(HRMedicalRecordFormatter *)v10 displayItemsFromRecord:a1];
  v7[2](v7, v9);
}

- (void)fetchStructuredFieldItemsWithHealthRecordsStore:()Displayable conceptStore:completion:
{
  v7 = a5;
  v8 = a4;
  v11 = [[HRMedicalRecordFormatter alloc] initWithConceptStore:v8 context:0];

  v9 = [(HRMedicalRecordFormatter *)v11 structuredItemsFromRecord:a1];
  if ([v9 count])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  (v7)[2](v7, v10);
}

- (void)fetchConceptRoomItemsWithHealthRecordsStore:()Displayable conceptStore:completion:
{
  v7 = a5;
  v8 = a4;
  v10 = [[HRMedicalRecordFormatter alloc] initWithConceptStore:v8 context:1];

  v9 = [(HRMedicalRecordFormatter *)v10 displayItemsFromRecord:a1];
  v7[2](v7, v9);
}

- (void)fetchDisplayNameItemWithHealthRecordsStore:()Displayable completion:
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [a1 codings];
  v8 = [v7 count];

  if (v8)
  {
    v21 = v5;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = [a1 codings];
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v15 = [v14 displayString];
          v16 = [v15 length];

          if (v16)
          {
            v17 = [v14 displayString];
            if ([v17 length])
            {
              [v14 displayString];
            }

            else
            {
              HRLocalizedString(@"MEDICAL_RECORD_DETAIL_TEXT_NO_TEXT");
            }
            v18 = ;

            v19 = [v14 formattedTitle];
            v20 = [WDMedicalRecordDisplayItem detailSubtitleItemWithTitle:v19 subtitle:v18 extraTopPadding:0];
            [v6 addObject:v20];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    v5 = v21;
  }

  v5[2](v5, v6);
}

- (void)fetchCorrespondingSignedClinicalDataRecordWithHealthRecordsStore:()Displayable completion:
{
  v10 = a3;
  v6 = a4;
  v7 = [a1 originIdentifier];
  v8 = [v7 signedClinicalDataRecordIdentifier];

  if (v8)
  {
    v9 = [[WDClinicalSourcesDataProvider alloc] initWithHealthRecordsStore:v10];
    [(WDClinicalSourcesDataProvider *)v9 fetchSignedClinicalDataRecordWithIdentifier:v8 completion:v6];
  }

  else
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

- (void)fetchAttachmentItemsWithHealthRecordsStore:()Displayable conceptStore:completion:
{
  v7 = a5;
  v8 = a4;
  v12 = [[HRMedicalRecordFormatter alloc] initWithConceptStore:v8 context:0];

  v9 = [(HRMedicalRecordFormatter *)v12 attachmentItemsTitleFromRecord:a1];
  v10 = [(HRMedicalRecordFormatter *)v12 attachmentItemsFromRecord:a1];
  if ([v10 count])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  (v7)[2](v7, v11, v9);
}

- (id)conceptNameItems
{
  if ([MEMORY[0x1E696C608] isAppleInternalInstall])
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = [a1 primaryConcept];
    v4 = [v3 groupByConcept];

    LODWORD(v3) = [v4 isAdHoc];
    v5 = MEMORY[0x1E696AEC0];
    v6 = [v4 identifier];
    v7 = [v6 numberRepresentation];
    v8 = v7;
    if (v3)
    {
      v9 = @"Grouper Adhoc Concept (%@)";
    }

    else
    {
      v9 = @"Grouper Concept (%@)";
    }

    v10 = [v5 stringWithFormat:v9, v7];

    v11 = [a1 displayNameForGroupByConcept];
    v12 = [WDMedicalRecordDisplayItem detailSubtitleItemWithTitle:v10 subtitle:v11 extraTopPadding:0];
    [v2 addObject:v12];

    v13 = [a1 primaryConcept];
    if (([v13 isEqual:v4] & 1) == 0)
    {
      v14 = [v13 isAdHoc];
      v15 = MEMORY[0x1E696AEC0];
      v16 = [v13 identifier];
      v17 = [v16 numberRepresentation];
      v18 = v17;
      if (v14)
      {
        v19 = @"Primary Adhoc Concept (%@)";
      }

      else
      {
        v19 = @"Primary Concept (%@)";
      }

      v20 = [v15 stringWithFormat:v19, v17];

      v21 = [v13 localizedPreferredName];
      v22 = v21;
      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = @"Primary Concept without CFN";
      }

      v24 = [WDMedicalRecordDisplayItem detailSubtitleItemWithTitle:v20 subtitle:v23 extraTopPadding:0];
      [v2 addObject:v24];
    }
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  return v2;
}

- (id)meaningfulDate
{
  if ([a1 isDateLess])
  {
    v2 = 0;
    goto LABEL_10;
  }

  v3 = [a1 sortDate];
  v4 = [v3 keyPath];
  v5 = [a1 valueForKeyPath:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [a1 sortDate];
      v2 = [v7 date];

      goto LABEL_9;
    }

    v6 = [v5 dateForUTC];
  }

  v2 = v6;
LABEL_9:

LABEL_10:

  return v2;
}

- (uint64_t)isDateLess
{
  v1 = [a1 sortDate];
  v2 = [v1 keyPath];
  v3 = [v2 isEqualToString:*MEMORY[0x1E696B9B0]];

  return v3;
}

- (uint64_t)canDefineConceptRoom
{
  if (![a1 isDisplayable])
  {
    return 0;
  }

  v2 = [a1 primaryConcept];
  v3 = [v2 isInMemory] ^ 1;

  return v3;
}

- (id)sortDateTitle
{
  v1 = [a1 sortDate];
  v2 = [v1 keyPath];
  v3 = [v2 isEqualToString:*MEMORY[0x1E696B9B0]];

  if (v3)
  {
    v4 = HRLocalizedString(@"MEDICAL_RECORD_SORT_DATE_TITLE_MODIFIED_DATE");
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)meaningfulDateDisplayStringWithPreferredForm:()Displayable showTime:
{
  if ([a1 isDateLess])
  {
    v7 = HRLocalizedString(@"NO_DATE");
    goto LABEL_21;
  }

  v8 = [a1 sortDate];
  v9 = [v8 keyPath];
  v10 = [a1 valueForKeyPath:v9];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 date];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    v11 = [v10 dateValueForUTC];
  }

  v12 = v11;

  v10 = v12;
LABEL_8:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [MEMORY[0x1E696C240] displayStringForDate:v10 form:a3 originalTimeZoneString:0];
LABEL_19:
    v7 = v13;
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x1E696B948];
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
    {
      [HKMedicalRecord(Displayable) meaningfulDateDisplayStringWithPreferredForm:v17 showTime:?];
    }

    v13 = HRLocalizedString(@"NO_DATE");
    goto LABEL_19;
  }

  v14 = v10;
  v15 = [v14 form];
  if ((a4 & 1) == 0)
  {
    if (![v14 form])
    {
      v16 = 1;
      goto LABEL_15;
    }

    v15 = [v14 form];
  }

  v16 = v15;
LABEL_15:
  v7 = [v14 displayStringWithPreferredForm:v16 includeTimeZone:0];

LABEL_20:
LABEL_21:

  return v7;
}

- (void)meaningfulDateDisplayStringWithPreferredForm:()Displayable showTime:.cold.1(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v3 = 138543362;
  v4 = objc_opt_class();
  v2 = v4;
  _os_log_error_impl(&dword_1D101F000, v1, OS_LOG_TYPE_ERROR, "Unexpected sort date class: %{public}@", &v3, 0xCu);
}

@end