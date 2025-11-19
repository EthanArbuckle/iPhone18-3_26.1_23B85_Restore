@interface HDExtractionResultItemUnit
- (BOOL)isEqual:(id)a3;
- (HDExtractionResultItemUnit)initWithCoder:(id)a3;
- (HDExtractionResultItemUnit)initWithMedicalRecord:(id)a3 clinicalRecord:(id)a4 downloadableAttachments:(id)a5;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDExtractionResultItemUnit

- (HDExtractionResultItemUnit)initWithMedicalRecord:(id)a3 clinicalRecord:(id)a4 downloadableAttachments:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    [HDExtractionResultItemUnit initWithMedicalRecord:a2 clinicalRecord:self downloadableAttachments:?];
  }

  v20.receiver = self;
  v20.super_class = HDExtractionResultItemUnit;
  v12 = [(HDExtractionResultItemUnit *)&v20 init];
  if (v12)
  {
    v13 = [v9 copy];
    medicalRecord = v12->_medicalRecord;
    v12->_medicalRecord = v13;

    v15 = [v10 copy];
    clinicalRecord = v12->_clinicalRecord;
    v12->_clinicalRecord = v15;

    v17 = [v11 copy];
    downloadableAttachments = v12->_downloadableAttachments;
    v12->_downloadableAttachments = v17;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(downloadableAttachments) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      medicalRecord = self->_medicalRecord;
      v7 = [(HDExtractionResultItemUnit *)v5 medicalRecord];
      if (medicalRecord != v7)
      {
        v8 = [(HDExtractionResultItemUnit *)v5 medicalRecord];
        if (!v8)
        {
          LOBYTE(downloadableAttachments) = 0;
          goto LABEL_27;
        }

        v9 = v8;
        v10 = self->_medicalRecord;
        v11 = [(HDExtractionResultItemUnit *)v5 medicalRecord];
        if (![(HKMedicalRecord *)v10 isEqual:v11])
        {
          LOBYTE(downloadableAttachments) = 0;
LABEL_26:

          goto LABEL_27;
        }

        v27 = v11;
        v28 = v9;
      }

      clinicalRecord = self->_clinicalRecord;
      v14 = [(HDExtractionResultItemUnit *)v5 clinicalRecord];
      if (clinicalRecord != v14)
      {
        downloadableAttachments = [(HDExtractionResultItemUnit *)v5 clinicalRecord];
        if (!downloadableAttachments)
        {
          goto LABEL_20;
        }

        v15 = self->_clinicalRecord;
        v16 = [(HDExtractionResultItemUnit *)v5 clinicalRecord];
        v17 = v15;
        v18 = v16;
        if (([(HKClinicalRecord *)v17 isEqual:v16]& 1) == 0)
        {

          LOBYTE(downloadableAttachments) = 0;
LABEL_25:
          v11 = v27;
          v9 = v28;
          if (medicalRecord != v7)
          {
            goto LABEL_26;
          }

LABEL_27:

          goto LABEL_28;
        }

        v24 = v18;
        v26 = downloadableAttachments;
      }

      downloadableAttachments = self->_downloadableAttachments;
      v19 = [(HDExtractionResultItemUnit *)v5 downloadableAttachments];
      LOBYTE(downloadableAttachments) = downloadableAttachments == v19;
      if (!downloadableAttachments)
      {
        v20 = [(HDExtractionResultItemUnit *)v5 downloadableAttachments];
        if (v20)
        {
          v21 = v20;
          downloadableAttachments = self->_downloadableAttachments;
          v22 = [(HDExtractionResultItemUnit *)v5 downloadableAttachments];
          LOBYTE(downloadableAttachments) = [downloadableAttachments isEqualToArray:v22];

          if (clinicalRecord != v14)
          {
          }

          goto LABEL_22;
        }
      }

      if (clinicalRecord == v14)
      {
LABEL_22:

        goto LABEL_25;
      }

LABEL_20:
      v11 = v27;

      v9 = v28;
      if (medicalRecord == v7)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    LOBYTE(downloadableAttachments) = 0;
  }

LABEL_28:

  return downloadableAttachments;
}

- (unint64_t)hash
{
  v3 = [(HKMedicalRecord *)self->_medicalRecord hash];
  v4 = [(HKClinicalRecord *)self->_clinicalRecord hash]^ v3;
  return v4 ^ [(NSArray *)self->_downloadableAttachments hash];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  medicalRecord = self->_medicalRecord;
  v7 = HKStringFromBool();
  clinicalRecord = self->_clinicalRecord;
  v9 = HKStringFromBool();
  v10 = [v3 stringWithFormat:@"<%@ %p, medical record: %@, clinical record: %@, downloadable attachments: %lu>", v5, self, v7, v9, -[NSArray count](self->_downloadableAttachments, "count")];

  return v10;
}

- (HDExtractionResultItemUnit)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"medicalRecord"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clinicalRecord"];
    v7 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"downloadableAttachments"];
    self = [(HDExtractionResultItemUnit *)self initWithMedicalRecord:v5 clinicalRecord:v6 downloadableAttachments:v8];

    v9 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  medicalRecord = self->_medicalRecord;
  v5 = a3;
  [v5 encodeObject:medicalRecord forKey:@"medicalRecord"];
  [v5 encodeObject:self->_clinicalRecord forKey:@"clinicalRecord"];
  [v5 encodeObject:self->_downloadableAttachments forKey:@"downloadableAttachments"];
}

- (void)initWithMedicalRecord:(uint64_t)a1 clinicalRecord:(uint64_t)a2 downloadableAttachments:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDExtractionResultItemUnit.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"medicalRecord"}];
}

@end