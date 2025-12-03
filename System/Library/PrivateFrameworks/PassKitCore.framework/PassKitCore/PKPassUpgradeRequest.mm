@interface PKPassUpgradeRequest
+ (id)passUpgradeRequestFromDictionary:(id)dictionary;
- (PKPassUpgradeRequest)initWithCoder:(id)coder;
- (PKPassUpgradeRequest)initWithDictionary:(id)dictionary;
- (id)asDictionary;
- (void)_dictionaryRepresentationInto:(id)into;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassUpgradeRequest

+ (id)passUpgradeRequestFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy PKStringForKey:@"type"];
  v5 = v4;
  if (v4)
  {
    v6 = requestTypeFromString(v4);
    if (v6)
    {
      if (v6 == 2)
      {
        v7 = PKPassUpgradePrecursorPassRequest;
      }

      else
      {
        v7 = PKPassUpgradeExpressAutomaticSelectionCriteriaRequest;
      }
    }

    else
    {
      v7 = PKPassUpgradeRequest;
    }

    v9 = [[v7 alloc] initWithDictionary:dictionaryCopy];
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject(0x27uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Missing type key for Upgrade request", v11, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (PKPassUpgradeRequest)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = PKPassUpgradeRequest;
  v6 = [(PKPassUpgradeRequest *)&v28 init];
  if (v6)
  {
    v7 = [dictionaryCopy PKStringForKey:@"type"];
    v8 = v7;
    if (v7)
    {
      v9 = requestTypeFromString(v7);
      v6->_type = v9;
      if (v9)
      {
        v10 = [PKOSVersionRequirementRange alloc];
        v11 = [dictionaryCopy PKDictionaryForKey:@"osVersionRange"];
        v12 = [(PKOSVersionRequirementRange *)v10 initWithDictionary:v11];
        osVersionRange = v6->_osVersionRange;
        v6->_osVersionRange = v12;

        if (!v6->_osVersionRange)
        {
          v14 = [PKOSVersionRequirement alloc];
          v15 = [dictionaryCopy PKDictionaryForKey:@"minimumOSVersion"];
          v16 = [(PKOSVersionRequirement *)v14 initWithDictionary:v15];

          if (v16)
          {
            v17 = [[PKOSVersionRequirementRange alloc] initWithMinimumVersion:v16 maximumVersion:0];
            v18 = v6->_osVersionRange;
            v6->_osVersionRange = v17;
          }
        }

        v19 = [dictionaryCopy PKStringForKey:@"secureElementIdentifier"];
        secureElementIdentifier = v6->_secureElementIdentifier;
        v6->_secureElementIdentifier = v19;

        v21 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"paymentApplicationIdentifiers"];
        paymentApplicationIdentifiers = v6->_paymentApplicationIdentifiers;
        v6->_paymentApplicationIdentifiers = v21;

        objc_storeStrong(&v6->_fields, dictionary);
        goto LABEL_9;
      }

      v24 = PKLogFacilityTypeGetObject(0x27uLL);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 0;
        v25 = "Invalid type for upgrade request";
        goto LABEL_14;
      }
    }

    else
    {
      v24 = PKLogFacilityTypeGetObject(0x27uLL);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 0;
        v25 = "Missing type key for Upgrade request";
LABEL_14:
        _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, v25, v27, 2u);
      }
    }

    v23 = 0;
    goto LABEL_16;
  }

LABEL_9:
  v23 = v6;
LABEL_16:

  return v23;
}

- (id)asDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(PKPassUpgradeRequest *)self _dictionaryRepresentationInto:v3];
  v4 = [v3 copy];

  return v4;
}

- (void)_dictionaryRepresentationInto:(id)into
{
  intoCopy = into;
  type = self->_type;
  v6 = @"unknown";
  if (type == 2)
  {
    v6 = @"precursorPass";
  }

  if (type == 1)
  {
    v7 = @"expressAutomaticSelectionCriteria";
  }

  else
  {
    v7 = v6;
  }

  v14 = intoCopy;
  [intoCopy setObject:v7 forKeyedSubscript:@"type"];
  minimum = [(PKOSVersionRequirementRange *)self->_osVersionRange minimum];
  v9 = minimum;
  if (minimum)
  {
    asDictionary = [minimum asDictionary];
    [v14 setObject:asDictionary forKeyedSubscript:@"minimumOSVersion"];
  }

  osVersionRange = self->_osVersionRange;
  if (osVersionRange)
  {
    asDictionary2 = [(PKOSVersionRequirementRange *)osVersionRange asDictionary];
    [v14 setObject:asDictionary2 forKeyedSubscript:@"osVersionRange"];
  }

  secureElementIdentifier = self->_secureElementIdentifier;
  if (secureElementIdentifier)
  {
    [v14 setObject:secureElementIdentifier forKeyedSubscript:@"secureElementIdentifier"];
  }

  if ([(NSArray *)self->_paymentApplicationIdentifiers count])
  {
    [v14 setObject:self->_paymentApplicationIdentifiers forKeyedSubscript:@"paymentApplicationIdentifiers"];
  }
}

- (PKPassUpgradeRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = PKPassUpgradeRequest;
  v5 = [(PKPassUpgradeRequest *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"osVersionRange"];
    osVersionRange = v5->_osVersionRange;
    v5->_osVersionRange = v7;

    if (!v5->_osVersionRange)
    {
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minimumOSVersion"];
      if (v9)
      {
        v10 = [[PKOSVersionRequirementRange alloc] initWithMinimumVersion:v9 maximumVersion:0];
        v11 = v5->_osVersionRange;
        v5->_osVersionRange = v10;
      }
    }

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secureElementIdentifier"];
    secureElementIdentifier = v5->_secureElementIdentifier;
    v5->_secureElementIdentifier = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"paymentApplicationIdentifiers"];
    paymentApplicationIdentifiers = v5->_paymentApplicationIdentifiers;
    v5->_paymentApplicationIdentifiers = v17;

    v19 = [coderCopy decodePropertyListForKey:@"fields"];
    fields = v5->_fields;
    v5->_fields = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  type = self->_type;
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:type];
  [coderCopy encodeObject:v6 forKey:@"type"];

  minimum = [(PKOSVersionRequirementRange *)self->_osVersionRange minimum];
  [coderCopy encodeObject:minimum forKey:@"minimumOSVersion"];

  [coderCopy encodeObject:self->_osVersionRange forKey:@"osVersionRange"];
  [coderCopy encodeObject:self->_secureElementIdentifier forKey:@"secureElementIdentifier"];
  [coderCopy encodeObject:self->_paymentApplicationIdentifiers forKey:@"paymentApplicationIdentifiers"];
  [coderCopy encodeObject:self->_fields forKey:@"fields"];
}

@end