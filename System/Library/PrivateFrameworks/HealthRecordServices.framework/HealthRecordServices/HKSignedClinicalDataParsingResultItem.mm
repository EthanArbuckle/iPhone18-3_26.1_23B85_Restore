@interface HKSignedClinicalDataParsingResultItem
- (BOOL)isEqual:(id)equal;
- (HKSignedClinicalDataParsingResultItem)init;
- (HKSignedClinicalDataParsingResultItem)initWithCoder:(id)coder;
- (HKSignedClinicalDataParsingResultItem)initWithOriginalRecord:(id)record mainRecord:(id)mainRecord;
- (NSData)uniquenessChecksum;
- (id)copyWithOriginalRecord:(id)record mainRecord:(id)mainRecord;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSignedClinicalDataParsingResultItem

- (HKSignedClinicalDataParsingResultItem)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKSignedClinicalDataParsingResultItem)initWithOriginalRecord:(id)record mainRecord:(id)mainRecord
{
  recordCopy = record;
  mainRecordCopy = mainRecord;
  v14.receiver = self;
  v14.super_class = HKSignedClinicalDataParsingResultItem;
  v8 = [(HKSignedClinicalDataParsingResultItem *)&v14 init];
  if (v8)
  {
    v9 = [recordCopy copy];
    originalRecord = v8->_originalRecord;
    v8->_originalRecord = v9;

    v11 = [mainRecordCopy copy];
    mainRecord = v8->_mainRecord;
    v8->_mainRecord = v11;
  }

  return v8;
}

- (id)copyWithOriginalRecord:(id)record mainRecord:(id)mainRecord
{
  mainRecordCopy = mainRecord;
  recordCopy = record;
  v7 = [objc_alloc(objc_opt_class()) initWithOriginalRecord:recordCopy mainRecord:mainRecordCopy];

  return v7;
}

- (NSData)uniquenessChecksum
{
  rawContent = [(HDHRSOriginalSignedClinicalDataRecord *)self->_originalRecord rawContent];
  hk_MD5 = [rawContent hk_MD5];

  return hk_MD5;
}

- (void)encodeWithCoder:(id)coder
{
  originalRecord = self->_originalRecord;
  coderCopy = coder;
  [coderCopy encodeObject:originalRecord forKey:@"OriginalRecord"];
  [coderCopy encodeObject:self->_mainRecord forKey:@"MainRecord"];
}

- (HKSignedClinicalDataParsingResultItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OriginalRecord"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MainRecord"];
    if (v6)
    {
      self = [(HKSignedClinicalDataParsingResultItem *)self initWithOriginalRecord:v5 mainRecord:v6];
      selfCopy = self;
    }

    else
    {
      [coderCopy hrs_failWithCocoaValueNotFoundError];
      selfCopy = 0;
    }
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = equalCopy;
  if (self != equalCopy)
  {
    v8 = equalCopy;
    if (![(HKSignedClinicalDataParsingResultItem *)v8 isMemberOfClass:objc_opt_class()])
    {
      v13 = 0;
LABEL_18:

      goto LABEL_19;
    }

    originalRecord = self->_originalRecord;
    originalRecord = [(HKSignedClinicalDataParsingResultItem *)v8 originalRecord];
    if (originalRecord == originalRecord)
    {
      goto LABEL_9;
    }

    originalRecord2 = [(HKSignedClinicalDataParsingResultItem *)v8 originalRecord];
    if (!originalRecord2)
    {
      v13 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v3 = originalRecord2;
    v12 = self->_originalRecord;
    originalRecord3 = [(HKSignedClinicalDataParsingResultItem *)v8 originalRecord];
    if ([(HDHRSOriginalSignedClinicalDataRecord *)v12 isEqual:originalRecord3])
    {
LABEL_9:
      mainRecord = self->_mainRecord;
      mainRecord = [(HKSignedClinicalDataParsingResultItem *)v8 mainRecord];
      v16 = mainRecord;
      if (mainRecord == mainRecord)
      {

        v13 = 1;
      }

      else
      {
        mainRecord2 = [(HKSignedClinicalDataParsingResultItem *)v8 mainRecord];
        if (mainRecord2)
        {
          v18 = mainRecord2;
          v19 = self->_mainRecord;
          mainRecord3 = [(HKSignedClinicalDataParsingResultItem *)v8 mainRecord];
          v13 = [(HKSignedClinicalDataRecord *)v19 isEqual:mainRecord3];
        }

        else
        {

          v13 = 0;
        }
      }

      if (originalRecord == originalRecord)
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

@end