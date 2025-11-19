@interface PKSetupProductMethod
- (NSString)identifier;
- (PKSetupProductMethod)initWithCoder:(id)a3;
- (PKSetupProductMethod)initWithDictionary:(id)a3 partnerIdentifier:(id)a4;
- (PKSetupProductMethod)initWithType:(unint64_t)a3 partnerIdentifier:(id)a4;
- (id)_displayNameForCardType:(id)a3;
- (id)_inAppProvisioningURLWthScheme:(id)a3 path:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_copyInto:(id)a3;
- (void)_decorateDescription:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKSetupProductMethod

- (PKSetupProductMethod)initWithType:(unint64_t)a3 partnerIdentifier:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PKSetupProductMethod;
  v8 = [(PKSetupProductMethod *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_partnerIdentifier, a4);
    v9->_supported = 1;
  }

  return v9;
}

- (PKSetupProductMethod)initWithDictionary:(id)a3 partnerIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = PKSetupProductMethod;
  v8 = [(PKSetupProductMethod *)&v26 init];
  if (v8)
  {
    v9 = [v6 PKStringForKey:@"provisioningMethodType"];
    v8->_type = PKSetupProductMethodTypeFromString(v9);
    v10 = [v6 PKStringForKey:@"partnerIdentifier"];
    partnerIdentifier = v8->_partnerIdentifier;
    v8->_partnerIdentifier = v10;

    if (!v8->_partnerIdentifier)
    {
      objc_storeStrong(&v8->_partnerIdentifier, a4);
    }

    v12 = [v6 PKStringForKey:@"localizedTitle"];
    localizedTitle = v8->_localizedTitle;
    v8->_localizedTitle = v12;

    v14 = [v6 PKStringForKey:@"localizedDescription"];
    localizedDescription = v8->_localizedDescription;
    v8->_localizedDescription = v14;

    v16 = [v6 PKStringForKey:@"region"];
    v17 = [v16 componentsSeparatedByString:{@", "}];
    regions = v8->_regions;
    v8->_regions = v17;

    v19 = [v6 PKDictionaryForKey:@"osVersionRange"];
    if (v19)
    {
      v20 = [[PKOSVersionRequirementRange alloc] initWithDictionary:v19];
      requiredOSVersionRange = v8->_requiredOSVersionRange;
      v8->_requiredOSVersionRange = v20;
    }

    else
    {
      requiredOSVersionRange = [v6 PKDictionaryForKey:@"minimumOSVersion"];
      if (requiredOSVersionRange)
      {
        v22 = [[PKOSVersionRequirement alloc] initWithDictionary:requiredOSVersionRange];
        v23 = [[PKOSVersionRequirementRange alloc] initWithMinimumVersion:v22 maximumVersion:0];
        v24 = v8->_requiredOSVersionRange;
        v8->_requiredOSVersionRange = v23;
      }
    }

    v8->_supported = 1;
  }

  return v8;
}

- (NSString)identifier
{
  v3 = PKPaymentSupportedProvisioningMethodToString(self->_type);
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-%@-%@", v3, self->_partnerIdentifier, self->_localizedTitle];

  return v4;
}

- (id)_inAppProvisioningURLWthScheme:(id)a3 path:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@://", v5];
    if ([v6 length])
    {
      v8 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
      v9 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:v8];

      [v7 appendString:v9];
      v6 = v9;
    }

    v10 = [MEMORY[0x1E695DFF8] URLWithString:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_displayNameForCardType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"credit"])
  {
    v4 = @"CARD_TYPE_CREDIT_CARD";
  }

  else if ([v3 isEqualToString:@"debit"])
  {
    v4 = @"CARD_TYPE_DEBIT_CARD";
  }

  else if ([v3 isEqualToString:@"prepaid"])
  {
    v4 = @"CARD_TYPE_PREPAID_CARD";
  }

  else
  {
    v5 = v3;
    if (![v3 isEqualToString:@"bankcard"])
    {
      goto LABEL_10;
    }

    v4 = @"CARD_TYPE_BANK_CARD";
  }

  v5 = PKLocalizedPaymentString(&v4->isa, 0);

LABEL_10:

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [(PKSetupProductMethod *)self _decorateDescription:v6];
  [v6 appendString:@">"];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
}

- (void)_decorateDescription:(id)a3
{
  type = self->_type;
  v7 = a3;
  v5 = PKPaymentSupportedProvisioningMethodToString(type);
  [v7 appendFormat:@"type: '%@'; ", v5];

  [v7 appendFormat:@"partnerIdentifier: '%@'; ", self->_partnerIdentifier];
  [v7 appendFormat:@"localizedTitle: '%@'; ", self->_localizedTitle];
  [v7 appendFormat:@"localizedDescription: '%@'; ", self->_localizedDescription];
  [v7 appendFormat:@"regions: '%@'; ", self->_regions];
  [v7 appendFormat:@"requiredOSVersionRange: '%@'; ", self->_requiredOSVersionRange];
  if (self->_supported)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v7 appendFormat:@"supported: '%@'; ", v6];
}

- (PKSetupProductMethod)initWithCoder:(id)a3
{
  v22[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKSetupProductMethod;
  v5 = [(PKSetupProductMethod *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"provisioningMethodType"];
    v5->_type = PKSetupProductMethodTypeFromString(v6);
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"partnerIdentifier"];
    partnerIdentifier = v5->_partnerIdentifier;
    v5->_partnerIdentifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v11;

    v13 = objc_alloc(MEMORY[0x1E695DFD8]);
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v15 = [v13 initWithArray:v14];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"regions"];
    regions = v5->_regions;
    v5->_regions = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requiredOSVersionRange"];
    requiredOSVersionRange = v5->_requiredOSVersionRange;
    v5->_requiredOSVersionRange = v18;

    v5->_supported = [v4 decodeBoolForKey:@"supported"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v6 = a3;
  v5 = PKPaymentSupportedProvisioningMethodToString(type);
  [v6 encodeObject:v5 forKey:@"provisioningMethodType"];

  [v6 encodeObject:self->_partnerIdentifier forKey:@"partnerIdentifier"];
  [v6 encodeObject:self->_localizedTitle forKey:@"localizedTitle"];
  [v6 encodeObject:self->_localizedDescription forKey:@"localizedDescription"];
  [v6 encodeObject:self->_regions forKey:@"regions"];
  [v6 encodeObject:self->_requiredOSVersionRange forKey:@"requiredOSVersionRange"];
  [v6 encodeBool:self->_supported forKey:@"supported"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PKSetupProductMethod);
  [(PKSetupProductMethod *)self _copyInto:v4];
  return v4;
}

- (void)_copyInto:(id)a3
{
  *(a3 + 2) = self->_type;
  objc_storeStrong(a3 + 3, self->_partnerIdentifier);
  v5 = a3;
  objc_storeStrong(v5 + 4, self->_localizedTitle);
  objc_storeStrong(v5 + 5, self->_localizedDescription);
  objc_storeStrong(v5 + 6, self->_regions);
  objc_storeStrong(v5 + 7, self->_requiredOSVersionRange);
  *(v5 + 8) = self->_supported;
}

@end