@interface HKClinicalDocumentIndexingRequest
- (BOOL)isEqual:(id)a3;
- (HKClinicalDocumentIndexingRequest)init;
- (HKClinicalDocumentIndexingRequest)initWithCoder:(id)a3;
- (HKClinicalDocumentIndexingRequest)initWithMedicalRecord:(id)a3 attachmentIdentifiers:(id)a4;
- (void)encodeWithCoder:(id)a3;
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

- (HKClinicalDocumentIndexingRequest)initWithMedicalRecord:(id)a3 attachmentIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKClinicalDocumentIndexingRequest;
  v8 = [(HKClinicalDocumentIndexingRequest *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    medicalRecord = v8->_medicalRecord;
    v8->_medicalRecord = v9;

    v11 = [v7 copy];
    attachmentIdentifiers = v8->_attachmentIdentifiers;
    v8->_attachmentIdentifiers = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (self != v6)
  {
    v8 = v6;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
LABEL_18:

      goto LABEL_19;
    }

    medicalRecord = self->_medicalRecord;
    v10 = [(HKClinicalDocumentIndexingRequest *)v8 medicalRecord];
    if (medicalRecord == v10)
    {
      goto LABEL_9;
    }

    v11 = [(HKClinicalDocumentIndexingRequest *)v8 medicalRecord];
    if (!v11)
    {
      v13 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v3 = v11;
    v12 = self->_medicalRecord;
    v4 = [(HKClinicalDocumentIndexingRequest *)v8 medicalRecord];
    if ([(HKMedicalRecord *)v12 isEqual:v4])
    {
LABEL_9:
      attachmentIdentifiers = self->_attachmentIdentifiers;
      v15 = [(HKClinicalDocumentIndexingRequest *)v8 attachmentIdentifiers];
      v16 = v15;
      if (attachmentIdentifiers == v15)
      {

        v13 = 1;
      }

      else
      {
        v17 = [(HKClinicalDocumentIndexingRequest *)v8 attachmentIdentifiers];
        if (v17)
        {
          v18 = v17;
          v19 = self->_attachmentIdentifiers;
          v20 = [(HKClinicalDocumentIndexingRequest *)v8 attachmentIdentifiers];
          v13 = [(NSArray *)v19 isEqualToArray:v20];
        }

        else
        {

          v13 = 0;
        }
      }

      if (medicalRecord == v10)
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

- (void)encodeWithCoder:(id)a3
{
  medicalRecord = self->_medicalRecord;
  v5 = a3;
  [v5 encodeObject:medicalRecord forKey:@"MedicalRecord"];
  [v5 encodeObject:self->_attachmentIdentifiers forKey:@"AttachmentIdentifiers"];
}

- (HKClinicalDocumentIndexingRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MedicalRecord"];
  v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"AttachmentIdentifiers"];
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
    [v4 hrs_failWithCocoaValueNotFoundError];
    v9 = 0;
  }

  else
  {
    self = [(HKClinicalDocumentIndexingRequest *)self initWithMedicalRecord:v5 attachmentIdentifiers:v6];
    v9 = self;
  }

  return v9;
}

@end