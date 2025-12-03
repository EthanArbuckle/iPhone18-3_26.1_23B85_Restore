@interface HDCodableMedicalIDData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsBloodType:(id)type;
- (int)bloodType;
- (unint64_t)hash;
- (void)addAllergiesList:(id)list;
- (void)addClinicalContacts:(id)contacts;
- (void)addConditionsList:(id)list;
- (void)addEmergencyContacts:(id)contacts;
- (void)addMedicationsList:(id)list;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAllergiesListVersion:(BOOL)version;
- (void)setHasAllergiesListVersionModifiedDate:(BOOL)date;
- (void)setHasAllergyInfoModifiedDate:(BOOL)date;
- (void)setHasBloodType:(BOOL)type;
- (void)setHasBloodTypeModifiedDate:(BOOL)date;
- (void)setHasClinicalContactsModifiedDate:(BOOL)date;
- (void)setHasConditionsListModifiedDate:(BOOL)date;
- (void)setHasConditionsListVersion:(BOOL)version;
- (void)setHasConditionsListVersionModifiedDate:(BOOL)date;
- (void)setHasDateSaved:(BOOL)saved;
- (void)setHasEmergencyContactsModifiedDate:(BOOL)date;
- (void)setHasGregorianBirthdayModifiedDate:(BOOL)date;
- (void)setHasHeightModifiedDate:(BOOL)date;
- (void)setHasIsDisabled:(BOOL)disabled;
- (void)setHasIsDisabledModifiedDate:(BOOL)date;
- (void)setHasIsOrganDonor:(BOOL)donor;
- (void)setHasIsOrganDonorModifiedDate:(BOOL)date;
- (void)setHasMedicalConditionsModifiedDate:(BOOL)date;
- (void)setHasMedicalNotesModifiedDate:(BOOL)date;
- (void)setHasMedicationInfoModifiedDate:(BOOL)date;
- (void)setHasMedicationsListModifiedDate:(BOOL)date;
- (void)setHasMedicationsListVersion:(BOOL)version;
- (void)setHasMedicationsListVersionModifiedDate:(BOOL)date;
- (void)setHasNameModifiedDate:(BOOL)date;
- (void)setHasPictureDataModifiedDate:(BOOL)date;
- (void)setHasPregnancyEstimatedDueDate:(BOOL)date;
- (void)setHasPregnancyEstimatedDueDateModifiedDate:(BOOL)date;
- (void)setHasPregnancyStartDate:(BOOL)date;
- (void)setHasPregnancyStartDateModifiedDate:(BOOL)date;
- (void)setHasPrimaryLanguageCodeModifiedDate:(BOOL)date;
- (void)setHasSchemaVersion:(BOOL)version;
- (void)setHasShareDuringEmergency:(BOOL)emergency;
- (void)setHasShareDuringEmergencyModifiedDate:(BOOL)date;
- (void)setHasWeightModifiedDate:(BOOL)date;
- (void)writeTo:(id)to;
@end

@implementation HDCodableMedicalIDData

- (void)setHasDateSaved:(BOOL)saved
{
  v3 = 512;
  if (!saved)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasSchemaVersion:(BOOL)version
{
  v3 = 0x100000000;
  if (!version)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasIsDisabled:(BOOL)disabled
{
  v3 = 0x200000000;
  if (!disabled)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasIsDisabledModifiedDate:(BOOL)date
{
  v3 = 0x2000;
  if (!date)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasPictureDataModifiedDate:(BOOL)date
{
  v3 = 0x800000;
  if (!date)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasNameModifiedDate:(BOOL)date
{
  v3 = 0x400000;
  if (!date)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasGregorianBirthdayModifiedDate:(BOOL)date
{
  v3 = 2048;
  if (!date)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasHeightModifiedDate:(BOOL)date
{
  v3 = 4096;
  if (!date)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasWeightModifiedDate:(BOOL)date
{
  v3 = 0x40000000;
  if (!date)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (int)bloodType
{
  if ((*(&self->_has + 3) & 0x80) != 0)
  {
    return self->_bloodType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasBloodType:(BOOL)type
{
  v3 = 0x80000000;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (int)StringAsBloodType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"NotSet"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"APositive"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"ANegative"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"BPositive"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"BNegative"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"ABPositive"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"ABNegative"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"OPositive"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"ONegative"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasBloodTypeModifiedDate:(BOOL)date
{
  v3 = 16;
  if (!date)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasIsOrganDonor:(BOOL)donor
{
  v3 = 0x4000;
  if (!donor)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasIsOrganDonorModifiedDate:(BOOL)date
{
  v3 = 0x8000;
  if (!date)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)addEmergencyContacts:(id)contacts
{
  contactsCopy = contacts;
  emergencyContacts = self->_emergencyContacts;
  v8 = contactsCopy;
  if (!emergencyContacts)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_emergencyContacts;
    self->_emergencyContacts = v6;

    contactsCopy = v8;
    emergencyContacts = self->_emergencyContacts;
  }

  [(NSMutableArray *)emergencyContacts addObject:contactsCopy];
}

- (void)setHasEmergencyContactsModifiedDate:(BOOL)date
{
  v3 = 1024;
  if (!date)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)addClinicalContacts:(id)contacts
{
  contactsCopy = contacts;
  clinicalContacts = self->_clinicalContacts;
  v8 = contactsCopy;
  if (!clinicalContacts)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_clinicalContacts;
    self->_clinicalContacts = v6;

    contactsCopy = v8;
    clinicalContacts = self->_clinicalContacts;
  }

  [(NSMutableArray *)clinicalContacts addObject:contactsCopy];
}

- (void)setHasClinicalContactsModifiedDate:(BOOL)date
{
  v3 = 32;
  if (!date)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasMedicalConditionsModifiedDate:(BOOL)date
{
  v3 = 0x10000;
  if (!date)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasMedicalNotesModifiedDate:(BOOL)date
{
  v3 = 0x20000;
  if (!date)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasAllergyInfoModifiedDate:(BOOL)date
{
  v3 = 8;
  if (!date)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasMedicationInfoModifiedDate:(BOOL)date
{
  v3 = 0x40000;
  if (!date)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasShareDuringEmergency:(BOOL)emergency
{
  v3 = 0x400000000;
  if (!emergency)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasShareDuringEmergencyModifiedDate:(BOOL)date
{
  v3 = 0x20000000;
  if (!date)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasPrimaryLanguageCodeModifiedDate:(BOOL)date
{
  v3 = 0x10000000;
  if (!date)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasPregnancyStartDate:(BOOL)date
{
  v3 = 0x4000000;
  if (!date)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasPregnancyStartDateModifiedDate:(BOOL)date
{
  v3 = 0x8000000;
  if (!date)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasPregnancyEstimatedDueDate:(BOOL)date
{
  v3 = 0x1000000;
  if (!date)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasPregnancyEstimatedDueDateModifiedDate:(BOOL)date
{
  v3 = 0x2000000;
  if (!date)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)addMedicationsList:(id)list
{
  listCopy = list;
  medicationsLists = self->_medicationsLists;
  v8 = listCopy;
  if (!medicationsLists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_medicationsLists;
    self->_medicationsLists = v6;

    listCopy = v8;
    medicationsLists = self->_medicationsLists;
  }

  [(NSMutableArray *)medicationsLists addObject:listCopy];
}

- (void)setHasMedicationsListModifiedDate:(BOOL)date
{
  v3 = 0x80000;
  if (!date)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasMedicationsListVersion:(BOOL)version
{
  v3 = 0x100000;
  if (!version)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasMedicationsListVersionModifiedDate:(BOOL)date
{
  v3 = 0x200000;
  if (!date)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)addAllergiesList:(id)list
{
  listCopy = list;
  allergiesLists = self->_allergiesLists;
  v8 = listCopy;
  if (!allergiesLists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_allergiesLists;
    self->_allergiesLists = v6;

    listCopy = v8;
    allergiesLists = self->_allergiesLists;
  }

  [(NSMutableArray *)allergiesLists addObject:listCopy];
}

- (void)setHasAllergiesListVersion:(BOOL)version
{
  v3 = 2;
  if (!version)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasAllergiesListVersionModifiedDate:(BOOL)date
{
  v3 = 4;
  if (!date)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)addConditionsList:(id)list
{
  listCopy = list;
  conditionsLists = self->_conditionsLists;
  v8 = listCopy;
  if (!conditionsLists)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_conditionsLists;
    self->_conditionsLists = v6;

    listCopy = v8;
    conditionsLists = self->_conditionsLists;
  }

  [(NSMutableArray *)conditionsLists addObject:listCopy];
}

- (void)setHasConditionsListModifiedDate:(BOOL)date
{
  v3 = 64;
  if (!date)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasConditionsListVersion:(BOOL)version
{
  v3 = 128;
  if (!version)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasConditionsListVersionModifiedDate:(BOOL)date
{
  v3 = 256;
  if (!date)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableMedicalIDData;
  v4 = [(HDCodableMedicalIDData *)&v8 description];
  dictionaryRepresentation = [(HDCodableMedicalIDData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v125 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  medicalIDBytes = self->_medicalIDBytes;
  if (medicalIDBytes)
  {
    [dictionary setObject:medicalIDBytes forKey:@"medicalIDBytes"];
  }

  has = self->_has;
  if ((*&has & 0x200) != 0)
  {
    v80 = [MEMORY[0x277CCABB0] numberWithDouble:self->_dateSaved];
    [v4 setObject:v80 forKey:@"dateSaved"];

    has = self->_has;
    if ((*&has & 0x100000000) == 0)
    {
LABEL_5:
      if ((*&has & 0x200000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_122;
    }
  }

  else if ((*&has & 0x100000000) == 0)
  {
    goto LABEL_5;
  }

  v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_schemaVersion];
  [v4 setObject:v81 forKey:@"schemaVersion"];

  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_122:
  v82 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDisabled];
  [v4 setObject:v82 forKey:@"isDisabled"];

  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_7:
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_isDisabledModifiedDate];
    [v4 setObject:v7 forKey:@"isDisabledModifiedDate"];
  }

LABEL_8:
  pictureData = self->_pictureData;
  if (pictureData)
  {
    [v4 setObject:pictureData forKey:@"pictureData"];
  }

  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_pictureDataModifiedDate];
    [v4 setObject:v9 forKey:@"pictureDataModifiedDate"];
  }

  name = self->_name;
  if (name)
  {
    [v4 setObject:name forKey:@"name"];
  }

  if ((*(&self->_has + 2) & 0x40) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_nameModifiedDate];
    [v4 setObject:v11 forKey:@"nameModifiedDate"];
  }

  gregorianBirthday = self->_gregorianBirthday;
  if (gregorianBirthday)
  {
    dictionaryRepresentation = [(HDCodableDateComponents *)gregorianBirthday dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"gregorianBirthday"];
  }

  if ((*(&self->_has + 1) & 8) != 0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_gregorianBirthdayModifiedDate];
    [v4 setObject:v14 forKey:@"gregorianBirthdayModifiedDate"];
  }

  height = self->_height;
  if (height)
  {
    dictionaryRepresentation2 = [(HDCodableQuantity *)height dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"height"];
  }

  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:self->_heightModifiedDate];
    [v4 setObject:v17 forKey:@"heightModifiedDate"];
  }

  weight = self->_weight;
  if (weight)
  {
    dictionaryRepresentation3 = [(HDCodableQuantity *)weight dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"weight"];
  }

  v20 = self->_has;
  if ((*&v20 & 0x40000000) != 0)
  {
    v83 = [MEMORY[0x277CCABB0] numberWithDouble:self->_weightModifiedDate];
    [v4 setObject:v83 forKey:@"weightModifiedDate"];

    v20 = self->_has;
    if ((*&v20 & 0x80000000) == 0)
    {
LABEL_28:
      if ((*&v20 & 0x10) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_146;
    }
  }

  else if ((*&v20 & 0x80000000) == 0)
  {
    goto LABEL_28;
  }

  bloodType = self->_bloodType;
  if (bloodType >= 9)
  {
    v85 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_bloodType];
  }

  else
  {
    v85 = off_27861A548[bloodType];
  }

  [v4 setObject:v85 forKey:@"bloodType"];

  v20 = self->_has;
  if ((*&v20 & 0x10) == 0)
  {
LABEL_29:
    if ((*&v20 & 0x4000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_147;
  }

LABEL_146:
  v98 = [MEMORY[0x277CCABB0] numberWithDouble:self->_bloodTypeModifiedDate];
  [v4 setObject:v98 forKey:@"bloodTypeModifiedDate"];

  v20 = self->_has;
  if ((*&v20 & 0x4000) == 0)
  {
LABEL_30:
    if ((*&v20 & 0x8000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_147:
  v99 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_isOrganDonor];
  [v4 setObject:v99 forKey:@"isOrganDonor"];

  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_31:
    v21 = [MEMORY[0x277CCABB0] numberWithDouble:self->_isOrganDonorModifiedDate];
    [v4 setObject:v21 forKey:@"isOrganDonorModifiedDate"];
  }

LABEL_32:
  if ([(NSMutableArray *)self->_emergencyContacts count])
  {
    v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_emergencyContacts, "count")}];
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v23 = self->_emergencyContacts;
    v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v116 objects:v124 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v117;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v117 != v26)
          {
            objc_enumerationMutation(v23);
          }

          dictionaryRepresentation4 = [*(*(&v116 + 1) + 8 * i) dictionaryRepresentation];
          [v22 addObject:dictionaryRepresentation4];
        }

        v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v116 objects:v124 count:16];
      }

      while (v25);
    }

    [v4 setObject:v22 forKey:@"emergencyContacts"];
  }

  if ((*(&self->_has + 1) & 4) != 0)
  {
    v29 = [MEMORY[0x277CCABB0] numberWithDouble:self->_emergencyContactsModifiedDate];
    [v4 setObject:v29 forKey:@"emergencyContactsModifiedDate"];
  }

  if ([(NSMutableArray *)self->_clinicalContacts count])
  {
    v30 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_clinicalContacts, "count")}];
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v31 = self->_clinicalContacts;
    v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v112 objects:v123 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v113;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v113 != v34)
          {
            objc_enumerationMutation(v31);
          }

          dictionaryRepresentation5 = [*(*(&v112 + 1) + 8 * j) dictionaryRepresentation];
          [v30 addObject:dictionaryRepresentation5];
        }

        v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v112 objects:v123 count:16];
      }

      while (v33);
    }

    [v4 setObject:v30 forKey:@"clinicalContacts"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v37 = [MEMORY[0x277CCABB0] numberWithDouble:self->_clinicalContactsModifiedDate];
    [v4 setObject:v37 forKey:@"clinicalContactsModifiedDate"];
  }

  medicalConditions = self->_medicalConditions;
  if (medicalConditions)
  {
    [v4 setObject:medicalConditions forKey:@"medicalConditions"];
  }

  if (*(&self->_has + 2))
  {
    v39 = [MEMORY[0x277CCABB0] numberWithDouble:self->_medicalConditionsModifiedDate];
    [v4 setObject:v39 forKey:@"medicalConditionsModifiedDate"];
  }

  medicalNotes = self->_medicalNotes;
  if (medicalNotes)
  {
    [v4 setObject:medicalNotes forKey:@"medicalNotes"];
  }

  if ((*(&self->_has + 2) & 2) != 0)
  {
    v41 = [MEMORY[0x277CCABB0] numberWithDouble:self->_medicalNotesModifiedDate];
    [v4 setObject:v41 forKey:@"medicalNotesModifiedDate"];
  }

  allergyInfo = self->_allergyInfo;
  if (allergyInfo)
  {
    [v4 setObject:allergyInfo forKey:@"allergyInfo"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v43 = [MEMORY[0x277CCABB0] numberWithDouble:self->_allergyInfoModifiedDate];
    [v4 setObject:v43 forKey:@"allergyInfoModifiedDate"];
  }

  medicationInfo = self->_medicationInfo;
  if (medicationInfo)
  {
    [v4 setObject:medicationInfo forKey:@"medicationInfo"];
  }

  v45 = self->_has;
  if ((*&v45 & 0x40000) != 0)
  {
    v86 = [MEMORY[0x277CCABB0] numberWithDouble:self->_medicationInfoModifiedDate];
    [v4 setObject:v86 forKey:@"medicationInfoModifiedDate"];

    v45 = self->_has;
    if ((*&v45 & 0x400000000) == 0)
    {
LABEL_70:
      if ((*&v45 & 0x20000000) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_71;
    }
  }

  else if ((*&v45 & 0x400000000) == 0)
  {
    goto LABEL_70;
  }

  v87 = [MEMORY[0x277CCABB0] numberWithBool:self->_shareDuringEmergency];
  [v4 setObject:v87 forKey:@"shareDuringEmergency"];

  if ((*&self->_has & 0x20000000) != 0)
  {
LABEL_71:
    v46 = [MEMORY[0x277CCABB0] numberWithDouble:self->_shareDuringEmergencyModifiedDate];
    [v4 setObject:v46 forKey:@"shareDuringEmergencyModifiedDate"];
  }

LABEL_72:
  primaryLanguageCode = self->_primaryLanguageCode;
  if (primaryLanguageCode)
  {
    [v4 setObject:primaryLanguageCode forKey:@"primaryLanguageCode"];
  }

  v48 = self->_has;
  if ((*&v48 & 0x10000000) != 0)
  {
    v88 = [MEMORY[0x277CCABB0] numberWithDouble:self->_primaryLanguageCodeModifiedDate];
    [v4 setObject:v88 forKey:@"primaryLanguageCodeModifiedDate"];

    v48 = self->_has;
    if ((*&v48 & 0x4000000) == 0)
    {
LABEL_76:
      if ((*&v48 & 0x8000000) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_132;
    }
  }

  else if ((*&v48 & 0x4000000) == 0)
  {
    goto LABEL_76;
  }

  v89 = [MEMORY[0x277CCABB0] numberWithDouble:self->_pregnancyStartDate];
  [v4 setObject:v89 forKey:@"pregnancyStartDate"];

  v48 = self->_has;
  if ((*&v48 & 0x8000000) == 0)
  {
LABEL_77:
    if ((*&v48 & 0x1000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_133;
  }

LABEL_132:
  v90 = [MEMORY[0x277CCABB0] numberWithDouble:self->_pregnancyStartDateModifiedDate];
  [v4 setObject:v90 forKey:@"pregnancyStartDateModifiedDate"];

  v48 = self->_has;
  if ((*&v48 & 0x1000000) == 0)
  {
LABEL_78:
    if ((*&v48 & 0x2000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

LABEL_133:
  v91 = [MEMORY[0x277CCABB0] numberWithDouble:self->_pregnancyEstimatedDueDate];
  [v4 setObject:v91 forKey:@"pregnancyEstimatedDueDate"];

  if ((*&self->_has & 0x2000000) != 0)
  {
LABEL_79:
    v49 = [MEMORY[0x277CCABB0] numberWithDouble:self->_pregnancyEstimatedDueDateModifiedDate];
    [v4 setObject:v49 forKey:@"pregnancyEstimatedDueDateModifiedDate"];
  }

LABEL_80:
  if ([(NSMutableArray *)self->_medicationsLists count])
  {
    v50 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_medicationsLists, "count")}];
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v51 = self->_medicationsLists;
    v52 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v108 objects:v122 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v109;
      do
      {
        for (k = 0; k != v53; ++k)
        {
          if (*v109 != v54)
          {
            objc_enumerationMutation(v51);
          }

          dictionaryRepresentation6 = [*(*(&v108 + 1) + 8 * k) dictionaryRepresentation];
          [v50 addObject:dictionaryRepresentation6];
        }

        v53 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v108 objects:v122 count:16];
      }

      while (v53);
    }

    [v4 setObject:v50 forKey:@"medicationsList"];
  }

  v57 = self->_has;
  if ((*&v57 & 0x80000) != 0)
  {
    v92 = [MEMORY[0x277CCABB0] numberWithDouble:self->_medicationsListModifiedDate];
    [v4 setObject:v92 forKey:@"medicationsListModifiedDate"];

    v57 = self->_has;
    if ((*&v57 & 0x100000) == 0)
    {
LABEL_91:
      if ((*&v57 & 0x200000) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_92;
    }
  }

  else if ((*&v57 & 0x100000) == 0)
  {
    goto LABEL_91;
  }

  v93 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_medicationsListVersion];
  [v4 setObject:v93 forKey:@"medicationsListVersion"];

  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_92:
    v58 = [MEMORY[0x277CCABB0] numberWithDouble:self->_medicationsListVersionModifiedDate];
    [v4 setObject:v58 forKey:@"medicationsListVersionModifiedDate"];
  }

LABEL_93:
  if ([(NSMutableArray *)self->_allergiesLists count])
  {
    v59 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_allergiesLists, "count")}];
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v60 = self->_allergiesLists;
    v61 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v104 objects:v121 count:16];
    if (v61)
    {
      v62 = v61;
      v63 = *v105;
      do
      {
        for (m = 0; m != v62; ++m)
        {
          if (*v105 != v63)
          {
            objc_enumerationMutation(v60);
          }

          dictionaryRepresentation7 = [*(*(&v104 + 1) + 8 * m) dictionaryRepresentation];
          [v59 addObject:dictionaryRepresentation7];
        }

        v62 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v104 objects:v121 count:16];
      }

      while (v62);
    }

    [v4 setObject:v59 forKey:@"allergiesList"];
  }

  v66 = self->_has;
  if (*&v66)
  {
    v94 = [MEMORY[0x277CCABB0] numberWithDouble:self->_allergiesListModifiedDate];
    [v4 setObject:v94 forKey:@"allergiesListModifiedDate"];

    v66 = self->_has;
    if ((*&v66 & 2) == 0)
    {
LABEL_104:
      if ((*&v66 & 4) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_105;
    }
  }

  else if ((*&v66 & 2) == 0)
  {
    goto LABEL_104;
  }

  v95 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_allergiesListVersion];
  [v4 setObject:v95 forKey:@"allergiesListVersion"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_105:
    v67 = [MEMORY[0x277CCABB0] numberWithDouble:self->_allergiesListVersionModifiedDate];
    [v4 setObject:v67 forKey:@"allergiesListVersionModifiedDate"];
  }

LABEL_106:
  if ([(NSMutableArray *)self->_conditionsLists count])
  {
    v68 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_conditionsLists, "count")}];
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v69 = self->_conditionsLists;
    v70 = [(NSMutableArray *)v69 countByEnumeratingWithState:&v100 objects:v120 count:16];
    if (v70)
    {
      v71 = v70;
      v72 = *v101;
      do
      {
        for (n = 0; n != v71; ++n)
        {
          if (*v101 != v72)
          {
            objc_enumerationMutation(v69);
          }

          dictionaryRepresentation8 = [*(*(&v100 + 1) + 8 * n) dictionaryRepresentation];
          [v68 addObject:dictionaryRepresentation8];
        }

        v71 = [(NSMutableArray *)v69 countByEnumeratingWithState:&v100 objects:v120 count:16];
      }

      while (v71);
    }

    [v4 setObject:v68 forKey:@"conditionsList"];
  }

  v75 = self->_has;
  if ((*&v75 & 0x40) == 0)
  {
    if ((*&v75 & 0x80) == 0)
    {
      goto LABEL_117;
    }

LABEL_142:
    v97 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_conditionsListVersion];
    [v4 setObject:v97 forKey:@"conditionsListVersion"];

    if ((*&self->_has & 0x100) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_118;
  }

  v96 = [MEMORY[0x277CCABB0] numberWithDouble:self->_conditionsListModifiedDate];
  [v4 setObject:v96 forKey:@"conditionsListModifiedDate"];

  v75 = self->_has;
  if ((*&v75 & 0x80) != 0)
  {
    goto LABEL_142;
  }

LABEL_117:
  if ((*&v75 & 0x100) != 0)
  {
LABEL_118:
    v76 = [MEMORY[0x277CCABB0] numberWithDouble:self->_conditionsListVersionModifiedDate];
    [v4 setObject:v76 forKey:@"conditionsListVersionModifiedDate"];
  }

LABEL_119:
  v77 = v4;

  v78 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)writeTo:(id)to
{
  v103 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_medicalIDBytes)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if ((*&has & 0x200) != 0)
  {
    dateSaved = self->_dateSaved;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((*&has & 0x100000000) == 0)
    {
LABEL_5:
      if ((*&has & 0x200000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_112;
    }
  }

  else if ((*&has & 0x100000000) == 0)
  {
    goto LABEL_5;
  }

  schemaVersion = self->_schemaVersion;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_112:
  isDisabled = self->_isDisabled;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_7:
    isDisabledModifiedDate = self->_isDisabledModifiedDate;
    PBDataWriterWriteDoubleField();
  }

LABEL_8:
  if (self->_pictureData)
  {
    PBDataWriterWriteDataField();
  }

  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    pictureDataModifiedDate = self->_pictureDataModifiedDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 2) & 0x40) != 0)
  {
    nameModifiedDate = self->_nameModifiedDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_gregorianBirthday)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_has + 1) & 8) != 0)
  {
    gregorianBirthdayModifiedDate = self->_gregorianBirthdayModifiedDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_height)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    heightModifiedDate = self->_heightModifiedDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_weight)
  {
    PBDataWriterWriteSubmessage();
  }

  v11 = self->_has;
  if ((*&v11 & 0x40000000) != 0)
  {
    weightModifiedDate = self->_weightModifiedDate;
    PBDataWriterWriteDoubleField();
    v11 = self->_has;
    if ((*&v11 & 0x80000000) == 0)
    {
LABEL_28:
      if ((*&v11 & 0x10) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_116;
    }
  }

  else if ((*&v11 & 0x80000000) == 0)
  {
    goto LABEL_28;
  }

  bloodType = self->_bloodType;
  PBDataWriterWriteInt32Field();
  v11 = self->_has;
  if ((*&v11 & 0x10) == 0)
  {
LABEL_29:
    if ((*&v11 & 0x4000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_117;
  }

LABEL_116:
  bloodTypeModifiedDate = self->_bloodTypeModifiedDate;
  PBDataWriterWriteDoubleField();
  v11 = self->_has;
  if ((*&v11 & 0x4000) == 0)
  {
LABEL_30:
    if ((*&v11 & 0x8000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_117:
  isOrganDonor = self->_isOrganDonor;
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_31:
    isOrganDonorModifiedDate = self->_isOrganDonorModifiedDate;
    PBDataWriterWriteDoubleField();
  }

LABEL_32:
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v13 = self->_emergencyContacts;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v94 objects:v102 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v95;
    do
    {
      v17 = 0;
      do
      {
        if (*v95 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v94 + 1) + 8 * v17);
        PBDataWriterWriteSubmessage();
        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v94 objects:v102 count:16];
    }

    while (v15);
  }

  if ((*(&self->_has + 1) & 4) != 0)
  {
    emergencyContactsModifiedDate = self->_emergencyContactsModifiedDate;
    PBDataWriterWriteDoubleField();
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v20 = self->_clinicalContacts;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v90 objects:v101 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v91;
    do
    {
      v24 = 0;
      do
      {
        if (*v91 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v90 + 1) + 8 * v24);
        PBDataWriterWriteSubmessage();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v90 objects:v101 count:16];
    }

    while (v22);
  }

  if ((*&self->_has & 0x20) != 0)
  {
    clinicalContactsModifiedDate = self->_clinicalContactsModifiedDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_medicalConditions)
  {
    PBDataWriterWriteStringField();
  }

  if (*(&self->_has + 2))
  {
    medicalConditionsModifiedDate = self->_medicalConditionsModifiedDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_medicalNotes)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 2) & 2) != 0)
  {
    medicalNotesModifiedDate = self->_medicalNotesModifiedDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_allergyInfo)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 8) != 0)
  {
    allergyInfoModifiedDate = self->_allergyInfoModifiedDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_medicationInfo)
  {
    PBDataWriterWriteStringField();
  }

  v30 = self->_has;
  if ((*&v30 & 0x40000) != 0)
  {
    medicationInfoModifiedDate = self->_medicationInfoModifiedDate;
    PBDataWriterWriteDoubleField();
    v30 = self->_has;
    if ((*&v30 & 0x400000000) == 0)
    {
LABEL_66:
      if ((*&v30 & 0x20000000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }
  }

  else if ((*&v30 & 0x400000000) == 0)
  {
    goto LABEL_66;
  }

  shareDuringEmergency = self->_shareDuringEmergency;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x20000000) != 0)
  {
LABEL_67:
    shareDuringEmergencyModifiedDate = self->_shareDuringEmergencyModifiedDate;
    PBDataWriterWriteDoubleField();
  }

LABEL_68:
  if (self->_primaryLanguageCode)
  {
    PBDataWriterWriteStringField();
  }

  v32 = self->_has;
  if ((*&v32 & 0x10000000) != 0)
  {
    primaryLanguageCodeModifiedDate = self->_primaryLanguageCodeModifiedDate;
    PBDataWriterWriteDoubleField();
    v32 = self->_has;
    if ((*&v32 & 0x4000000) == 0)
    {
LABEL_72:
      if ((*&v32 & 0x8000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_124;
    }
  }

  else if ((*&v32 & 0x4000000) == 0)
  {
    goto LABEL_72;
  }

  pregnancyStartDate = self->_pregnancyStartDate;
  PBDataWriterWriteDoubleField();
  v32 = self->_has;
  if ((*&v32 & 0x8000000) == 0)
  {
LABEL_73:
    if ((*&v32 & 0x1000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_125;
  }

LABEL_124:
  pregnancyStartDateModifiedDate = self->_pregnancyStartDateModifiedDate;
  PBDataWriterWriteDoubleField();
  v32 = self->_has;
  if ((*&v32 & 0x1000000) == 0)
  {
LABEL_74:
    if ((*&v32 & 0x2000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

LABEL_125:
  pregnancyEstimatedDueDate = self->_pregnancyEstimatedDueDate;
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x2000000) != 0)
  {
LABEL_75:
    pregnancyEstimatedDueDateModifiedDate = self->_pregnancyEstimatedDueDateModifiedDate;
    PBDataWriterWriteDoubleField();
  }

LABEL_76:
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v34 = self->_medicationsLists;
  v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v86 objects:v100 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v87;
    do
    {
      v38 = 0;
      do
      {
        if (*v87 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v86 + 1) + 8 * v38);
        PBDataWriterWriteSubmessage();
        ++v38;
      }

      while (v36 != v38);
      v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v86 objects:v100 count:16];
    }

    while (v36);
  }

  v40 = self->_has;
  if ((*&v40 & 0x80000) != 0)
  {
    medicationsListModifiedDate = self->_medicationsListModifiedDate;
    PBDataWriterWriteDoubleField();
    v40 = self->_has;
    if ((*&v40 & 0x100000) == 0)
    {
LABEL_85:
      if ((*&v40 & 0x200000) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_86;
    }
  }

  else if ((*&v40 & 0x100000) == 0)
  {
    goto LABEL_85;
  }

  medicationsListVersion = self->_medicationsListVersion;
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_86:
    medicationsListVersionModifiedDate = self->_medicationsListVersionModifiedDate;
    PBDataWriterWriteDoubleField();
  }

LABEL_87:
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v42 = self->_allergiesLists;
  v43 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v82 objects:v99 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v83;
    do
    {
      v46 = 0;
      do
      {
        if (*v83 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v82 + 1) + 8 * v46);
        PBDataWriterWriteSubmessage();
        ++v46;
      }

      while (v44 != v46);
      v44 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v82 objects:v99 count:16];
    }

    while (v44);
  }

  v48 = self->_has;
  if (*&v48)
  {
    allergiesListModifiedDate = self->_allergiesListModifiedDate;
    PBDataWriterWriteDoubleField();
    v48 = self->_has;
    if ((*&v48 & 2) == 0)
    {
LABEL_96:
      if ((*&v48 & 4) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_97;
    }
  }

  else if ((*&v48 & 2) == 0)
  {
    goto LABEL_96;
  }

  allergiesListVersion = self->_allergiesListVersion;
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_97:
    allergiesListVersionModifiedDate = self->_allergiesListVersionModifiedDate;
    PBDataWriterWriteDoubleField();
  }

LABEL_98:
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v50 = self->_conditionsLists;
  v51 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v78 objects:v98 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v79;
    do
    {
      v54 = 0;
      do
      {
        if (*v79 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = *(*(&v78 + 1) + 8 * v54);
        PBDataWriterWriteSubmessage();
        ++v54;
      }

      while (v52 != v54);
      v52 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v78 objects:v98 count:16];
    }

    while (v52);
  }

  v56 = self->_has;
  if ((*&v56 & 0x40) == 0)
  {
    if ((*&v56 & 0x80) == 0)
    {
      goto LABEL_107;
    }

LABEL_134:
    conditionsListVersion = self->_conditionsListVersion;
    PBDataWriterWriteInt64Field();
    if ((*&self->_has & 0x100) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_108;
  }

  conditionsListModifiedDate = self->_conditionsListModifiedDate;
  PBDataWriterWriteDoubleField();
  v56 = self->_has;
  if ((*&v56 & 0x80) != 0)
  {
    goto LABEL_134;
  }

LABEL_107:
  if ((*&v56 & 0x100) != 0)
  {
LABEL_108:
    conditionsListVersionModifiedDate = self->_conditionsListVersionModifiedDate;
    PBDataWriterWriteDoubleField();
  }

LABEL_109:

  v58 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v33 = toCopy;
  if (self->_medicalIDBytes)
  {
    [toCopy setMedicalIDBytes:?];
    toCopy = v33;
  }

  has = self->_has;
  if ((*&has & 0x200) != 0)
  {
    *(toCopy + 10) = *&self->_dateSaved;
    *(toCopy + 404) |= 0x200uLL;
    has = self->_has;
    if ((*&has & 0x100000000) == 0)
    {
LABEL_5:
      if ((*&has & 0x200000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_99;
    }
  }

  else if ((*&has & 0x100000000) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 96) = self->_schemaVersion;
  *(toCopy + 404) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_99:
  toCopy[400] = self->_isDisabled;
  *(toCopy + 404) |= 0x200000000uLL;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_7:
    *(toCopy + 14) = *&self->_isDisabledModifiedDate;
    *(toCopy + 404) |= 0x2000uLL;
  }

LABEL_8:
  if (self->_pictureData)
  {
    [v33 setPictureData:?];
    toCopy = v33;
  }

  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    *(toCopy + 24) = *&self->_pictureDataModifiedDate;
    *(toCopy + 404) |= 0x800000uLL;
  }

  if (self->_name)
  {
    [v33 setName:?];
    toCopy = v33;
  }

  if ((*(&self->_has + 2) & 0x40) != 0)
  {
    *(toCopy + 23) = *&self->_nameModifiedDate;
    *(toCopy + 404) |= 0x400000uLL;
  }

  if (self->_gregorianBirthday)
  {
    [v33 setGregorianBirthday:?];
    toCopy = v33;
  }

  if ((*(&self->_has + 1) & 8) != 0)
  {
    *(toCopy + 12) = *&self->_gregorianBirthdayModifiedDate;
    *(toCopy + 404) |= 0x800uLL;
  }

  if (self->_height)
  {
    [v33 setHeight:?];
    toCopy = v33;
  }

  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    *(toCopy + 13) = *&self->_heightModifiedDate;
    *(toCopy + 404) |= 0x1000uLL;
  }

  if (self->_weight)
  {
    [v33 setWeight:?];
    toCopy = v33;
  }

  v6 = self->_has;
  if ((*&v6 & 0x40000000) != 0)
  {
    *(toCopy + 31) = *&self->_weightModifiedDate;
    *(toCopy + 404) |= 0x40000000uLL;
    v6 = self->_has;
    if ((*&v6 & 0x80000000) == 0)
    {
LABEL_28:
      if ((*&v6 & 0x10) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_103;
    }
  }

  else if ((*&v6 & 0x80000000) == 0)
  {
    goto LABEL_28;
  }

  *(toCopy + 68) = self->_bloodType;
  *(toCopy + 404) |= 0x80000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x10) == 0)
  {
LABEL_29:
    if ((*&v6 & 0x4000) == 0)
    {
      goto LABEL_30;
    }

LABEL_104:
    *(toCopy + 15) = self->_isOrganDonor;
    *(toCopy + 404) |= 0x4000uLL;
    if ((*&self->_has & 0x8000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_103:
  *(toCopy + 5) = *&self->_bloodTypeModifiedDate;
  *(toCopy + 404) |= 0x10uLL;
  v6 = self->_has;
  if ((*&v6 & 0x4000) != 0)
  {
    goto LABEL_104;
  }

LABEL_30:
  if ((*&v6 & 0x8000) != 0)
  {
LABEL_31:
    *(toCopy + 16) = *&self->_isOrganDonorModifiedDate;
    *(toCopy + 404) |= 0x8000uLL;
  }

LABEL_32:
  if ([(HDCodableMedicalIDData *)self emergencyContactsCount])
  {
    [v33 clearEmergencyContacts];
    emergencyContactsCount = [(HDCodableMedicalIDData *)self emergencyContactsCount];
    if (emergencyContactsCount)
    {
      v8 = emergencyContactsCount;
      for (i = 0; i != v8; ++i)
      {
        v10 = [(HDCodableMedicalIDData *)self emergencyContactsAtIndex:i];
        [v33 addEmergencyContacts:v10];
      }
    }
  }

  if ((*(&self->_has + 1) & 4) != 0)
  {
    *(v33 + 11) = *&self->_emergencyContactsModifiedDate;
    *(v33 + 404) |= 0x400uLL;
  }

  if ([(HDCodableMedicalIDData *)self clinicalContactsCount])
  {
    [v33 clearClinicalContacts];
    clinicalContactsCount = [(HDCodableMedicalIDData *)self clinicalContactsCount];
    if (clinicalContactsCount)
    {
      v12 = clinicalContactsCount;
      for (j = 0; j != v12; ++j)
      {
        v14 = [(HDCodableMedicalIDData *)self clinicalContactsAtIndex:j];
        [v33 addClinicalContacts:v14];
      }
    }
  }

  v15 = v33;
  if ((*&self->_has & 0x20) != 0)
  {
    *(v33 + 6) = *&self->_clinicalContactsModifiedDate;
    *(v33 + 404) |= 0x20uLL;
  }

  if (self->_medicalConditions)
  {
    [v33 setMedicalConditions:?];
    v15 = v33;
  }

  if (*(&self->_has + 2))
  {
    *(v15 + 17) = *&self->_medicalConditionsModifiedDate;
    *(v15 + 404) |= 0x10000uLL;
  }

  if (self->_medicalNotes)
  {
    [v33 setMedicalNotes:?];
    v15 = v33;
  }

  if ((*(&self->_has + 2) & 2) != 0)
  {
    *(v15 + 18) = *&self->_medicalNotesModifiedDate;
    *(v15 + 404) |= 0x20000uLL;
  }

  if (self->_allergyInfo)
  {
    [v33 setAllergyInfo:?];
    v15 = v33;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v15 + 4) = *&self->_allergyInfoModifiedDate;
    *(v15 + 404) |= 8uLL;
  }

  if (self->_medicationInfo)
  {
    [v33 setMedicationInfo:?];
    v15 = v33;
  }

  v16 = self->_has;
  if ((*&v16 & 0x40000) != 0)
  {
    *(v15 + 19) = *&self->_medicationInfoModifiedDate;
    *(v15 + 404) |= 0x40000uLL;
    v16 = self->_has;
    if ((*&v16 & 0x400000000) == 0)
    {
LABEL_60:
      if ((*&v16 & 0x20000000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }
  }

  else if ((*&v16 & 0x400000000) == 0)
  {
    goto LABEL_60;
  }

  v15[401] = self->_shareDuringEmergency;
  *(v15 + 404) |= 0x400000000uLL;
  if ((*&self->_has & 0x20000000) != 0)
  {
LABEL_61:
    *(v15 + 30) = *&self->_shareDuringEmergencyModifiedDate;
    *(v15 + 404) |= 0x20000000uLL;
  }

LABEL_62:
  if (self->_primaryLanguageCode)
  {
    [v33 setPrimaryLanguageCode:?];
    v15 = v33;
  }

  v17 = self->_has;
  if ((*&v17 & 0x10000000) != 0)
  {
    *(v15 + 29) = *&self->_primaryLanguageCodeModifiedDate;
    *(v15 + 404) |= 0x10000000uLL;
    v17 = self->_has;
    if ((*&v17 & 0x4000000) == 0)
    {
LABEL_66:
      if ((*&v17 & 0x8000000) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_111;
    }
  }

  else if ((*&v17 & 0x4000000) == 0)
  {
    goto LABEL_66;
  }

  *(v15 + 27) = *&self->_pregnancyStartDate;
  *(v15 + 404) |= 0x4000000uLL;
  v17 = self->_has;
  if ((*&v17 & 0x8000000) == 0)
  {
LABEL_67:
    if ((*&v17 & 0x1000000) == 0)
    {
      goto LABEL_68;
    }

LABEL_112:
    *(v15 + 25) = *&self->_pregnancyEstimatedDueDate;
    *(v15 + 404) |= 0x1000000uLL;
    if ((*&self->_has & 0x2000000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_111:
  *(v15 + 28) = *&self->_pregnancyStartDateModifiedDate;
  *(v15 + 404) |= 0x8000000uLL;
  v17 = self->_has;
  if ((*&v17 & 0x1000000) != 0)
  {
    goto LABEL_112;
  }

LABEL_68:
  if ((*&v17 & 0x2000000) != 0)
  {
LABEL_69:
    *(v15 + 26) = *&self->_pregnancyEstimatedDueDateModifiedDate;
    *(v15 + 404) |= 0x2000000uLL;
  }

LABEL_70:
  if ([(HDCodableMedicalIDData *)self medicationsListsCount])
  {
    [v33 clearMedicationsLists];
    medicationsListsCount = [(HDCodableMedicalIDData *)self medicationsListsCount];
    if (medicationsListsCount)
    {
      v19 = medicationsListsCount;
      for (k = 0; k != v19; ++k)
      {
        v21 = [(HDCodableMedicalIDData *)self medicationsListAtIndex:k];
        [v33 addMedicationsList:v21];
      }
    }
  }

  v22 = self->_has;
  if ((*&v22 & 0x80000) == 0)
  {
    if ((*&v22 & 0x100000) == 0)
    {
      goto LABEL_76;
    }

LABEL_115:
    *(v33 + 21) = self->_medicationsListVersion;
    *(v33 + 404) |= 0x100000uLL;
    if ((*&self->_has & 0x200000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  *(v33 + 20) = *&self->_medicationsListModifiedDate;
  *(v33 + 404) |= 0x80000uLL;
  v22 = self->_has;
  if ((*&v22 & 0x100000) != 0)
  {
    goto LABEL_115;
  }

LABEL_76:
  if ((*&v22 & 0x200000) != 0)
  {
LABEL_77:
    *(v33 + 22) = *&self->_medicationsListVersionModifiedDate;
    *(v33 + 404) |= 0x200000uLL;
  }

LABEL_78:
  if ([(HDCodableMedicalIDData *)self allergiesListsCount])
  {
    [v33 clearAllergiesLists];
    allergiesListsCount = [(HDCodableMedicalIDData *)self allergiesListsCount];
    if (allergiesListsCount)
    {
      v24 = allergiesListsCount;
      for (m = 0; m != v24; ++m)
      {
        v26 = [(HDCodableMedicalIDData *)self allergiesListAtIndex:m];
        [v33 addAllergiesList:v26];
      }
    }
  }

  v27 = self->_has;
  if ((*&v27 & 1) == 0)
  {
    if ((*&v27 & 2) == 0)
    {
      goto LABEL_84;
    }

LABEL_118:
    *(v33 + 2) = self->_allergiesListVersion;
    *(v33 + 404) |= 2uLL;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

  *(v33 + 1) = *&self->_allergiesListModifiedDate;
  *(v33 + 404) |= 1uLL;
  v27 = self->_has;
  if ((*&v27 & 2) != 0)
  {
    goto LABEL_118;
  }

LABEL_84:
  if ((*&v27 & 4) != 0)
  {
LABEL_85:
    *(v33 + 3) = *&self->_allergiesListVersionModifiedDate;
    *(v33 + 404) |= 4uLL;
  }

LABEL_86:
  if ([(HDCodableMedicalIDData *)self conditionsListsCount])
  {
    [v33 clearConditionsLists];
    conditionsListsCount = [(HDCodableMedicalIDData *)self conditionsListsCount];
    if (conditionsListsCount)
    {
      v29 = conditionsListsCount;
      for (n = 0; n != v29; ++n)
      {
        v31 = [(HDCodableMedicalIDData *)self conditionsListAtIndex:n];
        [v33 addConditionsList:v31];
      }
    }
  }

  v32 = self->_has;
  if ((*&v32 & 0x40) != 0)
  {
    *(v33 + 7) = *&self->_conditionsListModifiedDate;
    *(v33 + 404) |= 0x40uLL;
    v32 = self->_has;
    if ((*&v32 & 0x80) == 0)
    {
LABEL_92:
      if ((*&v32 & 0x100) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_93;
    }
  }

  else if ((*&v32 & 0x80) == 0)
  {
    goto LABEL_92;
  }

  *(v33 + 8) = self->_conditionsListVersion;
  *(v33 + 404) |= 0x80uLL;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_93:
    *(v33 + 9) = *&self->_conditionsListVersionModifiedDate;
    *(v33 + 404) |= 0x100uLL;
  }

LABEL_94:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v93 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_medicalIDBytes copyWithZone:zone];
  v7 = *(v5 + 328);
  *(v5 + 328) = v6;

  has = self->_has;
  if ((*&has & 0x200) != 0)
  {
    *(v5 + 80) = self->_dateSaved;
    *(v5 + 404) |= 0x200uLL;
    has = self->_has;
    if ((*&has & 0x100000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x200000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_90;
    }
  }

  else if ((*&has & 0x100000000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 384) = self->_schemaVersion;
  *(v5 + 404) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_90:
  *(v5 + 400) = self->_isDisabled;
  *(v5 + 404) |= 0x200000000uLL;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_5:
    *(v5 + 112) = self->_isDisabledModifiedDate;
    *(v5 + 404) |= 0x2000uLL;
  }

LABEL_6:
  v9 = [(NSData *)self->_pictureData copyWithZone:zone];
  v10 = *(v5 + 368);
  *(v5 + 368) = v9;

  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    *(v5 + 192) = self->_pictureDataModifiedDate;
    *(v5 + 404) |= 0x800000uLL;
  }

  v11 = [(NSString *)self->_name copyWithZone:zone];
  v12 = *(v5 + 360);
  *(v5 + 360) = v11;

  if ((*(&self->_has + 2) & 0x40) != 0)
  {
    *(v5 + 184) = self->_nameModifiedDate;
    *(v5 + 404) |= 0x400000uLL;
  }

  v13 = [(HDCodableDateComponents *)self->_gregorianBirthday copyWithZone:zone];
  v14 = *(v5 + 304);
  *(v5 + 304) = v13;

  if ((*(&self->_has + 1) & 8) != 0)
  {
    *(v5 + 96) = self->_gregorianBirthdayModifiedDate;
    *(v5 + 404) |= 0x800uLL;
  }

  v15 = [(HDCodableQuantity *)self->_height copyWithZone:zone];
  v16 = *(v5 + 312);
  *(v5 + 312) = v15;

  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    *(v5 + 104) = self->_heightModifiedDate;
    *(v5 + 404) |= 0x1000uLL;
  }

  v17 = [(HDCodableQuantity *)self->_weight copyWithZone:zone];
  v18 = *(v5 + 392);
  *(v5 + 392) = v17;

  v19 = self->_has;
  if ((*&v19 & 0x40000000) != 0)
  {
    *(v5 + 248) = self->_weightModifiedDate;
    *(v5 + 404) |= 0x40000000uLL;
    v19 = self->_has;
    if ((*&v19 & 0x80000000) == 0)
    {
LABEL_16:
      if ((*&v19 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_94;
    }
  }

  else if ((*&v19 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  *(v5 + 272) = self->_bloodType;
  *(v5 + 404) |= 0x80000000uLL;
  v19 = self->_has;
  if ((*&v19 & 0x10) == 0)
  {
LABEL_17:
    if ((*&v19 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(v5 + 40) = self->_bloodTypeModifiedDate;
  *(v5 + 404) |= 0x10uLL;
  v19 = self->_has;
  if ((*&v19 & 0x4000) == 0)
  {
LABEL_18:
    if ((*&v19 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_95:
  *(v5 + 120) = self->_isOrganDonor;
  *(v5 + 404) |= 0x4000uLL;
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_19:
    *(v5 + 128) = self->_isOrganDonorModifiedDate;
    *(v5 + 404) |= 0x8000uLL;
  }

LABEL_20:
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v20 = self->_emergencyContacts;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v84 objects:v92 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v85;
    do
    {
      v24 = 0;
      do
      {
        if (*v85 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v84 + 1) + 8 * v24) copyWithZone:zone];
        [v5 addEmergencyContacts:v25];

        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v84 objects:v92 count:16];
    }

    while (v22);
  }

  if ((*(&self->_has + 1) & 4) != 0)
  {
    *(v5 + 88) = self->_emergencyContactsModifiedDate;
    *(v5 + 404) |= 0x400uLL;
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v26 = self->_clinicalContacts;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v80 objects:v91 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v81;
    do
    {
      v30 = 0;
      do
      {
        if (*v81 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [*(*(&v80 + 1) + 8 * v30) copyWithZone:zone];
        [v5 addClinicalContacts:v31];

        ++v30;
      }

      while (v28 != v30);
      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v80 objects:v91 count:16];
    }

    while (v28);
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(v5 + 48) = self->_clinicalContactsModifiedDate;
    *(v5 + 404) |= 0x20uLL;
  }

  v32 = [(NSString *)self->_medicalConditions copyWithZone:zone];
  v33 = *(v5 + 320);
  *(v5 + 320) = v32;

  if (*(&self->_has + 2))
  {
    *(v5 + 136) = self->_medicalConditionsModifiedDate;
    *(v5 + 404) |= 0x10000uLL;
  }

  v34 = [(NSString *)self->_medicalNotes copyWithZone:zone];
  v35 = *(v5 + 336);
  *(v5 + 336) = v34;

  if ((*(&self->_has + 2) & 2) != 0)
  {
    *(v5 + 144) = self->_medicalNotesModifiedDate;
    *(v5 + 404) |= 0x20000uLL;
  }

  v36 = [(NSString *)self->_allergyInfo copyWithZone:zone];
  v37 = *(v5 + 264);
  *(v5 + 264) = v36;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 32) = self->_allergyInfoModifiedDate;
    *(v5 + 404) |= 8uLL;
  }

  v38 = [(NSString *)self->_medicationInfo copyWithZone:zone];
  v39 = *(v5 + 344);
  *(v5 + 344) = v38;

  v40 = self->_has;
  if ((*&v40 & 0x40000) != 0)
  {
    *(v5 + 152) = self->_medicationInfoModifiedDate;
    *(v5 + 404) |= 0x40000uLL;
    v40 = self->_has;
    if ((*&v40 & 0x400000000) == 0)
    {
LABEL_46:
      if ((*&v40 & 0x20000000) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }
  }

  else if ((*&v40 & 0x400000000) == 0)
  {
    goto LABEL_46;
  }

  *(v5 + 401) = self->_shareDuringEmergency;
  *(v5 + 404) |= 0x400000000uLL;
  if ((*&self->_has & 0x20000000) != 0)
  {
LABEL_47:
    *(v5 + 240) = self->_shareDuringEmergencyModifiedDate;
    *(v5 + 404) |= 0x20000000uLL;
  }

LABEL_48:
  v41 = [(NSString *)self->_primaryLanguageCode copyWithZone:zone];
  v42 = *(v5 + 376);
  *(v5 + 376) = v41;

  v43 = self->_has;
  if ((*&v43 & 0x10000000) != 0)
  {
    *(v5 + 232) = self->_primaryLanguageCodeModifiedDate;
    *(v5 + 404) |= 0x10000000uLL;
    v43 = self->_has;
    if ((*&v43 & 0x4000000) == 0)
    {
LABEL_50:
      if ((*&v43 & 0x8000000) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_102;
    }
  }

  else if ((*&v43 & 0x4000000) == 0)
  {
    goto LABEL_50;
  }

  *(v5 + 216) = self->_pregnancyStartDate;
  *(v5 + 404) |= 0x4000000uLL;
  v43 = self->_has;
  if ((*&v43 & 0x8000000) == 0)
  {
LABEL_51:
    if ((*&v43 & 0x1000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_103;
  }

LABEL_102:
  *(v5 + 224) = self->_pregnancyStartDateModifiedDate;
  *(v5 + 404) |= 0x8000000uLL;
  v43 = self->_has;
  if ((*&v43 & 0x1000000) == 0)
  {
LABEL_52:
    if ((*&v43 & 0x2000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_103:
  *(v5 + 200) = self->_pregnancyEstimatedDueDate;
  *(v5 + 404) |= 0x1000000uLL;
  if ((*&self->_has & 0x2000000) != 0)
  {
LABEL_53:
    *(v5 + 208) = self->_pregnancyEstimatedDueDateModifiedDate;
    *(v5 + 404) |= 0x2000000uLL;
  }

LABEL_54:
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v44 = self->_medicationsLists;
  v45 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v76 objects:v90 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v77;
    do
    {
      v48 = 0;
      do
      {
        if (*v77 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = [*(*(&v76 + 1) + 8 * v48) copyWithZone:zone];
        [v5 addMedicationsList:v49];

        ++v48;
      }

      while (v46 != v48);
      v46 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v76 objects:v90 count:16];
    }

    while (v46);
  }

  v50 = self->_has;
  if ((*&v50 & 0x80000) != 0)
  {
    *(v5 + 160) = self->_medicationsListModifiedDate;
    *(v5 + 404) |= 0x80000uLL;
    v50 = self->_has;
    if ((*&v50 & 0x100000) == 0)
    {
LABEL_63:
      if ((*&v50 & 0x200000) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    }
  }

  else if ((*&v50 & 0x100000) == 0)
  {
    goto LABEL_63;
  }

  *(v5 + 168) = self->_medicationsListVersion;
  *(v5 + 404) |= 0x100000uLL;
  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_64:
    *(v5 + 176) = self->_medicationsListVersionModifiedDate;
    *(v5 + 404) |= 0x200000uLL;
  }

LABEL_65:
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v51 = self->_allergiesLists;
  v52 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v72 objects:v89 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v73;
    do
    {
      v55 = 0;
      do
      {
        if (*v73 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = [*(*(&v72 + 1) + 8 * v55) copyWithZone:zone];
        [v5 addAllergiesList:v56];

        ++v55;
      }

      while (v53 != v55);
      v53 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v72 objects:v89 count:16];
    }

    while (v53);
  }

  v57 = self->_has;
  if (*&v57)
  {
    *(v5 + 8) = self->_allergiesListModifiedDate;
    *(v5 + 404) |= 1uLL;
    v57 = self->_has;
    if ((*&v57 & 2) == 0)
    {
LABEL_74:
      if ((*&v57 & 4) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_75;
    }
  }

  else if ((*&v57 & 2) == 0)
  {
    goto LABEL_74;
  }

  *(v5 + 16) = self->_allergiesListVersion;
  *(v5 + 404) |= 2uLL;
  if ((*&self->_has & 4) != 0)
  {
LABEL_75:
    *(v5 + 24) = self->_allergiesListVersionModifiedDate;
    *(v5 + 404) |= 4uLL;
  }

LABEL_76:
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v58 = self->_conditionsLists;
  v59 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v68 objects:v88 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v69;
    do
    {
      v62 = 0;
      do
      {
        if (*v69 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = [*(*(&v68 + 1) + 8 * v62) copyWithZone:{zone, v68}];
        [v5 addConditionsList:v63];

        ++v62;
      }

      while (v60 != v62);
      v60 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v68 objects:v88 count:16];
    }

    while (v60);
  }

  v64 = self->_has;
  if ((*&v64 & 0x40) == 0)
  {
    if ((*&v64 & 0x80) == 0)
    {
      goto LABEL_85;
    }

LABEL_112:
    *(v5 + 64) = self->_conditionsListVersion;
    *(v5 + 404) |= 0x80uLL;
    if ((*&self->_has & 0x100) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  *(v5 + 56) = self->_conditionsListModifiedDate;
  *(v5 + 404) |= 0x40uLL;
  v64 = self->_has;
  if ((*&v64 & 0x80) != 0)
  {
    goto LABEL_112;
  }

LABEL_85:
  if ((*&v64 & 0x100) != 0)
  {
LABEL_86:
    *(v5 + 72) = self->_conditionsListVersionModifiedDate;
    *(v5 + 404) |= 0x100uLL;
  }

LABEL_87:
  v65 = v5;

  v66 = *MEMORY[0x277D85DE8];
  return v65;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_230;
  }

  medicalIDBytes = self->_medicalIDBytes;
  if (medicalIDBytes | *(equalCopy + 41))
  {
    if (![(NSData *)medicalIDBytes isEqual:?])
    {
      goto LABEL_230;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 404);
  if ((*&has & 0x200) != 0)
  {
    if ((v7 & 0x200) == 0 || self->_dateSaved != *(equalCopy + 10))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x200) != 0)
  {
    goto LABEL_230;
  }

  if ((*&has & 0x100000000) != 0)
  {
    if ((v7 & 0x100000000) == 0 || self->_schemaVersion != *(equalCopy + 96))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x100000000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&has & 0x200000000) != 0)
  {
    if ((v7 & 0x200000000) == 0)
    {
      goto LABEL_230;
    }

    v8 = equalCopy[400];
    if (self->_isDisabled)
    {
      if ((equalCopy[400] & 1) == 0)
      {
        goto LABEL_230;
      }
    }

    else if (equalCopy[400])
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x200000000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v7 & 0x2000) == 0 || self->_isDisabledModifiedDate != *(equalCopy + 14))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x2000) != 0)
  {
    goto LABEL_230;
  }

  pictureData = self->_pictureData;
  if (pictureData | *(equalCopy + 46))
  {
    if (![(NSData *)pictureData isEqual:?])
    {
      goto LABEL_230;
    }

    has = self->_has;
    v7 = *(equalCopy + 404);
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v7 & 0x800000) == 0 || self->_pictureDataModifiedDate != *(equalCopy + 24))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x800000) != 0)
  {
    goto LABEL_230;
  }

  name = self->_name;
  if (name | *(equalCopy + 45))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_230;
    }

    has = self->_has;
    v7 = *(equalCopy + 404);
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v7 & 0x400000) == 0 || self->_nameModifiedDate != *(equalCopy + 23))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x400000) != 0)
  {
    goto LABEL_230;
  }

  gregorianBirthday = self->_gregorianBirthday;
  if (gregorianBirthday | *(equalCopy + 38))
  {
    if (![(HDCodableDateComponents *)gregorianBirthday isEqual:?])
    {
      goto LABEL_230;
    }

    has = self->_has;
    v7 = *(equalCopy + 404);
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v7 & 0x800) == 0 || self->_gregorianBirthdayModifiedDate != *(equalCopy + 12))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x800) != 0)
  {
    goto LABEL_230;
  }

  height = self->_height;
  if (height | *(equalCopy + 39))
  {
    if (![(HDCodableQuantity *)height isEqual:?])
    {
      goto LABEL_230;
    }

    has = self->_has;
    v7 = *(equalCopy + 404);
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v7 & 0x1000) == 0 || self->_heightModifiedDate != *(equalCopy + 13))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x1000) != 0)
  {
    goto LABEL_230;
  }

  weight = self->_weight;
  if (weight | *(equalCopy + 49))
  {
    if (![(HDCodableQuantity *)weight isEqual:?])
    {
      goto LABEL_230;
    }

    has = self->_has;
    v7 = *(equalCopy + 404);
  }

  if ((*&has & 0x40000000) != 0)
  {
    if ((v7 & 0x40000000) == 0 || self->_weightModifiedDate != *(equalCopy + 31))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x40000000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&has & 0x80000000) != 0)
  {
    if ((v7 & 0x80000000) == 0 || self->_bloodType != *(equalCopy + 68))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_bloodTypeModifiedDate != *(equalCopy + 5))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_230;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v7 & 0x4000) == 0 || self->_isOrganDonor != *(equalCopy + 15))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x4000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v7 & 0x8000) == 0 || self->_isOrganDonorModifiedDate != *(equalCopy + 16))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x8000) != 0)
  {
    goto LABEL_230;
  }

  emergencyContacts = self->_emergencyContacts;
  if (emergencyContacts | *(equalCopy + 37))
  {
    if (![(NSMutableArray *)emergencyContacts isEqual:?])
    {
      goto LABEL_230;
    }

    has = self->_has;
    v7 = *(equalCopy + 404);
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v7 & 0x400) == 0 || self->_emergencyContactsModifiedDate != *(equalCopy + 11))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x400) != 0)
  {
    goto LABEL_230;
  }

  clinicalContacts = self->_clinicalContacts;
  if (clinicalContacts | *(equalCopy + 35))
  {
    if (![(NSMutableArray *)clinicalContacts isEqual:?])
    {
      goto LABEL_230;
    }

    has = self->_has;
    v7 = *(equalCopy + 404);
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_clinicalContactsModifiedDate != *(equalCopy + 6))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_230;
  }

  medicalConditions = self->_medicalConditions;
  if (medicalConditions | *(equalCopy + 40))
  {
    if (![(NSString *)medicalConditions isEqual:?])
    {
      goto LABEL_230;
    }

    has = self->_has;
    v7 = *(equalCopy + 404);
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v7 & 0x10000) == 0 || self->_medicalConditionsModifiedDate != *(equalCopy + 17))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x10000) != 0)
  {
    goto LABEL_230;
  }

  medicalNotes = self->_medicalNotes;
  if (medicalNotes | *(equalCopy + 42))
  {
    if (![(NSString *)medicalNotes isEqual:?])
    {
      goto LABEL_230;
    }

    has = self->_has;
    v7 = *(equalCopy + 404);
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v7 & 0x20000) == 0 || self->_medicalNotesModifiedDate != *(equalCopy + 18))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x20000) != 0)
  {
    goto LABEL_230;
  }

  allergyInfo = self->_allergyInfo;
  if (allergyInfo | *(equalCopy + 33))
  {
    if (![(NSString *)allergyInfo isEqual:?])
    {
      goto LABEL_230;
    }

    has = self->_has;
    v7 = *(equalCopy + 404);
  }

  if ((*&has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_allergyInfoModifiedDate != *(equalCopy + 4))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_230;
  }

  medicationInfo = self->_medicationInfo;
  if (medicationInfo | *(equalCopy + 43))
  {
    if (![(NSString *)medicationInfo isEqual:?])
    {
      goto LABEL_230;
    }

    has = self->_has;
    v7 = *(equalCopy + 404);
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v7 & 0x40000) == 0 || self->_medicationInfoModifiedDate != *(equalCopy + 19))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x40000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&has & 0x400000000) != 0)
  {
    if ((v7 & 0x400000000) == 0)
    {
      goto LABEL_230;
    }

    v20 = equalCopy[401];
    if (self->_shareDuringEmergency)
    {
      if ((equalCopy[401] & 1) == 0)
      {
        goto LABEL_230;
      }
    }

    else if (equalCopy[401])
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x400000000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&has & 0x20000000) != 0)
  {
    if ((v7 & 0x20000000) == 0 || self->_shareDuringEmergencyModifiedDate != *(equalCopy + 30))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x20000000) != 0)
  {
    goto LABEL_230;
  }

  primaryLanguageCode = self->_primaryLanguageCode;
  if (primaryLanguageCode | *(equalCopy + 47))
  {
    if (![(NSString *)primaryLanguageCode isEqual:?])
    {
      goto LABEL_230;
    }

    has = self->_has;
    v7 = *(equalCopy + 404);
  }

  if ((*&has & 0x10000000) != 0)
  {
    if ((v7 & 0x10000000) == 0 || self->_primaryLanguageCodeModifiedDate != *(equalCopy + 29))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x10000000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v7 & 0x4000000) == 0 || self->_pregnancyStartDate != *(equalCopy + 27))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x4000000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v7 & 0x8000000) == 0 || self->_pregnancyStartDateModifiedDate != *(equalCopy + 28))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x8000000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v7 & 0x1000000) == 0 || self->_pregnancyEstimatedDueDate != *(equalCopy + 25))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x1000000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v7 & 0x2000000) == 0 || self->_pregnancyEstimatedDueDateModifiedDate != *(equalCopy + 26))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x2000000) != 0)
  {
    goto LABEL_230;
  }

  medicationsLists = self->_medicationsLists;
  if (medicationsLists | *(equalCopy + 44))
  {
    if (![(NSMutableArray *)medicationsLists isEqual:?])
    {
      goto LABEL_230;
    }

    has = self->_has;
    v7 = *(equalCopy + 404);
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v7 & 0x80000) == 0 || self->_medicationsListModifiedDate != *(equalCopy + 20))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x80000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v7 & 0x100000) == 0 || self->_medicationsListVersion != *(equalCopy + 21))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x100000) != 0)
  {
    goto LABEL_230;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v7 & 0x200000) == 0 || self->_medicationsListVersionModifiedDate != *(equalCopy + 22))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x200000) != 0)
  {
    goto LABEL_230;
  }

  allergiesLists = self->_allergiesLists;
  if (allergiesLists | *(equalCopy + 32))
  {
    if (![(NSMutableArray *)allergiesLists isEqual:?])
    {
      goto LABEL_230;
    }

    has = self->_has;
    v7 = *(equalCopy + 404);
  }

  if (*&has)
  {
    if ((v7 & 1) == 0 || self->_allergiesListModifiedDate != *(equalCopy + 1))
    {
      goto LABEL_230;
    }
  }

  else if (v7)
  {
    goto LABEL_230;
  }

  if ((*&has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_allergiesListVersion != *(equalCopy + 2))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_230;
  }

  if ((*&has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_allergiesListVersionModifiedDate != *(equalCopy + 3))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_230;
  }

  conditionsLists = self->_conditionsLists;
  if (conditionsLists | *(equalCopy + 36))
  {
    if ([(NSMutableArray *)conditionsLists isEqual:?])
    {
      has = self->_has;
      v7 = *(equalCopy + 404);
      goto LABEL_215;
    }

LABEL_230:
    v25 = 0;
    goto LABEL_231;
  }

LABEL_215:
  if ((*&has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_conditionsListModifiedDate != *(equalCopy + 7))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_230;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_conditionsListVersion != *(equalCopy + 8))
    {
      goto LABEL_230;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_230;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v7 & 0x100) == 0 || self->_conditionsListVersionModifiedDate != *(equalCopy + 9))
    {
      goto LABEL_230;
    }

    v25 = 1;
  }

  else
  {
    v25 = (v7 & 0x100) == 0;
  }

LABEL_231:

  return v25;
}

- (unint64_t)hash
{
  v198 = [(NSData *)self->_medicalIDBytes hash];
  has = self->_has;
  if ((*&has & 0x200) != 0)
  {
    dateSaved = self->_dateSaved;
    if (dateSaved < 0.0)
    {
      dateSaved = -dateSaved;
    }

    *v3.i64 = floor(dateSaved + 0.5);
    v13 = (dateSaved - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v14), v4, v3);
    v15 = 2654435761u * *v3.i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v15 += v13;
      }
    }

    else
    {
      v15 -= fabs(v13);
    }

    v197 = v15;
    if ((*&has & 0x100000000) != 0)
    {
LABEL_3:
      v196 = 2654435761 * self->_schemaVersion;
      if ((*&has & 0x200000000) != 0)
      {
        goto LABEL_4;
      }

LABEL_20:
      v195 = 0;
      if ((*&has & 0x2000) != 0)
      {
        goto LABEL_5;
      }

LABEL_21:
      v194 = 0;
      goto LABEL_22;
    }
  }

  else
  {
    v197 = 0;
    if ((*&has & 0x100000000) != 0)
    {
      goto LABEL_3;
    }
  }

  v196 = 0;
  if ((*&has & 0x200000000) == 0)
  {
    goto LABEL_20;
  }

LABEL_4:
  v195 = 2654435761 * self->_isDisabled;
  if ((*&has & 0x2000) == 0)
  {
    goto LABEL_21;
  }

LABEL_5:
  isDisabledModifiedDate = self->_isDisabledModifiedDate;
  if (isDisabledModifiedDate < 0.0)
  {
    isDisabledModifiedDate = -isDisabledModifiedDate;
  }

  *v3.i64 = floor(isDisabledModifiedDate + 0.5);
  v7 = (isDisabledModifiedDate - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v3.i64[0] = vbslq_s8(vnegq_f64(v8), v4, v3).i64[0];
  v9 = 2654435761u * *v3.i64;
  v10 = v9 + v7;
  if (v7 <= 0.0)
  {
    v10 = 2654435761u * *v3.i64;
  }

  v11 = v9 - fabs(v7);
  if (v7 >= 0.0)
  {
    v11 = v10;
  }

  v194 = v11;
LABEL_22:
  v193 = [(NSData *)self->_pictureData hash];
  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    pictureDataModifiedDate = self->_pictureDataModifiedDate;
    if (pictureDataModifiedDate < 0.0)
    {
      pictureDataModifiedDate = -pictureDataModifiedDate;
    }

    *v16.i64 = floor(pictureDataModifiedDate + 0.5);
    v19 = (pictureDataModifiedDate - *v16.i64) * 1.84467441e19;
    *v17.i64 = *v16.i64 - trunc(*v16.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v16.i64[0] = vbslq_s8(vnegq_f64(v20), v17, v16).i64[0];
    v21 = 2654435761u * *v16.i64;
    v22 = v21 + v19;
    if (v19 <= 0.0)
    {
      v22 = 2654435761u * *v16.i64;
    }

    v23 = v21 - fabs(v19);
    if (v19 >= 0.0)
    {
      v23 = v22;
    }

    v192 = v23;
  }

  else
  {
    v192 = 0;
  }

  v191 = [(NSString *)self->_name hash];
  if ((*(&self->_has + 2) & 0x40) != 0)
  {
    nameModifiedDate = self->_nameModifiedDate;
    if (nameModifiedDate < 0.0)
    {
      nameModifiedDate = -nameModifiedDate;
    }

    *v24.i64 = floor(nameModifiedDate + 0.5);
    v28 = (nameModifiedDate - *v24.i64) * 1.84467441e19;
    *v25.i64 = *v24.i64 - trunc(*v24.i64 * 5.42101086e-20) * 1.84467441e19;
    v29.f64[0] = NAN;
    v29.f64[1] = NAN;
    v26 = 2654435761u * *vbslq_s8(vnegq_f64(v29), v25, v24).i64;
    if (v28 >= 0.0)
    {
      if (v28 > 0.0)
      {
        v26 += v28;
      }
    }

    else
    {
      v26 -= fabs(v28);
    }
  }

  else
  {
    v26 = 0;
  }

  v190 = v26;
  v189 = [(HDCodableDateComponents *)self->_gregorianBirthday hash];
  if ((*(&self->_has + 1) & 8) != 0)
  {
    gregorianBirthdayModifiedDate = self->_gregorianBirthdayModifiedDate;
    if (gregorianBirthdayModifiedDate < 0.0)
    {
      gregorianBirthdayModifiedDate = -gregorianBirthdayModifiedDate;
    }

    *v30.i64 = floor(gregorianBirthdayModifiedDate + 0.5);
    v34 = (gregorianBirthdayModifiedDate - *v30.i64) * 1.84467441e19;
    *v31.i64 = *v30.i64 - trunc(*v30.i64 * 5.42101086e-20) * 1.84467441e19;
    v35.f64[0] = NAN;
    v35.f64[1] = NAN;
    v32 = 2654435761u * *vbslq_s8(vnegq_f64(v35), v31, v30).i64;
    if (v34 >= 0.0)
    {
      if (v34 > 0.0)
      {
        v32 += v34;
      }
    }

    else
    {
      v32 -= fabs(v34);
    }
  }

  else
  {
    v32 = 0;
  }

  v188 = v32;
  v187 = [(HDCodableQuantity *)self->_height hash];
  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    heightModifiedDate = self->_heightModifiedDate;
    if (heightModifiedDate < 0.0)
    {
      heightModifiedDate = -heightModifiedDate;
    }

    *v36.i64 = floor(heightModifiedDate + 0.5);
    v40 = (heightModifiedDate - *v36.i64) * 1.84467441e19;
    *v37.i64 = *v36.i64 - trunc(*v36.i64 * 5.42101086e-20) * 1.84467441e19;
    v41.f64[0] = NAN;
    v41.f64[1] = NAN;
    v38 = 2654435761u * *vbslq_s8(vnegq_f64(v41), v37, v36).i64;
    if (v40 >= 0.0)
    {
      if (v40 > 0.0)
      {
        v38 += v40;
      }
    }

    else
    {
      v38 -= fabs(v40);
    }
  }

  else
  {
    v38 = 0;
  }

  v186 = v38;
  v185 = [(HDCodableQuantity *)self->_weight hash];
  v44 = self->_has;
  if ((*&v44 & 0x40000000) != 0)
  {
    weightModifiedDate = self->_weightModifiedDate;
    if (weightModifiedDate < 0.0)
    {
      weightModifiedDate = -weightModifiedDate;
    }

    *v42.i64 = floor(weightModifiedDate + 0.5);
    v47 = (weightModifiedDate - *v42.i64) * 1.84467441e19;
    *v43.i64 = *v42.i64 - trunc(*v42.i64 * 5.42101086e-20) * 1.84467441e19;
    v48.f64[0] = NAN;
    v48.f64[1] = NAN;
    v42 = vbslq_s8(vnegq_f64(v48), v43, v42);
    v45 = 2654435761u * *v42.i64;
    if (v47 >= 0.0)
    {
      if (v47 > 0.0)
      {
        v45 += v47;
      }
    }

    else
    {
      v45 -= fabs(v47);
    }
  }

  else
  {
    v45 = 0;
  }

  if ((*&v44 & 0x80000000) != 0)
  {
    v183 = 2654435761 * self->_bloodType;
    if ((*&v44 & 0x10) != 0)
    {
      goto LABEL_65;
    }

LABEL_70:
    v52 = 0;
    goto LABEL_71;
  }

  v183 = 0;
  if ((*&v44 & 0x10) == 0)
  {
    goto LABEL_70;
  }

LABEL_65:
  bloodTypeModifiedDate = self->_bloodTypeModifiedDate;
  if (bloodTypeModifiedDate < 0.0)
  {
    bloodTypeModifiedDate = -bloodTypeModifiedDate;
  }

  *v42.i64 = floor(bloodTypeModifiedDate + 0.5);
  v50 = (bloodTypeModifiedDate - *v42.i64) * 1.84467441e19;
  *v43.i64 = *v42.i64 - trunc(*v42.i64 * 5.42101086e-20) * 1.84467441e19;
  v51.f64[0] = NAN;
  v51.f64[1] = NAN;
  v42 = vbslq_s8(vnegq_f64(v51), v43, v42);
  v52 = 2654435761u * *v42.i64;
  if (v50 >= 0.0)
  {
    if (v50 > 0.0)
    {
      v52 += v50;
    }
  }

  else
  {
    v52 -= fabs(v50);
  }

LABEL_71:
  if ((*&v44 & 0x4000) != 0)
  {
    v181 = 2654435761 * self->_isOrganDonor;
  }

  else
  {
    v181 = 0;
  }

  v184 = v45;
  v182 = v52;
  if ((*&v44 & 0x8000) != 0)
  {
    isOrganDonorModifiedDate = self->_isOrganDonorModifiedDate;
    if (isOrganDonorModifiedDate < 0.0)
    {
      isOrganDonorModifiedDate = -isOrganDonorModifiedDate;
    }

    *v42.i64 = floor(isOrganDonorModifiedDate + 0.5);
    v55 = (isOrganDonorModifiedDate - *v42.i64) * 1.84467441e19;
    *v43.i64 = *v42.i64 - trunc(*v42.i64 * 5.42101086e-20) * 1.84467441e19;
    v56.f64[0] = NAN;
    v56.f64[1] = NAN;
    v53 = 2654435761u * *vbslq_s8(vnegq_f64(v56), v43, v42).i64;
    if (v55 >= 0.0)
    {
      if (v55 > 0.0)
      {
        v53 += v55;
      }
    }

    else
    {
      v53 -= fabs(v55);
    }
  }

  else
  {
    v53 = 0;
  }

  v180 = v53;
  v179 = [(NSMutableArray *)self->_emergencyContacts hash];
  if ((*(&self->_has + 1) & 4) != 0)
  {
    emergencyContactsModifiedDate = self->_emergencyContactsModifiedDate;
    if (emergencyContactsModifiedDate < 0.0)
    {
      emergencyContactsModifiedDate = -emergencyContactsModifiedDate;
    }

    *v57.i64 = floor(emergencyContactsModifiedDate + 0.5);
    v61 = (emergencyContactsModifiedDate - *v57.i64) * 1.84467441e19;
    *v58.i64 = *v57.i64 - trunc(*v57.i64 * 5.42101086e-20) * 1.84467441e19;
    v62.f64[0] = NAN;
    v62.f64[1] = NAN;
    v59 = 2654435761u * *vbslq_s8(vnegq_f64(v62), v58, v57).i64;
    if (v61 >= 0.0)
    {
      if (v61 > 0.0)
      {
        v59 += v61;
      }
    }

    else
    {
      v59 -= fabs(v61);
    }
  }

  else
  {
    v59 = 0;
  }

  v178 = v59;
  v177 = [(NSMutableArray *)self->_clinicalContacts hash];
  if ((*&self->_has & 0x20) != 0)
  {
    clinicalContactsModifiedDate = self->_clinicalContactsModifiedDate;
    if (clinicalContactsModifiedDate < 0.0)
    {
      clinicalContactsModifiedDate = -clinicalContactsModifiedDate;
    }

    *v63.i64 = floor(clinicalContactsModifiedDate + 0.5);
    v67 = (clinicalContactsModifiedDate - *v63.i64) * 1.84467441e19;
    *v64.i64 = *v63.i64 - trunc(*v63.i64 * 5.42101086e-20) * 1.84467441e19;
    v68.f64[0] = NAN;
    v68.f64[1] = NAN;
    v65 = 2654435761u * *vbslq_s8(vnegq_f64(v68), v64, v63).i64;
    if (v67 >= 0.0)
    {
      if (v67 > 0.0)
      {
        v65 += v67;
      }
    }

    else
    {
      v65 -= fabs(v67);
    }
  }

  else
  {
    v65 = 0;
  }

  v176 = v65;
  v175 = [(NSString *)self->_medicalConditions hash];
  if (*(&self->_has + 2))
  {
    medicalConditionsModifiedDate = self->_medicalConditionsModifiedDate;
    if (medicalConditionsModifiedDate < 0.0)
    {
      medicalConditionsModifiedDate = -medicalConditionsModifiedDate;
    }

    *v69.i64 = floor(medicalConditionsModifiedDate + 0.5);
    v73 = (medicalConditionsModifiedDate - *v69.i64) * 1.84467441e19;
    *v70.i64 = *v69.i64 - trunc(*v69.i64 * 5.42101086e-20) * 1.84467441e19;
    v74.f64[0] = NAN;
    v74.f64[1] = NAN;
    v71 = 2654435761u * *vbslq_s8(vnegq_f64(v74), v70, v69).i64;
    if (v73 >= 0.0)
    {
      if (v73 > 0.0)
      {
        v71 += v73;
      }
    }

    else
    {
      v71 -= fabs(v73);
    }
  }

  else
  {
    v71 = 0;
  }

  v174 = v71;
  v173 = [(NSString *)self->_medicalNotes hash];
  if ((*(&self->_has + 2) & 2) != 0)
  {
    medicalNotesModifiedDate = self->_medicalNotesModifiedDate;
    if (medicalNotesModifiedDate < 0.0)
    {
      medicalNotesModifiedDate = -medicalNotesModifiedDate;
    }

    *v75.i64 = floor(medicalNotesModifiedDate + 0.5);
    v79 = (medicalNotesModifiedDate - *v75.i64) * 1.84467441e19;
    *v76.i64 = *v75.i64 - trunc(*v75.i64 * 5.42101086e-20) * 1.84467441e19;
    v80.f64[0] = NAN;
    v80.f64[1] = NAN;
    v77 = 2654435761u * *vbslq_s8(vnegq_f64(v80), v76, v75).i64;
    if (v79 >= 0.0)
    {
      if (v79 > 0.0)
      {
        v77 += v79;
      }
    }

    else
    {
      v77 -= fabs(v79);
    }
  }

  else
  {
    v77 = 0;
  }

  v172 = v77;
  v171 = [(NSString *)self->_allergyInfo hash];
  if ((*&self->_has & 8) != 0)
  {
    allergyInfoModifiedDate = self->_allergyInfoModifiedDate;
    if (allergyInfoModifiedDate < 0.0)
    {
      allergyInfoModifiedDate = -allergyInfoModifiedDate;
    }

    *v81.i64 = floor(allergyInfoModifiedDate + 0.5);
    v85 = (allergyInfoModifiedDate - *v81.i64) * 1.84467441e19;
    *v82.i64 = *v81.i64 - trunc(*v81.i64 * 5.42101086e-20) * 1.84467441e19;
    v86.f64[0] = NAN;
    v86.f64[1] = NAN;
    v83 = 2654435761u * *vbslq_s8(vnegq_f64(v86), v82, v81).i64;
    if (v85 >= 0.0)
    {
      if (v85 > 0.0)
      {
        v83 += v85;
      }
    }

    else
    {
      v83 -= fabs(v85);
    }
  }

  else
  {
    v83 = 0;
  }

  v170 = v83;
  v169 = [(NSString *)self->_medicationInfo hash];
  v89 = self->_has;
  if ((*&v89 & 0x40000) != 0)
  {
    medicationInfoModifiedDate = self->_medicationInfoModifiedDate;
    if (medicationInfoModifiedDate < 0.0)
    {
      medicationInfoModifiedDate = -medicationInfoModifiedDate;
    }

    *v87.i64 = floor(medicationInfoModifiedDate + 0.5);
    v92 = (medicationInfoModifiedDate - *v87.i64) * 1.84467441e19;
    *v88.i64 = *v87.i64 - trunc(*v87.i64 * 5.42101086e-20) * 1.84467441e19;
    v93.f64[0] = NAN;
    v93.f64[1] = NAN;
    v87 = vbslq_s8(vnegq_f64(v93), v88, v87);
    v90 = 2654435761u * *v87.i64;
    if (v92 >= 0.0)
    {
      if (v92 > 0.0)
      {
        v90 += v92;
      }
    }

    else
    {
      v90 -= fabs(v92);
    }
  }

  else
  {
    v90 = 0;
  }

  if ((*&v89 & 0x400000000) != 0)
  {
    v167 = 2654435761 * self->_shareDuringEmergency;
  }

  else
  {
    v167 = 0;
  }

  v168 = v90;
  if ((*&v89 & 0x20000000) != 0)
  {
    shareDuringEmergencyModifiedDate = self->_shareDuringEmergencyModifiedDate;
    if (shareDuringEmergencyModifiedDate < 0.0)
    {
      shareDuringEmergencyModifiedDate = -shareDuringEmergencyModifiedDate;
    }

    *v87.i64 = floor(shareDuringEmergencyModifiedDate + 0.5);
    v96 = (shareDuringEmergencyModifiedDate - *v87.i64) * 1.84467441e19;
    *v88.i64 = *v87.i64 - trunc(*v87.i64 * 5.42101086e-20) * 1.84467441e19;
    v97.f64[0] = NAN;
    v97.f64[1] = NAN;
    v94 = 2654435761u * *vbslq_s8(vnegq_f64(v97), v88, v87).i64;
    if (v96 >= 0.0)
    {
      if (v96 > 0.0)
      {
        v94 += v96;
      }
    }

    else
    {
      v94 -= fabs(v96);
    }
  }

  else
  {
    v94 = 0;
  }

  v166 = v94;
  v165 = [(NSString *)self->_primaryLanguageCode hash];
  v100 = self->_has;
  if ((*&v100 & 0x10000000) != 0)
  {
    primaryLanguageCodeModifiedDate = self->_primaryLanguageCodeModifiedDate;
    if (primaryLanguageCodeModifiedDate < 0.0)
    {
      primaryLanguageCodeModifiedDate = -primaryLanguageCodeModifiedDate;
    }

    *v98.i64 = floor(primaryLanguageCodeModifiedDate + 0.5);
    v103 = (primaryLanguageCodeModifiedDate - *v98.i64) * 1.84467441e19;
    *v99.i64 = *v98.i64 - trunc(*v98.i64 * 5.42101086e-20) * 1.84467441e19;
    v104.f64[0] = NAN;
    v104.f64[1] = NAN;
    v98 = vbslq_s8(vnegq_f64(v104), v99, v98);
    v101 = 2654435761u * *v98.i64;
    if (v103 >= 0.0)
    {
      if (v103 > 0.0)
      {
        v101 += v103;
      }
    }

    else
    {
      v101 -= fabs(v103);
    }
  }

  else
  {
    v101 = 0;
  }

  if ((*&v100 & 0x4000000) != 0)
  {
    pregnancyStartDate = self->_pregnancyStartDate;
    if (pregnancyStartDate < 0.0)
    {
      pregnancyStartDate = -pregnancyStartDate;
    }

    *v98.i64 = floor(pregnancyStartDate + 0.5);
    v107 = (pregnancyStartDate - *v98.i64) * 1.84467441e19;
    *v99.i64 = *v98.i64 - trunc(*v98.i64 * 5.42101086e-20) * 1.84467441e19;
    v108.f64[0] = NAN;
    v108.f64[1] = NAN;
    v98 = vbslq_s8(vnegq_f64(v108), v99, v98);
    v105 = 2654435761u * *v98.i64;
    if (v107 >= 0.0)
    {
      if (v107 > 0.0)
      {
        v105 += v107;
      }
    }

    else
    {
      v105 -= fabs(v107);
    }
  }

  else
  {
    v105 = 0;
  }

  if ((*&v100 & 0x8000000) != 0)
  {
    pregnancyStartDateModifiedDate = self->_pregnancyStartDateModifiedDate;
    if (pregnancyStartDateModifiedDate < 0.0)
    {
      pregnancyStartDateModifiedDate = -pregnancyStartDateModifiedDate;
    }

    *v98.i64 = floor(pregnancyStartDateModifiedDate + 0.5);
    v111 = (pregnancyStartDateModifiedDate - *v98.i64) * 1.84467441e19;
    *v99.i64 = *v98.i64 - trunc(*v98.i64 * 5.42101086e-20) * 1.84467441e19;
    v112.f64[0] = NAN;
    v112.f64[1] = NAN;
    v98 = vbslq_s8(vnegq_f64(v112), v99, v98);
    v109 = 2654435761u * *v98.i64;
    if (v111 >= 0.0)
    {
      if (v111 > 0.0)
      {
        v109 += v111;
      }
    }

    else
    {
      v109 -= fabs(v111);
    }
  }

  else
  {
    v109 = 0;
  }

  if ((*&v100 & 0x1000000) != 0)
  {
    pregnancyEstimatedDueDate = self->_pregnancyEstimatedDueDate;
    if (pregnancyEstimatedDueDate < 0.0)
    {
      pregnancyEstimatedDueDate = -pregnancyEstimatedDueDate;
    }

    *v98.i64 = floor(pregnancyEstimatedDueDate + 0.5);
    v115 = (pregnancyEstimatedDueDate - *v98.i64) * 1.84467441e19;
    *v99.i64 = *v98.i64 - trunc(*v98.i64 * 5.42101086e-20) * 1.84467441e19;
    v116.f64[0] = NAN;
    v116.f64[1] = NAN;
    v98 = vbslq_s8(vnegq_f64(v116), v99, v98);
    v113 = 2654435761u * *v98.i64;
    if (v115 >= 0.0)
    {
      if (v115 > 0.0)
      {
        v113 += v115;
      }
    }

    else
    {
      v113 -= fabs(v115);
    }
  }

  else
  {
    v113 = 0;
  }

  v163 = v105;
  v164 = v101;
  v161 = v113;
  v162 = v109;
  if ((*&v100 & 0x2000000) != 0)
  {
    pregnancyEstimatedDueDateModifiedDate = self->_pregnancyEstimatedDueDateModifiedDate;
    if (pregnancyEstimatedDueDateModifiedDate < 0.0)
    {
      pregnancyEstimatedDueDateModifiedDate = -pregnancyEstimatedDueDateModifiedDate;
    }

    *v98.i64 = floor(pregnancyEstimatedDueDateModifiedDate + 0.5);
    v119 = (pregnancyEstimatedDueDateModifiedDate - *v98.i64) * 1.84467441e19;
    *v99.i64 = *v98.i64 - trunc(*v98.i64 * 5.42101086e-20) * 1.84467441e19;
    v120.f64[0] = NAN;
    v120.f64[1] = NAN;
    v117 = 2654435761u * *vbslq_s8(vnegq_f64(v120), v99, v98).i64;
    if (v119 >= 0.0)
    {
      if (v119 > 0.0)
      {
        v117 += v119;
      }
    }

    else
    {
      v117 -= fabs(v119);
    }
  }

  else
  {
    v117 = 0;
  }

  v160 = [(NSMutableArray *)self->_medicationsLists hash];
  v123 = self->_has;
  if ((*&v123 & 0x80000) != 0)
  {
    medicationsListModifiedDate = self->_medicationsListModifiedDate;
    if (medicationsListModifiedDate < 0.0)
    {
      medicationsListModifiedDate = -medicationsListModifiedDate;
    }

    *v121.i64 = floor(medicationsListModifiedDate + 0.5);
    v126 = (medicationsListModifiedDate - *v121.i64) * 1.84467441e19;
    *v122.i64 = *v121.i64 - trunc(*v121.i64 * 5.42101086e-20) * 1.84467441e19;
    v127.f64[0] = NAN;
    v127.f64[1] = NAN;
    v121 = vbslq_s8(vnegq_f64(v127), v122, v121);
    v124 = 2654435761u * *v121.i64;
    if (v126 >= 0.0)
    {
      if (v126 > 0.0)
      {
        v124 += v126;
      }
    }

    else
    {
      v124 -= fabs(v126);
    }
  }

  else
  {
    v124 = 0;
  }

  if ((*&v123 & 0x100000) != 0)
  {
    v159 = 2654435761 * self->_medicationsListVersion;
    if ((*&v123 & 0x200000) != 0)
    {
      goto LABEL_193;
    }

LABEL_198:
    v131 = 0;
    goto LABEL_199;
  }

  v159 = 0;
  if ((*&v123 & 0x200000) == 0)
  {
    goto LABEL_198;
  }

LABEL_193:
  medicationsListVersionModifiedDate = self->_medicationsListVersionModifiedDate;
  if (medicationsListVersionModifiedDate < 0.0)
  {
    medicationsListVersionModifiedDate = -medicationsListVersionModifiedDate;
  }

  *v121.i64 = floor(medicationsListVersionModifiedDate + 0.5);
  v129 = (medicationsListVersionModifiedDate - *v121.i64) * 1.84467441e19;
  *v122.i64 = *v121.i64 - trunc(*v121.i64 * 5.42101086e-20) * 1.84467441e19;
  v130.f64[0] = NAN;
  v130.f64[1] = NAN;
  v131 = 2654435761u * *vbslq_s8(vnegq_f64(v130), v122, v121).i64;
  if (v129 >= 0.0)
  {
    if (v129 > 0.0)
    {
      v131 += v129;
    }
  }

  else
  {
    v131 -= fabs(v129);
  }

LABEL_199:
  v132 = [(NSMutableArray *)self->_allergiesLists hash];
  v135 = self->_has;
  if (*&v135)
  {
    allergiesListModifiedDate = self->_allergiesListModifiedDate;
    if (allergiesListModifiedDate < 0.0)
    {
      allergiesListModifiedDate = -allergiesListModifiedDate;
    }

    *v133.i64 = floor(allergiesListModifiedDate + 0.5);
    v138 = (allergiesListModifiedDate - *v133.i64) * 1.84467441e19;
    *v134.i64 = *v133.i64 - trunc(*v133.i64 * 5.42101086e-20) * 1.84467441e19;
    v139.f64[0] = NAN;
    v139.f64[1] = NAN;
    v133 = vbslq_s8(vnegq_f64(v139), v134, v133);
    v136 = 2654435761u * *v133.i64;
    if (v138 >= 0.0)
    {
      if (v138 > 0.0)
      {
        v136 += v138;
      }
    }

    else
    {
      v136 -= fabs(v138);
    }
  }

  else
  {
    v136 = 0;
  }

  if ((*&v135 & 2) != 0)
  {
    v140 = 2654435761 * self->_allergiesListVersion;
    if ((*&v135 & 4) != 0)
    {
      goto LABEL_211;
    }

LABEL_216:
    v144 = 0;
    goto LABEL_217;
  }

  v140 = 0;
  if ((*&v135 & 4) == 0)
  {
    goto LABEL_216;
  }

LABEL_211:
  allergiesListVersionModifiedDate = self->_allergiesListVersionModifiedDate;
  if (allergiesListVersionModifiedDate < 0.0)
  {
    allergiesListVersionModifiedDate = -allergiesListVersionModifiedDate;
  }

  *v133.i64 = floor(allergiesListVersionModifiedDate + 0.5);
  v142 = (allergiesListVersionModifiedDate - *v133.i64) * 1.84467441e19;
  *v134.i64 = *v133.i64 - trunc(*v133.i64 * 5.42101086e-20) * 1.84467441e19;
  v143.f64[0] = NAN;
  v143.f64[1] = NAN;
  v144 = 2654435761u * *vbslq_s8(vnegq_f64(v143), v134, v133).i64;
  if (v142 >= 0.0)
  {
    if (v142 > 0.0)
    {
      v144 += v142;
    }
  }

  else
  {
    v144 -= fabs(v142);
  }

LABEL_217:
  v145 = [(NSMutableArray *)self->_conditionsLists hash];
  v148 = self->_has;
  if ((*&v148 & 0x40) != 0)
  {
    conditionsListModifiedDate = self->_conditionsListModifiedDate;
    if (conditionsListModifiedDate < 0.0)
    {
      conditionsListModifiedDate = -conditionsListModifiedDate;
    }

    *v146.i64 = floor(conditionsListModifiedDate + 0.5);
    v151 = (conditionsListModifiedDate - *v146.i64) * 1.84467441e19;
    *v147.i64 = *v146.i64 - trunc(*v146.i64 * 5.42101086e-20) * 1.84467441e19;
    v152.f64[0] = NAN;
    v152.f64[1] = NAN;
    v146 = vbslq_s8(vnegq_f64(v152), v147, v146);
    v149 = 2654435761u * *v146.i64;
    if (v151 >= 0.0)
    {
      if (v151 > 0.0)
      {
        v149 += v151;
      }
    }

    else
    {
      v149 -= fabs(v151);
    }
  }

  else
  {
    v149 = 0;
  }

  if ((*&v148 & 0x80) != 0)
  {
    v153 = 2654435761 * self->_conditionsListVersion;
    if ((*&v148 & 0x100) != 0)
    {
      goto LABEL_229;
    }

LABEL_234:
    v157 = 0;
    return v197 ^ v198 ^ v196 ^ v195 ^ v194 ^ v193 ^ v192 ^ v191 ^ v190 ^ v189 ^ v188 ^ v187 ^ v186 ^ v185 ^ v184 ^ v183 ^ v182 ^ v181 ^ v180 ^ v179 ^ v178 ^ v177 ^ v176 ^ v175 ^ v174 ^ v173 ^ v172 ^ v171 ^ v170 ^ v169 ^ v168 ^ v167 ^ v166 ^ v165 ^ v164 ^ v163 ^ v162 ^ v161 ^ v117 ^ v160 ^ v124 ^ v159 ^ v131 ^ v132 ^ v136 ^ v140 ^ v144 ^ v145 ^ v149 ^ v153 ^ v157;
  }

  v153 = 0;
  if ((*&v148 & 0x100) == 0)
  {
    goto LABEL_234;
  }

LABEL_229:
  conditionsListVersionModifiedDate = self->_conditionsListVersionModifiedDate;
  if (conditionsListVersionModifiedDate < 0.0)
  {
    conditionsListVersionModifiedDate = -conditionsListVersionModifiedDate;
  }

  *v146.i64 = floor(conditionsListVersionModifiedDate + 0.5);
  v155 = (conditionsListVersionModifiedDate - *v146.i64) * 1.84467441e19;
  *v147.i64 = *v146.i64 - trunc(*v146.i64 * 5.42101086e-20) * 1.84467441e19;
  v156.f64[0] = NAN;
  v156.f64[1] = NAN;
  v157 = 2654435761u * *vbslq_s8(vnegq_f64(v156), v147, v146).i64;
  if (v155 >= 0.0)
  {
    if (v155 > 0.0)
    {
      v157 += v155;
    }
  }

  else
  {
    v157 -= fabs(v155);
  }

  return v197 ^ v198 ^ v196 ^ v195 ^ v194 ^ v193 ^ v192 ^ v191 ^ v190 ^ v189 ^ v188 ^ v187 ^ v186 ^ v185 ^ v184 ^ v183 ^ v182 ^ v181 ^ v180 ^ v179 ^ v178 ^ v177 ^ v176 ^ v175 ^ v174 ^ v173 ^ v172 ^ v171 ^ v170 ^ v169 ^ v168 ^ v167 ^ v166 ^ v165 ^ v164 ^ v163 ^ v162 ^ v161 ^ v117 ^ v160 ^ v124 ^ v159 ^ v131 ^ v132 ^ v136 ^ v140 ^ v144 ^ v145 ^ v149 ^ v153 ^ v157;
}

- (void)mergeFrom:(id)from
{
  v69 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 41))
  {
    [(HDCodableMedicalIDData *)self setMedicalIDBytes:?];
  }

  v5 = *(fromCopy + 404);
  if ((v5 & 0x200) != 0)
  {
    self->_dateSaved = *(fromCopy + 10);
    *&self->_has |= 0x200uLL;
    v5 = *(fromCopy + 404);
    if ((v5 & 0x100000000) == 0)
    {
LABEL_5:
      if ((v5 & 0x200000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_21;
    }
  }

  else if ((v5 & 0x100000000) == 0)
  {
    goto LABEL_5;
  }

  self->_schemaVersion = *(fromCopy + 96);
  *&self->_has |= 0x100000000uLL;
  v5 = *(fromCopy + 404);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_6:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_21:
  self->_isDisabled = fromCopy[400];
  *&self->_has |= 0x200000000uLL;
  if ((*(fromCopy + 404) & 0x2000) != 0)
  {
LABEL_7:
    self->_isDisabledModifiedDate = *(fromCopy + 14);
    *&self->_has |= 0x2000uLL;
  }

LABEL_8:
  if (*(fromCopy + 46))
  {
    [(HDCodableMedicalIDData *)self setPictureData:?];
  }

  if (fromCopy[406] < 0)
  {
    self->_pictureDataModifiedDate = *(fromCopy + 24);
    *&self->_has |= 0x800000uLL;
  }

  if (*(fromCopy + 45))
  {
    [(HDCodableMedicalIDData *)self setName:?];
  }

  if ((fromCopy[406] & 0x40) != 0)
  {
    self->_nameModifiedDate = *(fromCopy + 23);
    *&self->_has |= 0x400000uLL;
  }

  gregorianBirthday = self->_gregorianBirthday;
  v7 = *(fromCopy + 38);
  if (gregorianBirthday)
  {
    if (v7)
    {
      [(HDCodableDateComponents *)gregorianBirthday mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(HDCodableMedicalIDData *)self setGregorianBirthday:?];
  }

  if ((fromCopy[405] & 8) != 0)
  {
    self->_gregorianBirthdayModifiedDate = *(fromCopy + 12);
    *&self->_has |= 0x800uLL;
  }

  height = self->_height;
  v9 = *(fromCopy + 39);
  if (height)
  {
    if (v9)
    {
      [(HDCodableQuantity *)height mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(HDCodableMedicalIDData *)self setHeight:?];
  }

  if ((fromCopy[405] & 0x10) != 0)
  {
    self->_heightModifiedDate = *(fromCopy + 13);
    *&self->_has |= 0x1000uLL;
  }

  weight = self->_weight;
  v11 = *(fromCopy + 49);
  if (weight)
  {
    if (v11)
    {
      [(HDCodableQuantity *)weight mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(HDCodableMedicalIDData *)self setWeight:?];
  }

  v12 = *(fromCopy + 404);
  if ((v12 & 0x40000000) != 0)
  {
    self->_weightModifiedDate = *(fromCopy + 31);
    *&self->_has |= 0x40000000uLL;
    v12 = *(fromCopy + 404);
    if ((v12 & 0x80000000) == 0)
    {
LABEL_41:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_125;
    }
  }

  else if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

  self->_bloodType = *(fromCopy + 68);
  *&self->_has |= 0x80000000uLL;
  v12 = *(fromCopy + 404);
  if ((v12 & 0x10) == 0)
  {
LABEL_42:
    if ((v12 & 0x4000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_126;
  }

LABEL_125:
  self->_bloodTypeModifiedDate = *(fromCopy + 5);
  *&self->_has |= 0x10uLL;
  v12 = *(fromCopy + 404);
  if ((v12 & 0x4000) == 0)
  {
LABEL_43:
    if ((v12 & 0x8000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_126:
  self->_isOrganDonor = *(fromCopy + 15);
  *&self->_has |= 0x4000uLL;
  if ((*(fromCopy + 404) & 0x8000) != 0)
  {
LABEL_44:
    self->_isOrganDonorModifiedDate = *(fromCopy + 16);
    *&self->_has |= 0x8000uLL;
  }

LABEL_45:
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v13 = *(fromCopy + 37);
  v14 = [v13 countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v61;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v61 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(HDCodableMedicalIDData *)self addEmergencyContacts:*(*(&v60 + 1) + 8 * i)];
      }

      v15 = [v13 countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v15);
  }

  if ((fromCopy[405] & 4) != 0)
  {
    self->_emergencyContactsModifiedDate = *(fromCopy + 11);
    *&self->_has |= 0x400uLL;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v18 = *(fromCopy + 35);
  v19 = [v18 countByEnumeratingWithState:&v56 objects:v67 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v57;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v57 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(HDCodableMedicalIDData *)self addClinicalContacts:*(*(&v56 + 1) + 8 * j)];
      }

      v20 = [v18 countByEnumeratingWithState:&v56 objects:v67 count:16];
    }

    while (v20);
  }

  if ((fromCopy[404] & 0x20) != 0)
  {
    self->_clinicalContactsModifiedDate = *(fromCopy + 6);
    *&self->_has |= 0x20uLL;
  }

  if (*(fromCopy + 40))
  {
    [(HDCodableMedicalIDData *)self setMedicalConditions:?];
  }

  if (fromCopy[406])
  {
    self->_medicalConditionsModifiedDate = *(fromCopy + 17);
    *&self->_has |= 0x10000uLL;
  }

  if (*(fromCopy + 42))
  {
    [(HDCodableMedicalIDData *)self setMedicalNotes:?];
  }

  if ((fromCopy[406] & 2) != 0)
  {
    self->_medicalNotesModifiedDate = *(fromCopy + 18);
    *&self->_has |= 0x20000uLL;
  }

  if (*(fromCopy + 33))
  {
    [(HDCodableMedicalIDData *)self setAllergyInfo:?];
  }

  if ((fromCopy[404] & 8) != 0)
  {
    self->_allergyInfoModifiedDate = *(fromCopy + 4);
    *&self->_has |= 8uLL;
  }

  if (*(fromCopy + 43))
  {
    [(HDCodableMedicalIDData *)self setMedicationInfo:?];
  }

  v23 = *(fromCopy + 404);
  if ((v23 & 0x40000) != 0)
  {
    self->_medicationInfoModifiedDate = *(fromCopy + 19);
    *&self->_has |= 0x40000uLL;
    v23 = *(fromCopy + 404);
    if ((v23 & 0x400000000) == 0)
    {
LABEL_79:
      if ((v23 & 0x20000000) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_80;
    }
  }

  else if ((v23 & 0x400000000) == 0)
  {
    goto LABEL_79;
  }

  self->_shareDuringEmergency = fromCopy[401];
  *&self->_has |= 0x400000000uLL;
  if ((*(fromCopy + 404) & 0x20000000) != 0)
  {
LABEL_80:
    self->_shareDuringEmergencyModifiedDate = *(fromCopy + 30);
    *&self->_has |= 0x20000000uLL;
  }

LABEL_81:
  if (*(fromCopy + 47))
  {
    [(HDCodableMedicalIDData *)self setPrimaryLanguageCode:?];
  }

  v24 = *(fromCopy + 404);
  if ((v24 & 0x10000000) != 0)
  {
    self->_primaryLanguageCodeModifiedDate = *(fromCopy + 29);
    *&self->_has |= 0x10000000uLL;
    v24 = *(fromCopy + 404);
    if ((v24 & 0x4000000) == 0)
    {
LABEL_85:
      if ((v24 & 0x8000000) == 0)
      {
        goto LABEL_86;
      }

      goto LABEL_133;
    }
  }

  else if ((v24 & 0x4000000) == 0)
  {
    goto LABEL_85;
  }

  self->_pregnancyStartDate = *(fromCopy + 27);
  *&self->_has |= 0x4000000uLL;
  v24 = *(fromCopy + 404);
  if ((v24 & 0x8000000) == 0)
  {
LABEL_86:
    if ((v24 & 0x1000000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_134;
  }

LABEL_133:
  self->_pregnancyStartDateModifiedDate = *(fromCopy + 28);
  *&self->_has |= 0x8000000uLL;
  v24 = *(fromCopy + 404);
  if ((v24 & 0x1000000) == 0)
  {
LABEL_87:
    if ((v24 & 0x2000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

LABEL_134:
  self->_pregnancyEstimatedDueDate = *(fromCopy + 25);
  *&self->_has |= 0x1000000uLL;
  if ((*(fromCopy + 404) & 0x2000000) != 0)
  {
LABEL_88:
    self->_pregnancyEstimatedDueDateModifiedDate = *(fromCopy + 26);
    *&self->_has |= 0x2000000uLL;
  }

LABEL_89:
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v25 = *(fromCopy + 44);
  v26 = [v25 countByEnumeratingWithState:&v52 objects:v66 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v53;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v53 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(HDCodableMedicalIDData *)self addMedicationsList:*(*(&v52 + 1) + 8 * k)];
      }

      v27 = [v25 countByEnumeratingWithState:&v52 objects:v66 count:16];
    }

    while (v27);
  }

  v30 = *(fromCopy + 404);
  if ((v30 & 0x80000) != 0)
  {
    self->_medicationsListModifiedDate = *(fromCopy + 20);
    *&self->_has |= 0x80000uLL;
    v30 = *(fromCopy + 404);
    if ((v30 & 0x100000) == 0)
    {
LABEL_98:
      if ((v30 & 0x200000) == 0)
      {
        goto LABEL_100;
      }

      goto LABEL_99;
    }
  }

  else if ((v30 & 0x100000) == 0)
  {
    goto LABEL_98;
  }

  self->_medicationsListVersion = *(fromCopy + 21);
  *&self->_has |= 0x100000uLL;
  if ((*(fromCopy + 404) & 0x200000) != 0)
  {
LABEL_99:
    self->_medicationsListVersionModifiedDate = *(fromCopy + 22);
    *&self->_has |= 0x200000uLL;
  }

LABEL_100:
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v31 = *(fromCopy + 32);
  v32 = [v31 countByEnumeratingWithState:&v48 objects:v65 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v49;
    do
    {
      for (m = 0; m != v33; ++m)
      {
        if (*v49 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [(HDCodableMedicalIDData *)self addAllergiesList:*(*(&v48 + 1) + 8 * m)];
      }

      v33 = [v31 countByEnumeratingWithState:&v48 objects:v65 count:16];
    }

    while (v33);
  }

  v36 = *(fromCopy + 404);
  if (v36)
  {
    self->_allergiesListModifiedDate = *(fromCopy + 1);
    *&self->_has |= 1uLL;
    v36 = *(fromCopy + 404);
    if ((v36 & 2) == 0)
    {
LABEL_109:
      if ((v36 & 4) == 0)
      {
        goto LABEL_111;
      }

      goto LABEL_110;
    }
  }

  else if ((v36 & 2) == 0)
  {
    goto LABEL_109;
  }

  self->_allergiesListVersion = *(fromCopy + 2);
  *&self->_has |= 2uLL;
  if ((*(fromCopy + 404) & 4) != 0)
  {
LABEL_110:
    self->_allergiesListVersionModifiedDate = *(fromCopy + 3);
    *&self->_has |= 4uLL;
  }

LABEL_111:
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v37 = *(fromCopy + 36);
  v38 = [v37 countByEnumeratingWithState:&v44 objects:v64 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v45;
    do
    {
      for (n = 0; n != v39; ++n)
      {
        if (*v45 != v40)
        {
          objc_enumerationMutation(v37);
        }

        [(HDCodableMedicalIDData *)self addConditionsList:*(*(&v44 + 1) + 8 * n), v44];
      }

      v39 = [v37 countByEnumeratingWithState:&v44 objects:v64 count:16];
    }

    while (v39);
  }

  v42 = *(fromCopy + 404);
  if ((v42 & 0x40) == 0)
  {
    if ((v42 & 0x80) == 0)
    {
      goto LABEL_120;
    }

LABEL_143:
    self->_conditionsListVersion = *(fromCopy + 8);
    *&self->_has |= 0x80uLL;
    if ((*(fromCopy + 404) & 0x100) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_121;
  }

  self->_conditionsListModifiedDate = *(fromCopy + 7);
  *&self->_has |= 0x40uLL;
  v42 = *(fromCopy + 404);
  if ((v42 & 0x80) != 0)
  {
    goto LABEL_143;
  }

LABEL_120:
  if ((v42 & 0x100) != 0)
  {
LABEL_121:
    self->_conditionsListVersionModifiedDate = *(fromCopy + 9);
    *&self->_has |= 0x100uLL;
  }

LABEL_122:

  v43 = *MEMORY[0x277D85DE8];
}

@end