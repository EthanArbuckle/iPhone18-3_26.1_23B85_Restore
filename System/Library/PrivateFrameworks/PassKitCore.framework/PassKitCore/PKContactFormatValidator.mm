@interface PKContactFormatValidator
- (BOOL)_isFieldEntry:(id)entry validForContactFieldConfiguration:(id)configuration;
- (BOOL)_isFieldEntry:(id)entry validForPickerContactFieldConfiguration:(id)configuration;
- (BOOL)_isFieldEntry:(id)entry validForTextContactFieldConfiguration:(id)configuration;
- (BOOL)emailAddressIsValid:(id)valid;
- (BOOL)hasFormatValidationConfigurationForCountryCode:(id)code;
- (BOOL)isFamilyName:(id)name validFormatForCountryCode:(id)code;
- (BOOL)isGivenName:(id)name validFormatForCountryCode:(id)code;
- (BOOL)isPhoneticFamilyName:(id)name validFormatForCountryCode:(id)code;
- (BOOL)isPhoneticGivenName:(id)name validFormatForCountryCode:(id)code;
- (BOOL)isPostalAddressFieldEntry:(id)entry validForPostalFieldKey:(id)key forCountryCode:(id)code;
- (BOOL)phoneNumberIsValid:(id)valid forCountryCode:(id)code;
- (PKContactFormatValidator)initWithConfiguration:(id)configuration;
- (id)_formattedFieldEntry:(id)entry forFieldConfiguration:(id)configuration;
- (id)contactFieldConfigurationForFamilyNameForCountryCode:(id)code;
- (id)contactFieldConfigurationForGivenNameForCountryCode:(id)code;
- (id)contactFieldConfigurationForPhoneticFamilyNameForCountryCode:(id)code;
- (id)contactFieldConfigurationForPhoneticGivenNameForCountryCode:(id)code;
- (id)contactFieldConfigurationForPostalField:(id)field forCountryCode:(id)code;
- (id)formatPostalAddress:(id)address;
- (unint64_t)checkNameFormat:(id)format forCountryCode:(id)code;
- (unint64_t)checkPostalAddressFormat:(id)format;
@end

@implementation PKContactFormatValidator

- (PKContactFormatValidator)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (configurationCopy)
  {
    v10.receiver = self;
    v10.super_class = PKContactFormatValidator;
    v6 = [(PKContactFormatValidator *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_configuration, configuration);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)hasFormatValidationConfigurationForCountryCode:(id)code
{
  v3 = [(PKContactFormatConfiguration *)self->_configuration contactFieldConfigurationForCountryCode:code];
  v4 = v3 != 0;

  return v4;
}

- (unint64_t)checkNameFormat:(id)format forCountryCode:(id)code
{
  formatCopy = format;
  v7 = [(PKContactFormatConfiguration *)self->_configuration contactFieldConfigurationForCountryCode:code];
  nameComponentFormatConfiguration = [v7 nameComponentFormatConfiguration];
  if (nameComponentFormatConfiguration)
  {
    phoneticRepresentation = [formatCopy phoneticRepresentation];
    givenName = [formatCopy givenName];
    givenNameFieldConfiguration = [nameComponentFormatConfiguration givenNameFieldConfiguration];
    v12 = [(PKContactFormatValidator *)self _isFieldEntry:givenName validForContactFieldConfiguration:givenNameFieldConfiguration];

    v13 = !v12;
    familyName = [formatCopy familyName];
    familyNameFieldConfiguration = [nameComponentFormatConfiguration familyNameFieldConfiguration];
    v16 = [(PKContactFormatValidator *)self _isFieldEntry:familyName validForContactFieldConfiguration:familyNameFieldConfiguration];

    if (!v16)
    {
      v13 |= 2uLL;
    }

    givenName2 = [phoneticRepresentation givenName];
    phoneticGivenNameFieldConfiguration = [nameComponentFormatConfiguration phoneticGivenNameFieldConfiguration];
    v19 = [(PKContactFormatValidator *)self _isFieldEntry:givenName2 validForContactFieldConfiguration:phoneticGivenNameFieldConfiguration];

    if (v19)
    {
      v20 = v13;
    }

    else
    {
      v20 = v13 | 4;
    }

    familyName2 = [phoneticRepresentation familyName];
    phoneticFamilyNameFieldConfiguration = [nameComponentFormatConfiguration phoneticFamilyNameFieldConfiguration];
    v23 = [(PKContactFormatValidator *)self _isFieldEntry:familyName2 validForContactFieldConfiguration:phoneticFamilyNameFieldConfiguration];

    if (v23)
    {
      v24 = v20;
    }

    else
    {
      v24 = v20 | 8;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (BOOL)isGivenName:(id)name validFormatForCountryCode:(id)code
{
  nameCopy = name;
  v7 = [(PKContactFormatValidator *)self contactFieldConfigurationForGivenNameForCountryCode:code];
  LOBYTE(self) = [(PKContactFormatValidator *)self _isFieldEntry:nameCopy validForContactFieldConfiguration:v7];

  return self;
}

- (BOOL)isFamilyName:(id)name validFormatForCountryCode:(id)code
{
  nameCopy = name;
  v7 = [(PKContactFormatValidator *)self contactFieldConfigurationForFamilyNameForCountryCode:code];
  LOBYTE(self) = [(PKContactFormatValidator *)self _isFieldEntry:nameCopy validForContactFieldConfiguration:v7];

  return self;
}

- (BOOL)isPhoneticGivenName:(id)name validFormatForCountryCode:(id)code
{
  nameCopy = name;
  v7 = [(PKContactFormatValidator *)self contactFieldConfigurationForPhoneticGivenNameForCountryCode:code];
  LOBYTE(self) = [(PKContactFormatValidator *)self _isFieldEntry:nameCopy validForContactFieldConfiguration:v7];

  return self;
}

- (BOOL)isPhoneticFamilyName:(id)name validFormatForCountryCode:(id)code
{
  nameCopy = name;
  v7 = [(PKContactFormatValidator *)self contactFieldConfigurationForPhoneticFamilyNameForCountryCode:code];
  LOBYTE(self) = [(PKContactFormatValidator *)self _isFieldEntry:nameCopy validForContactFieldConfiguration:v7];

  return self;
}

- (unint64_t)checkPostalAddressFormat:(id)format
{
  formatCopy = format;
  iSOCountryCode = [formatCopy ISOCountryCode];
  if ([iSOCountryCode length])
  {
    v6 = [(PKContactFormatConfiguration *)self->_configuration contactFieldConfigurationForCountryCode:iSOCountryCode];
    addressFormatConfiguration = [v6 addressFormatConfiguration];
    if (addressFormatConfiguration)
    {
      street = [formatCopy street];
      streetFieldConfiguration = [addressFormatConfiguration streetFieldConfiguration];
      v10 = [(PKContactFormatValidator *)self _isFieldEntry:street validForContactFieldConfiguration:streetFieldConfiguration];

      v11 = !v10;
      subLocality = [formatCopy subLocality];
      subLocalityFieldConfiguration = [addressFormatConfiguration subLocalityFieldConfiguration];
      v14 = [(PKContactFormatValidator *)self _isFieldEntry:subLocality validForContactFieldConfiguration:subLocalityFieldConfiguration];

      if (!v14)
      {
        v11 |= 2uLL;
      }

      city = [formatCopy city];
      cityFieldConfiguration = [addressFormatConfiguration cityFieldConfiguration];
      v17 = [(PKContactFormatValidator *)self _isFieldEntry:city validForContactFieldConfiguration:cityFieldConfiguration];

      if (!v17)
      {
        v11 |= 4uLL;
      }

      subAdministrativeArea = [formatCopy subAdministrativeArea];
      subAdministrativeAreaFieldConfiguration = [addressFormatConfiguration subAdministrativeAreaFieldConfiguration];
      v20 = [(PKContactFormatValidator *)self _isFieldEntry:subAdministrativeArea validForContactFieldConfiguration:subAdministrativeAreaFieldConfiguration];

      if (!v20)
      {
        v11 |= 8uLL;
      }

      state = [formatCopy state];
      stateFieldConfiguration = [addressFormatConfiguration stateFieldConfiguration];
      v23 = [(PKContactFormatValidator *)self _isFieldEntry:state validForContactFieldConfiguration:stateFieldConfiguration];

      if (v23)
      {
        v24 = v11;
      }

      else
      {
        v24 = v11 | 0x10;
      }

      postalCode = [formatCopy postalCode];
      postalCodeFieldConfiguration = [addressFormatConfiguration postalCodeFieldConfiguration];
      v27 = [(PKContactFormatValidator *)self _isFieldEntry:postalCode validForContactFieldConfiguration:postalCodeFieldConfiguration];

      if (v27)
      {
        v28 = v24;
      }

      else
      {
        v28 = v24 | 0x20;
      }
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 64;
  }

  return v28;
}

- (BOOL)isPostalAddressFieldEntry:(id)entry validForPostalFieldKey:(id)key forCountryCode:(id)code
{
  if (!entry || !key || !code)
  {
    return 0;
  }

  entryCopy = entry;
  v9 = [(PKContactFormatValidator *)self contactFieldConfigurationForPostalField:key forCountryCode:code];
  LOBYTE(self) = [(PKContactFormatValidator *)self _isFieldEntry:entryCopy validForContactFieldConfiguration:v9];

  return self;
}

- (id)formatPostalAddress:(id)address
{
  addressCopy = address;
  v5 = [addressCopy mutableCopy];
  configuration = self->_configuration;
  iSOCountryCode = [addressCopy ISOCountryCode];
  v8 = [(PKContactFormatConfiguration *)configuration contactFieldConfigurationForCountryCode:iSOCountryCode];

  addressFormatConfiguration = [v8 addressFormatConfiguration];
  v10 = addressCopy;
  if (addressFormatConfiguration)
  {
    city = [addressCopy city];
    cityFieldConfiguration = [addressFormatConfiguration cityFieldConfiguration];
    v13 = [(PKContactFormatValidator *)self _formattedFieldEntry:city forFieldConfiguration:cityFieldConfiguration];

    if (v13)
    {
      [v5 setCity:v13];
    }

    state = [addressCopy state];
    stateFieldConfiguration = [addressFormatConfiguration stateFieldConfiguration];
    v16 = [(PKContactFormatValidator *)self _formattedFieldEntry:state forFieldConfiguration:stateFieldConfiguration];

    if (v16)
    {
      [v5 setState:v16];
      v24 = 1;
    }

    else
    {
      v24 = v13 != 0;
    }

    subAdministrativeArea = [addressCopy subAdministrativeArea];
    subAdministrativeAreaFieldConfiguration = [addressFormatConfiguration subAdministrativeAreaFieldConfiguration];
    v19 = [(PKContactFormatValidator *)self _formattedFieldEntry:subAdministrativeArea forFieldConfiguration:subAdministrativeAreaFieldConfiguration];

    if (v19)
    {
      [v5 setSubAdministrativeArea:v19];
      v24 = 1;
    }

    postalCode = [addressCopy postalCode];
    postalCodeFieldConfiguration = [addressFormatConfiguration postalCodeFieldConfiguration];
    v22 = [(PKContactFormatValidator *)self _formattedFieldEntry:postalCode forFieldConfiguration:postalCodeFieldConfiguration];

    if (v22)
    {
      [v5 setPostalCode:v22];
    }

    else
    {

      v10 = addressCopy;
      if (!v24)
      {
        goto LABEL_13;
      }
    }

    v10 = [v5 copy];
  }

LABEL_13:

  return v10;
}

- (BOOL)phoneNumberIsValid:(id)valid forCountryCode:(id)code
{
  validCopy = valid;
  codeCopy = code;
  if ([(PKContactFormatConfiguration *)self->_configuration checkFormatOfPhoneNumber])
  {
    stringValue = [validCopy stringValue];
    if ([stringValue length] > 0x22)
    {
      valid = 0;
    }

    else
    {
      v9 = PNCopyBestGuessCountryCodeForNumber();
      if (v9 || (v9 = codeCopy) != 0)
      {
        valid = PNIsValidPhoneNumberForCountry();
      }

      else
      {
        v9 = PKCurrentRegion();
        valid = PNIsValidPhoneNumberForCountry();
        if (!v9)
        {
          goto LABEL_9;
        }
      }

      CFRelease(v9);
    }

LABEL_9:

    goto LABEL_10;
  }

  valid = 1;
LABEL_10:

  return valid;
}

- (BOOL)emailAddressIsValid:(id)valid
{
  validCopy = valid;
  if ([(PKContactFormatConfiguration *)self->_configuration checkFormatOfEmailAddress])
  {
    v5 = [objc_alloc(MEMORY[0x1E699B240]) initWithString:validCopy];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)contactFieldConfigurationForPostalField:(id)field forCountryCode:(id)code
{
  fieldCopy = field;
  v7 = [(PKContactFormatConfiguration *)self->_configuration contactFieldConfigurationForCountryCode:code];
  addressFormatConfiguration = [v7 addressFormatConfiguration];
  if ([fieldCopy isEqualToString:*MEMORY[0x1E695CC30]])
  {
    streetFieldConfiguration = [addressFormatConfiguration streetFieldConfiguration];
LABEL_13:
    v10 = streetFieldConfiguration;
    goto LABEL_14;
  }

  if ([fieldCopy isEqualToString:*MEMORY[0x1E695CC40]])
  {
    streetFieldConfiguration = [addressFormatConfiguration subLocalityFieldConfiguration];
    goto LABEL_13;
  }

  if ([fieldCopy isEqualToString:*MEMORY[0x1E695CC00]])
  {
    streetFieldConfiguration = [addressFormatConfiguration cityFieldConfiguration];
    goto LABEL_13;
  }

  if ([fieldCopy isEqualToString:*MEMORY[0x1E695CC38]])
  {
    streetFieldConfiguration = [addressFormatConfiguration subAdministrativeAreaFieldConfiguration];
    goto LABEL_13;
  }

  if ([fieldCopy isEqualToString:*MEMORY[0x1E695CC28]])
  {
    streetFieldConfiguration = [addressFormatConfiguration stateFieldConfiguration];
    goto LABEL_13;
  }

  if ([fieldCopy isEqualToString:*MEMORY[0x1E695CC18]])
  {
    streetFieldConfiguration = [addressFormatConfiguration postalCodeFieldConfiguration];
    goto LABEL_13;
  }

  v10 = 0;
LABEL_14:

  return v10;
}

- (id)contactFieldConfigurationForGivenNameForCountryCode:(id)code
{
  v3 = [(PKContactFormatConfiguration *)self->_configuration contactFieldConfigurationForCountryCode:code];
  nameComponentFormatConfiguration = [v3 nameComponentFormatConfiguration];
  givenNameFieldConfiguration = [nameComponentFormatConfiguration givenNameFieldConfiguration];

  return givenNameFieldConfiguration;
}

- (id)contactFieldConfigurationForFamilyNameForCountryCode:(id)code
{
  v3 = [(PKContactFormatConfiguration *)self->_configuration contactFieldConfigurationForCountryCode:code];
  nameComponentFormatConfiguration = [v3 nameComponentFormatConfiguration];
  familyNameFieldConfiguration = [nameComponentFormatConfiguration familyNameFieldConfiguration];

  return familyNameFieldConfiguration;
}

- (id)contactFieldConfigurationForPhoneticGivenNameForCountryCode:(id)code
{
  v3 = [(PKContactFormatConfiguration *)self->_configuration contactFieldConfigurationForCountryCode:code];
  nameComponentFormatConfiguration = [v3 nameComponentFormatConfiguration];
  phoneticGivenNameFieldConfiguration = [nameComponentFormatConfiguration phoneticGivenNameFieldConfiguration];

  return phoneticGivenNameFieldConfiguration;
}

- (id)contactFieldConfigurationForPhoneticFamilyNameForCountryCode:(id)code
{
  v3 = [(PKContactFormatConfiguration *)self->_configuration contactFieldConfigurationForCountryCode:code];
  nameComponentFormatConfiguration = [v3 nameComponentFormatConfiguration];
  phoneticFamilyNameFieldConfiguration = [nameComponentFormatConfiguration phoneticFamilyNameFieldConfiguration];

  return phoneticFamilyNameFieldConfiguration;
}

- (BOOL)_isFieldEntry:(id)entry validForContactFieldConfiguration:(id)configuration
{
  entryCopy = entry;
  configurationCopy = configuration;
  v8 = configurationCopy;
  if (!configurationCopy)
  {
    goto LABEL_9;
  }

  type = [configurationCopy type];
  if (type == 2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [(PKContactFormatValidator *)self _isFieldEntry:entryCopy validForPickerContactFieldConfiguration:v8];
      goto LABEL_8;
    }

LABEL_9:
    v11 = 1;
    goto LABEL_10;
  }

  if (type != 1)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v10 = [(PKContactFormatValidator *)self _isFieldEntry:entryCopy validForTextContactFieldConfiguration:v8];
LABEL_8:
  v11 = v10;
LABEL_10:

  return v11;
}

- (BOOL)_isFieldEntry:(id)entry validForTextContactFieldConfiguration:(id)configuration
{
  entryCopy = entry;
  configurationCopy = configuration;
  v7 = configurationCopy;
  if (configurationCopy)
  {
    minLength = [configurationCopy minLength];
    if (minLength)
    {
      v9 = [entryCopy length] >= minLength;
    }

    else
    {
      v9 = 1;
    }

    maxLength = [v7 maxLength];
    if (v9 && maxLength)
    {
      v9 = [entryCopy length] <= maxLength;
    }

    characterSet = [v7 characterSet];
    v12 = characterSet;
    if (v9 && characterSet)
    {
      isValidCharacterSet = [v7 isValidCharacterSet];
      if ([entryCopy length])
      {
        v14 = 0;
        do
        {
          v15 = isValidCharacterSet ^ [v12 characterIsMember:{objc_msgSend(entryCopy, "characterAtIndex:", v14)}];
          if (v15 == 1)
          {
            break;
          }

          ++v14;
        }

        while (v14 < [entryCopy length]);
        v9 = v15 ^ 1;
      }

      else
      {
        v9 = 1;
      }
    }

    validRegex = [v7 validRegex];
    v17 = validRegex;
    if (v9 && validRegex)
    {
      LOBYTE(v9) = [validRegex numberOfMatchesInString:entryCopy options:0 range:{0, objc_msgSend(entryCopy, "length")}] != 0;
    }
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (BOOL)_isFieldEntry:(id)entry validForPickerContactFieldConfiguration:(id)configuration
{
  entryCopy = entry;
  configurationCopy = configuration;
  v7 = configurationCopy;
  if (configurationCopy)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    pickerItems = [configurationCopy pickerItems];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __82__PKContactFormatValidator__isFieldEntry_validForPickerContactFieldConfiguration___block_invoke;
    v11[3] = &unk_1E79D5A60;
    v12 = entryCopy;
    v13 = &v14;
    [pickerItems enumerateObjectsUsingBlock:v11];

    v9 = *(v15 + 24);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

uint64_t __82__PKContactFormatValidator__isFieldEntry_validForPickerContactFieldConfiguration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isValueAccepted:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (id)_formattedFieldEntry:(id)entry forFieldConfiguration:(id)configuration
{
  v21 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  configurationCopy = configuration;
  v7 = configurationCopy;
  if (configurationCopy && [configurationCopy type] == 2)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    pickerItems = [v7 pickerItems];
    v9 = [pickerItems countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(pickerItems);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if ([v13 isValueAccepted:entryCopy])
          {
            submissionValue = [v13 submissionValue];
            if (![entryCopy isEqualToString:submissionValue])
            {
              goto LABEL_14;
            }
          }
        }

        v10 = [pickerItems countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    submissionValue = 0;
LABEL_14:
  }

  else
  {
    submissionValue = 0;
  }

  return submissionValue;
}

@end