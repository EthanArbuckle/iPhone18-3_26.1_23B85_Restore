@interface PKSetupProductMethod
- (NSString)identifier;
- (PKSetupProductMethod)initWithCoder:(id)coder;
- (PKSetupProductMethod)initWithDictionary:(id)dictionary partnerIdentifier:(id)identifier;
- (PKSetupProductMethod)initWithType:(unint64_t)type partnerIdentifier:(id)identifier;
- (id)_displayNameForCardType:(id)type;
- (id)_inAppProvisioningURLWthScheme:(id)scheme path:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_copyInto:(id)into;
- (void)_decorateDescription:(id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSetupProductMethod

- (PKSetupProductMethod)initWithType:(unint64_t)type partnerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = PKSetupProductMethod;
  v8 = [(PKSetupProductMethod *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_partnerIdentifier, identifier);
    v9->_supported = 1;
  }

  return v9;
}

- (PKSetupProductMethod)initWithDictionary:(id)dictionary partnerIdentifier:(id)identifier
{
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  v26.receiver = self;
  v26.super_class = PKSetupProductMethod;
  v8 = [(PKSetupProductMethod *)&v26 init];
  if (v8)
  {
    v9 = [dictionaryCopy PKStringForKey:@"provisioningMethodType"];
    v8->_type = PKSetupProductMethodTypeFromString(v9);
    v10 = [dictionaryCopy PKStringForKey:@"partnerIdentifier"];
    partnerIdentifier = v8->_partnerIdentifier;
    v8->_partnerIdentifier = v10;

    if (!v8->_partnerIdentifier)
    {
      objc_storeStrong(&v8->_partnerIdentifier, identifier);
    }

    v12 = [dictionaryCopy PKStringForKey:@"localizedTitle"];
    localizedTitle = v8->_localizedTitle;
    v8->_localizedTitle = v12;

    v14 = [dictionaryCopy PKStringForKey:@"localizedDescription"];
    localizedDescription = v8->_localizedDescription;
    v8->_localizedDescription = v14;

    v16 = [dictionaryCopy PKStringForKey:@"region"];
    v17 = [v16 componentsSeparatedByString:{@", "}];
    regions = v8->_regions;
    v8->_regions = v17;

    v19 = [dictionaryCopy PKDictionaryForKey:@"osVersionRange"];
    if (v19)
    {
      v20 = [[PKOSVersionRequirementRange alloc] initWithDictionary:v19];
      requiredOSVersionRange = v8->_requiredOSVersionRange;
      v8->_requiredOSVersionRange = v20;
    }

    else
    {
      requiredOSVersionRange = [dictionaryCopy PKDictionaryForKey:@"minimumOSVersion"];
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

- (id)_inAppProvisioningURLWthScheme:(id)scheme path:(id)path
{
  schemeCopy = scheme;
  pathCopy = path;
  if ([schemeCopy length])
  {
    schemeCopy = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@://", schemeCopy];
    if ([pathCopy length])
    {
      uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
      v9 = [pathCopy stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

      [schemeCopy appendString:v9];
      pathCopy = v9;
    }

    v10 = [MEMORY[0x1E695DFF8] URLWithString:schemeCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_displayNameForCardType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"credit"])
  {
    v4 = @"CARD_TYPE_CREDIT_CARD";
  }

  else if ([typeCopy isEqualToString:@"debit"])
  {
    v4 = @"CARD_TYPE_DEBIT_CARD";
  }

  else if ([typeCopy isEqualToString:@"prepaid"])
  {
    v4 = @"CARD_TYPE_PREPAID_CARD";
  }

  else
  {
    v5 = typeCopy;
    if (![typeCopy isEqualToString:@"bankcard"])
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

- (void)_decorateDescription:(id)description
{
  type = self->_type;
  descriptionCopy = description;
  v5 = PKPaymentSupportedProvisioningMethodToString(type);
  [descriptionCopy appendFormat:@"type: '%@'; ", v5];

  [descriptionCopy appendFormat:@"partnerIdentifier: '%@'; ", self->_partnerIdentifier];
  [descriptionCopy appendFormat:@"localizedTitle: '%@'; ", self->_localizedTitle];
  [descriptionCopy appendFormat:@"localizedDescription: '%@'; ", self->_localizedDescription];
  [descriptionCopy appendFormat:@"regions: '%@'; ", self->_regions];
  [descriptionCopy appendFormat:@"requiredOSVersionRange: '%@'; ", self->_requiredOSVersionRange];
  if (self->_supported)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [descriptionCopy appendFormat:@"supported: '%@'; ", v6];
}

- (PKSetupProductMethod)initWithCoder:(id)coder
{
  v22[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = PKSetupProductMethod;
  v5 = [(PKSetupProductMethod *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"provisioningMethodType"];
    v5->_type = PKSetupProductMethodTypeFromString(v6);
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"partnerIdentifier"];
    partnerIdentifier = v5->_partnerIdentifier;
    v5->_partnerIdentifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v11;

    v13 = objc_alloc(MEMORY[0x1E695DFD8]);
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v15 = [v13 initWithArray:v14];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"regions"];
    regions = v5->_regions;
    v5->_regions = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requiredOSVersionRange"];
    requiredOSVersionRange = v5->_requiredOSVersionRange;
    v5->_requiredOSVersionRange = v18;

    v5->_supported = [coderCopy decodeBoolForKey:@"supported"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  v5 = PKPaymentSupportedProvisioningMethodToString(type);
  [coderCopy encodeObject:v5 forKey:@"provisioningMethodType"];

  [coderCopy encodeObject:self->_partnerIdentifier forKey:@"partnerIdentifier"];
  [coderCopy encodeObject:self->_localizedTitle forKey:@"localizedTitle"];
  [coderCopy encodeObject:self->_localizedDescription forKey:@"localizedDescription"];
  [coderCopy encodeObject:self->_regions forKey:@"regions"];
  [coderCopy encodeObject:self->_requiredOSVersionRange forKey:@"requiredOSVersionRange"];
  [coderCopy encodeBool:self->_supported forKey:@"supported"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PKSetupProductMethod);
  [(PKSetupProductMethod *)self _copyInto:v4];
  return v4;
}

- (void)_copyInto:(id)into
{
  *(into + 2) = self->_type;
  objc_storeStrong(into + 3, self->_partnerIdentifier);
  intoCopy = into;
  objc_storeStrong(intoCopy + 4, self->_localizedTitle);
  objc_storeStrong(intoCopy + 5, self->_localizedDescription);
  objc_storeStrong(intoCopy + 6, self->_regions);
  objc_storeStrong(intoCopy + 7, self->_requiredOSVersionRange);
  *(intoCopy + 8) = self->_supported;
}

@end