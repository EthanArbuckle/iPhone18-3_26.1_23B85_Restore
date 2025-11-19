@interface HKSignedClinicalDataParsingResultClinicalItem
- (BOOL)isEqual:(id)a3;
- (HKSignedClinicalDataParsingResultClinicalItem)initWithCoder:(id)a3;
- (HKSignedClinicalDataParsingResultClinicalItem)initWithOriginalRecord:(id)a3 mainRecord:(id)a4 verifiableClinicalRecord:(id)a5 medicalRecords:(id)a6 clinicalRecords:(id)a7;
- (id)copyWithOriginalRecord:(id)a3 mainRecord:(id)a4;
- (id)uniquenessChecksum;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSignedClinicalDataParsingResultClinicalItem

- (HKSignedClinicalDataParsingResultClinicalItem)initWithOriginalRecord:(id)a3 mainRecord:(id)a4 verifiableClinicalRecord:(id)a5 medicalRecords:(id)a6 clinicalRecords:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v23.receiver = self;
  v23.super_class = HKSignedClinicalDataParsingResultClinicalItem;
  v15 = [(HKSignedClinicalDataParsingResultItem *)&v23 initWithOriginalRecord:a3 mainRecord:a4];
  if (v15)
  {
    v16 = [v12 copy];
    verifiableClinicalRecord = v15->_verifiableClinicalRecord;
    v15->_verifiableClinicalRecord = v16;

    v18 = [v13 copy];
    medicalRecords = v15->_medicalRecords;
    v15->_medicalRecords = v18;

    v20 = [v14 copy];
    clinicalRecords = v15->_clinicalRecords;
    v15->_clinicalRecords = v20;
  }

  return v15;
}

- (id)copyWithOriginalRecord:(id)a3 mainRecord:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_alloc(objc_opt_class()) initWithOriginalRecord:v7 mainRecord:v6 verifiableClinicalRecord:self->_verifiableClinicalRecord medicalRecords:self->_medicalRecords clinicalRecords:self->_clinicalRecords];

  return v8;
}

- (id)uniquenessChecksum
{
  v3 = [(HKSignedClinicalDataParsingResultItem *)self originalRecord];
  v4 = [v3 sourceType];

  if (v4 == 2)
  {
    v5 = [(HKSignedClinicalDataParsingResultItem *)self originalRecord];
    v6 = [v5 rawContent];
    v7 = [v6 hk_MD5];
  }

  else
  {
    v5 = [(NSArray *)self->_clinicalRecords hk_map:&__block_literal_global_1];
    v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_295];
    v8 = [v6 hk_map:&__block_literal_global_298];
    v9 = [v8 mutableCopy];

    v10 = [(HKSignedClinicalDataParsingResultItem *)self mainRecord];
    v11 = [v10 issuerIdentifier];
    v12 = [v11 dataUsingEncoding:4];

    if (v12)
    {
      [v9 addObject:v12];
    }

    v13 = [(HKSignedClinicalDataParsingResultItem *)self mainRecord];
    v14 = [v13 subject];
    v15 = [v14 dataForUniquenessChecksumCalculation];

    if (v15)
    {
      [v9 addObject:v15];
    }

    v16 = [v9 hk_map:&__block_literal_global_301];
    v17 = objc_alloc_init(MEMORY[0x277CBEA90]);
    v18 = [v16 hk_foldRightFrom:v17 with:&__block_literal_global_304];

    v7 = [v18 hk_MD5];
  }

  return v7;
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKSignedClinicalDataParsingResultClinicalItem;
  v4 = a3;
  [(HKSignedClinicalDataParsingResultItem *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_verifiableClinicalRecord forKey:{@"VerifiableClinicalRecord", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_medicalRecords forKey:@"MedicalRecords"];
  [v4 encodeObject:self->_clinicalRecords forKey:@"ClinicalRecords"];
}

- (HKSignedClinicalDataParsingResultClinicalItem)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HKSignedClinicalDataParsingResultClinicalItem;
  v5 = [(HKSignedClinicalDataParsingResultItem *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"VerifiableClinicalRecord"];
    if (v6)
    {
      v7 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
      v8 = [v4 decodeObjectOfClasses:v7 forKey:@"MedicalRecords"];
      if (v8)
      {
        v9 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];

        v10 = [v4 decodeObjectOfClasses:v9 forKey:@"ClinicalRecords"];
        if (v10)
        {
          objc_storeStrong(&v5->_verifiableClinicalRecord, v6);
          objc_storeStrong(&v5->_medicalRecords, v8);
          objc_storeStrong(&v5->_clinicalRecords, v10);
          v11 = v5;
        }

        else
        {
          [v4 hrs_failWithCocoaValueNotFoundError];
          v11 = 0;
        }

        v7 = v9;
      }

      else
      {
        [v4 hrs_failWithCocoaValueNotFoundError];
        v11 = 0;
      }
    }

    else
    {
      [v4 hrs_failWithCocoaValueNotFoundError];
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (![(HKSignedClinicalDataParsingResultClinicalItem *)v6 isMemberOfClass:objc_opt_class()]|| (v31.receiver = self, v31.super_class = HKSignedClinicalDataParsingResultClinicalItem, ![(HKSignedClinicalDataParsingResultItem *)&v31 isEqual:v6]))
    {
      LOBYTE(clinicalRecords) = 0;
LABEL_32:

      goto LABEL_33;
    }

    verifiableClinicalRecord = self->_verifiableClinicalRecord;
    v8 = [(HKSignedClinicalDataParsingResultClinicalItem *)v6 verifiableClinicalRecord];
    if (verifiableClinicalRecord != v8)
    {
      v9 = [(HKSignedClinicalDataParsingResultClinicalItem *)v6 verifiableClinicalRecord];
      if (!v9)
      {
        LOBYTE(clinicalRecords) = 0;
        goto LABEL_31;
      }

      v10 = v9;
      v11 = self->_verifiableClinicalRecord;
      v12 = [(HKSignedClinicalDataParsingResultClinicalItem *)v6 verifiableClinicalRecord];
      if (![(HKVerifiableClinicalRecord *)v11 isEqual:v12])
      {
        LOBYTE(clinicalRecords) = 0;
LABEL_30:

        goto LABEL_31;
      }

      v29 = v12;
      v30 = v10;
    }

    medicalRecords = self->_medicalRecords;
    v15 = [(HKSignedClinicalDataParsingResultClinicalItem *)v6 medicalRecords];
    if (medicalRecords != v15)
    {
      clinicalRecords = [(HKSignedClinicalDataParsingResultClinicalItem *)v6 medicalRecords];
      if (!clinicalRecords)
      {
        goto LABEL_23;
      }

      v16 = self->_medicalRecords;
      v17 = [(HKSignedClinicalDataParsingResultClinicalItem *)v6 medicalRecords];
      if (![(NSArray *)v16 isEqualToArray:v17])
      {

        LOBYTE(clinicalRecords) = 0;
LABEL_28:
        v24 = verifiableClinicalRecord == v8;
        goto LABEL_29;
      }

      v26 = v17;
      v27 = clinicalRecords;
    }

    clinicalRecords = self->_clinicalRecords;
    v18 = [(HKSignedClinicalDataParsingResultClinicalItem *)v6 clinicalRecords];
    v19 = v18;
    LOBYTE(clinicalRecords) = clinicalRecords == v18;
    if (clinicalRecords)
    {

      if (medicalRecords == v15)
      {
LABEL_27:

        goto LABEL_28;
      }
    }

    else
    {
      v28 = verifiableClinicalRecord;
      v20 = [(HKSignedClinicalDataParsingResultClinicalItem *)v6 clinicalRecords];
      if (v20)
      {
        v21 = v20;
        v22 = self->_clinicalRecords;
        v23 = [(HKSignedClinicalDataParsingResultClinicalItem *)v6 clinicalRecords];
        LOBYTE(clinicalRecords) = [(NSArray *)v22 isEqualToArray:v23];

        if (medicalRecords != v15)
        {
        }

        v24 = v28 == v8;
LABEL_29:
        v12 = v29;
        v10 = v30;
        if (!v24)
        {
          goto LABEL_30;
        }

LABEL_31:

        goto LABEL_32;
      }

      if (medicalRecords == v15)
      {
        goto LABEL_27;
      }
    }

LABEL_23:
    v12 = v29;

    v10 = v30;
    if (verifiableClinicalRecord == v8)
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