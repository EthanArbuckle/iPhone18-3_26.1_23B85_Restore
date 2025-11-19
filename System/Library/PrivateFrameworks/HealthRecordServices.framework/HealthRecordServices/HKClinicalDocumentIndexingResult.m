@interface HKClinicalDocumentIndexingResult
- (BOOL)isEqual:(id)a3;
- (HKClinicalDocumentIndexingResult)initWithAttachmentIdentifiers:(id)a3;
- (HKClinicalDocumentIndexingResult)initWithCoder:(id)a3;
@end

@implementation HKClinicalDocumentIndexingResult

- (HKClinicalDocumentIndexingResult)initWithAttachmentIdentifiers:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKClinicalDocumentIndexingResult;
  v5 = [(HKClinicalDocumentIndexingResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    attachmentIdentifiers = v5->_attachmentIdentifiers;
    v5->_attachmentIdentifiers = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      attachmentIdentifiers = self->_attachmentIdentifiers;
      v8 = [(HKClinicalDocumentIndexingResult *)v6 attachmentIdentifiers];
      if (attachmentIdentifiers == v8)
      {
        v12 = 1;
      }

      else
      {
        v9 = [(HKClinicalDocumentIndexingResult *)v6 attachmentIdentifiers];
        if (v9)
        {
          v10 = self->_attachmentIdentifiers;
          v11 = [(HKClinicalDocumentIndexingResult *)v6 attachmentIdentifiers];
          v12 = [(NSArray *)v10 isEqualToArray:v11];
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (HKClinicalDocumentIndexingResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"AttachmentIdentifiers"];
  if (v5)
  {
    self = [(HKClinicalDocumentIndexingResult *)self initWithAttachmentIdentifiers:v5];
    v6 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v6 = 0;
  }

  return v6;
}

@end