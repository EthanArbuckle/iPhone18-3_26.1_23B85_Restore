@interface HKClinicalIngestionContext
- (BOOL)isEqual:(id)a3;
- (HKClinicalIngestionContext)init;
- (HKClinicalIngestionContext)initWithAccountConnectionInformation:(id)a3 queryMode:(int64_t)a4 options:(unint64_t)a5 lastFetchDate:(id)a6;
- (HKClinicalIngestionContext)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (HKClinicalIngestionContext)initWithAccountConnectionInformation:(id)a3 queryMode:(int64_t)a4 options:(unint64_t)a5 lastFetchDate:(id)a6
{
  v10 = a3;
  v11 = a6;
  v18.receiver = self;
  v18.super_class = HKClinicalIngestionContext;
  v12 = [(HKClinicalIngestionContext *)&v18 init];
  if (v12)
  {
    v13 = [v10 copy];
    accountInformation = v12->_accountInformation;
    v12->_accountInformation = v13;

    v12->_queryMode = a4;
    v12->_options = a5;
    v15 = [v11 copy];
    lastFetchDate = v12->_lastFetchDate;
    v12->_lastFetchDate = v15;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  accountInformation = self->_accountInformation;
  v5 = a3;
  [v5 encodeObject:accountInformation forKey:@"AccountInformation"];
  [v5 encodeInteger:self->_queryMode forKey:@"QueryMode"];
  [v5 encodeInteger:self->_options forKey:@"Options"];
  [v5 encodeObject:self->_lastFetchDate forKey:@"LastFetchDate"];
}

- (HKClinicalIngestionContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AccountInformation"];
  if (v5 && [v4 containsValueForKey:@"QueryMode"] && (objc_msgSend(v4, "containsValueForKey:", @"Options") & 1) != 0)
  {
    v6 = [v4 decodeIntegerForKey:@"QueryMode"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LastFetchDate"];
    self = -[HKClinicalIngestionContext initWithAccountConnectionInformation:queryMode:options:lastFetchDate:](self, "initWithAccountConnectionInformation:queryMode:options:lastFetchDate:", v5, v6, [v4 decodeIntegerForKey:@"Options"], v7);

    v8 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self != v5)
  {
    v7 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = 0;
LABEL_24:

      goto LABEL_25;
    }

    accountInformation = self->_accountInformation;
    v9 = [(HKClinicalIngestionContext *)v7 accountInformation];
    if (accountInformation == v9)
    {
      queryMode = self->_queryMode;
      if (queryMode == [(HKClinicalIngestionContext *)v7 queryMode])
      {
        goto LABEL_11;
      }
    }

    else
    {
      v10 = [(HKClinicalIngestionContext *)v7 accountInformation];
      if (v10)
      {
        v3 = v10;
        v11 = self->_accountInformation;
        v12 = [(HKClinicalIngestionContext *)v7 accountInformation];
        if (![(HKClinicalAccountConnectionInformation *)v11 isEqual:v12]|| (v13 = self->_queryMode, v13 != [(HKClinicalIngestionContext *)v7 queryMode]))
        {
          v14 = 0;
LABEL_22:

          goto LABEL_23;
        }

        v25 = v12;
LABEL_11:
        lastFetchDate = self->_lastFetchDate;
        v17 = [(HKClinicalIngestionContext *)v7 lastFetchDate];
        if (lastFetchDate != v17)
        {
          v18 = [(HKClinicalIngestionContext *)v7 lastFetchDate];
          if (v18)
          {
            v19 = v18;
            v20 = self->_lastFetchDate;
            v21 = [(HKClinicalIngestionContext *)v7 lastFetchDate];
            if ([(NSDate *)v20 isEqual:v21])
            {
              options = self->_options;
              v14 = options == [(HKClinicalIngestionContext *)v7 options];

LABEL_18:
              goto LABEL_21;
            }
          }

          v14 = 0;
LABEL_21:
          v12 = v25;
          if (accountInformation != v9)
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