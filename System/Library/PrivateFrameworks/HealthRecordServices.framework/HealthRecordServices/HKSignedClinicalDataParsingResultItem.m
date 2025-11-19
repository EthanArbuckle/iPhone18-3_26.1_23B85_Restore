@interface HKSignedClinicalDataParsingResultItem
- (BOOL)isEqual:(id)a3;
- (HKSignedClinicalDataParsingResultItem)init;
- (HKSignedClinicalDataParsingResultItem)initWithCoder:(id)a3;
- (HKSignedClinicalDataParsingResultItem)initWithOriginalRecord:(id)a3 mainRecord:(id)a4;
- (NSData)uniquenessChecksum;
- (id)copyWithOriginalRecord:(id)a3 mainRecord:(id)a4;
- (void)encodeWithCoder:(id)a3;
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

- (HKSignedClinicalDataParsingResultItem)initWithOriginalRecord:(id)a3 mainRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKSignedClinicalDataParsingResultItem;
  v8 = [(HKSignedClinicalDataParsingResultItem *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    originalRecord = v8->_originalRecord;
    v8->_originalRecord = v9;

    v11 = [v7 copy];
    mainRecord = v8->_mainRecord;
    v8->_mainRecord = v11;
  }

  return v8;
}

- (id)copyWithOriginalRecord:(id)a3 mainRecord:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithOriginalRecord:v6 mainRecord:v5];

  return v7;
}

- (NSData)uniquenessChecksum
{
  v2 = [(HDHRSOriginalSignedClinicalDataRecord *)self->_originalRecord rawContent];
  v3 = [v2 hk_MD5];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  originalRecord = self->_originalRecord;
  v5 = a3;
  [v5 encodeObject:originalRecord forKey:@"OriginalRecord"];
  [v5 encodeObject:self->_mainRecord forKey:@"MainRecord"];
}

- (HKSignedClinicalDataParsingResultItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OriginalRecord"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MainRecord"];
    if (v6)
    {
      self = [(HKSignedClinicalDataParsingResultItem *)self initWithOriginalRecord:v5 mainRecord:v6];
      v7 = self;
    }

    else
    {
      [v4 hrs_failWithCocoaValueNotFoundError];
      v7 = 0;
    }
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (self != v6)
  {
    v8 = v6;
    if (![(HKSignedClinicalDataParsingResultItem *)v8 isMemberOfClass:objc_opt_class()])
    {
      v13 = 0;
LABEL_18:

      goto LABEL_19;
    }

    originalRecord = self->_originalRecord;
    v10 = [(HKSignedClinicalDataParsingResultItem *)v8 originalRecord];
    if (originalRecord == v10)
    {
      goto LABEL_9;
    }

    v11 = [(HKSignedClinicalDataParsingResultItem *)v8 originalRecord];
    if (!v11)
    {
      v13 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v3 = v11;
    v12 = self->_originalRecord;
    v4 = [(HKSignedClinicalDataParsingResultItem *)v8 originalRecord];
    if ([(HDHRSOriginalSignedClinicalDataRecord *)v12 isEqual:v4])
    {
LABEL_9:
      mainRecord = self->_mainRecord;
      v15 = [(HKSignedClinicalDataParsingResultItem *)v8 mainRecord];
      v16 = v15;
      if (mainRecord == v15)
      {

        v13 = 1;
      }

      else
      {
        v17 = [(HKSignedClinicalDataParsingResultItem *)v8 mainRecord];
        if (v17)
        {
          v18 = v17;
          v19 = self->_mainRecord;
          v20 = [(HKSignedClinicalDataParsingResultItem *)v8 mainRecord];
          v13 = [(HKSignedClinicalDataRecord *)v19 isEqual:v20];
        }

        else
        {

          v13 = 0;
        }
      }

      if (originalRecord == v10)
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