@interface PKPassUpgradeRequest
+ (id)passUpgradeRequestFromDictionary:(id)a3;
- (PKPassUpgradeRequest)initWithCoder:(id)a3;
- (PKPassUpgradeRequest)initWithDictionary:(id)a3;
- (id)asDictionary;
- (void)_dictionaryRepresentationInto:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassUpgradeRequest

+ (id)passUpgradeRequestFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 PKStringForKey:@"type"];
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

    v9 = [[v7 alloc] initWithDictionary:v3];
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

- (PKPassUpgradeRequest)initWithDictionary:(id)a3
{
  v5 = a3;
  v28.receiver = self;
  v28.super_class = PKPassUpgradeRequest;
  v6 = [(PKPassUpgradeRequest *)&v28 init];
  if (v6)
  {
    v7 = [v5 PKStringForKey:@"type"];
    v8 = v7;
    if (v7)
    {
      v9 = requestTypeFromString(v7);
      v6->_type = v9;
      if (v9)
      {
        v10 = [PKOSVersionRequirementRange alloc];
        v11 = [v5 PKDictionaryForKey:@"osVersionRange"];
        v12 = [(PKOSVersionRequirementRange *)v10 initWithDictionary:v11];
        osVersionRange = v6->_osVersionRange;
        v6->_osVersionRange = v12;

        if (!v6->_osVersionRange)
        {
          v14 = [PKOSVersionRequirement alloc];
          v15 = [v5 PKDictionaryForKey:@"minimumOSVersion"];
          v16 = [(PKOSVersionRequirement *)v14 initWithDictionary:v15];

          if (v16)
          {
            v17 = [[PKOSVersionRequirementRange alloc] initWithMinimumVersion:v16 maximumVersion:0];
            v18 = v6->_osVersionRange;
            v6->_osVersionRange = v17;
          }
        }

        v19 = [v5 PKStringForKey:@"secureElementIdentifier"];
        secureElementIdentifier = v6->_secureElementIdentifier;
        v6->_secureElementIdentifier = v19;

        v21 = [v5 PKArrayContaining:objc_opt_class() forKey:@"paymentApplicationIdentifiers"];
        paymentApplicationIdentifiers = v6->_paymentApplicationIdentifiers;
        v6->_paymentApplicationIdentifiers = v21;

        objc_storeStrong(&v6->_fields, a3);
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

- (void)_dictionaryRepresentationInto:(id)a3
{
  v4 = a3;
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

  v14 = v4;
  [v4 setObject:v7 forKeyedSubscript:@"type"];
  v8 = [(PKOSVersionRequirementRange *)self->_osVersionRange minimum];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 asDictionary];
    [v14 setObject:v10 forKeyedSubscript:@"minimumOSVersion"];
  }

  osVersionRange = self->_osVersionRange;
  if (osVersionRange)
  {
    v12 = [(PKOSVersionRequirementRange *)osVersionRange asDictionary];
    [v14 setObject:v12 forKeyedSubscript:@"osVersionRange"];
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

- (PKPassUpgradeRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = PKPassUpgradeRequest;
  v5 = [(PKPassUpgradeRequest *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"osVersionRange"];
    osVersionRange = v5->_osVersionRange;
    v5->_osVersionRange = v7;

    if (!v5->_osVersionRange)
    {
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minimumOSVersion"];
      if (v9)
      {
        v10 = [[PKOSVersionRequirementRange alloc] initWithMinimumVersion:v9 maximumVersion:0];
        v11 = v5->_osVersionRange;
        v5->_osVersionRange = v10;
      }
    }

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secureElementIdentifier"];
    secureElementIdentifier = v5->_secureElementIdentifier;
    v5->_secureElementIdentifier = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"paymentApplicationIdentifiers"];
    paymentApplicationIdentifiers = v5->_paymentApplicationIdentifiers;
    v5->_paymentApplicationIdentifiers = v17;

    v19 = [v4 decodePropertyListForKey:@"fields"];
    fields = v5->_fields;
    v5->_fields = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  type = self->_type;
  v8 = a3;
  v6 = [v4 numberWithUnsignedInteger:type];
  [v8 encodeObject:v6 forKey:@"type"];

  v7 = [(PKOSVersionRequirementRange *)self->_osVersionRange minimum];
  [v8 encodeObject:v7 forKey:@"minimumOSVersion"];

  [v8 encodeObject:self->_osVersionRange forKey:@"osVersionRange"];
  [v8 encodeObject:self->_secureElementIdentifier forKey:@"secureElementIdentifier"];
  [v8 encodeObject:self->_paymentApplicationIdentifiers forKey:@"paymentApplicationIdentifiers"];
  [v8 encodeObject:self->_fields forKey:@"fields"];
}

@end