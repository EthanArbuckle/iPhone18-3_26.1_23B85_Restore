@interface HKClinicalDocumentIndexingRequest
- (BOOL)isEqual:(id)equal;
- (HKClinicalDocumentIndexingRequest)init;
- (HKClinicalDocumentIndexingRequest)initWithCoder:(id)coder;
- (HKClinicalDocumentIndexingRequest)initWithMedicalRecord:(id)record attachmentIdentifiers:(id)identifiers;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKClinicalDocumentIndexingRequest

- (HKClinicalDocumentIndexingRequest)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKClinicalDocumentIndexingRequest)initWithMedicalRecord:(id)record attachmentIdentifiers:(id)identifiers
{
  recordCopy = record;
  identifiersCopy = identifiers;
  v14.receiver = self;
  v14.super_class = HKClinicalDocumentIndexingRequest;
  v8 = [(HKClinicalDocumentIndexingRequest *)&v14 init];
  if (v8)
  {
    v9 = [recordCopy copy];
    medicalRecord = v8->_medicalRecord;
    v8->_medicalRecord = v9;

    v11 = [identifiersCopy copy];
    attachmentIdentifiers = v8->_attachmentIdentifiers;
    v8->_attachmentIdentifiers = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = equalCopy;
  if (self != equalCopy)
  {
    v8 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
LABEL_18:

      goto LABEL_19;
    }

    medicalRecord = self->_medicalRecord;
    medicalRecord = [(HKClinicalDocumentIndexingRequest *)v8 medicalRecord];
    if (medicalRecord == medicalRecord)
    {
      goto LABEL_9;
    }

    medicalRecord2 = [(HKClinicalDocumentIndexingRequest *)v8 medicalRecord];
    if (!medicalRecord2)
    {
      v13 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v3 = medicalRecord2;
    v12 = self->_medicalRecord;
    medicalRecord3 = [(HKClinicalDocumentIndexingRequest *)v8 medicalRecord];
    if ([(HKMedicalRecord *)v12 isEqual:medicalRecord3])
    {
LABEL_9:
      attachmentIdentifiers = self->_attachmentIdentifiers;
      attachmentIdentifiers = [(HKClinicalDocumentIndexingRequest *)v8 attachmentIdentifiers];
      v16 = attachmentIdentifiers;
      if (attachmentIdentifiers == attachmentIdentifiers)
      {

        v13 = 1;
      }

      else
      {
        attachmentIdentifiers2 = [(HKClinicalDocumentIndexingRequest *)v8 attachmentIdentifiers];
        if (attachmentIdentifiers2)
        {
          v18 = attachmentIdentifiers2;
          v19 = self->_attachmentIdentifiers;
          attachmentIdentifiers3 = [(HKClinicalDocumentIndexingRequest *)v8 attachmentIdentifiers];
          v13 = [(NSArray *)v19 isEqualToArray:attachmentIdentifiers3];
        }

        else
        {

          v13 = 0;
        }
      }

      if (medicalRecord == medicalRecord)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_17;
  }

  v13 = 1;
LABEL_19:

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  medicalRecord = self->_medicalRecord;
  coderCopy = coder;
  [coderCopy encodeObject:medicalRecord forKey:@"MedicalRecord"];
  [coderCopy encodeObject:self->_attachmentIdentifiers forKey:@"AttachmentIdentifiers"];
}

- (HKClinicalDocumentIndexingRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MedicalRecord"];
  v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"AttachmentIdentifiers"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  else
  {
    self = [(HKClinicalDocumentIndexingRequest *)self initWithMedicalRecord:v5 attachmentIdentifiers:v6];
    selfCopy = self;
  }

  return selfCopy;
}

@end