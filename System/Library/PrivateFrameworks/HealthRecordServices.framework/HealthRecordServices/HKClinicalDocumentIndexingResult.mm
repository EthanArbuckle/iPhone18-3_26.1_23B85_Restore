@interface HKClinicalDocumentIndexingResult
- (BOOL)isEqual:(id)equal;
- (HKClinicalDocumentIndexingResult)initWithAttachmentIdentifiers:(id)identifiers;
- (HKClinicalDocumentIndexingResult)initWithCoder:(id)coder;
@end

@implementation HKClinicalDocumentIndexingResult

- (HKClinicalDocumentIndexingResult)initWithAttachmentIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v9.receiver = self;
  v9.super_class = HKClinicalDocumentIndexingResult;
  v5 = [(HKClinicalDocumentIndexingResult *)&v9 init];
  if (v5)
  {
    v6 = [identifiersCopy copy];
    attachmentIdentifiers = v5->_attachmentIdentifiers;
    v5->_attachmentIdentifiers = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      attachmentIdentifiers = self->_attachmentIdentifiers;
      attachmentIdentifiers = [(HKClinicalDocumentIndexingResult *)v6 attachmentIdentifiers];
      if (attachmentIdentifiers == attachmentIdentifiers)
      {
        v12 = 1;
      }

      else
      {
        attachmentIdentifiers2 = [(HKClinicalDocumentIndexingResult *)v6 attachmentIdentifiers];
        if (attachmentIdentifiers2)
        {
          v10 = self->_attachmentIdentifiers;
          attachmentIdentifiers3 = [(HKClinicalDocumentIndexingResult *)v6 attachmentIdentifiers];
          v12 = [(NSArray *)v10 isEqualToArray:attachmentIdentifiers3];
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

- (HKClinicalDocumentIndexingResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"AttachmentIdentifiers"];
  if (v5)
  {
    self = [(HKClinicalDocumentIndexingResult *)self initWithAttachmentIdentifiers:v5];
    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

@end