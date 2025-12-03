@interface HDExtractionResultItemUnit
- (BOOL)isEqual:(id)equal;
- (HDExtractionResultItemUnit)initWithCoder:(id)coder;
- (HDExtractionResultItemUnit)initWithMedicalRecord:(id)record clinicalRecord:(id)clinicalRecord downloadableAttachments:(id)attachments;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDExtractionResultItemUnit

- (HDExtractionResultItemUnit)initWithMedicalRecord:(id)record clinicalRecord:(id)clinicalRecord downloadableAttachments:(id)attachments
{
  recordCopy = record;
  clinicalRecordCopy = clinicalRecord;
  attachmentsCopy = attachments;
  if (!recordCopy)
  {
    [HDExtractionResultItemUnit initWithMedicalRecord:a2 clinicalRecord:self downloadableAttachments:?];
  }

  v20.receiver = self;
  v20.super_class = HDExtractionResultItemUnit;
  v12 = [(HDExtractionResultItemUnit *)&v20 init];
  if (v12)
  {
    v13 = [recordCopy copy];
    medicalRecord = v12->_medicalRecord;
    v12->_medicalRecord = v13;

    v15 = [clinicalRecordCopy copy];
    clinicalRecord = v12->_clinicalRecord;
    v12->_clinicalRecord = v15;

    v17 = [attachmentsCopy copy];
    downloadableAttachments = v12->_downloadableAttachments;
    v12->_downloadableAttachments = v17;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(downloadableAttachments) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      medicalRecord = self->_medicalRecord;
      medicalRecord = [(HDExtractionResultItemUnit *)v5 medicalRecord];
      if (medicalRecord != medicalRecord)
      {
        medicalRecord2 = [(HDExtractionResultItemUnit *)v5 medicalRecord];
        if (!medicalRecord2)
        {
          LOBYTE(downloadableAttachments) = 0;
          goto LABEL_27;
        }

        v9 = medicalRecord2;
        v10 = self->_medicalRecord;
        medicalRecord3 = [(HDExtractionResultItemUnit *)v5 medicalRecord];
        if (![(HKMedicalRecord *)v10 isEqual:medicalRecord3])
        {
          LOBYTE(downloadableAttachments) = 0;
LABEL_26:

          goto LABEL_27;
        }

        v27 = medicalRecord3;
        v28 = v9;
      }

      clinicalRecord = self->_clinicalRecord;
      clinicalRecord = [(HDExtractionResultItemUnit *)v5 clinicalRecord];
      if (clinicalRecord != clinicalRecord)
      {
        downloadableAttachments = [(HDExtractionResultItemUnit *)v5 clinicalRecord];
        if (!downloadableAttachments)
        {
          goto LABEL_20;
        }

        v15 = self->_clinicalRecord;
        clinicalRecord2 = [(HDExtractionResultItemUnit *)v5 clinicalRecord];
        v17 = v15;
        v18 = clinicalRecord2;
        if (([(HKClinicalRecord *)v17 isEqual:clinicalRecord2]& 1) == 0)
        {

          LOBYTE(downloadableAttachments) = 0;
LABEL_25:
          medicalRecord3 = v27;
          v9 = v28;
          if (medicalRecord != medicalRecord)
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
      downloadableAttachments = [(HDExtractionResultItemUnit *)v5 downloadableAttachments];
      LOBYTE(downloadableAttachments) = downloadableAttachments == downloadableAttachments;
      if (!downloadableAttachments)
      {
        downloadableAttachments2 = [(HDExtractionResultItemUnit *)v5 downloadableAttachments];
        if (downloadableAttachments2)
        {
          v21 = downloadableAttachments2;
          downloadableAttachments = self->_downloadableAttachments;
          downloadableAttachments3 = [(HDExtractionResultItemUnit *)v5 downloadableAttachments];
          LOBYTE(downloadableAttachments) = [downloadableAttachments isEqualToArray:downloadableAttachments3];

          if (clinicalRecord != clinicalRecord)
          {
          }

          goto LABEL_22;
        }
      }

      if (clinicalRecord == clinicalRecord)
      {
LABEL_22:

        goto LABEL_25;
      }

LABEL_20:
      medicalRecord3 = v27;

      v9 = v28;
      if (medicalRecord == medicalRecord)
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

- (HDExtractionResultItemUnit)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"medicalRecord"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clinicalRecord"];
    v7 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"downloadableAttachments"];
    self = [(HDExtractionResultItemUnit *)self initWithMedicalRecord:v5 clinicalRecord:v6 downloadableAttachments:v8];

    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  medicalRecord = self->_medicalRecord;
  coderCopy = coder;
  [coderCopy encodeObject:medicalRecord forKey:@"medicalRecord"];
  [coderCopy encodeObject:self->_clinicalRecord forKey:@"clinicalRecord"];
  [coderCopy encodeObject:self->_downloadableAttachments forKey:@"downloadableAttachments"];
}

- (void)initWithMedicalRecord:(uint64_t)a1 clinicalRecord:(uint64_t)a2 downloadableAttachments:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDExtractionResultItemUnit.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"medicalRecord"}];
}

@end