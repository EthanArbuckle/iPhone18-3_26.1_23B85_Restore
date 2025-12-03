@interface HKClinicalIngestionContext
- (BOOL)isEqual:(id)equal;
- (HKClinicalIngestionContext)init;
- (HKClinicalIngestionContext)initWithAccountConnectionInformation:(id)information queryMode:(int64_t)mode options:(unint64_t)options lastFetchDate:(id)date;
- (HKClinicalIngestionContext)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKClinicalIngestionContext

- (HKClinicalIngestionContext)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKClinicalIngestionContext)initWithAccountConnectionInformation:(id)information queryMode:(int64_t)mode options:(unint64_t)options lastFetchDate:(id)date
{
  informationCopy = information;
  dateCopy = date;
  v18.receiver = self;
  v18.super_class = HKClinicalIngestionContext;
  v12 = [(HKClinicalIngestionContext *)&v18 init];
  if (v12)
  {
    v13 = [informationCopy copy];
    accountInformation = v12->_accountInformation;
    v12->_accountInformation = v13;

    v12->_queryMode = mode;
    v12->_options = options;
    v15 = [dateCopy copy];
    lastFetchDate = v12->_lastFetchDate;
    v12->_lastFetchDate = v15;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  accountInformation = self->_accountInformation;
  coderCopy = coder;
  [coderCopy encodeObject:accountInformation forKey:@"AccountInformation"];
  [coderCopy encodeInteger:self->_queryMode forKey:@"QueryMode"];
  [coderCopy encodeInteger:self->_options forKey:@"Options"];
  [coderCopy encodeObject:self->_lastFetchDate forKey:@"LastFetchDate"];
}

- (HKClinicalIngestionContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AccountInformation"];
  if (v5 && [coderCopy containsValueForKey:@"QueryMode"] && (objc_msgSend(coderCopy, "containsValueForKey:", @"Options") & 1) != 0)
  {
    v6 = [coderCopy decodeIntegerForKey:@"QueryMode"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastFetchDate"];
    self = -[HKClinicalIngestionContext initWithAccountConnectionInformation:queryMode:options:lastFetchDate:](self, "initWithAccountConnectionInformation:queryMode:options:lastFetchDate:", v5, v6, [coderCopy decodeIntegerForKey:@"Options"], v7);

    selfCopy = self;
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
  v6 = equalCopy;
  if (self != equalCopy)
  {
    v7 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = 0;
LABEL_24:

      goto LABEL_25;
    }

    accountInformation = self->_accountInformation;
    accountInformation = [(HKClinicalIngestionContext *)v7 accountInformation];
    if (accountInformation == accountInformation)
    {
      queryMode = self->_queryMode;
      if (queryMode == [(HKClinicalIngestionContext *)v7 queryMode])
      {
        goto LABEL_11;
      }
    }

    else
    {
      accountInformation2 = [(HKClinicalIngestionContext *)v7 accountInformation];
      if (accountInformation2)
      {
        v3 = accountInformation2;
        v11 = self->_accountInformation;
        accountInformation3 = [(HKClinicalIngestionContext *)v7 accountInformation];
        if (![(HKClinicalAccountConnectionInformation *)v11 isEqual:accountInformation3]|| (v13 = self->_queryMode, v13 != [(HKClinicalIngestionContext *)v7 queryMode]))
        {
          v14 = 0;
LABEL_22:

          goto LABEL_23;
        }

        v25 = accountInformation3;
LABEL_11:
        lastFetchDate = self->_lastFetchDate;
        lastFetchDate = [(HKClinicalIngestionContext *)v7 lastFetchDate];
        if (lastFetchDate != lastFetchDate)
        {
          lastFetchDate2 = [(HKClinicalIngestionContext *)v7 lastFetchDate];
          if (lastFetchDate2)
          {
            v19 = lastFetchDate2;
            v20 = self->_lastFetchDate;
            lastFetchDate3 = [(HKClinicalIngestionContext *)v7 lastFetchDate];
            if ([(NSDate *)v20 isEqual:lastFetchDate3])
            {
              options = self->_options;
              v14 = options == [(HKClinicalIngestionContext *)v7 options];

LABEL_18:
              goto LABEL_21;
            }
          }

          v14 = 0;
LABEL_21:
          accountInformation3 = v25;
          if (accountInformation != accountInformation)
          {
            goto LABEL_22;
          }

LABEL_23:

          goto LABEL_24;
        }

        v23 = self->_options;
        v14 = v23 == [(HKClinicalIngestionContext *)v7 options];
        goto LABEL_18;
      }
    }

    v14 = 0;
    goto LABEL_23;
  }

  v14 = 1;
LABEL_25:

  return v14;
}

@end