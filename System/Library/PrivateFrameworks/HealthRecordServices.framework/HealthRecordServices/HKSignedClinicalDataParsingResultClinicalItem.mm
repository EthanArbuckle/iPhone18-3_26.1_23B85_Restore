@interface HKSignedClinicalDataParsingResultClinicalItem
- (BOOL)isEqual:(id)equal;
- (HKSignedClinicalDataParsingResultClinicalItem)initWithCoder:(id)coder;
- (HKSignedClinicalDataParsingResultClinicalItem)initWithOriginalRecord:(id)record mainRecord:(id)mainRecord verifiableClinicalRecord:(id)clinicalRecord medicalRecords:(id)records clinicalRecords:(id)clinicalRecords;
- (id)copyWithOriginalRecord:(id)record mainRecord:(id)mainRecord;
- (id)uniquenessChecksum;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSignedClinicalDataParsingResultClinicalItem

- (HKSignedClinicalDataParsingResultClinicalItem)initWithOriginalRecord:(id)record mainRecord:(id)mainRecord verifiableClinicalRecord:(id)clinicalRecord medicalRecords:(id)records clinicalRecords:(id)clinicalRecords
{
  clinicalRecordCopy = clinicalRecord;
  recordsCopy = records;
  clinicalRecordsCopy = clinicalRecords;
  v23.receiver = self;
  v23.super_class = HKSignedClinicalDataParsingResultClinicalItem;
  v15 = [(HKSignedClinicalDataParsingResultItem *)&v23 initWithOriginalRecord:record mainRecord:mainRecord];
  if (v15)
  {
    v16 = [clinicalRecordCopy copy];
    verifiableClinicalRecord = v15->_verifiableClinicalRecord;
    v15->_verifiableClinicalRecord = v16;

    v18 = [recordsCopy copy];
    medicalRecords = v15->_medicalRecords;
    v15->_medicalRecords = v18;

    v20 = [clinicalRecordsCopy copy];
    clinicalRecords = v15->_clinicalRecords;
    v15->_clinicalRecords = v20;
  }

  return v15;
}

- (id)copyWithOriginalRecord:(id)record mainRecord:(id)mainRecord
{
  mainRecordCopy = mainRecord;
  recordCopy = record;
  v8 = [objc_alloc(objc_opt_class()) initWithOriginalRecord:recordCopy mainRecord:mainRecordCopy verifiableClinicalRecord:self->_verifiableClinicalRecord medicalRecords:self->_medicalRecords clinicalRecords:self->_clinicalRecords];

  return v8;
}

- (id)uniquenessChecksum
{
  originalRecord = [(HKSignedClinicalDataParsingResultItem *)self originalRecord];
  sourceType = [originalRecord sourceType];

  if (sourceType == 2)
  {
    originalRecord2 = [(HKSignedClinicalDataParsingResultItem *)self originalRecord];
    rawContent = [originalRecord2 rawContent];
    hk_MD5 = [rawContent hk_MD5];
  }

  else
  {
    originalRecord2 = [(NSArray *)self->_clinicalRecords hk_map:&__block_literal_global_1];
    rawContent = [originalRecord2 sortedArrayUsingComparator:&__block_literal_global_295];
    v8 = [rawContent hk_map:&__block_literal_global_298];
    v9 = [v8 mutableCopy];

    mainRecord = [(HKSignedClinicalDataParsingResultItem *)self mainRecord];
    issuerIdentifier = [mainRecord issuerIdentifier];
    v12 = [issuerIdentifier dataUsingEncoding:4];

    if (v12)
    {
      [v9 addObject:v12];
    }

    mainRecord2 = [(HKSignedClinicalDataParsingResultItem *)self mainRecord];
    subject = [mainRecord2 subject];
    dataForUniquenessChecksumCalculation = [subject dataForUniquenessChecksumCalculation];

    if (dataForUniquenessChecksumCalculation)
    {
      [v9 addObject:dataForUniquenessChecksumCalculation];
    }

    v16 = [v9 hk_map:&__block_literal_global_301];
    v17 = objc_alloc_init(MEMORY[0x277CBEA90]);
    v18 = [v16 hk_foldRightFrom:v17 with:&__block_literal_global_304];

    hk_MD5 = [v18 hk_MD5];
  }

  return hk_MD5;
}

uint64_t __67__HKSignedClinicalDataParsingResultClinicalItem_uniquenessChecksum__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 resourceType];
  v7 = [v5 resourceType];
  v8 = [v6 compare:v7];

  if (!v8)
  {
    v9 = [v4 identifier];
    v10 = [v5 identifier];
    v8 = [v9 compare:v10];
  }

  return v8;
}

id __67__HKSignedClinicalDataParsingResultClinicalItem_uniquenessChecksum__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 mutableCopy];
  [v5 appendData:v4];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKSignedClinicalDataParsingResultClinicalItem;
  coderCopy = coder;
  [(HKSignedClinicalDataParsingResultItem *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_verifiableClinicalRecord forKey:{@"VerifiableClinicalRecord", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_medicalRecords forKey:@"MedicalRecords"];
  [coderCopy encodeObject:self->_clinicalRecords forKey:@"ClinicalRecords"];
}

- (HKSignedClinicalDataParsingResultClinicalItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HKSignedClinicalDataParsingResultClinicalItem;
  v5 = [(HKSignedClinicalDataParsingResultItem *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VerifiableClinicalRecord"];
    if (v6)
    {
      v7 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
      v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"MedicalRecords"];
      if (v8)
      {
        v9 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];

        v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"ClinicalRecords"];
        if (v10)
        {
          objc_storeStrong(&v5->_verifiableClinicalRecord, v6);
          objc_storeStrong(&v5->_medicalRecords, v8);
          objc_storeStrong(&v5->_clinicalRecords, v10);
          v11 = v5;
        }

        else
        {
          [coderCopy hrs_failWithCocoaValueNotFoundError];
          v11 = 0;
        }

        v7 = v9;
      }

      else
      {
        [coderCopy hrs_failWithCocoaValueNotFoundError];
        v11 = 0;
      }
    }

    else
    {
      [coderCopy hrs_failWithCocoaValueNotFoundError];
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (![(HKSignedClinicalDataParsingResultClinicalItem *)v6 isMemberOfClass:objc_opt_class()]|| (v31.receiver = self, v31.super_class = HKSignedClinicalDataParsingResultClinicalItem, ![(HKSignedClinicalDataParsingResultItem *)&v31 isEqual:v6]))
    {
      LOBYTE(clinicalRecords) = 0;
LABEL_32:

      goto LABEL_33;
    }

    verifiableClinicalRecord = self->_verifiableClinicalRecord;
    verifiableClinicalRecord = [(HKSignedClinicalDataParsingResultClinicalItem *)v6 verifiableClinicalRecord];
    if (verifiableClinicalRecord != verifiableClinicalRecord)
    {
      verifiableClinicalRecord2 = [(HKSignedClinicalDataParsingResultClinicalItem *)v6 verifiableClinicalRecord];
      if (!verifiableClinicalRecord2)
      {
        LOBYTE(clinicalRecords) = 0;
        goto LABEL_31;
      }

      v10 = verifiableClinicalRecord2;
      v11 = self->_verifiableClinicalRecord;
      verifiableClinicalRecord3 = [(HKSignedClinicalDataParsingResultClinicalItem *)v6 verifiableClinicalRecord];
      if (![(HKVerifiableClinicalRecord *)v11 isEqual:verifiableClinicalRecord3])
      {
        LOBYTE(clinicalRecords) = 0;
LABEL_30:

        goto LABEL_31;
      }

      v29 = verifiableClinicalRecord3;
      v30 = v10;
    }

    medicalRecords = self->_medicalRecords;
    medicalRecords = [(HKSignedClinicalDataParsingResultClinicalItem *)v6 medicalRecords];
    if (medicalRecords != medicalRecords)
    {
      clinicalRecords = [(HKSignedClinicalDataParsingResultClinicalItem *)v6 medicalRecords];
      if (!clinicalRecords)
      {
        goto LABEL_23;
      }

      v16 = self->_medicalRecords;
      medicalRecords2 = [(HKSignedClinicalDataParsingResultClinicalItem *)v6 medicalRecords];
      if (![(NSArray *)v16 isEqualToArray:medicalRecords2])
      {

        LOBYTE(clinicalRecords) = 0;
LABEL_28:
        v24 = verifiableClinicalRecord == verifiableClinicalRecord;
        goto LABEL_29;
      }

      v26 = medicalRecords2;
      v27 = clinicalRecords;
    }

    clinicalRecords = self->_clinicalRecords;
    clinicalRecords = [(HKSignedClinicalDataParsingResultClinicalItem *)v6 clinicalRecords];
    v19 = clinicalRecords;
    LOBYTE(clinicalRecords) = clinicalRecords == clinicalRecords;
    if (clinicalRecords)
    {

      if (medicalRecords == medicalRecords)
      {
LABEL_27:

        goto LABEL_28;
      }
    }

    else
    {
      v28 = verifiableClinicalRecord;
      clinicalRecords2 = [(HKSignedClinicalDataParsingResultClinicalItem *)v6 clinicalRecords];
      if (clinicalRecords2)
      {
        v21 = clinicalRecords2;
        v22 = self->_clinicalRecords;
        clinicalRecords3 = [(HKSignedClinicalDataParsingResultClinicalItem *)v6 clinicalRecords];
        LOBYTE(clinicalRecords) = [(NSArray *)v22 isEqualToArray:clinicalRecords3];

        if (medicalRecords != medicalRecords)
        {
        }

        v24 = v28 == verifiableClinicalRecord;
LABEL_29:
        verifiableClinicalRecord3 = v29;
        v10 = v30;
        if (!v24)
        {
          goto LABEL_30;
        }

LABEL_31:

        goto LABEL_32;
      }

      if (medicalRecords == medicalRecords)
      {
        goto LABEL_27;
      }
    }

LABEL_23:
    verifiableClinicalRecord3 = v29;

    v10 = v30;
    if (verifiableClinicalRecord == verifiableClinicalRecord)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  LOBYTE(clinicalRecords) = 1;
LABEL_33:

  return clinicalRecords;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = HKSignedClinicalDataParsingResultClinicalItem;
  v3 = [(HKSignedClinicalDataParsingResultItem *)&v7 hash];
  v4 = [(HKVerifiableClinicalRecord *)self->_verifiableClinicalRecord hash]^ v3;
  v5 = [(NSArray *)self->_medicalRecords hash];
  return v4 ^ v5 ^ [(NSArray *)self->_clinicalRecords hash];
}

@end