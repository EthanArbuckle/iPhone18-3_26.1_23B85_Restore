@interface PKPaymentSetupField
+ (Class)classForIdentifier:(id)identifier type:(unint64_t)type;
+ (id)newRandomlyGeneratedField;
+ (id)paymentSetupFieldWithDIAttribute:(id)attribute;
+ (id)paymentSetupFieldWithIdentifier:(id)identifier configuration:(id)configuration;
+ (id)paymentSetupFieldWithIdentifier:(id)identifier type:(unint64_t)type;
+ (id)sampleCustomPaymentSetupFields;
- (BOOL)_shouldStripDiacritics;
- (NSString)localizedPlaceholder;
- (PKPaymentSetupField)initWithIdentifier:(id)identifier configuration:(id)configuration;
- (PKPaymentSetupField)initWithIdentifier:(id)identifier type:(unint64_t)type;
- (id)_submissionStringForValue:(id)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dateFieldObject;
- (id)displayString;
- (id)footerFieldObject;
- (id)labelFieldObject;
- (id)pickerFieldObject;
- (id)submissionString;
- (id)textFieldObject;
- (void)_setLocalizedDisplayName:(id)name;
- (void)noteCurrentValueChanged;
- (void)setCurrentValue:(id)value;
- (void)setDefaultValue:(id)value;
- (void)setLocalizedDisplayName:(id)name;
- (void)setOriginalCameraCaptureValue:(id)value;
- (void)setSource:(unint64_t)source;
- (void)updateWithAttribute:(id)attribute;
- (void)updateWithConfiguration:(id)configuration;
@end

@implementation PKPaymentSetupField

+ (id)paymentSetupFieldWithIdentifier:(id)identifier type:(unint64_t)type
{
  identifierCopy = identifier;
  v6 = [PKPaymentSetupField classForIdentifier:identifierCopy type:type];
  if (v6)
  {
    v7 = [[v6 alloc] initWithIdentifier:identifierCopy type:type];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)paymentSetupFieldWithIdentifier:(id)identifier configuration:(id)configuration
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  v8 = [configurationCopy PKStringForKey:@"fieldType"];
  v9 = [self paymentSetupFieldWithIdentifier:identifierCopy type:PKPaymentSetupFieldTypeFromString(v8)];

  if (configurationCopy && v9)
  {
    [v9 updateWithConfiguration:configurationCopy];
  }

  return v9;
}

+ (id)paymentSetupFieldWithDIAttribute:(id)attribute
{
  attributeCopy = attribute;
  v4 = objc_opt_class();
  identifier = [attributeCopy identifier];
  v6 = [attributeCopy attributeType] - 1;
  if (v6 > 7)
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_1ADB98EE0[v6];
  }

  v8 = [v4 paymentSetupFieldWithIdentifier:identifier type:v7];

  [v8 updateWithAttribute:attributeCopy];

  return v8;
}

- (PKPaymentSetupField)initWithIdentifier:(id)identifier type:(unint64_t)type
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = [PKPaymentSetupField classForIdentifier:identifierCopy type:type];
  if (!v7)
  {
    v13 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Error: Attempted to directly init the PKPaymentSetupField base class. This is not supported.", buf, 2u);
    }

    goto LABEL_14;
  }

  v8 = v7;
  if (v7 != objc_opt_class())
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    if (type - 1 > 4)
    {
      v12 = @"unknown";
    }

    else
    {
      v12 = off_1E79C8438[type - 1];
    }

    v17 = NSStringFromClass(v8);
    v18 = [v9 stringWithFormat:@"Error: Attempted to init %@ with identifier:%@ and type:%@ which actually requires %@. Give +[PKPaymentSetupField paymentSetupFieldWithIdentifier: type:] a go instead!", v11, identifierCopy, v12, v17];

    v19 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = v18;
      _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%@", v18}];
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  v21.receiver = self;
  v21.super_class = PKPaymentSetupField;
  v14 = [(PKPaymentSetupField *)&v21 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    [(PKPaymentSetupField *)v14 setSubmissionKey:identifierCopy];
    [(PKPaymentSetupField *)v14 setOptional:0];
    [(PKPaymentSetupField *)v14 setReadonly:0];
    [(PKPaymentSetupField *)v14 setSubmissionDestination:@"enable"];
    v14->_submissionSecurity = 0;
    v14->_populateFromMeCard = 1;
  }

LABEL_15:

  return v14;
}

- (PKPaymentSetupField)initWithIdentifier:(id)identifier configuration:(id)configuration
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  v8 = [configurationCopy PKStringForKey:@"fieldType"];
  v9 = [(PKPaymentSetupField *)self initWithIdentifier:identifierCopy type:PKPaymentSetupFieldTypeFromString(v8)];

  if (configurationCopy && v9)
  {
    [(PKPaymentSetupField *)v9 updateWithConfiguration:configurationCopy];
  }

  return v9;
}

- (void)updateWithAttribute:(id)attribute
{
  attributeCopy = attribute;
  [(PKPaymentSetupField *)self setAttribute:attributeCopy];
  localizedDisplayName = [attributeCopy localizedDisplayName];
  if ([localizedDisplayName length])
  {
    [(PKPaymentSetupField *)self _setLocalizedDisplayName:localizedDisplayName];
  }

  localizedPlaceholder = [attributeCopy localizedPlaceholder];
  if ([localizedPlaceholder length])
  {
    [(PKPaymentSetupField *)self setLocalizedPlaceholder:localizedPlaceholder];
  }

  displayFormat = [attributeCopy displayFormat];
  if ([displayFormat length])
  {
    [(PKPaymentSetupField *)self setDisplayFormat:displayFormat];
  }

  -[PKPaymentSetupField setOptional:](self, "setOptional:", [attributeCopy optional]);
}

- (void)updateWithConfiguration:(id)configuration
{
  v62 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = [(NSDictionary *)configurationCopy PKStringForKey:@"localizedDisplayName"];
  if (v5)
  {
    [(PKPaymentSetupField *)self _setLocalizedDisplayName:v5];
  }

  v6 = [(NSDictionary *)configurationCopy PKStringForKey:@"localizedPlaceholder"];
  if (v6)
  {
    [(PKPaymentSetupField *)self setLocalizedPlaceholder:v6];
  }

  v56 = v5;
  v7 = [(NSDictionary *)configurationCopy PKStringForKey:@"displayFormat"];
  if ([v7 length])
  {
    [(PKPaymentSetupField *)self setDisplayFormat:v7];
  }

  v54 = v7;
  _shouldStripDiacritics = [(PKPaymentSetupField *)self _shouldStripDiacritics];
  v9 = [(NSDictionary *)configurationCopy PKStringForKey:@"defaultValue"];
  v10 = v9;
  if (_shouldStripDiacritics)
  {
    v11 = [v9 stringByApplyingTransform:*MEMORY[0x1E695DA48] reverse:0];

    v10 = v11;
  }

  if (v10)
  {
    [(PKPaymentSetupField *)self setDefaultValue:v10];
  }

  v12 = [(NSDictionary *)configurationCopy PKNumberForKey:@"optional"];
  v13 = v12;
  if (v12)
  {
    -[PKPaymentSetupField setOptional:](self, "setOptional:", [v12 BOOLValue]);
  }

  v14 = [(NSDictionary *)configurationCopy PKNumberForKey:@"readonly"];
  v15 = v14;
  if (v14)
  {
    -[PKPaymentSetupField setReadonly:](self, "setReadonly:", [v14 BOOLValue]);
  }

  v16 = [(NSDictionary *)configurationCopy PKNumberForKey:@"hidden"];
  v17 = v16;
  if (v16)
  {
    -[PKPaymentSetupField setHidden:](self, "setHidden:", [v16 BOOLValue]);
  }

  v18 = [(NSDictionary *)configurationCopy PKStringForKey:@"submissionKey"];
  if (v18)
  {
    [(PKPaymentSetupField *)self setSubmissionKey:v18];
  }

  v19 = [(NSDictionary *)configurationCopy PKStringForKey:@"submissionDestination"];
  if (v19)
  {
    [(PKPaymentSetupField *)self setSubmissionDestination:v19];
  }

  v20 = [(NSDictionary *)configurationCopy PKNumberForKey:@"requiresSecureSubmission"];
  v21 = [(NSDictionary *)configurationCopy PKStringForKey:@"submissionSecurity"];
  v47 = v21;
  if (v21)
  {
    bOOLValue = PKPaymentSetupFieldSubmissionSecurityFromString(v21);
LABEL_25:
    [(PKPaymentSetupField *)self setSubmissionSecurity:bOOLValue];
    goto LABEL_26;
  }

  if (v20)
  {
    bOOLValue = [v20 BOOLValue];
    goto LABEL_25;
  }

LABEL_26:
  v51 = v17;
  v55 = v6;
  v23 = [(NSDictionary *)configurationCopy PKStringForKey:@"encryptionVersion"];
  v24 = v23;
  if (v23 && PKEncryptionSchemeStringIsValid(v23))
  {
    [(PKPaymentSetupField *)self setFieldSubmissionEncryptionScheme:v24];
    v25 = [(NSDictionary *)configurationCopy PKArrayContaining:objc_opt_class() forKey:@"certificates"];
    v26 = [v25 pk_arrayBySafelyApplyingBlock:&__block_literal_global_10];
    fieldSubmissionEncryptionCertificates = self->_fieldSubmissionEncryptionCertificates;
    self->_fieldSubmissionEncryptionCertificates = v26;
  }

  v52 = v13;
  v53 = v10;
  v28 = [(NSDictionary *)configurationCopy PKStringForKey:@"odiAttribute"];
  odiAttribute = self->_odiAttribute;
  self->_odiAttribute = v28;

  v30 = [(NSDictionary *)configurationCopy objectForKey:@"populateFromMeCard"];

  if (v30)
  {
    self->_populateFromMeCard = [(NSDictionary *)configurationCopy PKBoolForKey:@"populateFromMeCard"];
  }

  v49 = v19;
  v31 = [(NSDictionary *)configurationCopy PKStringForKey:@"groupNumber"];
  self->_groupNumber = [v31 integerValue];

  rawConfigurationDictionary = self->_rawConfigurationDictionary;
  if (rawConfigurationDictionary != configurationCopy)
  {
    if (rawConfigurationDictionary)
    {
      v33 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:self->_rawConfigurationDictionary];
      [(NSDictionary *)v33 addEntriesFromDictionary:configurationCopy];
      v34 = [(NSDictionary *)v33 copy];
      v35 = self->_rawConfigurationDictionary;
      self->_rawConfigurationDictionary = v34;
    }

    else
    {
      v36 = [(NSDictionary *)configurationCopy copy];
      v33 = self->_rawConfigurationDictionary;
      self->_rawConfigurationDictionary = v36;
    }
  }

  v48 = v20;
  v50 = v18;
  v37 = [(NSDictionary *)configurationCopy PKArrayContaining:objc_opt_class() forKey:@"requirements"];
  v38 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v37, "count")}];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v39 = v37;
  v40 = [v39 countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v58;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v58 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = [[PKPaymentSetupFieldRequirement alloc] initWithDictionary:*(*(&v57 + 1) + 8 * i)];
        if ([(PKPaymentSetupFieldRequirement *)v44 type])
        {
          [v38 addObject:v44];
        }
      }

      v41 = [v39 countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v41);
  }

  v45 = [v38 copy];
  requirements = self->_requirements;
  self->_requirements = v45;
}

- (BOOL)_shouldStripDiacritics
{
  if ([(PKPaymentSetupField *)self isFieldTypeLabel])
  {
    return 0;
  }

  else
  {
    return ![(PKPaymentSetupField *)self isFieldTypeFooter];
  }
}

- (id)textFieldObject
{
  if ([(PKPaymentSetupField *)self isFieldTypeText])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dateFieldObject
{
  if ([(PKPaymentSetupField *)self isFieldTypeDate])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)labelFieldObject
{
  if ([(PKPaymentSetupField *)self isFieldTypeLabel])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)footerFieldObject
{
  if ([(PKPaymentSetupField *)self isFieldTypeFooter])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)pickerFieldObject
{
  if ([(PKPaymentSetupField *)self isFieldTypePicker])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSString)localizedPlaceholder
{
  v3 = self->_localizedPlaceholder;
  if (!v3)
  {
    if (self->_optional)
    {
      v4 = @"OPTIONAL";
    }

    else
    {
      v4 = @"REQUIRED";
    }

    v3 = PKLocalizedPaymentString(&v4->isa, 0);
  }

  return v3;
}

- (id)displayString
{
  currentValue = [(PKPaymentSetupField *)self currentValue];
  if (!currentValue)
  {
    currentValue = [(PKPaymentSetupField *)self defaultValue];
  }

  return currentValue;
}

- (id)submissionString
{
  currentValue = [(PKPaymentSetupField *)self currentValue];
  v4 = [(PKPaymentSetupField *)self _submissionStringForValue:currentValue];

  return v4;
}

- (id)_submissionStringForValue:(id)value
{
  valueCopy = value;
  defaultValue = valueCopy;
  if (!valueCopy)
  {
    defaultValue = [(PKPaymentSetupField *)self defaultValue];
  }

  return defaultValue;
}

- (void)setLocalizedDisplayName:(id)name
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (name)
  {
    v7 = @"localizedDisplayName";
    v8[0] = name;
    v4 = MEMORY[0x1E695DF20];
    nameCopy = name;
    v6 = [v4 dictionaryWithObjects:v8 forKeys:&v7 count:1];

    [(PKPaymentSetupField *)self updateWithConfiguration:v6];
  }
}

- (void)_setLocalizedDisplayName:(id)name
{
  if (self->_localizedDisplayName != name)
  {
    v5 = [name copy];
    localizedDisplayName = self->_localizedDisplayName;
    self->_localizedDisplayName = v5;
  }
}

- (void)setDefaultValue:(id)value
{
  if (self->_defaultValue != value)
  {
    v5 = [value copy];
    defaultValue = self->_defaultValue;
    self->_defaultValue = v5;

    [(PKPaymentSetupField *)self noteCurrentValueChanged];
  }
}

- (void)setCurrentValue:(id)value
{
  if (self->_currentValue != value)
  {
    v5 = [value copyWithZone:0];
    currentValue = self->_currentValue;
    self->_currentValue = v5;

    [(DIAttribute *)self->_attribute setCurrentValue:self->_currentValue];

    [(PKPaymentSetupField *)self noteCurrentValueChanged];
  }
}

- (void)setOriginalCameraCaptureValue:(id)value
{
  if (self->_originalCameraCaptureValue != value)
  {
    v5 = [value copyWithZone:0];
    originalCameraCaptureValue = self->_originalCameraCaptureValue;
    self->_originalCameraCaptureValue = v5;
  }
}

- (void)setSource:(unint64_t)source
{
  if (self->_source != source)
  {
    self->_source = source;
    [(PKPaymentSetupField *)self noteCurrentValueChanged];
  }
}

+ (Class)classForIdentifier:(id)identifier type:(unint64_t)type
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
LABEL_88:
    v27 = 0;
    goto LABEL_89;
  }

  v6 = [@"cardholderName" isEqualToString:identifierCopy];
  if (type > 1 || (v6 & 1) == 0)
  {
    v7 = [@"primaryAccountNumber" isEqualToString:identifierCopy];
    if (type > 1 || (v7 & 1) == 0)
    {
      v8 = [@"cardExpiration" isEqualToString:identifierCopy];
      if ((type & 0xFFFFFFFFFFFFFFFDLL) != 0 || (v8 & 1) == 0)
      {
        v9 = [@"physicalCardDescription" isEqualToString:identifierCopy];
        if (type > 1 || (v9 & 1) == 0)
        {
          v10 = [@"cardSecurityCode" isEqualToString:identifierCopy];
          if (type > 1 || (v10 & 1) == 0)
          {
            v11 = [@"cardPIN" isEqualToString:identifierCopy];
            if (type > 1 || (v11 & 1) == 0)
            {
              v12 = [@"cardOnFilePrimaryAccountNumber" isEqualToString:identifierCopy];
              if (type > 1 || (v12 & 1) == 0)
              {
                v13 = [@"firstName" isEqualToString:identifierCopy];
                if (type > 1 || (v13 & 1) == 0)
                {
                  v14 = [@"lastName" isEqualToString:identifierCopy];
                  if (type > 1 || (v14 & 1) == 0)
                  {
                    v15 = [@"email" isEqualToString:identifierCopy];
                    if (type > 1 || (v15 & 1) == 0)
                    {
                      if ([@"addressLine1" isEqualToString:identifierCopy])
                      {
                        if (type < 2)
                        {
                          goto LABEL_65;
                        }

                        if (([@"addressLine2" isEqualToString:identifierCopy] & 1) == 0)
                        {
                          [@"street2" isEqualToString:identifierCopy];
                        }
                      }

                      else
                      {
                        v16 = [@"street1" isEqualToString:identifierCopy];
                        if (type <= 1 && (v16 & 1) != 0)
                        {
                          goto LABEL_65;
                        }

                        if (([@"addressLine2" isEqualToString:identifierCopy] & 1) == 0)
                        {
                          v19 = [@"street2" isEqualToString:identifierCopy];
                          if (type <= 1 && (v19 & 1) != 0)
                          {
                            goto LABEL_65;
                          }

                          v21 = [@"postalCode" isEqualToString:identifierCopy];
                          if (type <= 1 && (v21 & 1) != 0)
                          {
                            goto LABEL_65;
                          }

                          goto LABEL_32;
                        }

                        if (type < 2)
                        {
                          goto LABEL_65;
                        }
                      }

                      [@"postalCode" isEqualToString:identifierCopy];
LABEL_32:
                      v17 = [@"dateOfBirth" isEqualToString:identifierCopy];
                      if ((type & 0xFFFFFFFFFFFFFFFDLL) != 0 || (v17 & 1) == 0)
                      {
                        v18 = [@"subLocality" isEqualToString:identifierCopy];
                        if (type > 1 || (v18 & 1) == 0)
                        {
                          v20 = [@"administrativeArea" isEqualToString:identifierCopy];
                          if ((type > 1 || (v20 & 1) == 0) && (![@"state" isEqualToString:identifierCopy] || type && type != 5))
                          {
                            v22 = [@"city" isEqualToString:identifierCopy];
                            if ((type > 1 || (v22 & 1) == 0) && (![@"countryCode" isEqualToString:identifierCopy] || type && type != 5))
                            {
                              v23 = [@"phoneNumber" isEqualToString:identifierCopy];
                              if ((type > 1 || (v23 & 1) == 0) && (![@"citizenship" isEqualToString:identifierCopy] || type && type != 5))
                              {
                                v24 = [@"yearlyIncome" isEqualToString:identifierCopy];
                                if (type > 1 || (v24 & 1) == 0)
                                {
                                  v25 = [@"totalIncome" isEqualToString:identifierCopy];
                                  if (type > 1 || (v25 & 1) == 0)
                                  {
                                    v26 = [@"totalAssets" isEqualToString:identifierCopy];
                                    if ((type > 1 || (v26 & 1) == 0) && (![@"totalAssetsPicker" isEqualToString:identifierCopy] || type && type != 5) && (!objc_msgSend(@"yearlyIncomeLabel", "isEqualToString:", identifierCopy) || type && type != 3))
                                    {
                                      v28 = [@"ssnFull" isEqualToString:identifierCopy];
                                      if (type > 1 || (v28 & 1) == 0)
                                      {
                                        v29 = [@"ssnSuffix" isEqualToString:identifierCopy];
                                        if (type > 1 || (v29 & 1) == 0)
                                        {
                                          v30 = [@"transactionLimit" isEqualToString:identifierCopy];
                                          if (type > 1 || (v30 & 1) == 0)
                                          {
                                            v31 = [@"monthlySpendLimit" isEqualToString:identifierCopy];
                                            if ((type > 1 || (v31 & 1) == 0) && (![@"aboutCreditReporting" isEqualToString:identifierCopy] || type && type != 3))
                                            {
                                              v32 = [@"balance" isEqualToString:identifierCopy];
                                              if (type > 1 || (v32 & 1) == 0)
                                              {
                                                v33 = [@"otpCode" isEqualToString:identifierCopy];
                                                if ((type > 1 || (v33 & 1) == 0) && type - 1 > 4)
                                                {
                                                  goto LABEL_88;
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_65:
  v27 = objc_opt_class();
LABEL_89:
  v34 = v27;

  return v27;
}

- (void)noteCurrentValueChanged
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PKPaymentSetupFieldCurrentValueChangedNotification" object:self];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSString *)self->_localizedPlaceholder copyWithZone:zone];
  v7 = *(v5 + 64);
  *(v5 + 64) = v6;

  v8 = [(NSString *)self->_displayFormat copyWithZone:zone];
  v9 = *(v5 + 72);
  *(v5 + 72) = v8;

  *(v5 + 24) = self->_optional;
  *(v5 + 25) = self->_readonly;
  *(v5 + 26) = self->_hidden;
  v10 = [(NSString *)self->_submissionKey copyWithZone:zone];
  v11 = *(v5 + 104);
  *(v5 + 104) = v10;

  v12 = [(NSString *)self->_submissionDestination copyWithZone:zone];
  v13 = *(v5 + 112);
  *(v5 + 112) = v12;

  *(v5 + 120) = self->_submissionSecurity;
  objc_storeStrong((v5 + 160), self->_rawConfigurationDictionary);
  v14 = [(NSString *)self->_defaultValue copyWithZone:zone];
  v15 = *(v5 + 80);
  *(v5 + 80) = v14;

  *(v5 + 29) = self->_populateFromMeCard;
  objc_storeStrong((v5 + 32), self->_attribute);
  v16 = [(NSString *)self->_identifier copyWithZone:zone];
  v17 = *(v5 + 48);
  *(v5 + 48) = v16;

  v18 = [(NSString *)self->_localizedDisplayName copyWithZone:zone];
  v19 = *(v5 + 56);
  *(v5 + 56) = v18;

  v20 = [self->_currentValue copyWithZone:zone];
  v21 = *(v5 + 8);
  *(v5 + 8) = v20;

  v22 = [self->_originalCameraCaptureValue copyWithZone:zone];
  v23 = *(v5 + 16);
  *(v5 + 16) = v22;

  *(v5 + 96) = self->_source;
  v24 = [(NSString *)self->_odiAttribute copyWithZone:zone];
  v25 = *(v5 + 144);
  *(v5 + 144) = v24;

  v26 = [(NSArray *)self->_requirements copyWithZone:zone];
  v27 = *(v5 + 152);
  *(v5 + 152) = v26;

  *(v5 + 120) = self->_submissionSecurity;
  v28 = [(NSString *)self->_fieldSubmissionEncryptionScheme copyWithZone:zone];
  v29 = *(v5 + 128);
  *(v5 + 128) = v28;

  v30 = [(NSArray *)self->_fieldSubmissionEncryptionCertificates copyWithZone:zone];
  v31 = *(v5 + 136);
  *(v5 + 136) = v30;

  return v5;
}

+ (id)newRandomlyGeneratedField
{
  v2 = arc4random_uniform(0x64u);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"identifier-%i", v2];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = arc4random_uniform(5u);
  v6 = &stru_1F227FD28;
  if (v5 <= 1)
  {
    v7 = @"Second";
    if (v5 != 1)
    {
      v7 = &stru_1F227FD28;
    }

    if (v5)
    {
      v6 = v7;
    }

    else
    {
      v6 = @"First";
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        v6 = @"Second Name";
        break;
      case 3:
        v6 = @"Oh, Why So Long!";
        break;
      case 4:
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Field %i", v2];
        break;
    }
  }

  [dictionary setObject:v6 forKey:@"localizedDisplayName"];

  if (arc4random_uniform(2u))
  {
    v8 = arc4random_uniform(4u);
    if (v8 > 3)
    {
      v9 = &stru_1F227FD28;
    }

    else
    {
      v9 = off_1E79C8488[v8];
    }

    [dictionary setObject:v9 forKey:@"defaultValue"];
  }

  v10 = arc4random_uniform(3u);
  if (v10 == 2)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rsub%i", arc4random_uniform(0x64u) + 100];
    [dictionary setObject:v11 forKey:@"submissionKey"];
  }

  else if (v10 == 1)
  {
    [dictionary setObject:v3 forKey:@"submissionKey"];
  }

  if (arc4random_uniform(2u))
  {
    v12 = @"eligibility";
  }

  else
  {
    v12 = @"enable";
  }

  [dictionary setObject:v12 forKey:@"submissionDestination"];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:arc4random_uniform(2u) != 0];
  [dictionary setObject:v13 forKey:@"requiresSecureSubmission"];

  if (!arc4random_uniform(2u))
  {
    [dictionary setObject:@"date" forKey:@"fieldType"];
    v20 = [MEMORY[0x1E696AD98] numberWithBool:arc4random_uniform(2u) != 0];
    [dictionary setObject:v20 forKey:@"showsDay"];

    v21 = [MEMORY[0x1E696AD98] numberWithBool:arc4random_uniform(2u) != 0];
    [dictionary setObject:v21 forKey:@"showsMonth"];

    v22 = [MEMORY[0x1E696AD98] numberWithBool:arc4random_uniform(2u) != 0];
    [dictionary setObject:v22 forKey:@"showsYear"];

    v23 = arc4random_uniform(6u);
    if (v23 > 5)
    {
      v24 = &stru_1F227FD28;
    }

    else
    {
      v24 = off_1E79C84A8[v23];
    }

    [dictionary setObject:v24 forKey:@"displayFormat"];
    if (arc4random_uniform(2u))
    {
      v18 = @"MM/yy";
    }

    else
    {
      v18 = @"yyyy-MM-dd'T'HH:mm:ss.SSSZ";
    }

    v19 = @"submissionFormat";
    goto LABEL_41;
  }

  [dictionary setObject:@"text" forKey:@"fieldType"];
  v14 = [MEMORY[0x1E696AD98] numberWithInt:arc4random_uniform(4u)];
  [dictionary setObject:v14 forKey:@"minLength"];

  if (arc4random_uniform(2u))
  {
    v15 = [MEMORY[0x1E696AD98] numberWithInt:arc4random_uniform(0xAu) + 3];
    [dictionary setObject:v15 forKey:@"maxLength"];
  }

  if (arc4random_uniform(2u))
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKey:@"secureText"];
    v16 = [MEMORY[0x1E696AD98] numberWithBool:arc4random_uniform(2u) != 0];
    [dictionary setObject:v16 forKey:@"secureVisibleText"];
  }

  if (arc4random_uniform(2u))
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKey:@"numeric"];
    v17 = [MEMORY[0x1E696AD98] numberWithBool:arc4random_uniform(2u) != 0];
    [dictionary setObject:v17 forKey:@"useLuhnCheck"];
  }

  if (arc4random_uniform(2u))
  {
    v18 = @"XXX XX X  XXX";
    v19 = @"displayFormat";
LABEL_41:
    [dictionary setObject:v18 forKey:v19];
  }

  v25 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:v3 configuration:dictionary];

  return v25;
}

+ (id)sampleCustomPaymentSetupFields
{
  v77[3] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:@"label" forKey:@"fieldType"];
  [dictionary setObject:@"The below fields are for testing purposes only. \nTheir values are not used!" forKey:@"defaultValue"];
  v4 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"labelShort" configuration:dictionary];
  [array safelyAddObject:v4];

  [dictionary removeAllObjects];
  [dictionary setObject:@"date" forKey:@"fieldType"];
  [dictionary setObject:@"Date of Birth" forKey:?];
  [dictionary setObject:@"enable" forKey:?];
  v5 = MEMORY[0x1E695E118];
  [dictionary setObject:MEMORY[0x1E695E118] forKey:@"showsDay"];
  [dictionary setObject:v5 forKey:@"showsMonth"];
  [dictionary setObject:v5 forKey:@"showsYear"];
  [dictionary setObject:@"MM/dd/yy" forKey:@"displayFormat"];
  [dictionary setObject:@"yyyy-MM-dd" forKey:@"submissionFormat"];
  [dictionary setObject:@"1995-01-01" forKey:@"defaultValue"];
  [dictionary setObject:v5 forKey:@"optional"];
  v6 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"birthDate" configuration:dictionary];
  [array safelyAddObject:v6];

  [dictionary removeAllObjects];
  [dictionary setObject:@"date" forKey:@"fieldType"];
  [dictionary setObject:@"Birth Year" forKey:@"localizedDisplayName"];
  [dictionary setObject:@"enable" forKey:@"submissionDestination"];
  [dictionary setObject:@"Custom Placeholder" forKey:@"localizedPlaceholder"];
  v7 = MEMORY[0x1E695E110];
  [dictionary setObject:MEMORY[0x1E695E110] forKey:@"showsDay"];
  [dictionary setObject:v7 forKey:@"showsMonth"];
  [dictionary setObject:v5 forKey:@"showsYear"];
  [dictionary setObject:@"yyyy" forKey:@"displayFormat"];
  [dictionary setObject:@"yyyy" forKey:@"submissionFormat"];
  [dictionary setObject:@"1995" forKey:@"defaultValue"];
  v8 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"birthYear" configuration:dictionary];
  [array safelyAddObject:v8];

  [dictionary removeAllObjects];
  [dictionary setObject:@"date" forKey:@"fieldType"];
  [dictionary setObject:@"Birth Month" forKey:@"localizedDisplayName"];
  [dictionary setObject:@"enable" forKey:@"submissionDestination"];
  v9 = MEMORY[0x1E695E110];
  [dictionary setObject:MEMORY[0x1E695E110] forKey:@"showsDay"];
  v10 = MEMORY[0x1E695E118];
  [dictionary setObject:? forKey:?];
  v11 = v9;
  [dictionary setObject:v9 forKey:@"showsYear"];
  [dictionary setObject:@"MMMM" forKey:@"displayFormat"];
  [dictionary setObject:@"MM" forKey:@"submissionFormat"];
  [dictionary setObject:@"12" forKey:@"defaultValue"];
  v12 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"birthMonth" configuration:dictionary];
  [array safelyAddObject:v12];

  [dictionary removeAllObjects];
  [dictionary setObject:@"date" forKey:@"fieldType"];
  [dictionary setObject:@"Birth Day" forKey:@"localizedDisplayName"];
  [dictionary setObject:@"enable" forKey:?];
  [dictionary setObject:v10 forKey:@"showsDay"];
  [dictionary setObject:v11 forKey:@"showsMonth"];
  [dictionary setObject:v11 forKey:@"showsYear"];
  [dictionary setObject:@"dd" forKey:?];
  [dictionary setObject:@"dd" forKey:@"submissionFormat"];
  [dictionary setObject:@"01" forKey:@"defaultValue"];
  v13 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"birthDay" configuration:dictionary];
  [array safelyAddObject:v13];

  [dictionary removeAllObjects];
  [dictionary setObject:@"date" forKey:@"fieldType"];
  [dictionary setObject:@"Birth Day Year" forKey:@"localizedDisplayName"];
  [dictionary setObject:@"enable" forKey:@"submissionDestination"];
  v14 = MEMORY[0x1E695E118];
  [dictionary setObject:MEMORY[0x1E695E118] forKey:@"showsDay"];
  [dictionary setObject:v11 forKey:@"showsMonth"];
  [dictionary setObject:v14 forKey:@"showsYear"];
  [dictionary setObject:@"dd/yyyy" forKey:@"displayFormat"];
  [dictionary setObject:@"dd/yyyy" forKey:@"submissionFormat"];
  [dictionary setObject:@"02/2012" forKey:@"defaultValue"];
  v15 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"birthDayYear" configuration:dictionary];
  [array safelyAddObject:v15];

  [dictionary removeAllObjects];
  [dictionary setObject:@"picker" forKey:@"fieldType"];
  [dictionary setObject:@"Color Picker" forKey:@"localizedDisplayName"];
  [dictionary setObject:@"enable" forKey:@"submissionDestination"];
  [dictionary setObject:@"color_blue" forKey:@"defaultValue"];
  v75[0] = @"localizedDisplayName";
  v75[1] = @"submissionValue";
  v76[0] = @"Red!";
  v76[1] = @"color_red";
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:2];
  v77[0] = v16;
  v73[0] = @"localizedDisplayName";
  v73[1] = @"submissionValue";
  v74[0] = @"Green!";
  v74[1] = @"color_green";
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:2];
  v77[1] = v17;
  v71[0] = @"localizedDisplayName";
  v71[1] = @"submissionValue";
  v72[0] = @"Blue!";
  v72[1] = @"color_blue";
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:2];
  v77[2] = v18;
  v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:3];

  [dictionary setObject:v70 forKey:@"pickerItems"];
  v19 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"colorPicker" configuration:dictionary];
  v20 = array;
  [array safelyAddObject:v19];

  [dictionary removeAllObjects];
  [dictionary setObject:@"text" forKey:@"fieldType"];
  [dictionary setObject:@"Phone" forKey:@"localizedDisplayName"];
  [dictionary setObject:@"enable" forKey:@"submissionDestination"];
  [dictionary setObject:&unk_1F23B4970 forKey:@"minLength"];
  [dictionary setObject:&unk_1F23B4970 forKey:@"maxLength"];
  v21 = MEMORY[0x1E695E110];
  [dictionary setObject:MEMORY[0x1E695E110] forKey:@"secureText"];
  [dictionary setObject:v21 forKey:@"secureVisibleText"];
  v22 = MEMORY[0x1E695E118];
  [dictionary setObject:MEMORY[0x1E695E118] forKey:@"numeric"];
  [dictionary setObject:v21 forKey:@"useLuhnCheck"];
  [dictionary setObject:@"(XXX) XXX-XXXX" forKey:@"displayFormat"];
  v23 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"usaPhone" configuration:dictionary];
  [v20 safelyAddObject:v23];

  [dictionary removeAllObjects];
  [dictionary setObject:@"text" forKey:@"fieldType"];
  [dictionary setObject:@"ZIP Code" forKey:@"localizedDisplayName"];
  [dictionary setObject:@"enable" forKey:@"submissionDestination"];
  [dictionary setObject:&unk_1F23B4988 forKey:@"minLength"];
  [dictionary setObject:&unk_1F23B4988 forKey:@"maxLength"];
  v24 = MEMORY[0x1E695E110];
  [dictionary setObject:MEMORY[0x1E695E110] forKey:@"secureText"];
  [dictionary setObject:v24 forKey:@"secureVisibleText"];
  [dictionary setObject:v22 forKey:@"numeric"];
  [dictionary setObject:v24 forKey:@"useLuhnCheck"];
  [dictionary setObject:&stru_1F227FD28 forKey:@"displayFormat"];
  v25 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"usaZIP" configuration:dictionary];
  [v20 safelyAddObject:v25];

  [dictionary removeAllObjects];
  [dictionary setObject:@"text" forKey:@"fieldType"];
  [dictionary setObject:@"Overly long ZIP Code (UK) and then some" forKey:@"localizedDisplayName"];
  [dictionary setObject:@"Custom Placeholder" forKey:@"localizedPlaceholder"];
  [dictionary setObject:@"enable" forKey:@"submissionDestination"];
  [dictionary setObject:&unk_1F23B49A0 forKey:@"minLength"];
  [dictionary setObject:&unk_1F23B49A0 forKey:@"maxLength"];
  v26 = MEMORY[0x1E695E110];
  [dictionary setObject:MEMORY[0x1E695E110] forKey:@"secureText"];
  [dictionary setObject:v26 forKey:@"secureVisibleText"];
  [dictionary setObject:v26 forKey:@"numeric"];
  [dictionary setObject:v26 forKey:@"useLuhnCheck"];
  [dictionary setObject:@"XXX-XXX" forKey:@"displayFormat"];
  v27 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"ukZIP" configuration:dictionary];
  [v20 safelyAddObject:v27];

  [dictionary removeAllObjects];
  [dictionary setObject:@"text" forKey:@"fieldType"];
  [dictionary setObject:@"SSN" forKey:@"localizedDisplayName"];
  [dictionary setObject:@"enable" forKey:@"submissionDestination"];
  [dictionary setObject:&unk_1F23B49B8 forKey:@"minLength"];
  [dictionary setObject:&unk_1F23B49B8 forKey:@"maxLength"];
  v28 = MEMORY[0x1E695E118];
  [dictionary setObject:MEMORY[0x1E695E118] forKey:@"secureText"];
  [dictionary setObject:v28 forKey:@"secureVisibleText"];
  [dictionary setObject:v28 forKey:@"numeric"];
  [dictionary setObject:MEMORY[0x1E695E110] forKey:@"useLuhnCheck"];
  [dictionary setObject:@"XXX-XX-XXXX" forKey:@"displayFormat"];
  v29 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"ssn" configuration:dictionary];
  [v20 safelyAddObject:v29];

  [dictionary removeAllObjects];
  [dictionary setObject:@"text" forKey:@"fieldType"];
  [dictionary setObject:@"CURP (MX)" forKey:@"localizedDisplayName"];
  [dictionary setObject:@"enable" forKey:@"submissionDestination"];
  [dictionary setObject:&unk_1F23B49D0 forKey:@"minLength"];
  [dictionary setObject:&unk_1F23B49D0 forKey:@"maxLength"];
  v30 = MEMORY[0x1E695E118];
  [dictionary setObject:MEMORY[0x1E695E118] forKey:@"secureText"];
  [dictionary setObject:v30 forKey:@"secureVisibleText"];
  v31 = MEMORY[0x1E695E110];
  [dictionary setObject:MEMORY[0x1E695E110] forKey:@"numeric"];
  [dictionary setObject:v31 forKey:?];
  [dictionary setObject:&stru_1F227FD28 forKey:@"displayFormat"];
  v32 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"curp" configuration:dictionary];
  [v20 safelyAddObject:v32];

  [dictionary removeAllObjects];
  [dictionary setObject:@"text" forKey:@"fieldType"];
  [dictionary setObject:@"HKID (HK)" forKey:@"localizedDisplayName"];
  [dictionary setObject:@"enable" forKey:@"submissionDestination"];
  [dictionary setObject:&unk_1F23B49E8 forKey:@"minLength"];
  [dictionary setObject:&unk_1F23B49B8 forKey:@"maxLength"];
  v33 = MEMORY[0x1E695E118];
  [dictionary setObject:MEMORY[0x1E695E118] forKey:@"secureText"];
  [dictionary setObject:v33 forKey:@"secureVisibleText"];
  v34 = MEMORY[0x1E695E110];
  [dictionary setObject:MEMORY[0x1E695E110] forKey:@"numeric"];
  [dictionary setObject:v34 forKey:@"useLuhnCheck"];
  [dictionary setObject:@"XXXXXXXXX" forKey:@"displayFormat"];
  v35 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"hkid" configuration:dictionary];
  v36 = v20;
  [v20 safelyAddObject:v35];

  [dictionary removeAllObjects];
  [dictionary setObject:@"text" forKey:@"fieldType"];
  [dictionary setObject:@"NIR (FR)" forKey:@"localizedDisplayName"];
  [dictionary setObject:@"enable" forKey:@"submissionDestination"];
  [dictionary setObject:&unk_1F23B4A00 forKey:@"minLength"];
  [dictionary setObject:&unk_1F23B4A00 forKey:@"maxLength"];
  v37 = MEMORY[0x1E695E118];
  [dictionary setObject:MEMORY[0x1E695E118] forKey:@"secureText"];
  [dictionary setObject:v37 forKey:@"secureVisibleText"];
  v38 = MEMORY[0x1E695E110];
  [dictionary setObject:MEMORY[0x1E695E110] forKey:@"numeric"];
  [dictionary setObject:v38 forKey:@"useLuhnCheck"];
  [dictionary setObject:@"XXXXXXXXXXXXX XX" forKey:@"displayFormat"];
  v39 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"nir" configuration:dictionary];
  [v36 safelyAddObject:v39];

  [dictionary removeAllObjects];
  [dictionary setObject:@"text" forKey:@"fieldType"];
  [dictionary setObject:@"BSN (NL)" forKey:@"localizedDisplayName"];
  [dictionary setObject:@"enable" forKey:@"submissionDestination"];
  [dictionary setObject:&unk_1F23B49B8 forKey:@"minLength"];
  [dictionary setObject:&unk_1F23B49B8 forKey:@"maxLength"];
  [dictionary setObject:v37 forKey:@"secureText"];
  [dictionary setObject:v37 forKey:@"secureVisibleText"];
  [dictionary setObject:v37 forKey:@"numeric"];
  [dictionary setObject:MEMORY[0x1E695E110] forKey:@"useLuhnCheck"];
  [dictionary setObject:@"XXXXXXXXX" forKey:@"displayFormat"];
  v40 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"bsn" configuration:dictionary];
  v41 = v36;
  [v36 safelyAddObject:v40];

  [dictionary removeAllObjects];
  [dictionary setObject:@"text" forKey:@"fieldType"];
  [dictionary setObject:@"AHV-Nr. (CH)" forKey:@"localizedDisplayName"];
  [dictionary setObject:@"enable" forKey:@"submissionDestination"];
  [dictionary setObject:&unk_1F23B49D0 forKey:@"minLength"];
  [dictionary setObject:&unk_1F23B49D0 forKey:@"maxLength"];
  v42 = MEMORY[0x1E695E118];
  [dictionary setObject:MEMORY[0x1E695E118] forKey:@"secureText"];
  [dictionary setObject:v42 forKey:@"secureVisibleText"];
  v43 = v42;
  [dictionary setObject:v42 forKey:@"numeric"];
  [dictionary setObject:MEMORY[0x1E695E110] forKey:@"useLuhnCheck"];
  [dictionary setObject:@"XXX.XXXX.XXXX.XX" forKey:@"displayFormat"];
  v44 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"ahvnr" configuration:dictionary];
  [v36 safelyAddObject:v44];

  [dictionary removeAllObjects];
  [dictionary setObject:@"text" forKey:@"fieldType"];
  [dictionary setObject:@"NINO (UK)" forKey:@"localizedDisplayName"];
  [dictionary setObject:@"enable" forKey:@"submissionDestination"];
  [dictionary setObject:&unk_1F23B49B8 forKey:@"minLength"];
  [dictionary setObject:&unk_1F23B49B8 forKey:@"maxLength"];
  [dictionary setObject:v43 forKey:@"secureText"];
  [dictionary setObject:v43 forKey:@"secureVisibleText"];
  v45 = MEMORY[0x1E695E110];
  [dictionary setObject:MEMORY[0x1E695E110] forKey:@"numeric"];
  [dictionary setObject:v45 forKey:@"useLuhnCheck"];
  [dictionary setObject:@"XX XX XX XX X" forKey:@"displayFormat"];
  v46 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"nino" configuration:dictionary];
  [v36 safelyAddObject:v46];

  [dictionary removeAllObjects];
  [dictionary setObject:@"text" forKey:@"fieldType"];
  [dictionary setObject:@"NHS No. (UK)" forKey:@"localizedDisplayName"];
  [dictionary setObject:@"enable" forKey:@"submissionDestination"];
  [dictionary setObject:&unk_1F23B4970 forKey:@"minLength"];
  [dictionary setObject:&unk_1F23B4970 forKey:@"maxLength"];
  v47 = MEMORY[0x1E695E118];
  [dictionary setObject:MEMORY[0x1E695E118] forKey:@"secureText"];
  [dictionary setObject:v47 forKey:@"secureVisibleText"];
  [dictionary setObject:v47 forKey:@"numeric"];
  [dictionary setObject:MEMORY[0x1E695E110] forKey:@"useLuhnCheck"];
  [dictionary setObject:@"XXX-XXX-XXXX" forKey:@"displayFormat"];
  v48 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"nhsno" configuration:dictionary];
  [v41 safelyAddObject:v48];

  [dictionary removeAllObjects];
  [dictionary setObject:@"text" forKey:@"fieldType"];
  [dictionary setObject:@"Kohl's PIN" forKey:@"localizedDisplayName"];
  [dictionary setObject:@"enable" forKey:@"submissionDestination"];
  [dictionary setObject:&unk_1F23B49A0 forKey:@"maxLength"];
  v49 = MEMORY[0x1E695E118];
  [dictionary setObject:MEMORY[0x1E695E118] forKey:@"secureText"];
  v50 = MEMORY[0x1E695E110];
  [dictionary setObject:MEMORY[0x1E695E110] forKey:@"secureVisibleText"];
  [dictionary setObject:v49 forKey:@"numeric"];
  [dictionary setObject:v50 forKey:@"useLuhnCheck"];
  [dictionary setObject:&stru_1F227FD28 forKey:@"displayFormat"];
  v51 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"kohlsPin" configuration:dictionary];
  [v41 safelyAddObject:v51];

  [dictionary removeAllObjects];
  [dictionary setObject:@"text" forKey:@"fieldType"];
  [dictionary setObject:@"Macy's PIN" forKey:@"localizedDisplayName"];
  [dictionary setObject:@"enable" forKey:@"submissionDestination"];
  [dictionary setObject:&unk_1F23B4A18 forKey:@"minLength"];
  [dictionary setObject:&unk_1F23B4A18 forKey:@"maxLength"];
  v52 = MEMORY[0x1E695E118];
  [dictionary setObject:MEMORY[0x1E695E118] forKey:@"secureText"];
  v53 = MEMORY[0x1E695E110];
  [dictionary setObject:MEMORY[0x1E695E110] forKey:@"secureVisibleText"];
  [dictionary setObject:v52 forKey:@"numeric"];
  [dictionary setObject:v53 forKey:@"useLuhnCheck"];
  [dictionary setObject:&stru_1F227FD28 forKey:@"displayFormat"];
  v54 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"macysPin" configuration:dictionary];
  v55 = v41;
  [v41 safelyAddObject:v54];

  [dictionary removeAllObjects];
  [dictionary setObject:? forKey:?];
  [dictionary setObject:@"Disc Sq. No." forKey:@"localizedDisplayName"];
  [dictionary setObject:@"enable" forKey:@"submissionDestination"];
  [dictionary setObject:&unk_1F23B4A30 forKey:@"minLength"];
  [dictionary setObject:&unk_1F23B4A30 forKey:@"maxLength"];
  v56 = MEMORY[0x1E695E118];
  [dictionary setObject:MEMORY[0x1E695E118] forKey:@"secureText"];
  [dictionary setObject:v56 forKey:@"secureVisibleText"];
  [dictionary setObject:v56 forKey:@"numeric"];
  v57 = MEMORY[0x1E695E110];
  [dictionary setObject:MEMORY[0x1E695E110] forKey:@"useLuhnCheck"];
  [dictionary setObject:@"AXXX" forKey:@"localizedPlaceholder"];
  [dictionary setObject:@"AXXX" forKey:@"displayFormat"];
  [dictionary setObject:@"X" forKey:@"displayFormatPlaceholder"];
  v58 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"disc" configuration:dictionary];
  [v55 safelyAddObject:v58];

  [dictionary removeAllObjects];
  [dictionary setObject:@"text" forKey:@"fieldType"];
  [dictionary setObject:@"CVV 4 S" forKey:@"localizedDisplayName"];
  [dictionary setObject:@"enable" forKey:@"submissionDestination"];
  [dictionary setObject:&unk_1F23B4A18 forKey:@"minLength"];
  [dictionary setObject:&unk_1F23B4A18 forKey:@"maxLength"];
  v59 = MEMORY[0x1E695E118];
  [dictionary setObject:MEMORY[0x1E695E118] forKey:@"secureText"];
  [dictionary setObject:v57 forKey:@"secureVisibleText"];
  [dictionary setObject:v59 forKey:@"numeric"];
  [dictionary setObject:v57 forKey:@"useLuhnCheck"];
  v60 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"ccvS4" configuration:dictionary];
  [v55 safelyAddObject:v60];

  [dictionary removeAllObjects];
  [dictionary setObject:@"text" forKey:@"fieldType"];
  [dictionary setObject:@"CVV 4 SV" forKey:@"localizedDisplayName"];
  [dictionary setObject:@"enable" forKey:@"submissionDestination"];
  [dictionary setObject:&unk_1F23B4A18 forKey:@"minLength"];
  [dictionary setObject:&unk_1F23B4A18 forKey:@"maxLength"];
  v61 = MEMORY[0x1E695E118];
  [dictionary setObject:MEMORY[0x1E695E118] forKey:@"secureText"];
  [dictionary setObject:v61 forKey:@"secureVisibleText"];
  [dictionary setObject:v61 forKey:@"numeric"];
  v62 = MEMORY[0x1E695E110];
  [dictionary setObject:MEMORY[0x1E695E110] forKey:@"useLuhnCheck"];
  v63 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"ccvSV4" configuration:dictionary];
  [v55 safelyAddObject:v63];

  [dictionary removeAllObjects];
  [dictionary setObject:@"text" forKey:@"fieldType"];
  [dictionary setObject:@"Parens Check Card Last 5" forKey:@"localizedDisplayName"];
  [dictionary setObject:@"enable" forKey:@"submissionDestination"];
  [dictionary setObject:&unk_1F23B4988 forKey:@"minLength"];
  [dictionary setObject:&unk_1F23B4988 forKey:@"maxLength"];
  [dictionary setObject:v61 forKey:@"secureText"];
  [dictionary setObject:v61 forKey:@"secureVisibleText"];
  [dictionary setObject:v61 forKey:@"numeric"];
  [dictionary setObject:v62 forKey:@"useLuhnCheck"];
  [dictionary setObject:@"Last 5 digits" forKey:@"localizedPlaceholder"];
  [dictionary setObject:@"XXXX (X)" forKey:@"displayFormat"];
  v64 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"parensCheck" configuration:dictionary];
  [v55 safelyAddObject:v64];

  [dictionary removeAllObjects];
  [dictionary setObject:@"label" forKey:@"fieldType"];
  [dictionary setObject:@"This is a center label" forKey:@"defaultValue"];
  [dictionary setObject:@"center" forKey:@"alignment"];
  v65 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"centerLabel" configuration:dictionary];
  [v55 safelyAddObject:v65];

  [dictionary removeAllObjects];
  [dictionary setObject:@"label" forKey:@"fieldType"];
  [dictionary setObject:@"This is a left label" forKey:@"defaultValue"];
  [dictionary setObject:@"left" forKey:@"alignment"];
  v66 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"leftLabel" configuration:dictionary];
  [v55 safelyAddObject:v66];

  [dictionary removeAllObjects];
  [dictionary setObject:@"label" forKey:@"fieldType"];
  [dictionary setObject:@"This is a really long label. You should really not be reading this! Feel free to not read this in the future. Also forKey:{here is some more text for some more fun!", @"defaultValue"}];
  v67 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"labelLong" configuration:dictionary];
  [v55 safelyAddObject:v67];

  [dictionary removeAllObjects];
  [dictionary setObject:@"footer" forKey:@"fieldType"];
  [dictionary setObject:@"Adding a Suica card will associate it with your Apple Account so it can be backed up. When you use your card forKey:{the station names from your recent transactions can be accessed.", @"defaultValue"}];
  v68 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"footerLong" configuration:dictionary];
  [v55 safelyAddObject:v68];

  [dictionary removeAllObjects];

  return v55;
}

@end