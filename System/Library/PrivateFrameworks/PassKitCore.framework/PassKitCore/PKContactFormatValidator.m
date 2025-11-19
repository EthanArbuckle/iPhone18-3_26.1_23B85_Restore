@interface PKContactFormatValidator
- (BOOL)_isFieldEntry:(id)a3 validForContactFieldConfiguration:(id)a4;
- (BOOL)_isFieldEntry:(id)a3 validForPickerContactFieldConfiguration:(id)a4;
- (BOOL)_isFieldEntry:(id)a3 validForTextContactFieldConfiguration:(id)a4;
- (BOOL)emailAddressIsValid:(id)a3;
- (BOOL)hasFormatValidationConfigurationForCountryCode:(id)a3;
- (BOOL)isFamilyName:(id)a3 validFormatForCountryCode:(id)a4;
- (BOOL)isGivenName:(id)a3 validFormatForCountryCode:(id)a4;
- (BOOL)isPhoneticFamilyName:(id)a3 validFormatForCountryCode:(id)a4;
- (BOOL)isPhoneticGivenName:(id)a3 validFormatForCountryCode:(id)a4;
- (BOOL)isPostalAddressFieldEntry:(id)a3 validForPostalFieldKey:(id)a4 forCountryCode:(id)a5;
- (BOOL)phoneNumberIsValid:(id)a3 forCountryCode:(id)a4;
- (PKContactFormatValidator)initWithConfiguration:(id)a3;
- (id)_formattedFieldEntry:(id)a3 forFieldConfiguration:(id)a4;
- (id)contactFieldConfigurationForFamilyNameForCountryCode:(id)a3;
- (id)contactFieldConfigurationForGivenNameForCountryCode:(id)a3;
- (id)contactFieldConfigurationForPhoneticFamilyNameForCountryCode:(id)a3;
- (id)contactFieldConfigurationForPhoneticGivenNameForCountryCode:(id)a3;
- (id)contactFieldConfigurationForPostalField:(id)a3 forCountryCode:(id)a4;
- (id)formatPostalAddress:(id)a3;
- (unint64_t)checkNameFormat:(id)a3 forCountryCode:(id)a4;
- (unint64_t)checkPostalAddressFormat:(id)a3;
@end

@implementation PKContactFormatValidator

- (PKContactFormatValidator)initWithConfiguration:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = PKContactFormatValidator;
    v6 = [(PKContactFormatValidator *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_configuration, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)hasFormatValidationConfigurationForCountryCode:(id)a3
{
  v3 = [(PKContactFormatConfiguration *)self->_configuration contactFieldConfigurationForCountryCode:a3];
  v4 = v3 != 0;

  return v4;
}

- (unint64_t)checkNameFormat:(id)a3 forCountryCode:(id)a4
{
  v6 = a3;
  v7 = [(PKContactFormatConfiguration *)self->_configuration contactFieldConfigurationForCountryCode:a4];
  v8 = [v7 nameComponentFormatConfiguration];
  if (v8)
  {
    v9 = [v6 phoneticRepresentation];
    v10 = [v6 givenName];
    v11 = [v8 givenNameFieldConfiguration];
    v12 = [(PKContactFormatValidator *)self _isFieldEntry:v10 validForContactFieldConfiguration:v11];

    v13 = !v12;
    v14 = [v6 familyName];
    v15 = [v8 familyNameFieldConfiguration];
    v16 = [(PKContactFormatValidator *)self _isFieldEntry:v14 validForContactFieldConfiguration:v15];

    if (!v16)
    {
      v13 |= 2uLL;
    }

    v17 = [v9 givenName];
    v18 = [v8 phoneticGivenNameFieldConfiguration];
    v19 = [(PKContactFormatValidator *)self _isFieldEntry:v17 validForContactFieldConfiguration:v18];

    if (v19)
    {
      v20 = v13;
    }

    else
    {
      v20 = v13 | 4;
    }

    v21 = [v9 familyName];
    v22 = [v8 phoneticFamilyNameFieldConfiguration];
    v23 = [(PKContactFormatValidator *)self _isFieldEntry:v21 validForContactFieldConfiguration:v22];

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

- (BOOL)isGivenName:(id)a3 validFormatForCountryCode:(id)a4
{
  v6 = a3;
  v7 = [(PKContactFormatValidator *)self contactFieldConfigurationForGivenNameForCountryCode:a4];
  LOBYTE(self) = [(PKContactFormatValidator *)self _isFieldEntry:v6 validForContactFieldConfiguration:v7];

  return self;
}

- (BOOL)isFamilyName:(id)a3 validFormatForCountryCode:(id)a4
{
  v6 = a3;
  v7 = [(PKContactFormatValidator *)self contactFieldConfigurationForFamilyNameForCountryCode:a4];
  LOBYTE(self) = [(PKContactFormatValidator *)self _isFieldEntry:v6 validForContactFieldConfiguration:v7];

  return self;
}

- (BOOL)isPhoneticGivenName:(id)a3 validFormatForCountryCode:(id)a4
{
  v6 = a3;
  v7 = [(PKContactFormatValidator *)self contactFieldConfigurationForPhoneticGivenNameForCountryCode:a4];
  LOBYTE(self) = [(PKContactFormatValidator *)self _isFieldEntry:v6 validForContactFieldConfiguration:v7];

  return self;
}

- (BOOL)isPhoneticFamilyName:(id)a3 validFormatForCountryCode:(id)a4
{
  v6 = a3;
  v7 = [(PKContactFormatValidator *)self contactFieldConfigurationForPhoneticFamilyNameForCountryCode:a4];
  LOBYTE(self) = [(PKContactFormatValidator *)self _isFieldEntry:v6 validForContactFieldConfiguration:v7];

  return self;
}

- (unint64_t)checkPostalAddressFormat:(id)a3
{
  v4 = a3;
  v5 = [v4 ISOCountryCode];
  if ([v5 length])
  {
    v6 = [(PKContactFormatConfiguration *)self->_configuration contactFieldConfigurationForCountryCode:v5];
    v7 = [v6 addressFormatConfiguration];
    if (v7)
    {
      v8 = [v4 street];
      v9 = [v7 streetFieldConfiguration];
      v10 = [(PKContactFormatValidator *)self _isFieldEntry:v8 validForContactFieldConfiguration:v9];

      v11 = !v10;
      v12 = [v4 subLocality];
      v13 = [v7 subLocalityFieldConfiguration];
      v14 = [(PKContactFormatValidator *)self _isFieldEntry:v12 validForContactFieldConfiguration:v13];

      if (!v14)
      {
        v11 |= 2uLL;
      }

      v15 = [v4 city];
      v16 = [v7 cityFieldConfiguration];
      v17 = [(PKContactFormatValidator *)self _isFieldEntry:v15 validForContactFieldConfiguration:v16];

      if (!v17)
      {
        v11 |= 4uLL;
      }

      v18 = [v4 subAdministrativeArea];
      v19 = [v7 subAdministrativeAreaFieldConfiguration];
      v20 = [(PKContactFormatValidator *)self _isFieldEntry:v18 validForContactFieldConfiguration:v19];

      if (!v20)
      {
        v11 |= 8uLL;
      }

      v21 = [v4 state];
      v22 = [v7 stateFieldConfiguration];
      v23 = [(PKContactFormatValidator *)self _isFieldEntry:v21 validForContactFieldConfiguration:v22];

      if (v23)
      {
        v24 = v11;
      }

      else
      {
        v24 = v11 | 0x10;
      }

      v25 = [v4 postalCode];
      v26 = [v7 postalCodeFieldConfiguration];
      v27 = [(PKContactFormatValidator *)self _isFieldEntry:v25 validForContactFieldConfiguration:v26];

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

- (BOOL)isPostalAddressFieldEntry:(id)a3 validForPostalFieldKey:(id)a4 forCountryCode:(id)a5
{
  if (!a3 || !a4 || !a5)
  {
    return 0;
  }

  v8 = a3;
  v9 = [(PKContactFormatValidator *)self contactFieldConfigurationForPostalField:a4 forCountryCode:a5];
  LOBYTE(self) = [(PKContactFormatValidator *)self _isFieldEntry:v8 validForContactFieldConfiguration:v9];

  return self;
}

- (id)formatPostalAddress:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  configuration = self->_configuration;
  v7 = [v4 ISOCountryCode];
  v8 = [(PKContactFormatConfiguration *)configuration contactFieldConfigurationForCountryCode:v7];

  v9 = [v8 addressFormatConfiguration];
  v10 = v4;
  if (v9)
  {
    v11 = [v4 city];
    v12 = [v9 cityFieldConfiguration];
    v13 = [(PKContactFormatValidator *)self _formattedFieldEntry:v11 forFieldConfiguration:v12];

    if (v13)
    {
      [v5 setCity:v13];
    }

    v14 = [v4 state];
    v15 = [v9 stateFieldConfiguration];
    v16 = [(PKContactFormatValidator *)self _formattedFieldEntry:v14 forFieldConfiguration:v15];

    if (v16)
    {
      [v5 setState:v16];
      v24 = 1;
    }

    else
    {
      v24 = v13 != 0;
    }

    v17 = [v4 subAdministrativeArea];
    v18 = [v9 subAdministrativeAreaFieldConfiguration];
    v19 = [(PKContactFormatValidator *)self _formattedFieldEntry:v17 forFieldConfiguration:v18];

    if (v19)
    {
      [v5 setSubAdministrativeArea:v19];
      v24 = 1;
    }

    v20 = [v4 postalCode];
    v21 = [v9 postalCodeFieldConfiguration];
    v22 = [(PKContactFormatValidator *)self _formattedFieldEntry:v20 forFieldConfiguration:v21];

    if (v22)
    {
      [v5 setPostalCode:v22];
    }

    else
    {

      v10 = v4;
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

- (BOOL)phoneNumberIsValid:(id)a3 forCountryCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PKContactFormatConfiguration *)self->_configuration checkFormatOfPhoneNumber])
  {
    v8 = [v6 stringValue];
    if ([v8 length] > 0x22)
    {
      valid = 0;
    }

    else
    {
      v9 = PNCopyBestGuessCountryCodeForNumber();
      if (v9 || (v9 = v7) != 0)
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

- (BOOL)emailAddressIsValid:(id)a3
{
  v4 = a3;
  if ([(PKContactFormatConfiguration *)self->_configuration checkFormatOfEmailAddress])
  {
    v5 = [objc_alloc(MEMORY[0x1E699B240]) initWithString:v4];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)contactFieldConfigurationForPostalField:(id)a3 forCountryCode:(id)a4
{
  v6 = a3;
  v7 = [(PKContactFormatConfiguration *)self->_configuration contactFieldConfigurationForCountryCode:a4];
  v8 = [v7 addressFormatConfiguration];
  if ([v6 isEqualToString:*MEMORY[0x1E695CC30]])
  {
    v9 = [v8 streetFieldConfiguration];
LABEL_13:
    v10 = v9;
    goto LABEL_14;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E695CC40]])
  {
    v9 = [v8 subLocalityFieldConfiguration];
    goto LABEL_13;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E695CC00]])
  {
    v9 = [v8 cityFieldConfiguration];
    goto LABEL_13;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E695CC38]])
  {
    v9 = [v8 subAdministrativeAreaFieldConfiguration];
    goto LABEL_13;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E695CC28]])
  {
    v9 = [v8 stateFieldConfiguration];
    goto LABEL_13;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E695CC18]])
  {
    v9 = [v8 postalCodeFieldConfiguration];
    goto LABEL_13;
  }

  v10 = 0;
LABEL_14:

  return v10;
}

- (id)contactFieldConfigurationForGivenNameForCountryCode:(id)a3
{
  v3 = [(PKContactFormatConfiguration *)self->_configuration contactFieldConfigurationForCountryCode:a3];
  v4 = [v3 nameComponentFormatConfiguration];
  v5 = [v4 givenNameFieldConfiguration];

  return v5;
}

- (id)contactFieldConfigurationForFamilyNameForCountryCode:(id)a3
{
  v3 = [(PKContactFormatConfiguration *)self->_configuration contactFieldConfigurationForCountryCode:a3];
  v4 = [v3 nameComponentFormatConfiguration];
  v5 = [v4 familyNameFieldConfiguration];

  return v5;
}

- (id)contactFieldConfigurationForPhoneticGivenNameForCountryCode:(id)a3
{
  v3 = [(PKContactFormatConfiguration *)self->_configuration contactFieldConfigurationForCountryCode:a3];
  v4 = [v3 nameComponentFormatConfiguration];
  v5 = [v4 phoneticGivenNameFieldConfiguration];

  return v5;
}

- (id)contactFieldConfigurationForPhoneticFamilyNameForCountryCode:(id)a3
{
  v3 = [(PKContactFormatConfiguration *)self->_configuration contactFieldConfigurationForCountryCode:a3];
  v4 = [v3 nameComponentFormatConfiguration];
  v5 = [v4 phoneticFamilyNameFieldConfiguration];

  return v5;
}

- (BOOL)_isFieldEntry:(id)a3 validForContactFieldConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    goto LABEL_9;
  }

  v9 = [v7 type];
  if (v9 == 2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [(PKContactFormatValidator *)self _isFieldEntry:v6 validForPickerContactFieldConfiguration:v8];
      goto LABEL_8;
    }

LABEL_9:
    v11 = 1;
    goto LABEL_10;
  }

  if (v9 != 1)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v10 = [(PKContactFormatValidator *)self _isFieldEntry:v6 validForTextContactFieldConfiguration:v8];
LABEL_8:
  v11 = v10;
LABEL_10:

  return v11;
}

- (BOOL)_isFieldEntry:(id)a3 validForTextContactFieldConfiguration:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 minLength];
    if (v8)
    {
      v9 = [v5 length] >= v8;
    }

    else
    {
      v9 = 1;
    }

    v10 = [v7 maxLength];
    if (v9 && v10)
    {
      v9 = [v5 length] <= v10;
    }

    v11 = [v7 characterSet];
    v12 = v11;
    if (v9 && v11)
    {
      v13 = [v7 isValidCharacterSet];
      if ([v5 length])
      {
        v14 = 0;
        do
        {
          v15 = v13 ^ [v12 characterIsMember:{objc_msgSend(v5, "characterAtIndex:", v14)}];
          if (v15 == 1)
          {
            break;
          }

          ++v14;
        }

        while (v14 < [v5 length]);
        v9 = v15 ^ 1;
      }

      else
      {
        v9 = 1;
      }
    }

    v16 = [v7 validRegex];
    v17 = v16;
    if (v9 && v16)
    {
      LOBYTE(v9) = [v16 numberOfMatchesInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}] != 0;
    }
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (BOOL)_isFieldEntry:(id)a3 validForPickerContactFieldConfiguration:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v8 = [v6 pickerItems];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __82__PKContactFormatValidator__isFieldEntry_validForPickerContactFieldConfiguration___block_invoke;
    v11[3] = &unk_1E79D5A60;
    v12 = v5;
    v13 = &v14;
    [v8 enumerateObjectsUsingBlock:v11];

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

- (id)_formattedFieldEntry:(id)a3 forFieldConfiguration:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6 && [v6 type] == 2)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v7 pickerItems];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if ([v13 isValueAccepted:v5])
          {
            v14 = [v13 submissionValue];
            if (![v5 isEqualToString:v14])
            {
              goto LABEL_14;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    v14 = 0;
LABEL_14:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end