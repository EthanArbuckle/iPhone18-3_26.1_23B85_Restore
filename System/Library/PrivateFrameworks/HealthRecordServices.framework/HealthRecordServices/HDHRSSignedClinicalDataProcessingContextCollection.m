@interface HDHRSSignedClinicalDataProcessingContextCollection
- (BOOL)isEqual:(id)a3;
- (HDHRSSignedClinicalDataProcessingContextCollection)init;
- (HDHRSSignedClinicalDataProcessingContextCollection)initWithCoder:(id)a3;
- (HDHRSSignedClinicalDataProcessingContextCollection)initWithReceivedDate:(id)a3 countryCode:(id)a4 options:(unint64_t)a5 contextItems:(id)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDHRSSignedClinicalDataProcessingContextCollection

- (HDHRSSignedClinicalDataProcessingContextCollection)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDHRSSignedClinicalDataProcessingContextCollection)initWithReceivedDate:(id)a3 countryCode:(id)a4 options:(unint64_t)a5 contextItems:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = HDHRSSignedClinicalDataProcessingContextCollection;
  v13 = [(HDHRSSignedClinicalDataProcessingContextCollection *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    receivedDate = v13->_receivedDate;
    v13->_receivedDate = v14;

    v16 = [v11 copy];
    countryCode = v13->_countryCode;
    v13->_countryCode = v16;

    v13->_options = a5;
    v18 = [v12 copy];
    contextItems = v13->_contextItems;
    v13->_contextItems = v18;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_receivedDate hash];
  v4 = [(NSString *)self->_countryCode hash]^ v3;
  options = self->_options;
  return v4 ^ options ^ [(NSArray *)self->_contextItems hash];
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 != self)
  {
    v7 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
LABEL_36:

      goto LABEL_37;
    }

    receivedDate = self->_receivedDate;
    v9 = [(HDHRSSignedClinicalDataProcessingContextCollection *)v7 receivedDate];
    if (receivedDate != v9)
    {
      v10 = [(HDHRSSignedClinicalDataProcessingContextCollection *)v7 receivedDate];
      if (!v10)
      {
        v13 = 0;
        goto LABEL_35;
      }

      v3 = v10;
      v11 = self->_receivedDate;
      v12 = [(HDHRSSignedClinicalDataProcessingContextCollection *)v7 receivedDate];
      if (![(NSDate *)v11 isEqual:v12])
      {
        v13 = 0;
LABEL_34:

        goto LABEL_35;
      }

      v33 = v12;
    }

    countryCode = self->_countryCode;
    v15 = [(HDHRSSignedClinicalDataProcessingContextCollection *)v7 countryCode];
    if (countryCode == v15)
    {
      options = self->_options;
      if (options != [(HDHRSSignedClinicalDataProcessingContextCollection *)v7 options])
      {
        v13 = 0;
LABEL_31:

        goto LABEL_32;
      }
    }

    else
    {
      v16 = [(HDHRSSignedClinicalDataProcessingContextCollection *)v7 countryCode];
      if (!v16)
      {
        v13 = 0;
        goto LABEL_29;
      }

      v32 = v16;
      v17 = self->_countryCode;
      v18 = [(HDHRSSignedClinicalDataProcessingContextCollection *)v7 countryCode];
      if (![(NSString *)v17 isEqualToString:v18])
      {

        v13 = 0;
LABEL_32:
        v28 = receivedDate == v9;
        goto LABEL_33;
      }

      v30 = v18;
      v19 = self->_options;
      if (v19 != [(HDHRSSignedClinicalDataProcessingContextCollection *)v7 options])
      {
        v13 = 0;
LABEL_28:

LABEL_29:
        v12 = v33;

        if (receivedDate == v9)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }
    }

    v31 = v3;
    contextItems = self->_contextItems;
    v22 = [(HDHRSSignedClinicalDataProcessingContextCollection *)v7 contextItems];
    v23 = v22;
    if (contextItems == v22)
    {

      v13 = 1;
    }

    else
    {
      v24 = [(HDHRSSignedClinicalDataProcessingContextCollection *)v7 contextItems];
      if (v24)
      {
        v25 = v24;
        v26 = self->_contextItems;
        v27 = [(HDHRSSignedClinicalDataProcessingContextCollection *)v7 contextItems];
        v13 = [(NSArray *)v26 isEqualToArray:v27];

        if (countryCode != v15)
        {
        }

        v28 = receivedDate == v9;
        v3 = v31;
LABEL_33:
        v12 = v33;
        if (!v28)
        {
          goto LABEL_34;
        }

LABEL_35:

        goto LABEL_36;
      }

      v13 = 0;
    }

    v18 = v30;
    v3 = v31;
    if (countryCode != v15)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v13 = 1;
LABEL_37:

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  receivedDate = self->_receivedDate;
  v5 = a3;
  [v5 encodeObject:receivedDate forKey:@"ReceivedDate"];
  [v5 encodeObject:self->_countryCode forKey:@"CountryCode"];
  [v5 encodeInteger:self->_options forKey:@"Options"];
  [v5 encodeObject:self->_contextItems forKey:@"ContextItems"];
}

- (HDHRSSignedClinicalDataProcessingContextCollection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ReceivedDate"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CountryCode"];
    if ([v4 containsValueForKey:@"Options"])
    {
      v7 = [v4 decodeIntegerForKey:@"Options"];
      v8 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
      v9 = [v4 decodeObjectOfClasses:v8 forKey:@"ContextItems"];
      if (v9)
      {
        self = [(HDHRSSignedClinicalDataProcessingContextCollection *)self initWithReceivedDate:v5 countryCode:v6 options:v7 contextItems:v9];
        v10 = self;
      }

      else
      {
        [v4 hrs_failWithCocoaValueNotFoundError];
        v10 = 0;
      }
    }

    else
    {
      [v4 hrs_failWithCocoaValueNotFoundError];
      v10 = 0;
    }
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v10 = 0;
  }

  return v10;
}

@end