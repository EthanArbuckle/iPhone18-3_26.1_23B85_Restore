@interface PKContact
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContact:(id)contact;
- (NSString)contactHandle;
- (PKContact)initWithCNContact:(id)contact;
- (PKContact)initWithCoder:(id)coder;
- (PKContact)initWithDictionary:(id)dictionary error:(id *)error;
- (id)cnMutableContact;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)sanitizePostalAddressCountry;
- (void)sanitizePostalAddressCountryWithLocale:(id)locale;
@end

@implementation PKContact

- (PKContact)initWithCNContact:(id)contact
{
  contactCopy = contact;
  v23.receiver = self;
  v23.super_class = PKContact;
  v5 = [(PKContact *)&v23 init];
  if (v5)
  {
    nameComponents = [contactCopy nameComponents];
    name = v5->_name;
    v5->_name = nameComponents;

    if ([contactCopy isKeyAvailable:*MEMORY[0x1E695C360]])
    {
      postalAddresses = [contactCopy postalAddresses];
      firstObject = [postalAddresses firstObject];
      value = [firstObject value];
      postalAddress = v5->_postalAddress;
      v5->_postalAddress = value;

      subLocality = [(CNPostalAddress *)v5->_postalAddress subLocality];
      supplementarySubLocality = v5->_supplementarySubLocality;
      v5->_supplementarySubLocality = subLocality;
    }

    if ([contactCopy isKeyAvailable:*MEMORY[0x1E695C208]])
    {
      emailAddresses = [contactCopy emailAddresses];
      firstObject2 = [emailAddresses firstObject];
      value2 = [firstObject2 value];
      emailAddress = v5->_emailAddress;
      v5->_emailAddress = value2;
    }

    if ([contactCopy isKeyAvailable:*MEMORY[0x1E695C330]])
    {
      phoneNumbers = [contactCopy phoneNumbers];
      firstObject3 = [phoneNumbers firstObject];
      value3 = [firstObject3 value];
      phoneNumber = v5->_phoneNumber;
      v5->_phoneNumber = value3;
    }
  }

  return v5;
}

- (PKContact)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = PKContact;
  v5 = [(PKContact *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"emailAddress"];
    emailAddress = v5->_emailAddress;
    v5->_emailAddress = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"postalAddress"];
    postalAddress = v5->_postalAddress;
    v5->_postalAddress = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supplementarySublocality"];
    supplementarySubLocality = v5->_supplementarySubLocality;
    v5->_supplementarySubLocality = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_emailAddress forKey:@"emailAddress"];
  [coderCopy encodeObject:self->_phoneNumber forKey:@"phoneNumber"];
  [coderCopy encodeObject:self->_postalAddress forKey:@"postalAddress"];
  [coderCopy encodeObject:self->_supplementarySubLocality forKey:@"supplementarySublocality"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKContact *)self isEqualToContact:v5];
  }

  return v6;
}

- (BOOL)isEqualToContact:(id)contact
{
  contactCopy = contact;
  name = self->_name;
  v6 = contactCopy[1];
  if (name)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (name != v6)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v8 = [(NSPersonNameComponents *)name isEqual:?];
    if ((v8 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  postalAddress = self->_postalAddress;
  v10 = contactCopy[2];
  if (postalAddress && v10)
  {
    if (([(CNPostalAddress *)postalAddress isEqual:?]& 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (postalAddress != v10)
  {
    goto LABEL_26;
  }

  v11 = contactCopy[4];
  v12 = self->_emailAddress;
  v13 = v11;
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    if (!v12 || !v13)
    {

      goto LABEL_26;
    }

    v15 = [(NSString *)v12 isEqualToString:v13];

    if (!v15)
    {
      goto LABEL_26;
    }
  }

  phoneNumber = self->_phoneNumber;
  v17 = contactCopy[3];
  if (phoneNumber && v17)
  {
    if (([(CNPhoneNumber *)phoneNumber isEqual:?]& 1) != 0)
    {
      goto LABEL_28;
    }

LABEL_26:
    v18 = 0;
    goto LABEL_27;
  }

  if (phoneNumber != v17)
  {
    goto LABEL_26;
  }

LABEL_28:
  supplementarySubLocality = self->_supplementarySubLocality;
  v21 = contactCopy[5];
  if (supplementarySubLocality && v21)
  {
    v18 = [(NSString *)supplementarySubLocality isEqual:?];
  }

  else
  {
    v18 = supplementarySubLocality == v21;
  }

LABEL_27:

  return v18;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_name];
  [array safelyAddObject:self->_emailAddress];
  [array safelyAddObject:self->_phoneNumber];
  [array safelyAddObject:self->_postalAddress];
  [array safelyAddObject:self->_supplementarySubLocality];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKContact allocWithZone:](PKContact init];
  v6 = [(NSPersonNameComponents *)self->_name copyWithZone:zone];
  name = v5->_name;
  v5->_name = v6;

  v8 = [(NSString *)self->_emailAddress copyWithZone:zone];
  emailAddress = v5->_emailAddress;
  v5->_emailAddress = v8;

  v10 = [(NSString *)self->_supplementarySubLocality copyWithZone:zone];
  supplementarySubLocality = v5->_supplementarySubLocality;
  v5->_supplementarySubLocality = v10;

  v12 = objc_opt_respondsToSelector();
  phoneNumber = self->_phoneNumber;
  if (v12)
  {
    v14 = [(CNPhoneNumber *)phoneNumber copyWithZone:zone];
  }

  else
  {
    v14 = phoneNumber;
  }

  v15 = v5->_phoneNumber;
  v5->_phoneNumber = v14;

  v16 = objc_opt_respondsToSelector();
  postalAddress = self->_postalAddress;
  if (v16)
  {
    v18 = [(CNPostalAddress *)postalAddress copyWithZone:zone];
  }

  else
  {
    v18 = postalAddress;
  }

  v19 = v5->_postalAddress;
  v5->_postalAddress = v18;

  return v5;
}

- (id)cnMutableContact
{
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695CF18]);
  v4 = MEMORY[0x1E695CB60];
  if (self->_postalAddress)
  {
    v5 = [objc_alloc(MEMORY[0x1E695CEE0]) initWithLabel:*MEMORY[0x1E695CB60] value:self->_postalAddress];
    v22[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    [v3 setPostalAddresses:v6];
  }

  if (self->_emailAddress)
  {
    v7 = [objc_alloc(MEMORY[0x1E695CEE0]) initWithLabel:*v4 value:self->_emailAddress];
    v21 = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    [v3 setEmailAddresses:v8];
  }

  if (self->_phoneNumber)
  {
    v9 = [objc_alloc(MEMORY[0x1E695CEE0]) initWithLabel:*v4 value:self->_phoneNumber];
    v20 = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    [v3 setPhoneNumbers:v10];
  }

  name = self->_name;
  if (name)
  {
    givenName = [(NSPersonNameComponents *)name givenName];
    [v3 setGivenName:givenName];

    familyName = [(NSPersonNameComponents *)self->_name familyName];
    [v3 setFamilyName:familyName];

    phoneticRepresentation = [(NSPersonNameComponents *)self->_name phoneticRepresentation];

    if (phoneticRepresentation)
    {
      phoneticRepresentation2 = [(NSPersonNameComponents *)self->_name phoneticRepresentation];
      givenName2 = [phoneticRepresentation2 givenName];
      [v3 setPhoneticGivenName:givenName2];

      phoneticRepresentation3 = [(NSPersonNameComponents *)self->_name phoneticRepresentation];
      familyName2 = [phoneticRepresentation3 familyName];
      [v3 setPhoneticFamilyName:familyName2];
    }
  }

  return v3;
}

- (NSString)contactHandle
{
  emailAddress = self->_emailAddress;
  if (emailAddress)
  {
    stringValue = emailAddress;
  }

  else
  {
    stringValue = [(CNPhoneNumber *)self->_phoneNumber stringValue];
  }

  return stringValue;
}

- (void)sanitizePostalAddressCountry
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  [(PKContact *)self sanitizePostalAddressCountryWithLocale:currentLocale];
}

- (void)sanitizePostalAddressCountryWithLocale:(id)locale
{
  localeCopy = locale;
  postalAddress = self->_postalAddress;
  if (postalAddress)
  {
    iSOCountryCode = [(CNPostalAddress *)postalAddress ISOCountryCode];
    uppercaseString = [iSOCountryCode uppercaseString];

    pk_stringIfNotEmpty = [uppercaseString pk_stringIfNotEmpty];

    if (pk_stringIfNotEmpty && ([MEMORY[0x1E695CF68] supportedCountries], v9 = objc_claimAutoreleasedReturnValue(), v28[0] = MEMORY[0x1E69E9820], v28[1] = 3221225472, v28[2] = __52__PKContact_sanitizePostalAddressCountryWithLocale___block_invoke, v28[3] = &unk_1E79E1448, v10 = uppercaseString, v29 = v10, objc_msgSend(v9, "pk_firstObjectPassingTest:", v28), v11 = objc_claimAutoreleasedReturnValue(), v29, v9, v11))
    {
      country = [(CNPostalAddress *)self->_postalAddress country];
      pk_stringIfNotEmpty2 = [country pk_stringIfNotEmpty];

      if (pk_stringIfNotEmpty2)
      {
LABEL_11:

        goto LABEL_12;
      }

      v14 = [(CNPostalAddress *)self->_postalAddress mutableCopy];
      v15 = MEMORY[0x1E695CF68];
      lowercaseString = [v10 lowercaseString];
      v17 = [v15 localizedCountryNameForISOCountryCode:lowercaseString];
      [v14 setCountry:v17];

      v18 = [v14 copy];
      uppercaseString2 = self->_postalAddress;
      self->_postalAddress = v18;
    }

    else
    {
      v14 = [(CNPostalAddress *)self->_postalAddress mutableCopy];
      regionCode = [localeCopy regionCode];
      uppercaseString2 = [regionCode uppercaseString];

      if (uppercaseString2)
      {
        v21 = uppercaseString2;
      }

      else
      {
        v21 = @"US";
      }

      [v14 setISOCountryCode:v21];
      v22 = MEMORY[0x1E695CF68];
      iSOCountryCode2 = [v14 ISOCountryCode];
      lowercaseString2 = [iSOCountryCode2 lowercaseString];
      v25 = [v22 localizedCountryNameForISOCountryCode:lowercaseString2];
      [v14 setCountry:v25];

      v26 = [v14 copy];
      v27 = self->_postalAddress;
      self->_postalAddress = v26;

      v11 = 0;
    }

    goto LABEL_11;
  }

LABEL_12:
}

uint64_t __52__PKContact_sanitizePostalAddressCountryWithLocale___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 isoCountryCode];
  v4 = [v3 uppercaseString];

  v5 = [v4 isEqualToString:*(a1 + 32)];
  return v5;
}

- (PKContact)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 1;
  v57.receiver = self;
  v57.super_class = PKContact;
  v7 = [(PKContact *)&v57 init];
  if (!v7)
  {
    goto LABEL_33;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __38__PKContact_initWithDictionary_error___block_invoke;
    v56[3] = &unk_1E79E14E0;
    v56[4] = &v58;
    [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v56];
    if (v59[3])
    {
      v8 = [dictionaryCopy objectForKeyedSubscript:@"familyName"];
      if (v8)
      {
      }

      else
      {
        v9 = [dictionaryCopy objectForKeyedSubscript:@"givenName"];

        if (!v9)
        {
LABEL_15:
          v19 = [dictionaryCopy objectForKeyedSubscript:@"emailAddress"];
          emailAddress = v7->_emailAddress;
          v7->_emailAddress = v19;

          v21 = [dictionaryCopy objectForKeyedSubscript:@"phoneNumber"];

          if (v21)
          {
            v22 = objc_alloc(MEMORY[0x1E695CF50]);
            v23 = [dictionaryCopy objectForKeyedSubscript:@"phoneNumber"];
            v24 = [v22 initWithStringValue:v23];
            phoneNumber = v7->_phoneNumber;
            v7->_phoneNumber = v24;
          }

          v26 = [dictionaryCopy objectForKeyedSubscript:@"addressLines"];
          v27 = [v26 count];

          if (v27)
          {
            v28 = [dictionaryCopy objectForKeyedSubscript:@"addressLines"];
            v29 = objc_alloc_init(MEMORY[0x1E695CF30]);
            v30 = objc_alloc_init(MEMORY[0x1E696AD60]);
            v51 = MEMORY[0x1E69E9820];
            v52 = 3221225472;
            v53 = __38__PKContact_initWithDictionary_error___block_invoke_3;
            v54 = &unk_1E79CC100;
            v31 = v30;
            v55 = v31;
            [v28 enumerateObjectsUsingBlock:&v51];
            [(CNPostalAddress *)v29 setStreet:v31, v51, v52, v53, v54];
            v32 = [dictionaryCopy objectForKeyedSubscript:@"locality"];

            if (v32)
            {
              v33 = [dictionaryCopy objectForKeyedSubscript:@"locality"];
              [(CNPostalAddress *)v29 setCity:v33];
            }

            v34 = [dictionaryCopy objectForKeyedSubscript:@"postalCode"];

            if (v34)
            {
              v35 = [dictionaryCopy objectForKeyedSubscript:@"postalCode"];
              [(CNPostalAddress *)v29 setPostalCode:v35];
            }

            v36 = [dictionaryCopy objectForKeyedSubscript:@"administrativeArea"];

            if (v36)
            {
              v37 = [dictionaryCopy objectForKeyedSubscript:@"administrativeArea"];
              [(CNPostalAddress *)v29 setState:v37];
            }

            v38 = [dictionaryCopy objectForKeyedSubscript:@"subAdministrativeArea"];

            if (v38)
            {
              v39 = [dictionaryCopy objectForKeyedSubscript:@"subAdministrativeArea"];
              [(CNPostalAddress *)v29 setSubAdministrativeArea:v39];
            }

            v40 = [dictionaryCopy objectForKeyedSubscript:@"country"];

            if (v40)
            {
              v41 = [dictionaryCopy objectForKeyedSubscript:@"country"];
              [(CNPostalAddress *)v29 setCountry:v41];
            }

            v42 = [dictionaryCopy objectForKeyedSubscript:@"countryCode"];

            if (v42)
            {
              v43 = [dictionaryCopy objectForKeyedSubscript:@"countryCode"];
              [(CNPostalAddress *)v29 setISOCountryCode:v43];
            }

            v44 = [dictionaryCopy objectForKeyedSubscript:@"subLocality"];

            if (v44)
            {
              v45 = [dictionaryCopy objectForKeyedSubscript:@"subLocality"];
              [(CNPostalAddress *)v29 setSubLocality:v45];
            }

            postalAddress = v7->_postalAddress;
            v7->_postalAddress = v29;
            v47 = v29;
          }

          goto LABEL_33;
        }
      }

      v10 = objc_alloc_init(MEMORY[0x1E696ADF0]);
      v11 = [dictionaryCopy objectForKeyedSubscript:@"familyName"];
      [(NSPersonNameComponents *)v10 setFamilyName:v11];

      v12 = [dictionaryCopy objectForKeyedSubscript:@"givenName"];
      [(NSPersonNameComponents *)v10 setGivenName:v12];

      v13 = [dictionaryCopy objectForKeyedSubscript:@"phoneticGivenName"];
      if (v13)
      {
      }

      else
      {
        v14 = [dictionaryCopy objectForKeyedSubscript:@"phoneticFamilyName"];

        if (!v14)
        {
LABEL_14:
          name = v7->_name;
          v7->_name = v10;

          goto LABEL_15;
        }
      }

      v15 = objc_alloc_init(MEMORY[0x1E696ADF0]);
      v16 = [dictionaryCopy objectForKeyedSubscript:@"phoneticFamilyName"];
      [v15 setFamilyName:v16];

      v17 = [dictionaryCopy objectForKeyedSubscript:@"phoneticGivenName"];
      [v15 setGivenName:v17];

      [(NSPersonNameComponents *)v7->_name setPhoneticRepresentation:v15];
      goto LABEL_14;
    }
  }

  else
  {
    *(v59 + 24) = 0;
  }

  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:0];
  }

LABEL_33:
  if (*(v59 + 24))
  {
    v48 = v7;
  }

  else
  {
    v48 = 0;
  }

  v49 = v48;
  _Block_object_dispose(&v58, 8);

  return v49;
}

void __38__PKContact_initWithDictionary_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (![a2 isEqualToString:@"addressLines"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }

LABEL_5:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__PKContact_initWithDictionary_error___block_invoke_2;
  v6[3] = &unk_1E79C8810;
  v6[4] = *(a1 + 32);
  [v5 enumerateObjectsUsingBlock:v6];
LABEL_6:
}

void __38__PKContact_initWithDictionary_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void __38__PKContact_initWithDictionary_error___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) appendString:@"\n"];
  }

  [*(a1 + 32) appendString:v5];
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  phoneNumber = self->_phoneNumber;
  if (phoneNumber)
  {
    stringValue = [(CNPhoneNumber *)phoneNumber stringValue];
    [v3 setObject:stringValue forKeyedSubscript:@"phoneNumber"];
  }

  emailAddress = self->_emailAddress;
  if (emailAddress)
  {
    [v3 setObject:emailAddress forKeyedSubscript:@"emailAddress"];
  }

  givenName = [(NSPersonNameComponents *)self->_name givenName];

  if (givenName)
  {
    givenName2 = [(NSPersonNameComponents *)self->_name givenName];
    [v3 setObject:givenName2 forKeyedSubscript:@"givenName"];
  }

  familyName = [(NSPersonNameComponents *)self->_name familyName];

  if (familyName)
  {
    familyName2 = [(NSPersonNameComponents *)self->_name familyName];
    [v3 setObject:familyName2 forKeyedSubscript:@"familyName"];
  }

  phoneticRepresentation = [(NSPersonNameComponents *)self->_name phoneticRepresentation];
  givenName3 = [phoneticRepresentation givenName];

  if (givenName3)
  {
    phoneticRepresentation2 = [(NSPersonNameComponents *)self->_name phoneticRepresentation];
    givenName4 = [phoneticRepresentation2 givenName];
    [v3 setObject:givenName4 forKeyedSubscript:@"phoneticGivenName"];
  }

  phoneticRepresentation3 = [(NSPersonNameComponents *)self->_name phoneticRepresentation];
  familyName3 = [phoneticRepresentation3 familyName];

  if (familyName3)
  {
    phoneticRepresentation4 = [(NSPersonNameComponents *)self->_name phoneticRepresentation];
    familyName4 = [phoneticRepresentation4 familyName];
    [v3 setObject:familyName4 forKeyedSubscript:@"phoneticFamilyName"];
  }

  v19 = self->_postalAddress;
  street = [(CNPostalAddress *)v19 street];

  if (street)
  {
    street2 = [(CNPostalAddress *)v19 street];
    v22 = [street2 componentsSeparatedByString:@"\n"];
    [v3 setObject:v22 forKeyedSubscript:@"addressLines"];
  }

  city = [(CNPostalAddress *)v19 city];

  if (city)
  {
    city2 = [(CNPostalAddress *)v19 city];
    [v3 setObject:city2 forKeyedSubscript:@"locality"];
  }

  postalCode = [(CNPostalAddress *)v19 postalCode];

  if (postalCode)
  {
    postalCode2 = [(CNPostalAddress *)v19 postalCode];
    [v3 setObject:postalCode2 forKeyedSubscript:@"postalCode"];
  }

  subLocality = [(CNPostalAddress *)v19 subLocality];

  if (subLocality)
  {
    subLocality2 = [(CNPostalAddress *)v19 subLocality];
    [v3 setObject:subLocality2 forKeyedSubscript:@"subLocality"];
  }

  state = [(CNPostalAddress *)v19 state];

  if (state)
  {
    state2 = [(CNPostalAddress *)v19 state];
    [v3 setObject:state2 forKeyedSubscript:@"administrativeArea"];
  }

  country = [(CNPostalAddress *)v19 country];

  if (country)
  {
    country2 = [(CNPostalAddress *)v19 country];
    [v3 setObject:country2 forKeyedSubscript:@"country"];
  }

  iSOCountryCode = [(CNPostalAddress *)v19 ISOCountryCode];

  if (iSOCountryCode)
  {
    iSOCountryCode2 = [(CNPostalAddress *)v19 ISOCountryCode];
    [v3 setObject:iSOCountryCode2 forKeyedSubscript:@"countryCode"];
  }

  v35 = [v3 copy];

  return v35;
}

@end