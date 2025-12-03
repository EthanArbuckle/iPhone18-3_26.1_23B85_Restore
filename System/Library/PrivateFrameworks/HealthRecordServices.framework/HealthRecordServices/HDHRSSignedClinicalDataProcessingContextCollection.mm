@interface HDHRSSignedClinicalDataProcessingContextCollection
- (BOOL)isEqual:(id)equal;
- (HDHRSSignedClinicalDataProcessingContextCollection)init;
- (HDHRSSignedClinicalDataProcessingContextCollection)initWithCoder:(id)coder;
- (HDHRSSignedClinicalDataProcessingContextCollection)initWithReceivedDate:(id)date countryCode:(id)code options:(unint64_t)options contextItems:(id)items;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (HDHRSSignedClinicalDataProcessingContextCollection)initWithReceivedDate:(id)date countryCode:(id)code options:(unint64_t)options contextItems:(id)items
{
  dateCopy = date;
  codeCopy = code;
  itemsCopy = items;
  v21.receiver = self;
  v21.super_class = HDHRSSignedClinicalDataProcessingContextCollection;
  v13 = [(HDHRSSignedClinicalDataProcessingContextCollection *)&v21 init];
  if (v13)
  {
    v14 = [dateCopy copy];
    receivedDate = v13->_receivedDate;
    v13->_receivedDate = v14;

    v16 = [codeCopy copy];
    countryCode = v13->_countryCode;
    v13->_countryCode = v16;

    v13->_options = options;
    v18 = [itemsCopy copy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (equalCopy != self)
  {
    v7 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
LABEL_36:

      goto LABEL_37;
    }

    receivedDate = self->_receivedDate;
    receivedDate = [(HDHRSSignedClinicalDataProcessingContextCollection *)v7 receivedDate];
    if (receivedDate != receivedDate)
    {
      receivedDate2 = [(HDHRSSignedClinicalDataProcessingContextCollection *)v7 receivedDate];
      if (!receivedDate2)
      {
        v13 = 0;
        goto LABEL_35;
      }

      v3 = receivedDate2;
      v11 = self->_receivedDate;
      receivedDate3 = [(HDHRSSignedClinicalDataProcessingContextCollection *)v7 receivedDate];
      if (![(NSDate *)v11 isEqual:receivedDate3])
      {
        v13 = 0;
LABEL_34:

        goto LABEL_35;
      }

      v33 = receivedDate3;
    }

    countryCode = self->_countryCode;
    countryCode = [(HDHRSSignedClinicalDataProcessingContextCollection *)v7 countryCode];
    if (countryCode == countryCode)
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
      countryCode2 = [(HDHRSSignedClinicalDataProcessingContextCollection *)v7 countryCode];
      if (!countryCode2)
      {
        v13 = 0;
        goto LABEL_29;
      }

      v32 = countryCode2;
      v17 = self->_countryCode;
      countryCode3 = [(HDHRSSignedClinicalDataProcessingContextCollection *)v7 countryCode];
      if (![(NSString *)v17 isEqualToString:countryCode3])
      {

        v13 = 0;
LABEL_32:
        v28 = receivedDate == receivedDate;
        goto LABEL_33;
      }

      v30 = countryCode3;
      v19 = self->_options;
      if (v19 != [(HDHRSSignedClinicalDataProcessingContextCollection *)v7 options])
      {
        v13 = 0;
LABEL_28:

LABEL_29:
        receivedDate3 = v33;

        if (receivedDate == receivedDate)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }
    }

    v31 = v3;
    contextItems = self->_contextItems;
    contextItems = [(HDHRSSignedClinicalDataProcessingContextCollection *)v7 contextItems];
    v23 = contextItems;
    if (contextItems == contextItems)
    {

      v13 = 1;
    }

    else
    {
      contextItems2 = [(HDHRSSignedClinicalDataProcessingContextCollection *)v7 contextItems];
      if (contextItems2)
      {
        v25 = contextItems2;
        v26 = self->_contextItems;
        contextItems3 = [(HDHRSSignedClinicalDataProcessingContextCollection *)v7 contextItems];
        v13 = [(NSArray *)v26 isEqualToArray:contextItems3];

        if (countryCode != countryCode)
        {
        }

        v28 = receivedDate == receivedDate;
        v3 = v31;
LABEL_33:
        receivedDate3 = v33;
        if (!v28)
        {
          goto LABEL_34;
        }

LABEL_35:

        goto LABEL_36;
      }

      v13 = 0;
    }

    countryCode3 = v30;
    v3 = v31;
    if (countryCode != countryCode)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v13 = 1;
LABEL_37:

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  receivedDate = self->_receivedDate;
  coderCopy = coder;
  [coderCopy encodeObject:receivedDate forKey:@"ReceivedDate"];
  [coderCopy encodeObject:self->_countryCode forKey:@"CountryCode"];
  [coderCopy encodeInteger:self->_options forKey:@"Options"];
  [coderCopy encodeObject:self->_contextItems forKey:@"ContextItems"];
}

- (HDHRSSignedClinicalDataProcessingContextCollection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ReceivedDate"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CountryCode"];
    if ([coderCopy containsValueForKey:@"Options"])
    {
      v7 = [coderCopy decodeIntegerForKey:@"Options"];
      v8 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
      v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"ContextItems"];
      if (v9)
      {
        self = [(HDHRSSignedClinicalDataProcessingContextCollection *)self initWithReceivedDate:v5 countryCode:v6 options:v7 contextItems:v9];
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
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

@end