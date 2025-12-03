@interface _HKMedicalIDData(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (HDCodableMedicalIDData)codableRepresentationForSync;
@end

@implementation _HKMedicalIDData(HDCodingSupport)

- (HDCodableMedicalIDData)codableRepresentationForSync
{
  v151 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(HDCodableMedicalIDData);
  -[HDCodableMedicalIDData setIsDisabled:](v2, "setIsDisabled:", [self isDisabled]);
  isDisabledModifiedDate = [self isDisabledModifiedDate];

  if (isDisabledModifiedDate)
  {
    isDisabledModifiedDate2 = [self isDisabledModifiedDate];
    [isDisabledModifiedDate2 timeIntervalSinceReferenceDate];
    [(HDCodableMedicalIDData *)v2 setIsDisabledModifiedDate:?];
  }

  -[HDCodableMedicalIDData setShareDuringEmergency:](v2, "setShareDuringEmergency:", [self shareDuringEmergency]);
  shareDuringEmergencyModifiedDate = [self shareDuringEmergencyModifiedDate];

  if (shareDuringEmergencyModifiedDate)
  {
    shareDuringEmergencyModifiedDate2 = [self shareDuringEmergencyModifiedDate];
    [shareDuringEmergencyModifiedDate2 timeIntervalSinceReferenceDate];
    [(HDCodableMedicalIDData *)v2 setShareDuringEmergencyModifiedDate:?];
  }

  pictureData = [self pictureData];
  [(HDCodableMedicalIDData *)v2 setPictureData:pictureData];

  pictureDataModifiedDate = [self pictureDataModifiedDate];

  if (pictureDataModifiedDate)
  {
    pictureDataModifiedDate2 = [self pictureDataModifiedDate];
    [pictureDataModifiedDate2 timeIntervalSinceReferenceDate];
    [(HDCodableMedicalIDData *)v2 setPictureDataModifiedDate:?];
  }

  name = [self name];
  [(HDCodableMedicalIDData *)v2 setName:name];

  nameModifiedDate = [self nameModifiedDate];

  if (nameModifiedDate)
  {
    nameModifiedDate2 = [self nameModifiedDate];
    [nameModifiedDate2 timeIntervalSinceReferenceDate];
    [(HDCodableMedicalIDData *)v2 setNameModifiedDate:?];
  }

  gregorianBirthday = [self gregorianBirthday];
  v14 = [gregorianBirthday hk_codableDateComponentsForCalendarUnits:*MEMORY[0x277CCDEB0]];
  [(HDCodableMedicalIDData *)v2 setGregorianBirthday:v14];

  gregorianBirthdayModifiedDate = [self gregorianBirthdayModifiedDate];

  if (gregorianBirthdayModifiedDate)
  {
    gregorianBirthdayModifiedDate2 = [self gregorianBirthdayModifiedDate];
    [gregorianBirthdayModifiedDate2 timeIntervalSinceReferenceDate];
    [(HDCodableMedicalIDData *)v2 setGregorianBirthdayModifiedDate:?];
  }

  primaryLanguageCode = [self primaryLanguageCode];
  [(HDCodableMedicalIDData *)v2 setPrimaryLanguageCode:primaryLanguageCode];

  primaryLanguageCodeModifiedDate = [self primaryLanguageCodeModifiedDate];

  if (primaryLanguageCodeModifiedDate)
  {
    primaryLanguageCodeModifiedDate2 = [self primaryLanguageCodeModifiedDate];
    [primaryLanguageCodeModifiedDate2 timeIntervalSinceReferenceDate];
    [(HDCodableMedicalIDData *)v2 setPrimaryLanguageCodeModifiedDate:?];
  }

  height = [self height];
  codableRepresentationForSync = [height codableRepresentationForSync];
  [(HDCodableMedicalIDData *)v2 setHeight:codableRepresentationForSync];

  heightModifiedDate = [self heightModifiedDate];

  if (heightModifiedDate)
  {
    heightModifiedDate2 = [self heightModifiedDate];
    [heightModifiedDate2 timeIntervalSinceReferenceDate];
    [(HDCodableMedicalIDData *)v2 setHeightModifiedDate:?];
  }

  weight = [self weight];
  codableRepresentationForSync2 = [weight codableRepresentationForSync];
  [(HDCodableMedicalIDData *)v2 setWeight:codableRepresentationForSync2];

  weightModifiedDate = [self weightModifiedDate];

  if (weightModifiedDate)
  {
    weightModifiedDate2 = [self weightModifiedDate];
    [weightModifiedDate2 timeIntervalSinceReferenceDate];
    [(HDCodableMedicalIDData *)v2 setWeightModifiedDate:?];
  }

  -[HDCodableMedicalIDData setBloodType:](v2, "setBloodType:", [self bloodType]);
  bloodTypeModifiedDate = [self bloodTypeModifiedDate];

  if (bloodTypeModifiedDate)
  {
    bloodTypeModifiedDate2 = [self bloodTypeModifiedDate];
    [bloodTypeModifiedDate2 timeIntervalSinceReferenceDate];
    [(HDCodableMedicalIDData *)v2 setBloodTypeModifiedDate:?];
  }

  isOrganDonor = [self isOrganDonor];

  if (isOrganDonor)
  {
    isOrganDonor2 = [self isOrganDonor];
    -[HDCodableMedicalIDData setIsOrganDonor:](v2, "setIsOrganDonor:", [isOrganDonor2 longLongValue]);
  }

  isOrganDonorModifiedDate = [self isOrganDonorModifiedDate];

  if (isOrganDonorModifiedDate)
  {
    isOrganDonorModifiedDate2 = [self isOrganDonorModifiedDate];
    [isOrganDonorModifiedDate2 timeIntervalSinceReferenceDate];
    [(HDCodableMedicalIDData *)v2 setIsOrganDonorModifiedDate:?];
  }

  emergencyContacts = [self emergencyContacts];
  v35 = [emergencyContacts count];

  if (v35)
  {
    v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v142 = 0u;
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    emergencyContacts2 = [self emergencyContacts];
    v38 = [emergencyContacts2 countByEnumeratingWithState:&v142 objects:v150 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v143;
      do
      {
        v41 = 0;
        do
        {
          if (*v143 != v40)
          {
            objc_enumerationMutation(emergencyContacts2);
          }

          codableRepresentationForSync3 = [*(*(&v142 + 1) + 8 * v41) codableRepresentationForSync];
          [v36 addObject:codableRepresentationForSync3];

          ++v41;
        }

        while (v39 != v41);
        v39 = [emergencyContacts2 countByEnumeratingWithState:&v142 objects:v150 count:16];
      }

      while (v39);
    }

    [(HDCodableMedicalIDData *)v2 setEmergencyContacts:v36];
  }

  emergencyContactsModifiedDate = [self emergencyContactsModifiedDate];

  if (emergencyContactsModifiedDate)
  {
    emergencyContactsModifiedDate2 = [self emergencyContactsModifiedDate];
    [emergencyContactsModifiedDate2 timeIntervalSinceReferenceDate];
    [(HDCodableMedicalIDData *)v2 setEmergencyContactsModifiedDate:?];
  }

  clinicalContacts = [self clinicalContacts];
  v46 = [clinicalContacts count];

  if (v46)
  {
    v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    clinicalContacts2 = [self clinicalContacts];
    v49 = [clinicalContacts2 countByEnumeratingWithState:&v138 objects:v149 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v139;
      do
      {
        v52 = 0;
        do
        {
          if (*v139 != v51)
          {
            objc_enumerationMutation(clinicalContacts2);
          }

          codableRepresentationForSync4 = [*(*(&v138 + 1) + 8 * v52) codableRepresentationForSync];
          [v47 addObject:codableRepresentationForSync4];

          ++v52;
        }

        while (v50 != v52);
        v50 = [clinicalContacts2 countByEnumeratingWithState:&v138 objects:v149 count:16];
      }

      while (v50);
    }

    [(HDCodableMedicalIDData *)v2 setClinicalContacts:v47];
  }

  clinicalContactsModifiedDate = [self clinicalContactsModifiedDate];

  if (clinicalContactsModifiedDate)
  {
    clinicalContactsModifiedDate2 = [self clinicalContactsModifiedDate];
    [clinicalContactsModifiedDate2 timeIntervalSinceReferenceDate];
    [(HDCodableMedicalIDData *)v2 setClinicalContactsModifiedDate:?];
  }

  medicalConditions = [self medicalConditions];
  [(HDCodableMedicalIDData *)v2 setMedicalConditions:medicalConditions];

  medicalConditionsModifiedDate = [self medicalConditionsModifiedDate];

  if (medicalConditionsModifiedDate)
  {
    medicalConditionsModifiedDate2 = [self medicalConditionsModifiedDate];
    [medicalConditionsModifiedDate2 timeIntervalSinceReferenceDate];
    [(HDCodableMedicalIDData *)v2 setMedicalConditionsModifiedDate:?];
  }

  medicalNotes = [self medicalNotes];
  [(HDCodableMedicalIDData *)v2 setMedicalNotes:medicalNotes];

  medicalNotesModifiedDate = [self medicalNotesModifiedDate];

  if (medicalNotesModifiedDate)
  {
    medicalNotesModifiedDate2 = [self medicalNotesModifiedDate];
    [medicalNotesModifiedDate2 timeIntervalSinceReferenceDate];
    [(HDCodableMedicalIDData *)v2 setMedicalNotesModifiedDate:?];
  }

  allergyInfo = [self allergyInfo];
  [(HDCodableMedicalIDData *)v2 setAllergyInfo:allergyInfo];

  allergyInfoModifiedDate = [self allergyInfoModifiedDate];

  if (allergyInfoModifiedDate)
  {
    allergyInfoModifiedDate2 = [self allergyInfoModifiedDate];
    [allergyInfoModifiedDate2 timeIntervalSinceReferenceDate];
    [(HDCodableMedicalIDData *)v2 setAllergyInfoModifiedDate:?];
  }

  medicationInfo = [self medicationInfo];
  [(HDCodableMedicalIDData *)v2 setMedicationInfo:medicationInfo];

  medicationInfoModifiedDate = [self medicationInfoModifiedDate];

  if (medicationInfoModifiedDate)
  {
    medicationInfoModifiedDate2 = [self medicationInfoModifiedDate];
    [medicationInfoModifiedDate2 timeIntervalSinceReferenceDate];
    [(HDCodableMedicalIDData *)v2 setMedicationInfoModifiedDate:?];
  }

  pregnancyStartDate = [self pregnancyStartDate];

  if (pregnancyStartDate)
  {
    pregnancyStartDate2 = [self pregnancyStartDate];
    [pregnancyStartDate2 timeIntervalSinceReferenceDate];
    [(HDCodableMedicalIDData *)v2 setPregnancyStartDate:?];
  }

  pregnancyStartDateModifiedDate = [self pregnancyStartDateModifiedDate];

  if (pregnancyStartDateModifiedDate)
  {
    pregnancyStartDateModifiedDate2 = [self pregnancyStartDateModifiedDate];
    [pregnancyStartDateModifiedDate2 timeIntervalSinceReferenceDate];
    [(HDCodableMedicalIDData *)v2 setPregnancyStartDateModifiedDate:?];
  }

  pregnancyEstimatedDueDate = [self pregnancyEstimatedDueDate];

  if (pregnancyEstimatedDueDate)
  {
    pregnancyEstimatedDueDate2 = [self pregnancyEstimatedDueDate];
    [pregnancyEstimatedDueDate2 timeIntervalSinceReferenceDate];
    [(HDCodableMedicalIDData *)v2 setPregnancyEstimatedDueDate:?];
  }

  pregnancyEstimatedDueDateModifiedDate = [self pregnancyEstimatedDueDateModifiedDate];

  if (pregnancyEstimatedDueDateModifiedDate)
  {
    pregnancyEstimatedDueDateModifiedDate2 = [self pregnancyEstimatedDueDateModifiedDate];
    [pregnancyEstimatedDueDateModifiedDate2 timeIntervalSinceReferenceDate];
    [(HDCodableMedicalIDData *)v2 setPregnancyEstimatedDueDateModifiedDate:?];
  }

  medicationsList = [self medicationsList];
  v77 = [medicationsList count];

  if (v77)
  {
    v78 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    medicationsList2 = [self medicationsList];
    v80 = [medicationsList2 countByEnumeratingWithState:&v134 objects:v148 count:16];
    if (v80)
    {
      v81 = v80;
      v82 = *v135;
      do
      {
        v83 = 0;
        do
        {
          if (*v135 != v82)
          {
            objc_enumerationMutation(medicationsList2);
          }

          codableRepresentationForSync5 = [*(*(&v134 + 1) + 8 * v83) codableRepresentationForSync];
          [v78 addObject:codableRepresentationForSync5];

          ++v83;
        }

        while (v81 != v83);
        v81 = [medicationsList2 countByEnumeratingWithState:&v134 objects:v148 count:16];
      }

      while (v81);
    }

    [(HDCodableMedicalIDData *)v2 setMedicationsLists:v78];
  }

  medicationsListModifiedDate = [self medicationsListModifiedDate];

  if (medicationsListModifiedDate)
  {
    medicationsListModifiedDate2 = [self medicationsListModifiedDate];
    [medicationsListModifiedDate2 timeIntervalSinceReferenceDate];
    [(HDCodableMedicalIDData *)v2 setMedicationsListModifiedDate:?];
  }

  medicationsListVersion = [self medicationsListVersion];

  if (medicationsListVersion)
  {
    medicationsListVersion2 = [self medicationsListVersion];
    -[HDCodableMedicalIDData setMedicationsListVersion:](v2, "setMedicationsListVersion:", [medicationsListVersion2 longLongValue]);
  }

  medicationsListVersionModifiedDate = [self medicationsListVersionModifiedDate];

  if (medicationsListVersionModifiedDate)
  {
    medicationsListVersionModifiedDate2 = [self medicationsListVersionModifiedDate];
    [medicationsListVersionModifiedDate2 timeIntervalSinceReferenceDate];
    [(HDCodableMedicalIDData *)v2 setMedicationsListVersionModifiedDate:?];
  }

  allergiesList = [self allergiesList];
  v92 = [allergiesList count];

  if (v92)
  {
    v93 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    allergiesList2 = [self allergiesList];
    v95 = [allergiesList2 countByEnumeratingWithState:&v130 objects:v147 count:16];
    if (v95)
    {
      v96 = v95;
      v97 = *v131;
      do
      {
        v98 = 0;
        do
        {
          if (*v131 != v97)
          {
            objc_enumerationMutation(allergiesList2);
          }

          codableRepresentationForSync6 = [*(*(&v130 + 1) + 8 * v98) codableRepresentationForSync];
          [v93 addObject:codableRepresentationForSync6];

          ++v98;
        }

        while (v96 != v98);
        v96 = [allergiesList2 countByEnumeratingWithState:&v130 objects:v147 count:16];
      }

      while (v96);
    }

    [(HDCodableMedicalIDData *)v2 setAllergiesLists:v93];
  }

  allergiesListModifiedDate = [self allergiesListModifiedDate];

  if (allergiesListModifiedDate)
  {
    allergiesListModifiedDate2 = [self allergiesListModifiedDate];
    [allergiesListModifiedDate2 timeIntervalSinceReferenceDate];
    [(HDCodableMedicalIDData *)v2 setAllergiesListModifiedDate:?];
  }

  allergiesListVersion = [self allergiesListVersion];

  if (allergiesListVersion)
  {
    allergiesListVersion2 = [self allergiesListVersion];
    -[HDCodableMedicalIDData setAllergiesListVersion:](v2, "setAllergiesListVersion:", [allergiesListVersion2 longLongValue]);
  }

  allergiesListVersionModifiedDate = [self allergiesListVersionModifiedDate];

  if (allergiesListVersionModifiedDate)
  {
    allergiesListVersionModifiedDate2 = [self allergiesListVersionModifiedDate];
    [allergiesListVersionModifiedDate2 timeIntervalSinceReferenceDate];
    [(HDCodableMedicalIDData *)v2 setAllergiesListVersionModifiedDate:?];
  }

  conditionsList = [self conditionsList];
  v107 = [conditionsList count];

  if (v107)
  {
    v108 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    conditionsList2 = [self conditionsList];
    v110 = [conditionsList2 countByEnumeratingWithState:&v126 objects:v146 count:16];
    if (v110)
    {
      v111 = v110;
      v112 = *v127;
      do
      {
        v113 = 0;
        do
        {
          if (*v127 != v112)
          {
            objc_enumerationMutation(conditionsList2);
          }

          codableRepresentationForSync7 = [*(*(&v126 + 1) + 8 * v113) codableRepresentationForSync];
          [v108 addObject:codableRepresentationForSync7];

          ++v113;
        }

        while (v111 != v113);
        v111 = [conditionsList2 countByEnumeratingWithState:&v126 objects:v146 count:16];
      }

      while (v111);
    }

    [(HDCodableMedicalIDData *)v2 setConditionsLists:v108];
  }

  conditionsListModifiedDate = [self conditionsListModifiedDate];

  if (conditionsListModifiedDate)
  {
    conditionsListModifiedDate2 = [self conditionsListModifiedDate];
    [conditionsListModifiedDate2 timeIntervalSinceReferenceDate];
    [(HDCodableMedicalIDData *)v2 setConditionsListModifiedDate:?];
  }

  conditionsListVersion = [self conditionsListVersion];

  if (conditionsListVersion)
  {
    conditionsListVersion2 = [self conditionsListVersion];
    -[HDCodableMedicalIDData setConditionsListVersion:](v2, "setConditionsListVersion:", [conditionsListVersion2 longLongValue]);
  }

  conditionsListVersionModifiedDate = [self conditionsListVersionModifiedDate];

  if (conditionsListVersionModifiedDate)
  {
    conditionsListVersionModifiedDate2 = [self conditionsListVersionModifiedDate];
    [conditionsListVersionModifiedDate2 timeIntervalSinceReferenceDate];
    [(HDCodableMedicalIDData *)v2 setConditionsListVersionModifiedDate:?];
  }

  dateSaved = [self dateSaved];

  if (dateSaved)
  {
    dateSaved2 = [self dateSaved];
    [dateSaved2 timeIntervalSinceReferenceDate];
    [(HDCodableMedicalIDData *)v2 setDateSaved:?];
  }

  v123 = v2;

  v124 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (id)createWithCodable:()HDCodingSupport
{
  v127 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = objc_alloc_init(MEMORY[0x277CCDDF0]);
    [v5 setIsDisabled:{objc_msgSend(v4, "isDisabled")}];
    if ([v4 hasIsDisabledModifiedDate])
    {
      [v4 isDisabledModifiedDate];
      v6 = HDDecodeDateForValue();
      [v5 setIsDisabledModifiedDate:v6];
    }

    else
    {
      [v5 setIsDisabledModifiedDate:0];
    }

    [v5 setShareDuringEmergency:{objc_msgSend(v4, "shareDuringEmergency")}];
    if ([v4 hasShareDuringEmergencyModifiedDate])
    {
      [v4 shareDuringEmergencyModifiedDate];
      v8 = HDDecodeDateForValue();
      [v5 setShareDuringEmergencyModifiedDate:v8];
    }

    else
    {
      [v5 setShareDuringEmergencyModifiedDate:0];
    }

    pictureData = [v4 pictureData];
    [v5 setPictureData:pictureData];

    if ([v4 hasPictureDataModifiedDate])
    {
      [v4 pictureDataModifiedDate];
      v10 = HDDecodeDateForValue();
      [v5 setPictureDataModifiedDate:v10];
    }

    else
    {
      [v5 setPictureDataModifiedDate:0];
    }

    name = [v4 name];
    [v5 setName:name];

    if ([v4 hasNameModifiedDate])
    {
      [v4 nameModifiedDate];
      v12 = HDDecodeDateForValue();
      [v5 setNameModifiedDate:v12];
    }

    else
    {
      [v5 setNameModifiedDate:0];
    }

    v13 = MEMORY[0x277CBEAB8];
    gregorianBirthday = [v4 gregorianBirthday];
    v15 = [v13 hk_dateComponentsWithCodableDateComponents:gregorianBirthday calendarUnits:*MEMORY[0x277CCDEB0]];
    [v5 setGregorianBirthday:v15];

    if ([v4 hasGregorianBirthdayModifiedDate])
    {
      [v4 gregorianBirthdayModifiedDate];
      v16 = HDDecodeDateForValue();
      [v5 setGregorianBirthdayModifiedDate:v16];
    }

    else
    {
      [v5 setGregorianBirthdayModifiedDate:0];
    }

    primaryLanguageCode = [v4 primaryLanguageCode];
    [v5 setPrimaryLanguageCode:primaryLanguageCode];

    if ([v4 hasPrimaryLanguageCodeModifiedDate])
    {
      [v4 primaryLanguageCodeModifiedDate];
      v18 = HDDecodeDateForValue();
      [v5 setPrimaryLanguageCodeModifiedDate:v18];
    }

    else
    {
      [v5 setPrimaryLanguageCodeModifiedDate:0];
    }

    v19 = MEMORY[0x277CCD7E8];
    height = [v4 height];
    v21 = [v19 createWithCodable:height];
    [v5 setHeight:v21];

    if ([v4 hasHeightModifiedDate])
    {
      [v4 heightModifiedDate];
      v22 = HDDecodeDateForValue();
      [v5 setHeightModifiedDate:v22];
    }

    else
    {
      [v5 setHeightModifiedDate:0];
    }

    v23 = MEMORY[0x277CCD7E8];
    weight = [v4 weight];
    v25 = [v23 createWithCodable:weight];
    [v5 setWeight:v25];

    if ([v4 hasWeightModifiedDate])
    {
      [v4 weightModifiedDate];
      v26 = HDDecodeDateForValue();
      [v5 setWeightModifiedDate:v26];
    }

    else
    {
      [v5 setWeightModifiedDate:0];
    }

    if ([v4 hasBloodType])
    {
      bloodType = [v4 bloodType];
    }

    else
    {
      bloodType = 0;
    }

    [v5 setBloodType:bloodType];
    if ([v4 hasBloodTypeModifiedDate])
    {
      [v4 bloodTypeModifiedDate];
      v28 = HDDecodeDateForValue();
      [v5 setBloodTypeModifiedDate:v28];
    }

    else
    {
      [v5 setBloodTypeModifiedDate:0];
    }

    if ([v4 hasIsOrganDonor])
    {
      v29 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v4, "isOrganDonor")}];
      [v5 setIsOrganDonor:v29];
    }

    else
    {
      [v5 setIsOrganDonor:0];
    }

    if ([v4 hasIsOrganDonorModifiedDate])
    {
      [v4 isOrganDonorModifiedDate];
      v30 = HDDecodeDateForValue();
      [v5 setIsOrganDonorModifiedDate:v30];
    }

    else
    {
      [v5 setIsOrganDonorModifiedDate:0];
    }

    emergencyContacts = [v4 emergencyContacts];
    v32 = [emergencyContacts count];

    if (v32)
    {
      v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v118 = 0u;
      v119 = 0u;
      v120 = 0u;
      v121 = 0u;
      emergencyContacts2 = [v4 emergencyContacts];
      v35 = [emergencyContacts2 countByEnumeratingWithState:&v118 objects:v126 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v119;
        do
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v119 != v37)
            {
              objc_enumerationMutation(emergencyContacts2);
            }

            v39 = [MEMORY[0x277CCDDA0] createWithCodable:*(*(&v118 + 1) + 8 * i)];
            [v33 addObject:v39];
          }

          v36 = [emergencyContacts2 countByEnumeratingWithState:&v118 objects:v126 count:16];
        }

        while (v36);
      }

      [v5 setEmergencyContacts:v33];
    }

    if ([v4 hasEmergencyContactsModifiedDate])
    {
      [v4 emergencyContactsModifiedDate];
      v40 = HDDecodeDateForValue();
      [v5 setEmergencyContactsModifiedDate:v40];
    }

    else
    {
      [v5 setEmergencyContactsModifiedDate:0];
    }

    clinicalContacts = [v4 clinicalContacts];
    v42 = [clinicalContacts count];

    if (v42)
    {
      v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v114 = 0u;
      v115 = 0u;
      v116 = 0u;
      v117 = 0u;
      clinicalContacts2 = [v4 clinicalContacts];
      v45 = [clinicalContacts2 countByEnumeratingWithState:&v114 objects:v125 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v115;
        do
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v115 != v47)
            {
              objc_enumerationMutation(clinicalContacts2);
            }

            v49 = [MEMORY[0x277CCDD40] createWithCodable:*(*(&v114 + 1) + 8 * j)];
            [v43 addObject:v49];
          }

          v46 = [clinicalContacts2 countByEnumeratingWithState:&v114 objects:v125 count:16];
        }

        while (v46);
      }

      [v5 setClinicalContacts:v43];
    }

    if ([v4 hasClinicalContactsModifiedDate])
    {
      [v4 clinicalContactsModifiedDate];
      v50 = HDDecodeDateForValue();
      [v5 setClinicalContactsModifiedDate:v50];
    }

    else
    {
      [v5 setClinicalContactsModifiedDate:0];
    }

    medicalConditions = [v4 medicalConditions];
    [v5 setMedicalConditions:medicalConditions];

    if ([v4 hasMedicalConditionsModifiedDate])
    {
      [v4 medicalConditionsModifiedDate];
      v52 = HDDecodeDateForValue();
      [v5 setMedicalConditionsModifiedDate:v52];
    }

    else
    {
      [v5 setMedicalConditionsModifiedDate:0];
    }

    medicalNotes = [v4 medicalNotes];
    [v5 setMedicalNotes:medicalNotes];

    if ([v4 hasMedicalNotesModifiedDate])
    {
      [v4 medicalNotesModifiedDate];
      v54 = HDDecodeDateForValue();
      [v5 setMedicalNotesModifiedDate:v54];
    }

    else
    {
      [v5 setMedicalNotesModifiedDate:0];
    }

    allergyInfo = [v4 allergyInfo];
    [v5 setAllergyInfo:allergyInfo];

    if ([v4 hasAllergyInfoModifiedDate])
    {
      [v4 allergyInfoModifiedDate];
      v56 = HDDecodeDateForValue();
      [v5 setAllergyInfoModifiedDate:v56];
    }

    else
    {
      [v5 setAllergyInfoModifiedDate:0];
    }

    medicationInfo = [v4 medicationInfo];
    [v5 setMedicationInfo:medicationInfo];

    if ([v4 hasMedicationInfoModifiedDate])
    {
      [v4 medicationInfoModifiedDate];
      v58 = HDDecodeDateForValue();
      [v5 setMedicationInfoModifiedDate:v58];
    }

    else
    {
      [v5 setMedicationInfoModifiedDate:0];
    }

    if ([v4 hasPregnancyStartDate])
    {
      [v4 pregnancyStartDate];
      v59 = HDDecodeDateForValue();
      [v5 setPregnancyStartDate:v59];
    }

    else
    {
      [v5 setPregnancyStartDate:0];
    }

    if ([v4 hasPregnancyStartDateModifiedDate])
    {
      [v4 pregnancyStartDateModifiedDate];
      v60 = HDDecodeDateForValue();
      [v5 setPregnancyStartDateModifiedDate:v60];
    }

    else
    {
      [v5 setPregnancyStartDateModifiedDate:0];
    }

    if ([v4 hasPregnancyEstimatedDueDate])
    {
      [v4 pregnancyEstimatedDueDate];
      v61 = HDDecodeDateForValue();
      [v5 setPregnancyEstimatedDueDate:v61];
    }

    else
    {
      [v5 setPregnancyEstimatedDueDate:0];
    }

    if ([v4 hasPregnancyEstimatedDueDateModifiedDate])
    {
      [v4 pregnancyEstimatedDueDateModifiedDate];
      v62 = HDDecodeDateForValue();
      [v5 setPregnancyEstimatedDueDateModifiedDate:v62];
    }

    else
    {
      [v5 setPregnancyEstimatedDueDateModifiedDate:0];
    }

    medicationsLists = [v4 medicationsLists];
    v64 = [medicationsLists count];

    if (v64)
    {
      v65 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v110 = 0u;
      v111 = 0u;
      v112 = 0u;
      v113 = 0u;
      medicationsLists2 = [v4 medicationsLists];
      v67 = [medicationsLists2 countByEnumeratingWithState:&v110 objects:v124 count:16];
      if (v67)
      {
        v68 = v67;
        v69 = *v111;
        do
        {
          for (k = 0; k != v68; ++k)
          {
            if (*v111 != v69)
            {
              objc_enumerationMutation(medicationsLists2);
            }

            v71 = [MEMORY[0x277CCDDF8] createWithCodable:*(*(&v110 + 1) + 8 * k)];
            [v65 addObject:v71];
          }

          v68 = [medicationsLists2 countByEnumeratingWithState:&v110 objects:v124 count:16];
        }

        while (v68);
      }

      [v5 setMedicationsList:v65];
    }

    if ([v4 hasMedicationsListModifiedDate])
    {
      [v4 medicationsListModifiedDate];
      v72 = HDDecodeDateForValue();
      [v5 setMedicationsListModifiedDate:v72];
    }

    else
    {
      [v5 setMedicationsListModifiedDate:0];
    }

    if ([v4 hasMedicationsListVersion])
    {
      v73 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v4, "medicationsListVersion")}];
      [v5 setMedicationsListVersion:v73];
    }

    else
    {
      [v5 setMedicationsListVersion:0];
    }

    if ([v4 hasMedicationsListVersionModifiedDate])
    {
      [v4 medicationsListVersionModifiedDate];
      v74 = HDDecodeDateForValue();
      [v5 setMedicationsListVersionModifiedDate:v74];
    }

    else
    {
      [v5 setMedicationsListVersionModifiedDate:0];
    }

    allergiesLists = [v4 allergiesLists];
    v76 = [allergiesLists count];

    if (v76)
    {
      v77 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      allergiesLists2 = [v4 allergiesLists];
      v79 = [allergiesLists2 countByEnumeratingWithState:&v106 objects:v123 count:16];
      if (v79)
      {
        v80 = v79;
        v81 = *v107;
        do
        {
          for (m = 0; m != v80; ++m)
          {
            if (*v107 != v81)
            {
              objc_enumerationMutation(allergiesLists2);
            }

            v83 = [MEMORY[0x277CCDDE0] createWithCodable:*(*(&v106 + 1) + 8 * m)];
            [v77 addObject:v83];
          }

          v80 = [allergiesLists2 countByEnumeratingWithState:&v106 objects:v123 count:16];
        }

        while (v80);
      }

      [v5 setAllergiesList:v77];
    }

    if ([v4 hasAllergiesListModifiedDate])
    {
      [v4 allergiesListModifiedDate];
      v84 = HDDecodeDateForValue();
      [v5 setAllergiesListModifiedDate:v84];
    }

    else
    {
      [v5 setAllergiesListModifiedDate:0];
    }

    if ([v4 hasAllergiesListVersion])
    {
      v85 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v4, "allergiesListVersion")}];
      [v5 setAllergiesListVersion:v85];
    }

    else
    {
      [v5 setAllergiesListVersion:0];
    }

    if ([v4 hasAllergiesListVersionModifiedDate])
    {
      [v4 allergiesListVersionModifiedDate];
      v86 = HDDecodeDateForValue();
      [v5 setAllergiesListVersionModifiedDate:v86];
    }

    else
    {
      [v5 setAllergiesListVersionModifiedDate:0];
    }

    conditionsLists = [v4 conditionsLists];
    v88 = [conditionsLists count];

    if (v88)
    {
      v89 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      v105 = 0u;
      conditionsLists2 = [v4 conditionsLists];
      v91 = [conditionsLists2 countByEnumeratingWithState:&v102 objects:v122 count:16];
      if (v91)
      {
        v92 = v91;
        v93 = *v103;
        do
        {
          for (n = 0; n != v92; ++n)
          {
            if (*v103 != v93)
            {
              objc_enumerationMutation(conditionsLists2);
            }

            v95 = [MEMORY[0x277CCDDE8] createWithCodable:*(*(&v102 + 1) + 8 * n)];
            [v89 addObject:v95];
          }

          v92 = [conditionsLists2 countByEnumeratingWithState:&v102 objects:v122 count:16];
        }

        while (v92);
      }

      [v5 setConditionsList:v89];
    }

    if ([v4 hasConditionsListModifiedDate])
    {
      [v4 conditionsListModifiedDate];
      v96 = HDDecodeDateForValue();
      [v5 setConditionsListModifiedDate:v96];
    }

    else
    {
      [v5 setConditionsListModifiedDate:0];
    }

    if ([v4 hasConditionsListVersion])
    {
      v97 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v4, "conditionsListVersion")}];
      [v5 setConditionsListVersion:v97];
    }

    else
    {
      [v5 setConditionsListVersion:0];
    }

    if ([v4 hasConditionsListVersionModifiedDate])
    {
      [v4 conditionsListVersionModifiedDate];
      v98 = HDDecodeDateForValue();
      [v5 setConditionsListVersionModifiedDate:v98];
    }

    else
    {
      [v5 setConditionsListVersionModifiedDate:0];
    }

    if ([v4 hasDateSaved])
    {
      [v4 dateSaved];
      v99 = HDDecodeDateForValue();
      [v5 setDateSaved:v99];
    }

    else
    {
      [v5 setDateSaved:0];
    }

    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v100 = *MEMORY[0x277D85DE8];

  return v7;
}

@end