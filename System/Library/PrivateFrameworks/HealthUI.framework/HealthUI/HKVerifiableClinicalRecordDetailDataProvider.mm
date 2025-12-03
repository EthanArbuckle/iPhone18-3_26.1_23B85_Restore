@interface HKVerifiableClinicalRecordDetailDataProvider
- (HKVerifiableClinicalRecordDetailDataProvider)initWithSignedRecord:(id)record medicalRecords:(id)records;
- (id)addressesItem;
- (id)birthSexItem;
- (id)birthdayItem;
- (id)displayItemForSection:(int64_t)section row:(int64_t)row;
- (id)emailAddressesItem;
- (id)ethnicityItem;
- (id)expiresItem;
- (id)footerForSection:(int64_t)section;
- (id)genderItem;
- (id)headerForSection:(int64_t)section;
- (id)identifiersItem;
- (id)issuedItem;
- (id)maritalStatusItem;
- (id)nameItem;
- (id)phoneNumbersItem;
- (id)raceItem;
- (id)sourceItem;
- (id)statusItem;
- (int64_t)numberOfRowsForSection:(int64_t)section;
- (int64_t)numberOfSections;
- (void)createDisplayItems;
- (void)createPersonalInfoItems;
- (void)createRecordSections;
- (void)createVerificationItems;
@end

@implementation HKVerifiableClinicalRecordDetailDataProvider

- (HKVerifiableClinicalRecordDetailDataProvider)initWithSignedRecord:(id)record medicalRecords:(id)records
{
  recordCopy = record;
  recordsCopy = records;
  v20.receiver = self;
  v20.super_class = HKVerifiableClinicalRecordDetailDataProvider;
  v9 = [(HKVerifiableClinicalRecordDetailDataProvider *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_record, record);
    v11 = [recordsCopy sortedArrayUsingComparator:&__block_literal_global_39];
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
  allKeys = [(NSMutableDictionary *)self->_displayItems allKeys];
  v3 = [allKeys count];

  return v3;
}

- (int64_t)numberOfRowsForSection:(int64_t)section
{
  displayItems = self->_displayItems;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:section];
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

- (id)headerForSection:(int64_t)section
{
  sectionHeaders = self->_sectionHeaders;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  v5 = [(NSMutableDictionary *)sectionHeaders objectForKeyedSubscript:v4];

  return v5;
}

- (id)footerForSection:(int64_t)section
{
  sectionFooters = self->_sectionFooters;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  v5 = [(NSMutableDictionary *)sectionFooters objectForKeyedSubscript:v4];

  return v5;
}

- (id)displayItemForSection:(int64_t)section row:(int64_t)row
{
  displayItems = [(HKVerifiableClinicalRecordDetailDataProvider *)self displayItems];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  v8 = [displayItems objectForKeyedSubscript:v7];

  v9 = [v8 objectAtIndexedSubscript:row];

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
  nameItem = [(HKVerifiableClinicalRecordDetailDataProvider *)self nameItem];
  [v21 hk_addNonNilObject:nameItem];

  birthdayItem = [(HKVerifiableClinicalRecordDetailDataProvider *)self birthdayItem];
  [v21 hk_addNonNilObject:birthdayItem];

  genderItem = [(HKVerifiableClinicalRecordDetailDataProvider *)self genderItem];
  [v21 hk_addNonNilObject:genderItem];

  emailAddressesItem = [(HKVerifiableClinicalRecordDetailDataProvider *)self emailAddressesItem];
  [v21 hk_addNonNilObject:emailAddressesItem];

  phoneNumbersItem = [(HKVerifiableClinicalRecordDetailDataProvider *)self phoneNumbersItem];
  [v21 hk_addNonNilObject:phoneNumbersItem];

  addressesItem = [(HKVerifiableClinicalRecordDetailDataProvider *)self addressesItem];
  [v21 hk_addNonNilObject:addressesItem];

  maritalStatusItem = [(HKVerifiableClinicalRecordDetailDataProvider *)self maritalStatusItem];
  [v21 hk_addNonNilObject:maritalStatusItem];

  raceItem = [(HKVerifiableClinicalRecordDetailDataProvider *)self raceItem];
  [v21 hk_addNonNilObject:raceItem];

  ethnicityItem = [(HKVerifiableClinicalRecordDetailDataProvider *)self ethnicityItem];
  [v21 hk_addNonNilObject:ethnicityItem];

  birthSexItem = [(HKVerifiableClinicalRecordDetailDataProvider *)self birthSexItem];
  [v21 hk_addNonNilObject:birthSexItem];

  identifiersItem = [(HKVerifiableClinicalRecordDetailDataProvider *)self identifiersItem];
  [v21 hk_addNonNilObject:identifiersItem];

  if ([v21 count])
  {
    v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v15 = [v14 localizedStringForKey:@"DETAIL_VIEW_SUBJECT_HEADER" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
    localizedUppercaseString = [v15 localizedUppercaseString];
    sectionHeaders = self->_sectionHeaders;
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:self->_sectionIndex];
    [(NSMutableDictionary *)sectionHeaders setObject:localizedUppercaseString forKeyedSubscript:v18];

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
  subject = [(HKSignedClinicalDataRecord *)self->_record subject];
  fullName = [subject fullName];
  v7 = [HKVerifiableClinicalRecordDisplayItem valueItemWithTitleText:v4 detailText:fullName];

  return v7;
}

- (id)birthdayItem
{
  subject = [(HKSignedClinicalDataRecord *)self->_record subject];
  birthDate = [subject birthDate];
  dateForUTC = [birthDate dateForUTC];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [dateForUTC hk_utcDateAdjustedToCalendar:currentCalendar];

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
  subject = [(HKSignedClinicalDataRecord *)self->_record subject];
  gender = [subject gender];
  v7 = [HKVerifiableClinicalRecordDisplayItem valueItemWithTitleText:v4 detailText:gender];

  return v7;
}

- (id)emailAddressesItem
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"DETAIL_VIEW_SUBJECT_EMAIL_ADDRESSES_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  subject = [(HKSignedClinicalDataRecord *)self->_record subject];
  emailAddresses = [subject emailAddresses];
  v7 = [emailAddresses componentsJoinedByString:@"\n"];
  v8 = [HKVerifiableClinicalRecordDisplayItem valueItemWithTitleText:v4 detailText:v7];

  return v8;
}

- (id)phoneNumbersItem
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"DETAIL_VIEW_SUBJECT_PHONE_NUMBERS_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  subject = [(HKSignedClinicalDataRecord *)self->_record subject];
  phoneNumbers = [subject phoneNumbers];
  v7 = [phoneNumbers componentsJoinedByString:@"\n"];
  v8 = [HKVerifiableClinicalRecordDisplayItem valueItemWithTitleText:v4 detailText:v7];

  return v8;
}

- (id)addressesItem
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"DETAIL_VIEW_SUBJECT_ADDRESSES_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  subject = [(HKSignedClinicalDataRecord *)self->_record subject];
  addresses = [subject addresses];
  v7 = [addresses componentsJoinedByString:@"\n\n"];
  v8 = [HKVerifiableClinicalRecordDisplayItem valueItemWithTitleText:v4 detailText:v7];

  return v8;
}

- (id)maritalStatusItem
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"DETAIL_VIEW_SUBJECT_MARITAL_STATUS_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  subject = [(HKSignedClinicalDataRecord *)self->_record subject];
  maritalStatus = [subject maritalStatus];
  v7 = [HKVerifiableClinicalRecordDisplayItem valueItemWithTitleText:v4 detailText:maritalStatus];

  return v7;
}

- (id)raceItem
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"DETAIL_VIEW_SUBJECT_RACE_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  subject = [(HKSignedClinicalDataRecord *)self->_record subject];
  race = [subject race];
  v7 = [HKVerifiableClinicalRecordDisplayItem valueItemWithTitleText:v4 detailText:race];

  return v7;
}

- (id)ethnicityItem
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"DETAIL_VIEW_SUBJECT_ETHNICITY_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  subject = [(HKSignedClinicalDataRecord *)self->_record subject];
  ethnicity = [subject ethnicity];
  v7 = [HKVerifiableClinicalRecordDisplayItem valueItemWithTitleText:v4 detailText:ethnicity];

  return v7;
}

- (id)birthSexItem
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"DETAIL_VIEW_SUBJECT_BIRTH_SEX_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  subject = [(HKSignedClinicalDataRecord *)self->_record subject];
  birthSex = [subject birthSex];
  v7 = [HKVerifiableClinicalRecordDisplayItem valueItemWithTitleText:v4 detailText:birthSex];

  return v7;
}

- (id)identifiersItem
{
  subject = [(HKSignedClinicalDataRecord *)self->_record subject];
  identifiers = [subject identifiers];
  v4 = [identifiers hk_map:&__block_literal_global_387];

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

        displayItems = [*(*(&v23 + 1) + 8 * v8) displayItems];
        if ([displayItems count])
        {
          v10 = self->_sectionIndex;
          if (v10 == sectionIndex)
          {
            v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
            v21 = [v22 localizedStringForKey:@"DETAIL_VIEW_RECORDS_HEADER" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
            localizedUppercaseString = [v21 localizedUppercaseString];
            sectionHeaders = self->_sectionHeaders;
            [*(v7 + 3480) numberWithInteger:self->_sectionIndex];
            v13 = v7;
            v14 = v5;
            v15 = v6;
            v17 = v16 = sectionIndex;
            [(NSMutableDictionary *)sectionHeaders setObject:localizedUppercaseString forKeyedSubscript:v17];

            sectionIndex = v16;
            v6 = v15;
            v5 = v14;
            v7 = v13;

            v10 = self->_sectionIndex;
          }

          displayItems = self->_displayItems;
          v19 = [*(v7 + 3480) numberWithInteger:v10];
          [(NSMutableDictionary *)displayItems setObject:displayItems forKeyedSubscript:v19];

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
  sourceItem = [(HKVerifiableClinicalRecordDetailDataProvider *)self sourceItem];
  [v18 hk_addNonNilObject:sourceItem];

  statusItem = [(HKVerifiableClinicalRecordDetailDataProvider *)self statusItem];
  [v18 hk_addNonNilObject:statusItem];

  issuedItem = [(HKVerifiableClinicalRecordDetailDataProvider *)self issuedItem];
  [v18 hk_addNonNilObject:issuedItem];

  expiresItem = [(HKVerifiableClinicalRecordDetailDataProvider *)self expiresItem];
  [v18 hk_addNonNilObject:expiresItem];

  if ([v18 count])
  {
    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v8 = [v7 localizedStringForKey:@"DETAIL_VIEW_VERIFICATION_HEADER" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
    localizedUppercaseString = [v8 localizedUppercaseString];
    sectionHeaders = self->_sectionHeaders;
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:self->_sectionIndex];
    [(NSMutableDictionary *)sectionHeaders setObject:localizedUppercaseString forKeyedSubscript:v11];

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
  recordIssuerDisplayName = [(HKSignedClinicalDataRecord *)self->_record recordIssuerDisplayName];
  v6 = [HKVerifiableClinicalRecordDisplayItem valueItemWithTitleText:v4 detailText:recordIssuerDisplayName];

  return v6;
}

- (id)statusItem
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"DETAIL_VIEW_VERIFICATION_STATUS_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  signatureStatusDisplayString = [(HKSignedClinicalDataRecord *)self->_record signatureStatusDisplayString];
  v6 = [HKVerifiableClinicalRecordDisplayItem valueItemWithTitleText:v4 attributedDetailText:signatureStatusDisplayString];

  return v6;
}

- (id)issuedItem
{
  issuedDate = [(HKSignedClinicalDataRecord *)self->_record issuedDate];
  v3 = HKLocalizedStringForDateAndTemplate(issuedDate, 10);

  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:@"DETAIL_VIEW_VERIFICATION_ISSUED_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  v6 = [HKVerifiableClinicalRecordDisplayItem valueItemWithTitleText:v5 detailText:v3];

  return v6;
}

- (id)expiresItem
{
  expirationDate = [(HKSignedClinicalDataRecord *)self->_record expirationDate];
  v3 = HKLocalizedStringForDateAndTemplate(expirationDate, 10);

  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:@"DETAIL_VIEW_VERIFICATION_EXPIRES_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  v6 = [HKVerifiableClinicalRecordDisplayItem valueItemWithTitleText:v5 detailText:v3];

  return v6;
}

@end