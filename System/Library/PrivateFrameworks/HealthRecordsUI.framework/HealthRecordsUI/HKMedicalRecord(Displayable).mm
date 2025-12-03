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

  v9 = [(HRMedicalRecordFormatter *)v10 displayItemsFromRecord:self];
  v7[2](v7, v9);
}

- (void)fetchStructuredFieldItemsWithHealthRecordsStore:()Displayable conceptStore:completion:
{
  v7 = a5;
  v8 = a4;
  v11 = [[HRMedicalRecordFormatter alloc] initWithConceptStore:v8 context:0];

  v9 = [(HRMedicalRecordFormatter *)v11 structuredItemsFromRecord:self];
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

  v9 = [(HRMedicalRecordFormatter *)v10 displayItemsFromRecord:self];
  v7[2](v7, v9);
}

- (void)fetchDisplayNameItemWithHealthRecordsStore:()Displayable completion:
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  codings = [self codings];
  v8 = [codings count];

  if (v8)
  {
    v21 = v5;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    codings2 = [self codings];
    v10 = [codings2 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(codings2);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          displayString = [v14 displayString];
          v16 = [displayString length];

          if (v16)
          {
            displayString2 = [v14 displayString];
            if ([displayString2 length])
            {
              [v14 displayString];
            }

            else
            {
              HRLocalizedString(@"MEDICAL_RECORD_DETAIL_TEXT_NO_TEXT");
            }
            v18 = ;

            formattedTitle = [v14 formattedTitle];
            v20 = [WDMedicalRecordDisplayItem detailSubtitleItemWithTitle:formattedTitle subtitle:v18 extraTopPadding:0];
            [v6 addObject:v20];
          }
        }

        v11 = [codings2 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
  originIdentifier = [self originIdentifier];
  signedClinicalDataRecordIdentifier = [originIdentifier signedClinicalDataRecordIdentifier];

  if (signedClinicalDataRecordIdentifier)
  {
    v9 = [[WDClinicalSourcesDataProvider alloc] initWithHealthRecordsStore:v10];
    [(WDClinicalSourcesDataProvider *)v9 fetchSignedClinicalDataRecordWithIdentifier:signedClinicalDataRecordIdentifier completion:v6];
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

  v9 = [(HRMedicalRecordFormatter *)v12 attachmentItemsTitleFromRecord:self];
  v10 = [(HRMedicalRecordFormatter *)v12 attachmentItemsFromRecord:self];
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
    primaryConcept = [self primaryConcept];
    groupByConcept = [primaryConcept groupByConcept];

    LODWORD(primaryConcept) = [groupByConcept isAdHoc];
    v5 = MEMORY[0x1E696AEC0];
    identifier = [groupByConcept identifier];
    numberRepresentation = [identifier numberRepresentation];
    v8 = numberRepresentation;
    if (primaryConcept)
    {
      v9 = @"Grouper Adhoc Concept (%@)";
    }

    else
    {
      v9 = @"Grouper Concept (%@)";
    }

    v10 = [v5 stringWithFormat:v9, numberRepresentation];

    displayNameForGroupByConcept = [self displayNameForGroupByConcept];
    v12 = [WDMedicalRecordDisplayItem detailSubtitleItemWithTitle:v10 subtitle:displayNameForGroupByConcept extraTopPadding:0];
    [v2 addObject:v12];

    primaryConcept2 = [self primaryConcept];
    if (([primaryConcept2 isEqual:groupByConcept] & 1) == 0)
    {
      isAdHoc = [primaryConcept2 isAdHoc];
      v15 = MEMORY[0x1E696AEC0];
      identifier2 = [primaryConcept2 identifier];
      numberRepresentation2 = [identifier2 numberRepresentation];
      v18 = numberRepresentation2;
      if (isAdHoc)
      {
        v19 = @"Primary Adhoc Concept (%@)";
      }

      else
      {
        v19 = @"Primary Concept (%@)";
      }

      v20 = [v15 stringWithFormat:v19, numberRepresentation2];

      localizedPreferredName = [primaryConcept2 localizedPreferredName];
      v22 = localizedPreferredName;
      if (localizedPreferredName)
      {
        v23 = localizedPreferredName;
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
  if ([self isDateLess])
  {
    date = 0;
    goto LABEL_10;
  }

  sortDate = [self sortDate];
  keyPath = [sortDate keyPath];
  v5 = [self valueForKeyPath:keyPath];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dateForUTC = v5;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sortDate2 = [self sortDate];
      date = [sortDate2 date];

      goto LABEL_9;
    }

    dateForUTC = [v5 dateForUTC];
  }

  date = dateForUTC;
LABEL_9:

LABEL_10:

  return date;
}

- (uint64_t)isDateLess
{
  sortDate = [self sortDate];
  keyPath = [sortDate keyPath];
  v3 = [keyPath isEqualToString:*MEMORY[0x1E696B9B0]];

  return v3;
}

- (uint64_t)canDefineConceptRoom
{
  if (![self isDisplayable])
  {
    return 0;
  }

  primaryConcept = [self primaryConcept];
  v3 = [primaryConcept isInMemory] ^ 1;

  return v3;
}

- (id)sortDateTitle
{
  sortDate = [self sortDate];
  keyPath = [sortDate keyPath];
  v3 = [keyPath isEqualToString:*MEMORY[0x1E696B9B0]];

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
  if ([self isDateLess])
  {
    v7 = HRLocalizedString(@"NO_DATE");
    goto LABEL_21;
  }

  sortDate = [self sortDate];
  keyPath = [sortDate keyPath];
  v10 = [self valueForKeyPath:keyPath];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    date = [v10 date];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    date = [v10 dateValueForUTC];
  }

  v12 = date;

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
  form = [v14 form];
  if ((a4 & 1) == 0)
  {
    if (![v14 form])
    {
      v16 = 1;
      goto LABEL_15;
    }

    form = [v14 form];
  }

  v16 = form;
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