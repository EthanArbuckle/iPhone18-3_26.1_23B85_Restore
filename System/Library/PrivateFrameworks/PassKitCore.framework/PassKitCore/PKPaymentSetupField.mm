@interface PKPaymentSetupField
+ (Class)classForIdentifier:(id)a3 type:(unint64_t)a4;
+ (id)newRandomlyGeneratedField;
+ (id)paymentSetupFieldWithDIAttribute:(id)a3;
+ (id)paymentSetupFieldWithIdentifier:(id)a3 configuration:(id)a4;
+ (id)paymentSetupFieldWithIdentifier:(id)a3 type:(unint64_t)a4;
+ (id)sampleCustomPaymentSetupFields;
- (BOOL)_shouldStripDiacritics;
- (NSString)localizedPlaceholder;
- (PKPaymentSetupField)initWithIdentifier:(id)a3 configuration:(id)a4;
- (PKPaymentSetupField)initWithIdentifier:(id)a3 type:(unint64_t)a4;
- (id)_submissionStringForValue:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dateFieldObject;
- (id)displayString;
- (id)footerFieldObject;
- (id)labelFieldObject;
- (id)pickerFieldObject;
- (id)submissionString;
- (id)textFieldObject;
- (void)_setLocalizedDisplayName:(id)a3;
- (void)noteCurrentValueChanged;
- (void)setCurrentValue:(id)a3;
- (void)setDefaultValue:(id)a3;
- (void)setLocalizedDisplayName:(id)a3;
- (void)setOriginalCameraCaptureValue:(id)a3;
- (void)setSource:(unint64_t)a3;
- (void)updateWithAttribute:(id)a3;
- (void)updateWithConfiguration:(id)a3;
@end

@implementation PKPaymentSetupField

+ (id)paymentSetupFieldWithIdentifier:(id)a3 type:(unint64_t)a4
{
  v5 = a3;
  v6 = [PKPaymentSetupField classForIdentifier:v5 type:a4];
  if (v6)
  {
    v7 = [[v6 alloc] initWithIdentifier:v5 type:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)paymentSetupFieldWithIdentifier:(id)a3 configuration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 PKStringForKey:@"fieldType"];
  v9 = [a1 paymentSetupFieldWithIdentifier:v7 type:PKPaymentSetupFieldTypeFromString(v8)];

  if (v6 && v9)
  {
    [v9 updateWithConfiguration:v6];
  }

  return v9;
}

+ (id)paymentSetupFieldWithDIAttribute:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [v3 identifier];
  v6 = [v3 attributeType] - 1;
  if (v6 > 7)
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_1ADB98EE0[v6];
  }

  v8 = [v4 paymentSetupFieldWithIdentifier:v5 type:v7];

  [v8 updateWithAttribute:v3];

  return v8;
}

- (PKPaymentSetupField)initWithIdentifier:(id)a3 type:(unint64_t)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [PKPaymentSetupField classForIdentifier:v6 type:a4];
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
    if (a4 - 1 > 4)
    {
      v12 = @"unknown";
    }

    else
    {
      v12 = off_1E79C8438[a4 - 1];
    }

    v17 = NSStringFromClass(v8);
    v18 = [v9 stringWithFormat:@"Error: Attempted to init %@ with identifier:%@ and type:%@ which actually requires %@. Give +[PKPaymentSetupField paymentSetupFieldWithIdentifier: type:] a go instead!", v11, v6, v12, v17];

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
    v15 = [v6 copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    [(PKPaymentSetupField *)v14 setSubmissionKey:v6];
    [(PKPaymentSetupField *)v14 setOptional:0];
    [(PKPaymentSetupField *)v14 setReadonly:0];
    [(PKPaymentSetupField *)v14 setSubmissionDestination:@"enable"];
    v14->_submissionSecurity = 0;
    v14->_populateFromMeCard = 1;
  }

LABEL_15:

  return v14;
}

- (PKPaymentSetupField)initWithIdentifier:(id)a3 configuration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 PKStringForKey:@"fieldType"];
  v9 = [(PKPaymentSetupField *)self initWithIdentifier:v7 type:PKPaymentSetupFieldTypeFromString(v8)];

  if (v6 && v9)
  {
    [(PKPaymentSetupField *)v9 updateWithConfiguration:v6];
  }

  return v9;
}

- (void)updateWithAttribute:(id)a3
{
  v7 = a3;
  [(PKPaymentSetupField *)self setAttribute:v7];
  v4 = [v7 localizedDisplayName];
  if ([v4 length])
  {
    [(PKPaymentSetupField *)self _setLocalizedDisplayName:v4];
  }

  v5 = [v7 localizedPlaceholder];
  if ([v5 length])
  {
    [(PKPaymentSetupField *)self setLocalizedPlaceholder:v5];
  }

  v6 = [v7 displayFormat];
  if ([v6 length])
  {
    [(PKPaymentSetupField *)self setDisplayFormat:v6];
  }

  -[PKPaymentSetupField setOptional:](self, "setOptional:", [v7 optional]);
}

- (void)updateWithConfiguration:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSDictionary *)v4 PKStringForKey:@"localizedDisplayName"];
  if (v5)
  {
    [(PKPaymentSetupField *)self _setLocalizedDisplayName:v5];
  }

  v6 = [(NSDictionary *)v4 PKStringForKey:@"localizedPlaceholder"];
  if (v6)
  {
    [(PKPaymentSetupField *)self setLocalizedPlaceholder:v6];
  }

  v56 = v5;
  v7 = [(NSDictionary *)v4 PKStringForKey:@"displayFormat"];
  if ([v7 length])
  {
    [(PKPaymentSetupField *)self setDisplayFormat:v7];
  }

  v54 = v7;
  v8 = [(PKPaymentSetupField *)self _shouldStripDiacritics];
  v9 = [(NSDictionary *)v4 PKStringForKey:@"defaultValue"];
  v10 = v9;
  if (v8)
  {
    v11 = [v9 stringByApplyingTransform:*MEMORY[0x1E695DA48] reverse:0];

    v10 = v11;
  }

  if (v10)
  {
    [(PKPaymentSetupField *)self setDefaultValue:v10];
  }

  v12 = [(NSDictionary *)v4 PKNumberForKey:@"optional"];
  v13 = v12;
  if (v12)
  {
    -[PKPaymentSetupField setOptional:](self, "setOptional:", [v12 BOOLValue]);
  }

  v14 = [(NSDictionary *)v4 PKNumberForKey:@"readonly"];
  v15 = v14;
  if (v14)
  {
    -[PKPaymentSetupField setReadonly:](self, "setReadonly:", [v14 BOOLValue]);
  }

  v16 = [(NSDictionary *)v4 PKNumberForKey:@"hidden"];
  v17 = v16;
  if (v16)
  {
    -[PKPaymentSetupField setHidden:](self, "setHidden:", [v16 BOOLValue]);
  }

  v18 = [(NSDictionary *)v4 PKStringForKey:@"submissionKey"];
  if (v18)
  {
    [(PKPaymentSetupField *)self setSubmissionKey:v18];
  }

  v19 = [(NSDictionary *)v4 PKStringForKey:@"submissionDestination"];
  if (v19)
  {
    [(PKPaymentSetupField *)self setSubmissionDestination:v19];
  }

  v20 = [(NSDictionary *)v4 PKNumberForKey:@"requiresSecureSubmission"];
  v21 = [(NSDictionary *)v4 PKStringForKey:@"submissionSecurity"];
  v47 = v21;
  if (v21)
  {
    v22 = PKPaymentSetupFieldSubmissionSecurityFromString(v21);
LABEL_25:
    [(PKPaymentSetupField *)self setSubmissionSecurity:v22];
    goto LABEL_26;
  }

  if (v20)
  {
    v22 = [v20 BOOLValue];
    goto LABEL_25;
  }

LABEL_26:
  v51 = v17;
  v55 = v6;
  v23 = [(NSDictionary *)v4 PKStringForKey:@"encryptionVersion"];
  v24 = v23;
  if (v23 && PKEncryptionSchemeStringIsValid(v23))
  {
    [(PKPaymentSetupField *)self setFieldSubmissionEncryptionScheme:v24];
    v25 = [(NSDictionary *)v4 PKArrayContaining:objc_opt_class() forKey:@"certificates"];
    v26 = [v25 pk_arrayBySafelyApplyingBlock:&__block_literal_global_10];
    fieldSubmissionEncryptionCertificates = self->_fieldSubmissionEncryptionCertificates;
    self->_fieldSubmissionEncryptionCertificates = v26;
  }

  v52 = v13;
  v53 = v10;
  v28 = [(NSDictionary *)v4 PKStringForKey:@"odiAttribute"];
  odiAttribute = self->_odiAttribute;
  self->_odiAttribute = v28;

  v30 = [(NSDictionary *)v4 objectForKey:@"populateFromMeCard"];

  if (v30)
  {
    self->_populateFromMeCard = [(NSDictionary *)v4 PKBoolForKey:@"populateFromMeCard"];
  }

  v49 = v19;
  v31 = [(NSDictionary *)v4 PKStringForKey:@"groupNumber"];
  self->_groupNumber = [v31 integerValue];

  rawConfigurationDictionary = self->_rawConfigurationDictionary;
  if (rawConfigurationDictionary != v4)
  {
    if (rawConfigurationDictionary)
    {
      v33 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:self->_rawConfigurationDictionary];
      [(NSDictionary *)v33 addEntriesFromDictionary:v4];
      v34 = [(NSDictionary *)v33 copy];
      v35 = self->_rawConfigurationDictionary;
      self->_rawConfigurationDictionary = v34;
    }

    else
    {
      v36 = [(NSDictionary *)v4 copy];
      v33 = self->_rawConfigurationDictionary;
      self->_rawConfigurationDictionary = v36;
    }
  }

  v48 = v20;
  v50 = v18;
  v37 = [(NSDictionary *)v4 PKArrayContaining:objc_opt_class() forKey:@"requirements"];
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
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dateFieldObject
{
  if ([(PKPaymentSetupField *)self isFieldTypeDate])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)labelFieldObject
{
  if ([(PKPaymentSetupField *)self isFieldTypeLabel])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)footerFieldObject
{
  if ([(PKPaymentSetupField *)self isFieldTypeFooter])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)pickerFieldObject
{
  if ([(PKPaymentSetupField *)self isFieldTypePicker])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
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
  v3 = [(PKPaymentSetupField *)self currentValue];
  if (!v3)
  {
    v3 = [(PKPaymentSetupField *)self defaultValue];
  }

  return v3;
}

- (id)submissionString
{
  v3 = [(PKPaymentSetupField *)self currentValue];
  v4 = [(PKPaymentSetupField *)self _submissionStringForValue:v3];

  return v4;
}

- (id)_submissionStringForValue:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v5 = [(PKPaymentSetupField *)self defaultValue];
  }

  return v5;
}

- (void)setLocalizedDisplayName:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = @"localizedDisplayName";
    v8[0] = a3;
    v4 = MEMORY[0x1E695DF20];
    v5 = a3;
    v6 = [v4 dictionaryWithObjects:v8 forKeys:&v7 count:1];

    [(PKPaymentSetupField *)self updateWithConfiguration:v6];
  }
}

- (void)_setLocalizedDisplayName:(id)a3
{
  if (self->_localizedDisplayName != a3)
  {
    v5 = [a3 copy];
    localizedDisplayName = self->_localizedDisplayName;
    self->_localizedDisplayName = v5;
  }
}

- (void)setDefaultValue:(id)a3
{
  if (self->_defaultValue != a3)
  {
    v5 = [a3 copy];
    defaultValue = self->_defaultValue;
    self->_defaultValue = v5;

    [(PKPaymentSetupField *)self noteCurrentValueChanged];
  }
}

- (void)setCurrentValue:(id)a3
{
  if (self->_currentValue != a3)
  {
    v5 = [a3 copyWithZone:0];
    currentValue = self->_currentValue;
    self->_currentValue = v5;

    [(DIAttribute *)self->_attribute setCurrentValue:self->_currentValue];

    [(PKPaymentSetupField *)self noteCurrentValueChanged];
  }
}

- (void)setOriginalCameraCaptureValue:(id)a3
{
  if (self->_originalCameraCaptureValue != a3)
  {
    v5 = [a3 copyWithZone:0];
    originalCameraCaptureValue = self->_originalCameraCaptureValue;
    self->_originalCameraCaptureValue = v5;
  }
}

- (void)setSource:(unint64_t)a3
{
  if (self->_source != a3)
  {
    self->_source = a3;
    [(PKPaymentSetupField *)self noteCurrentValueChanged];
  }
}

+ (Class)classForIdentifier:(id)a3 type:(unint64_t)a4
{
  v5 = a3;
  if (!v5)
  {
LABEL_88:
    v27 = 0;
    goto LABEL_89;
  }

  v6 = [@"cardholderName" isEqualToString:v5];
  if (a4 > 1 || (v6 & 1) == 0)
  {
    v7 = [@"primaryAccountNumber" isEqualToString:v5];
    if (a4 > 1 || (v7 & 1) == 0)
    {
      v8 = [@"cardExpiration" isEqualToString:v5];
      if ((a4 & 0xFFFFFFFFFFFFFFFDLL) != 0 || (v8 & 1) == 0)
      {
        v9 = [@"physicalCardDescription" isEqualToString:v5];
        if (a4 > 1 || (v9 & 1) == 0)
        {
          v10 = [@"cardSecurityCode" isEqualToString:v5];
          if (a4 > 1 || (v10 & 1) == 0)
          {
            v11 = [@"cardPIN" isEqualToString:v5];
            if (a4 > 1 || (v11 & 1) == 0)
            {
              v12 = [@"cardOnFilePrimaryAccountNumber" isEqualToString:v5];
              if (a4 > 1 || (v12 & 1) == 0)
              {
                v13 = [@"firstName" isEqualToString:v5];
                if (a4 > 1 || (v13 & 1) == 0)
                {
                  v14 = [@"lastName" isEqualToString:v5];
                  if (a4 > 1 || (v14 & 1) == 0)
                  {
                    v15 = [@"email" isEqualToString:v5];
                    if (a4 > 1 || (v15 & 1) == 0)
                    {
                      if ([@"addressLine1" isEqualToString:v5])
                      {
                        if (a4 < 2)
                        {
                          goto LABEL_65;
                        }

                        if (([@"addressLine2" isEqualToString:v5] & 1) == 0)
                        {
                          [@"street2" isEqualToString:v5];
                        }
                      }

                      else
                      {
                        v16 = [@"street1" isEqualToString:v5];
                        if (a4 <= 1 && (v16 & 1) != 0)
                        {
                          goto LABEL_65;
                        }

                        if (([@"addressLine2" isEqualToString:v5] & 1) == 0)
                        {
                          v19 = [@"street2" isEqualToString:v5];
                          if (a4 <= 1 && (v19 & 1) != 0)
                          {
                            goto LABEL_65;
                          }

                          v21 = [@"postalCode" isEqualToString:v5];
                          if (a4 <= 1 && (v21 & 1) != 0)
                          {
                            goto LABEL_65;
                          }

                          goto LABEL_32;
                        }

                        if (a4 < 2)
                        {
                          goto LABEL_65;
                        }
                      }

                      [@"postalCode" isEqualToString:v5];
LABEL_32:
                      v17 = [@"dateOfBirth" isEqualToString:v5];
                      if ((a4 & 0xFFFFFFFFFFFFFFFDLL) != 0 || (v17 & 1) == 0)
                      {
                        v18 = [@"subLocality" isEqualToString:v5];
                        if (a4 > 1 || (v18 & 1) == 0)
                        {
                          v20 = [@"administrativeArea" isEqualToString:v5];
                          if ((a4 > 1 || (v20 & 1) == 0) && (![@"state" isEqualToString:v5] || a4 && a4 != 5))
                          {
                            v22 = [@"city" isEqualToString:v5];
                            if ((a4 > 1 || (v22 & 1) == 0) && (![@"countryCode" isEqualToString:v5] || a4 && a4 != 5))
                            {
                              v23 = [@"phoneNumber" isEqualToString:v5];
                              if ((a4 > 1 || (v23 & 1) == 0) && (![@"citizenship" isEqualToString:v5] || a4 && a4 != 5))
                              {
                                v24 = [@"yearlyIncome" isEqualToString:v5];
                                if (a4 > 1 || (v24 & 1) == 0)
                                {
                                  v25 = [@"totalIncome" isEqualToString:v5];
                                  if (a4 > 1 || (v25 & 1) == 0)
                                  {
                                    v26 = [@"totalAssets" isEqualToString:v5];
                                    if ((a4 > 1 || (v26 & 1) == 0) && (![@"totalAssetsPicker" isEqualToString:v5] || a4 && a4 != 5) && (!objc_msgSend(@"yearlyIncomeLabel", "isEqualToString:", v5) || a4 && a4 != 3))
                                    {
                                      v28 = [@"ssnFull" isEqualToString:v5];
                                      if (a4 > 1 || (v28 & 1) == 0)
                                      {
                                        v29 = [@"ssnSuffix" isEqualToString:v5];
                                        if (a4 > 1 || (v29 & 1) == 0)
                                        {
                                          v30 = [@"transactionLimit" isEqualToString:v5];
                                          if (a4 > 1 || (v30 & 1) == 0)
                                          {
                                            v31 = [@"monthlySpendLimit" isEqualToString:v5];
                                            if ((a4 > 1 || (v31 & 1) == 0) && (![@"aboutCreditReporting" isEqualToString:v5] || a4 && a4 != 3))
                                            {
                                              v32 = [@"balance" isEqualToString:v5];
                                              if (a4 > 1 || (v32 & 1) == 0)
                                              {
                                                v33 = [@"otpCode" isEqualToString:v5];
                                                if ((a4 > 1 || (v33 & 1) == 0) && a4 - 1 > 4)
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"PKPaymentSetupFieldCurrentValueChangedNotification" object:self];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSString *)self->_localizedPlaceholder copyWithZone:a3];
  v7 = *(v5 + 64);
  *(v5 + 64) = v6;

  v8 = [(NSString *)self->_displayFormat copyWithZone:a3];
  v9 = *(v5 + 72);
  *(v5 + 72) = v8;

  *(v5 + 24) = self->_optional;
  *(v5 + 25) = self->_readonly;
  *(v5 + 26) = self->_hidden;
  v10 = [(NSString *)self->_submissionKey copyWithZone:a3];
  v11 = *(v5 + 104);
  *(v5 + 104) = v10;

  v12 = [(NSString *)self->_submissionDestination copyWithZone:a3];
  v13 = *(v5 + 112);
  *(v5 + 112) = v12;

  *(v5 + 120) = self->_submissionSecurity;
  objc_storeStrong((v5 + 160), self->_rawConfigurationDictionary);
  v14 = [(NSString *)self->_defaultValue copyWithZone:a3];
  v15 = *(v5 + 80);
  *(v5 + 80) = v14;

  *(v5 + 29) = self->_populateFromMeCard;
  objc_storeStrong((v5 + 32), self->_attribute);
  v16 = [(NSString *)self->_identifier copyWithZone:a3];
  v17 = *(v5 + 48);
  *(v5 + 48) = v16;

  v18 = [(NSString *)self->_localizedDisplayName copyWithZone:a3];
  v19 = *(v5 + 56);
  *(v5 + 56) = v18;

  v20 = [self->_currentValue copyWithZone:a3];
  v21 = *(v5 + 8);
  *(v5 + 8) = v20;

  v22 = [self->_originalCameraCaptureValue copyWithZone:a3];
  v23 = *(v5 + 16);
  *(v5 + 16) = v22;

  *(v5 + 96) = self->_source;
  v24 = [(NSString *)self->_odiAttribute copyWithZone:a3];
  v25 = *(v5 + 144);
  *(v5 + 144) = v24;

  v26 = [(NSArray *)self->_requirements copyWithZone:a3];
  v27 = *(v5 + 152);
  *(v5 + 152) = v26;

  *(v5 + 120) = self->_submissionSecurity;
  v28 = [(NSString *)self->_fieldSubmissionEncryptionScheme copyWithZone:a3];
  v29 = *(v5 + 128);
  *(v5 + 128) = v28;

  v30 = [(NSArray *)self->_fieldSubmissionEncryptionCertificates copyWithZone:a3];
  v31 = *(v5 + 136);
  *(v5 + 136) = v30;

  return v5;
}

+ (id)newRandomlyGeneratedField
{
  v2 = arc4random_uniform(0x64u);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"identifier-%i", v2];
  v4 = [MEMORY[0x1E695DF90] dictionary];
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

  [v4 setObject:v6 forKey:@"localizedDisplayName"];

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

    [v4 setObject:v9 forKey:@"defaultValue"];
  }

  v10 = arc4random_uniform(3u);
  if (v10 == 2)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rsub%i", arc4random_uniform(0x64u) + 100];
    [v4 setObject:v11 forKey:@"submissionKey"];
  }

  else if (v10 == 1)
  {
    [v4 setObject:v3 forKey:@"submissionKey"];
  }

  if (arc4random_uniform(2u))
  {
    v12 = @"eligibility";
  }

  else
  {
    v12 = @"enable";
  }

  [v4 setObject:v12 forKey:@"submissionDestination"];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:arc4random_uniform(2u) != 0];
  [v4 setObject:v13 forKey:@"requiresSecureSubmission"];

  if (!arc4random_uniform(2u))
  {
    [v4 setObject:@"date" forKey:@"fieldType"];
    v20 = [MEMORY[0x1E696AD98] numberWithBool:arc4random_uniform(2u) != 0];
    [v4 setObject:v20 forKey:@"showsDay"];

    v21 = [MEMORY[0x1E696AD98] numberWithBool:arc4random_uniform(2u) != 0];
    [v4 setObject:v21 forKey:@"showsMonth"];

    v22 = [MEMORY[0x1E696AD98] numberWithBool:arc4random_uniform(2u) != 0];
    [v4 setObject:v22 forKey:@"showsYear"];

    v23 = arc4random_uniform(6u);
    if (v23 > 5)
    {
      v24 = &stru_1F227FD28;
    }

    else
    {
      v24 = off_1E79C84A8[v23];
    }

    [v4 setObject:v24 forKey:@"displayFormat"];
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

  [v4 setObject:@"text" forKey:@"fieldType"];
  v14 = [MEMORY[0x1E696AD98] numberWithInt:arc4random_uniform(4u)];
  [v4 setObject:v14 forKey:@"minLength"];

  if (arc4random_uniform(2u))
  {
    v15 = [MEMORY[0x1E696AD98] numberWithInt:arc4random_uniform(0xAu) + 3];
    [v4 setObject:v15 forKey:@"maxLength"];
  }

  if (arc4random_uniform(2u))
  {
    [v4 setObject:MEMORY[0x1E695E118] forKey:@"secureText"];
    v16 = [MEMORY[0x1E696AD98] numberWithBool:arc4random_uniform(2u) != 0];
    [v4 setObject:v16 forKey:@"secureVisibleText"];
  }

  if (arc4random_uniform(2u))
  {
    [v4 setObject:MEMORY[0x1E695E118] forKey:@"numeric"];
    v17 = [MEMORY[0x1E696AD98] numberWithBool:arc4random_uniform(2u) != 0];
    [v4 setObject:v17 forKey:@"useLuhnCheck"];
  }

  if (arc4random_uniform(2u))
  {
    v18 = @"XXX XX X  XXX";
    v19 = @"displayFormat";
LABEL_41:
    [v4 setObject:v18 forKey:v19];
  }

  v25 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:v3 configuration:v4];

  return v25;
}

+ (id)sampleCustomPaymentSetupFields
{
  v77[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:@"label" forKey:@"fieldType"];
  [v3 setObject:@"The below fields are for testing purposes only. \nTheir values are not used!" forKey:@"defaultValue"];
  v4 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"labelShort" configuration:v3];
  [v2 safelyAddObject:v4];

  [v3 removeAllObjects];
  [v3 setObject:@"date" forKey:@"fieldType"];
  [v3 setObject:@"Date of Birth" forKey:?];
  [v3 setObject:@"enable" forKey:?];
  v5 = MEMORY[0x1E695E118];
  [v3 setObject:MEMORY[0x1E695E118] forKey:@"showsDay"];
  [v3 setObject:v5 forKey:@"showsMonth"];
  [v3 setObject:v5 forKey:@"showsYear"];
  [v3 setObject:@"MM/dd/yy" forKey:@"displayFormat"];
  [v3 setObject:@"yyyy-MM-dd" forKey:@"submissionFormat"];
  [v3 setObject:@"1995-01-01" forKey:@"defaultValue"];
  [v3 setObject:v5 forKey:@"optional"];
  v6 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"birthDate" configuration:v3];
  [v2 safelyAddObject:v6];

  [v3 removeAllObjects];
  [v3 setObject:@"date" forKey:@"fieldType"];
  [v3 setObject:@"Birth Year" forKey:@"localizedDisplayName"];
  [v3 setObject:@"enable" forKey:@"submissionDestination"];
  [v3 setObject:@"Custom Placeholder" forKey:@"localizedPlaceholder"];
  v7 = MEMORY[0x1E695E110];
  [v3 setObject:MEMORY[0x1E695E110] forKey:@"showsDay"];
  [v3 setObject:v7 forKey:@"showsMonth"];
  [v3 setObject:v5 forKey:@"showsYear"];
  [v3 setObject:@"yyyy" forKey:@"displayFormat"];
  [v3 setObject:@"yyyy" forKey:@"submissionFormat"];
  [v3 setObject:@"1995" forKey:@"defaultValue"];
  v8 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"birthYear" configuration:v3];
  [v2 safelyAddObject:v8];

  [v3 removeAllObjects];
  [v3 setObject:@"date" forKey:@"fieldType"];
  [v3 setObject:@"Birth Month" forKey:@"localizedDisplayName"];
  [v3 setObject:@"enable" forKey:@"submissionDestination"];
  v9 = MEMORY[0x1E695E110];
  [v3 setObject:MEMORY[0x1E695E110] forKey:@"showsDay"];
  v10 = MEMORY[0x1E695E118];
  [v3 setObject:? forKey:?];
  v11 = v9;
  [v3 setObject:v9 forKey:@"showsYear"];
  [v3 setObject:@"MMMM" forKey:@"displayFormat"];
  [v3 setObject:@"MM" forKey:@"submissionFormat"];
  [v3 setObject:@"12" forKey:@"defaultValue"];
  v12 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"birthMonth" configuration:v3];
  [v2 safelyAddObject:v12];

  [v3 removeAllObjects];
  [v3 setObject:@"date" forKey:@"fieldType"];
  [v3 setObject:@"Birth Day" forKey:@"localizedDisplayName"];
  [v3 setObject:@"enable" forKey:?];
  [v3 setObject:v10 forKey:@"showsDay"];
  [v3 setObject:v11 forKey:@"showsMonth"];
  [v3 setObject:v11 forKey:@"showsYear"];
  [v3 setObject:@"dd" forKey:?];
  [v3 setObject:@"dd" forKey:@"submissionFormat"];
  [v3 setObject:@"01" forKey:@"defaultValue"];
  v13 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"birthDay" configuration:v3];
  [v2 safelyAddObject:v13];

  [v3 removeAllObjects];
  [v3 setObject:@"date" forKey:@"fieldType"];
  [v3 setObject:@"Birth Day Year" forKey:@"localizedDisplayName"];
  [v3 setObject:@"enable" forKey:@"submissionDestination"];
  v14 = MEMORY[0x1E695E118];
  [v3 setObject:MEMORY[0x1E695E118] forKey:@"showsDay"];
  [v3 setObject:v11 forKey:@"showsMonth"];
  [v3 setObject:v14 forKey:@"showsYear"];
  [v3 setObject:@"dd/yyyy" forKey:@"displayFormat"];
  [v3 setObject:@"dd/yyyy" forKey:@"submissionFormat"];
  [v3 setObject:@"02/2012" forKey:@"defaultValue"];
  v15 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"birthDayYear" configuration:v3];
  [v2 safelyAddObject:v15];

  [v3 removeAllObjects];
  [v3 setObject:@"picker" forKey:@"fieldType"];
  [v3 setObject:@"Color Picker" forKey:@"localizedDisplayName"];
  [v3 setObject:@"enable" forKey:@"submissionDestination"];
  [v3 setObject:@"color_blue" forKey:@"defaultValue"];
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

  [v3 setObject:v70 forKey:@"pickerItems"];
  v19 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"colorPicker" configuration:v3];
  v20 = v2;
  [v2 safelyAddObject:v19];

  [v3 removeAllObjects];
  [v3 setObject:@"text" forKey:@"fieldType"];
  [v3 setObject:@"Phone" forKey:@"localizedDisplayName"];
  [v3 setObject:@"enable" forKey:@"submissionDestination"];
  [v3 setObject:&unk_1F23B4970 forKey:@"minLength"];
  [v3 setObject:&unk_1F23B4970 forKey:@"maxLength"];
  v21 = MEMORY[0x1E695E110];
  [v3 setObject:MEMORY[0x1E695E110] forKey:@"secureText"];
  [v3 setObject:v21 forKey:@"secureVisibleText"];
  v22 = MEMORY[0x1E695E118];
  [v3 setObject:MEMORY[0x1E695E118] forKey:@"numeric"];
  [v3 setObject:v21 forKey:@"useLuhnCheck"];
  [v3 setObject:@"(XXX) XXX-XXXX" forKey:@"displayFormat"];
  v23 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"usaPhone" configuration:v3];
  [v20 safelyAddObject:v23];

  [v3 removeAllObjects];
  [v3 setObject:@"text" forKey:@"fieldType"];
  [v3 setObject:@"ZIP Code" forKey:@"localizedDisplayName"];
  [v3 setObject:@"enable" forKey:@"submissionDestination"];
  [v3 setObject:&unk_1F23B4988 forKey:@"minLength"];
  [v3 setObject:&unk_1F23B4988 forKey:@"maxLength"];
  v24 = MEMORY[0x1E695E110];
  [v3 setObject:MEMORY[0x1E695E110] forKey:@"secureText"];
  [v3 setObject:v24 forKey:@"secureVisibleText"];
  [v3 setObject:v22 forKey:@"numeric"];
  [v3 setObject:v24 forKey:@"useLuhnCheck"];
  [v3 setObject:&stru_1F227FD28 forKey:@"displayFormat"];
  v25 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"usaZIP" configuration:v3];
  [v20 safelyAddObject:v25];

  [v3 removeAllObjects];
  [v3 setObject:@"text" forKey:@"fieldType"];
  [v3 setObject:@"Overly long ZIP Code (UK) and then some" forKey:@"localizedDisplayName"];
  [v3 setObject:@"Custom Placeholder" forKey:@"localizedPlaceholder"];
  [v3 setObject:@"enable" forKey:@"submissionDestination"];
  [v3 setObject:&unk_1F23B49A0 forKey:@"minLength"];
  [v3 setObject:&unk_1F23B49A0 forKey:@"maxLength"];
  v26 = MEMORY[0x1E695E110];
  [v3 setObject:MEMORY[0x1E695E110] forKey:@"secureText"];
  [v3 setObject:v26 forKey:@"secureVisibleText"];
  [v3 setObject:v26 forKey:@"numeric"];
  [v3 setObject:v26 forKey:@"useLuhnCheck"];
  [v3 setObject:@"XXX-XXX" forKey:@"displayFormat"];
  v27 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"ukZIP" configuration:v3];
  [v20 safelyAddObject:v27];

  [v3 removeAllObjects];
  [v3 setObject:@"text" forKey:@"fieldType"];
  [v3 setObject:@"SSN" forKey:@"localizedDisplayName"];
  [v3 setObject:@"enable" forKey:@"submissionDestination"];
  [v3 setObject:&unk_1F23B49B8 forKey:@"minLength"];
  [v3 setObject:&unk_1F23B49B8 forKey:@"maxLength"];
  v28 = MEMORY[0x1E695E118];
  [v3 setObject:MEMORY[0x1E695E118] forKey:@"secureText"];
  [v3 setObject:v28 forKey:@"secureVisibleText"];
  [v3 setObject:v28 forKey:@"numeric"];
  [v3 setObject:MEMORY[0x1E695E110] forKey:@"useLuhnCheck"];
  [v3 setObject:@"XXX-XX-XXXX" forKey:@"displayFormat"];
  v29 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"ssn" configuration:v3];
  [v20 safelyAddObject:v29];

  [v3 removeAllObjects];
  [v3 setObject:@"text" forKey:@"fieldType"];
  [v3 setObject:@"CURP (MX)" forKey:@"localizedDisplayName"];
  [v3 setObject:@"enable" forKey:@"submissionDestination"];
  [v3 setObject:&unk_1F23B49D0 forKey:@"minLength"];
  [v3 setObject:&unk_1F23B49D0 forKey:@"maxLength"];
  v30 = MEMORY[0x1E695E118];
  [v3 setObject:MEMORY[0x1E695E118] forKey:@"secureText"];
  [v3 setObject:v30 forKey:@"secureVisibleText"];
  v31 = MEMORY[0x1E695E110];
  [v3 setObject:MEMORY[0x1E695E110] forKey:@"numeric"];
  [v3 setObject:v31 forKey:?];
  [v3 setObject:&stru_1F227FD28 forKey:@"displayFormat"];
  v32 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"curp" configuration:v3];
  [v20 safelyAddObject:v32];

  [v3 removeAllObjects];
  [v3 setObject:@"text" forKey:@"fieldType"];
  [v3 setObject:@"HKID (HK)" forKey:@"localizedDisplayName"];
  [v3 setObject:@"enable" forKey:@"submissionDestination"];
  [v3 setObject:&unk_1F23B49E8 forKey:@"minLength"];
  [v3 setObject:&unk_1F23B49B8 forKey:@"maxLength"];
  v33 = MEMORY[0x1E695E118];
  [v3 setObject:MEMORY[0x1E695E118] forKey:@"secureText"];
  [v3 setObject:v33 forKey:@"secureVisibleText"];
  v34 = MEMORY[0x1E695E110];
  [v3 setObject:MEMORY[0x1E695E110] forKey:@"numeric"];
  [v3 setObject:v34 forKey:@"useLuhnCheck"];
  [v3 setObject:@"XXXXXXXXX" forKey:@"displayFormat"];
  v35 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"hkid" configuration:v3];
  v36 = v20;
  [v20 safelyAddObject:v35];

  [v3 removeAllObjects];
  [v3 setObject:@"text" forKey:@"fieldType"];
  [v3 setObject:@"NIR (FR)" forKey:@"localizedDisplayName"];
  [v3 setObject:@"enable" forKey:@"submissionDestination"];
  [v3 setObject:&unk_1F23B4A00 forKey:@"minLength"];
  [v3 setObject:&unk_1F23B4A00 forKey:@"maxLength"];
  v37 = MEMORY[0x1E695E118];
  [v3 setObject:MEMORY[0x1E695E118] forKey:@"secureText"];
  [v3 setObject:v37 forKey:@"secureVisibleText"];
  v38 = MEMORY[0x1E695E110];
  [v3 setObject:MEMORY[0x1E695E110] forKey:@"numeric"];
  [v3 setObject:v38 forKey:@"useLuhnCheck"];
  [v3 setObject:@"XXXXXXXXXXXXX XX" forKey:@"displayFormat"];
  v39 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"nir" configuration:v3];
  [v36 safelyAddObject:v39];

  [v3 removeAllObjects];
  [v3 setObject:@"text" forKey:@"fieldType"];
  [v3 setObject:@"BSN (NL)" forKey:@"localizedDisplayName"];
  [v3 setObject:@"enable" forKey:@"submissionDestination"];
  [v3 setObject:&unk_1F23B49B8 forKey:@"minLength"];
  [v3 setObject:&unk_1F23B49B8 forKey:@"maxLength"];
  [v3 setObject:v37 forKey:@"secureText"];
  [v3 setObject:v37 forKey:@"secureVisibleText"];
  [v3 setObject:v37 forKey:@"numeric"];
  [v3 setObject:MEMORY[0x1E695E110] forKey:@"useLuhnCheck"];
  [v3 setObject:@"XXXXXXXXX" forKey:@"displayFormat"];
  v40 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"bsn" configuration:v3];
  v41 = v36;
  [v36 safelyAddObject:v40];

  [v3 removeAllObjects];
  [v3 setObject:@"text" forKey:@"fieldType"];
  [v3 setObject:@"AHV-Nr. (CH)" forKey:@"localizedDisplayName"];
  [v3 setObject:@"enable" forKey:@"submissionDestination"];
  [v3 setObject:&unk_1F23B49D0 forKey:@"minLength"];
  [v3 setObject:&unk_1F23B49D0 forKey:@"maxLength"];
  v42 = MEMORY[0x1E695E118];
  [v3 setObject:MEMORY[0x1E695E118] forKey:@"secureText"];
  [v3 setObject:v42 forKey:@"secureVisibleText"];
  v43 = v42;
  [v3 setObject:v42 forKey:@"numeric"];
  [v3 setObject:MEMORY[0x1E695E110] forKey:@"useLuhnCheck"];
  [v3 setObject:@"XXX.XXXX.XXXX.XX" forKey:@"displayFormat"];
  v44 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"ahvnr" configuration:v3];
  [v36 safelyAddObject:v44];

  [v3 removeAllObjects];
  [v3 setObject:@"text" forKey:@"fieldType"];
  [v3 setObject:@"NINO (UK)" forKey:@"localizedDisplayName"];
  [v3 setObject:@"enable" forKey:@"submissionDestination"];
  [v3 setObject:&unk_1F23B49B8 forKey:@"minLength"];
  [v3 setObject:&unk_1F23B49B8 forKey:@"maxLength"];
  [v3 setObject:v43 forKey:@"secureText"];
  [v3 setObject:v43 forKey:@"secureVisibleText"];
  v45 = MEMORY[0x1E695E110];
  [v3 setObject:MEMORY[0x1E695E110] forKey:@"numeric"];
  [v3 setObject:v45 forKey:@"useLuhnCheck"];
  [v3 setObject:@"XX XX XX XX X" forKey:@"displayFormat"];
  v46 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"nino" configuration:v3];
  [v36 safelyAddObject:v46];

  [v3 removeAllObjects];
  [v3 setObject:@"text" forKey:@"fieldType"];
  [v3 setObject:@"NHS No. (UK)" forKey:@"localizedDisplayName"];
  [v3 setObject:@"enable" forKey:@"submissionDestination"];
  [v3 setObject:&unk_1F23B4970 forKey:@"minLength"];
  [v3 setObject:&unk_1F23B4970 forKey:@"maxLength"];
  v47 = MEMORY[0x1E695E118];
  [v3 setObject:MEMORY[0x1E695E118] forKey:@"secureText"];
  [v3 setObject:v47 forKey:@"secureVisibleText"];
  [v3 setObject:v47 forKey:@"numeric"];
  [v3 setObject:MEMORY[0x1E695E110] forKey:@"useLuhnCheck"];
  [v3 setObject:@"XXX-XXX-XXXX" forKey:@"displayFormat"];
  v48 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"nhsno" configuration:v3];
  [v41 safelyAddObject:v48];

  [v3 removeAllObjects];
  [v3 setObject:@"text" forKey:@"fieldType"];
  [v3 setObject:@"Kohl's PIN" forKey:@"localizedDisplayName"];
  [v3 setObject:@"enable" forKey:@"submissionDestination"];
  [v3 setObject:&unk_1F23B49A0 forKey:@"maxLength"];
  v49 = MEMORY[0x1E695E118];
  [v3 setObject:MEMORY[0x1E695E118] forKey:@"secureText"];
  v50 = MEMORY[0x1E695E110];
  [v3 setObject:MEMORY[0x1E695E110] forKey:@"secureVisibleText"];
  [v3 setObject:v49 forKey:@"numeric"];
  [v3 setObject:v50 forKey:@"useLuhnCheck"];
  [v3 setObject:&stru_1F227FD28 forKey:@"displayFormat"];
  v51 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"kohlsPin" configuration:v3];
  [v41 safelyAddObject:v51];

  [v3 removeAllObjects];
  [v3 setObject:@"text" forKey:@"fieldType"];
  [v3 setObject:@"Macy's PIN" forKey:@"localizedDisplayName"];
  [v3 setObject:@"enable" forKey:@"submissionDestination"];
  [v3 setObject:&unk_1F23B4A18 forKey:@"minLength"];
  [v3 setObject:&unk_1F23B4A18 forKey:@"maxLength"];
  v52 = MEMORY[0x1E695E118];
  [v3 setObject:MEMORY[0x1E695E118] forKey:@"secureText"];
  v53 = MEMORY[0x1E695E110];
  [v3 setObject:MEMORY[0x1E695E110] forKey:@"secureVisibleText"];
  [v3 setObject:v52 forKey:@"numeric"];
  [v3 setObject:v53 forKey:@"useLuhnCheck"];
  [v3 setObject:&stru_1F227FD28 forKey:@"displayFormat"];
  v54 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"macysPin" configuration:v3];
  v55 = v41;
  [v41 safelyAddObject:v54];

  [v3 removeAllObjects];
  [v3 setObject:? forKey:?];
  [v3 setObject:@"Disc Sq. No." forKey:@"localizedDisplayName"];
  [v3 setObject:@"enable" forKey:@"submissionDestination"];
  [v3 setObject:&unk_1F23B4A30 forKey:@"minLength"];
  [v3 setObject:&unk_1F23B4A30 forKey:@"maxLength"];
  v56 = MEMORY[0x1E695E118];
  [v3 setObject:MEMORY[0x1E695E118] forKey:@"secureText"];
  [v3 setObject:v56 forKey:@"secureVisibleText"];
  [v3 setObject:v56 forKey:@"numeric"];
  v57 = MEMORY[0x1E695E110];
  [v3 setObject:MEMORY[0x1E695E110] forKey:@"useLuhnCheck"];
  [v3 setObject:@"AXXX" forKey:@"localizedPlaceholder"];
  [v3 setObject:@"AXXX" forKey:@"displayFormat"];
  [v3 setObject:@"X" forKey:@"displayFormatPlaceholder"];
  v58 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"disc" configuration:v3];
  [v55 safelyAddObject:v58];

  [v3 removeAllObjects];
  [v3 setObject:@"text" forKey:@"fieldType"];
  [v3 setObject:@"CVV 4 S" forKey:@"localizedDisplayName"];
  [v3 setObject:@"enable" forKey:@"submissionDestination"];
  [v3 setObject:&unk_1F23B4A18 forKey:@"minLength"];
  [v3 setObject:&unk_1F23B4A18 forKey:@"maxLength"];
  v59 = MEMORY[0x1E695E118];
  [v3 setObject:MEMORY[0x1E695E118] forKey:@"secureText"];
  [v3 setObject:v57 forKey:@"secureVisibleText"];
  [v3 setObject:v59 forKey:@"numeric"];
  [v3 setObject:v57 forKey:@"useLuhnCheck"];
  v60 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"ccvS4" configuration:v3];
  [v55 safelyAddObject:v60];

  [v3 removeAllObjects];
  [v3 setObject:@"text" forKey:@"fieldType"];
  [v3 setObject:@"CVV 4 SV" forKey:@"localizedDisplayName"];
  [v3 setObject:@"enable" forKey:@"submissionDestination"];
  [v3 setObject:&unk_1F23B4A18 forKey:@"minLength"];
  [v3 setObject:&unk_1F23B4A18 forKey:@"maxLength"];
  v61 = MEMORY[0x1E695E118];
  [v3 setObject:MEMORY[0x1E695E118] forKey:@"secureText"];
  [v3 setObject:v61 forKey:@"secureVisibleText"];
  [v3 setObject:v61 forKey:@"numeric"];
  v62 = MEMORY[0x1E695E110];
  [v3 setObject:MEMORY[0x1E695E110] forKey:@"useLuhnCheck"];
  v63 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"ccvSV4" configuration:v3];
  [v55 safelyAddObject:v63];

  [v3 removeAllObjects];
  [v3 setObject:@"text" forKey:@"fieldType"];
  [v3 setObject:@"Parens Check Card Last 5" forKey:@"localizedDisplayName"];
  [v3 setObject:@"enable" forKey:@"submissionDestination"];
  [v3 setObject:&unk_1F23B4988 forKey:@"minLength"];
  [v3 setObject:&unk_1F23B4988 forKey:@"maxLength"];
  [v3 setObject:v61 forKey:@"secureText"];
  [v3 setObject:v61 forKey:@"secureVisibleText"];
  [v3 setObject:v61 forKey:@"numeric"];
  [v3 setObject:v62 forKey:@"useLuhnCheck"];
  [v3 setObject:@"Last 5 digits" forKey:@"localizedPlaceholder"];
  [v3 setObject:@"XXXX (X)" forKey:@"displayFormat"];
  v64 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"parensCheck" configuration:v3];
  [v55 safelyAddObject:v64];

  [v3 removeAllObjects];
  [v3 setObject:@"label" forKey:@"fieldType"];
  [v3 setObject:@"This is a center label" forKey:@"defaultValue"];
  [v3 setObject:@"center" forKey:@"alignment"];
  v65 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"centerLabel" configuration:v3];
  [v55 safelyAddObject:v65];

  [v3 removeAllObjects];
  [v3 setObject:@"label" forKey:@"fieldType"];
  [v3 setObject:@"This is a left label" forKey:@"defaultValue"];
  [v3 setObject:@"left" forKey:@"alignment"];
  v66 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"leftLabel" configuration:v3];
  [v55 safelyAddObject:v66];

  [v3 removeAllObjects];
  [v3 setObject:@"label" forKey:@"fieldType"];
  [v3 setObject:@"This is a really long label. You should really not be reading this! Feel free to not read this in the future. Also forKey:{here is some more text for some more fun!", @"defaultValue"}];
  v67 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"labelLong" configuration:v3];
  [v55 safelyAddObject:v67];

  [v3 removeAllObjects];
  [v3 setObject:@"footer" forKey:@"fieldType"];
  [v3 setObject:@"Adding a Suica card will associate it with your Apple Account so it can be backed up. When you use your card forKey:{the station names from your recent transactions can be accessed.", @"defaultValue"}];
  v68 = [PKPaymentSetupField paymentSetupFieldWithIdentifier:@"footerLong" configuration:v3];
  [v55 safelyAddObject:v68];

  [v3 removeAllObjects];

  return v55;
}

@end