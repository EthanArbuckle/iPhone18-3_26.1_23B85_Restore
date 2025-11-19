@interface HKVerifiableClinicalRecordDetailDataProvider
- (HKVerifiableClinicalRecordDetailDataProvider)initWithSignedRecord:(id)a3 medicalRecords:(id)a4;
- (id)addressesItem;
- (id)birthSexItem;
- (id)birthdayItem;
- (id)displayItemForSection:(int64_t)a3 row:(int64_t)a4;
- (id)emailAddressesItem;
- (id)ethnicityItem;
- (id)expiresItem;
- (id)footerForSection:(int64_t)a3;
- (id)genderItem;
- (id)headerForSection:(int64_t)a3;
- (id)identifiersItem;
- (id)issuedItem;
- (id)maritalStatusItem;
- (id)nameItem;
- (id)phoneNumbersItem;
- (id)raceItem;
- (id)sourceItem;
- (id)statusItem;
- (int64_t)numberOfRowsForSection:(int64_t)a3;
- (int64_t)numberOfSections;
- (void)createDisplayItems;
- (void)createPersonalInfoItems;
- (void)createRecordSections;
- (void)createVerificationItems;
@end

@implementation HKVerifiableClinicalRecordDetailDataProvider

- (HKVerifiableClinicalRecordDetailDataProvider)initWithSignedRecord:(id)a3 medicalRecords:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = HKVerifiableClinicalRecordDetailDataProvider;
  v9 = [(HKVerifiableClinicalRecordDetailDataProvider *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_record, a3);
    v11 = [v8 sortedArrayUsingComparator:&__block_literal_global_39];
    medicalRecords = v10->_medicalRecords;
    v10->_medicalRecords = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    displayItems = v10->_displayItems;
    v10->_displayItems = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sectionHeaders = v10->_sectionHeaders;
    v10->_sectionHeaders = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sectionFooters = v10->_sectionFooters;
    v10->_sectionFooters = v17;

    v10->_sectionIndex = 0;
    [(HKVerifiableClinicalRecordDetailDataProvider *)v10 createDisplayItems];
  }

  return v10;
}

uint64_t __84__HKVerifiableClinicalRecordDetailDataProvider_initWithSignedRecord_medicalRecords___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 sortDate];
  v6 = [v4 sortDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (int64_t)numberOfSections
{
  v2 = [(NSMutableDictionary *)self->_displayItems allKeys];
  v3 = [v2 count];

  return v3;
}

- (int64_t)numberOfRowsForSection:(int64_t)a3
{
  displayItems = self->_displayItems;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)displayItems objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [v5 count];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)headerForSection:(int64_t)a3
{
  sectionHeaders = self->_sectionHeaders;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)sectionHeaders objectForKeyedSubscript:v4];

  return v5;
}

- (id)footerForSection:(int64_t)a3
{
  sectionFooters = self->_sectionFooters;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)sectionFooters objectForKeyedSubscript:v4];

  return v5;
}

- (id)displayItemForSection:(int64_t)a3 row:(int64_t)a4
{
  v6 = [(HKVerifiableClinicalRecordDetailDataProvider *)self displayItems];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v8 = [v6 objectForKeyedSubscript:v7];

  v9 = [v8 objectAtIndexedSubscript:a4];

  return v9;
}

- (void)createDisplayItems
{
  [(HKVerifiableClinicalRecordDetailDataProvider *)self createPersonalInfoItems];
  [(HKVerifiableClinicalRecordDetailDataProvider *)self createRecordSections];

  [(HKVerifiableClinicalRecordDetailDataProvider *)self createVerificationItems];
}

- (void)createPersonalInfoItems
{
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [(HKVerifiableClinicalRecordDetailDataProvider *)self nameItem];
  [v21 hk_addNonNilObject:v3];

  v4 = [(HKVerifiableClinicalRecordDetailDataProvider *)self birthdayItem];
  [v21 hk_addNonNilObject:v4];

  v5 = [(HKVerifiableClinicalRecordDetailDataProvider *)self genderItem];
  [v21 hk_addNonNilObject:v5];

  v6 = [(HKVerifiableClinicalRecordDetailDataProvider *)self emailAddressesItem];
  [v21 hk_addNonNilObject:v6];

  v7 = [(HKVerifiableClinicalRecordDetailDataProvider *)self phoneNumbersItem];
  [v21 hk_addNonNilObject:v7];

  v8 = [(HKVerifiableClinicalRecordDetailDataProvider *)self addressesItem];
  [v21 hk_addNonNilObject:v8];

  v9 = [(HKVerifiableClinicalRecordDetailDataProvider *)self maritalStatusItem];
  [v21 hk_addNonNilObject:v9];

  v10 = [(HKVerifiableClinicalRecordDetailDataProvider *)self raceItem];
  [v21 hk_addNonNilObject:v10];

  v11 = [(HKVerifiableClinicalRecordDetailDataProvider *)self ethnicityItem];
  [v21 hk_addNonNilObject:v11];

  v12 = [(HKVerifiableClinicalRecordDetailDataProvider *)self birthSexItem];
  [v21 hk_addNonNilObject:v12];

  v13 = [(HKVerifiableClinicalRecordDetailDataProvider *)self identifiersItem];
  [v21 hk_addNonNilObject:v13];

  if ([v21 count])
  {
    v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v15 = [v14 localizedStringForKey:@"DETAIL_VIEW_SUBJECT_HEADER" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
    v16 = [v15 localizedUppercaseString];
    sectionHeaders = self->_sectionHeaders;
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:self->_sectionIndex];
    [(NSMutableDictionary *)sectionHeaders setObject:v16 forKeyedSubscript:v18];

    displayItems = self->_displayItems;
    v20 = [MEMORY[0x1E696AD98] numberWithInteger:self->_sectionIndex];
    [(NSMutableDictionary *)displayItems setObject:v21 forKeyedSubscript:v20];

    ++self->_sectionIndex;
  }
}

- (id)nameItem
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"DETAIL_VIEW_SUBJECT_NAME_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  v5 = [(HKSignedClinicalDataRecord *)self->_record subject];
  v6 = [v5 fullName];
  v7 = [HKVerifiableClinicalRecordDisplayItem valueItemWithTitleText:v4 detailText:v6];

  return v7;
}

- (id)birthdayItem
{
  v2 = [(HKSignedClinicalDataRecord *)self->_record subject];
  v3 = [v2 birthDate];
  v4 = [v3 dateForUTC];
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [v4 hk_utcDateAdjustedToCalendar:v5];

  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"DETAIL_VIEW_SUBJECT_DOB_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  v9 = HKLocalizedStringForDateAndTemplate(v6, 10);
  v10 = [HKVerifiableClinicalRecordDisplayItem valueItemWithTitleText:v8 detailText:v9];

  return v10;
}

- (id)genderItem
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"DETAIL_VIEW_SUBJECT_GENDER_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  v5 = [(HKSignedClinicalDataRecord *)self->_record subject];
  v6 = [v5 gender];
  v7 = [HKVerifiableClinicalRecordDisplayItem valueItemWithTitleText:v4 detailText:v6];

  return v7;
}

- (id)emailAddressesItem
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"DETAIL_VIEW_SUBJECT_EMAIL_ADDRESSES_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  v5 = [(HKSignedClinicalDataRecord *)self->_record subject];
  v6 = [v5 emailAddresses];
  v7 = [v6 componentsJoinedByString:@"\n"];
  v8 = [HKVerifiableClinicalRecordDisplayItem valueItemWithTitleText:v4 detailText:v7];

  return v8;
}

- (id)phoneNumbersItem
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"DETAIL_VIEW_SUBJECT_PHONE_NUMBERS_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  v5 = [(HKSignedClinicalDataRecord *)self->_record subject];
  v6 = [v5 phoneNumbers];
  v7 = [v6 componentsJoinedByString:@"\n"];
  v8 = [HKVerifiableClinicalRecordDisplayItem valueItemWithTitleText:v4 detailText:v7];

  return v8;
}

- (id)addressesItem
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"DETAIL_VIEW_SUBJECT_ADDRESSES_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  v5 = [(HKSignedClinicalDataRecord *)self->_record subject];
  v6 = [v5 addresses];
  v7 = [v6 componentsJoinedByString:@"\n\n"];
  v8 = [HKVerifiableClinicalRecordDisplayItem valueItemWithTitleText:v4 detailText:v7];

  return v8;
}

- (id)maritalStatusItem
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"DETAIL_VIEW_SUBJECT_MARITAL_STATUS_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  v5 = [(HKSignedClinicalDataRecord *)self->_record subject];
  v6 = [v5 maritalStatus];
  v7 = [HKVerifiableClinicalRecordDisplayItem valueItemWithTitleText:v4 detailText:v6];

  return v7;
}

- (id)raceItem
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"DETAIL_VIEW_SUBJECT_RACE_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  v5 = [(HKSignedClinicalDataRecord *)self->_record subject];
  v6 = [v5 race];
  v7 = [HKVerifiableClinicalRecordDisplayItem valueItemWithTitleText:v4 detailText:v6];

  return v7;
}

- (id)ethnicityItem
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"DETAIL_VIEW_SUBJECT_ETHNICITY_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  v5 = [(HKSignedClinicalDataRecord *)self->_record subject];
  v6 = [v5 ethnicity];
  v7 = [HKVerifiableClinicalRecordDisplayItem valueItemWithTitleText:v4 detailText:v6];

  return v7;
}

- (id)birthSexItem
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"DETAIL_VIEW_SUBJECT_BIRTH_SEX_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  v5 = [(HKSignedClinicalDataRecord *)self->_record subject];
  v6 = [v5 birthSex];
  v7 = [HKVerifiableClinicalRecordDisplayItem valueItemWithTitleText:v4 detailText:v6];

  return v7;
}

- (id)identifiersItem
{
  v2 = [(HKSignedClinicalDataRecord *)self->_record subject];
  v3 = [v2 identifiers];
  v4 = [v3 hk_map:&__block_literal_global_387];

  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"DETAIL_VIEW_SUBJECT_IDENTIFIERS_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  v7 = [v4 componentsJoinedByString:@"\n"];
  v8 = [HKVerifiableClinicalRecordDisplayItem valueItemWithTitleText:v6 detailText:v7];

  return v8;
}

- (void)createRecordSections
{
  v28 = *MEMORY[0x1E69E9840];
  sectionIndex = self->_sectionIndex;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = self->_medicalRecords;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    v7 = 0x1E696A000uLL;
    do
    {
      v8 = 0;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v23 + 1) + 8 * v8) displayItems];
        if ([v9 count])
        {
          v10 = self->_sectionIndex;
          if (v10 == sectionIndex)
          {
            v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
            v21 = [v22 localizedStringForKey:@"DETAIL_VIEW_RECORDS_HEADER" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
            v11 = [v21 localizedUppercaseString];
            sectionHeaders = self->_sectionHeaders;
            [*(v7 + 3480) numberWithInteger:self->_sectionIndex];
            v13 = v7;
            v14 = v5;
            v15 = v6;
            v17 = v16 = sectionIndex;
            [(NSMutableDictionary *)sectionHeaders setObject:v11 forKeyedSubscript:v17];

            sectionIndex = v16;
            v6 = v15;
            v5 = v14;
            v7 = v13;

            v10 = self->_sectionIndex;
          }

          displayItems = self->_displayItems;
          v19 = [*(v7 + 3480) numberWithInteger:v10];
          [(NSMutableDictionary *)displayItems setObject:v9 forKeyedSubscript:v19];

          ++self->_sectionIndex;
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }
}

- (void)createVerificationItems
{
  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [(HKVerifiableClinicalRecordDetailDataProvider *)self sourceItem];
  [v18 hk_addNonNilObject:v3];

  v4 = [(HKVerifiableClinicalRecordDetailDataProvider *)self statusItem];
  [v18 hk_addNonNilObject:v4];

  v5 = [(HKVerifiableClinicalRecordDetailDataProvider *)self issuedItem];
  [v18 hk_addNonNilObject:v5];

  v6 = [(HKVerifiableClinicalRecordDetailDataProvider *)self expiresItem];
  [v18 hk_addNonNilObject:v6];

  if ([v18 count])
  {
    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v8 = [v7 localizedStringForKey:@"DETAIL_VIEW_VERIFICATION_HEADER" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
    v9 = [v8 localizedUppercaseString];
    sectionHeaders = self->_sectionHeaders;
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:self->_sectionIndex];
    [(NSMutableDictionary *)sectionHeaders setObject:v9 forKeyedSubscript:v11];

    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v13 = [v12 localizedStringForKey:@"DETAIL_VIEW_VERIFICATION_FOOTER" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
    sectionFooters = self->_sectionFooters;
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:self->_sectionIndex];
    [(NSMutableDictionary *)sectionFooters setObject:v13 forKeyedSubscript:v15];

    displayItems = self->_displayItems;
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:self->_sectionIndex];
    [(NSMutableDictionary *)displayItems setObject:v18 forKeyedSubscript:v17];
  }
}

- (id)sourceItem
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"DETAIL_VIEW_VERIFICATION_SOURCE_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  v5 = [(HKSignedClinicalDataRecord *)self->_record recordIssuerDisplayName];
  v6 = [HKVerifiableClinicalRecordDisplayItem valueItemWithTitleText:v4 detailText:v5];

  return v6;
}

- (id)statusItem
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"DETAIL_VIEW_VERIFICATION_STATUS_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  v5 = [(HKSignedClinicalDataRecord *)self->_record signatureStatusDisplayString];
  v6 = [HKVerifiableClinicalRecordDisplayItem valueItemWithTitleText:v4 attributedDetailText:v5];

  return v6;
}

- (id)issuedItem
{
  v2 = [(HKSignedClinicalDataRecord *)self->_record issuedDate];
  v3 = HKLocalizedStringForDateAndTemplate(v2, 10);

  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:@"DETAIL_VIEW_VERIFICATION_ISSUED_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  v6 = [HKVerifiableClinicalRecordDisplayItem valueItemWithTitleText:v5 detailText:v3];

  return v6;
}

- (id)expiresItem
{
  v2 = [(HKSignedClinicalDataRecord *)self->_record expirationDate];
  v3 = HKLocalizedStringForDateAndTemplate(v2, 10);

  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:@"DETAIL_VIEW_VERIFICATION_EXPIRES_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  v6 = [HKVerifiableClinicalRecordDisplayItem valueItemWithTitleText:v5 detailText:v3];

  return v6;
}

@end