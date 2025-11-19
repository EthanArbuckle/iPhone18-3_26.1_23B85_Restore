@interface PKContact
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToContact:(id)a3;
- (NSString)contactHandle;
- (PKContact)initWithCNContact:(id)a3;
- (PKContact)initWithCoder:(id)a3;
- (PKContact)initWithDictionary:(id)a3 error:(id *)a4;
- (id)cnMutableContact;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)sanitizePostalAddressCountry;
- (void)sanitizePostalAddressCountryWithLocale:(id)a3;
@end

@implementation PKContact

- (PKContact)initWithCNContact:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = PKContact;
  v5 = [(PKContact *)&v23 init];
  if (v5)
  {
    v6 = [v4 nameComponents];
    name = v5->_name;
    v5->_name = v6;

    if ([v4 isKeyAvailable:*MEMORY[0x1E695C360]])
    {
      v8 = [v4 postalAddresses];
      v9 = [v8 firstObject];
      v10 = [v9 value];
      postalAddress = v5->_postalAddress;
      v5->_postalAddress = v10;

      v12 = [(CNPostalAddress *)v5->_postalAddress subLocality];
      supplementarySubLocality = v5->_supplementarySubLocality;
      v5->_supplementarySubLocality = v12;
    }

    if ([v4 isKeyAvailable:*MEMORY[0x1E695C208]])
    {
      v14 = [v4 emailAddresses];
      v15 = [v14 firstObject];
      v16 = [v15 value];
      emailAddress = v5->_emailAddress;
      v5->_emailAddress = v16;
    }

    if ([v4 isKeyAvailable:*MEMORY[0x1E695C330]])
    {
      v18 = [v4 phoneNumbers];
      v19 = [v18 firstObject];
      v20 = [v19 value];
      phoneNumber = v5->_phoneNumber;
      v5->_phoneNumber = v20;
    }
  }

  return v5;
}

- (PKContact)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PKContact;
  v5 = [(PKContact *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"emailAddress"];
    emailAddress = v5->_emailAddress;
    v5->_emailAddress = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"postalAddress"];
    postalAddress = v5->_postalAddress;
    v5->_postalAddress = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supplementarySublocality"];
    supplementarySubLocality = v5->_supplementarySubLocality;
    v5->_supplementarySubLocality = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_emailAddress forKey:@"emailAddress"];
  [v5 encodeObject:self->_phoneNumber forKey:@"phoneNumber"];
  [v5 encodeObject:self->_postalAddress forKey:@"postalAddress"];
  [v5 encodeObject:self->_supplementarySubLocality forKey:@"supplementarySublocality"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKContact *)self isEqualToContact:v5];
  }

  return v6;
}

- (BOOL)isEqualToContact:(id)a3
{
  v4 = a3;
  name = self->_name;
  v6 = v4[1];
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
  v10 = v4[2];
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

  v11 = v4[4];
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
  v17 = v4[3];
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
  v21 = v4[5];
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
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_name];
  [v3 safelyAddObject:self->_emailAddress];
  [v3 safelyAddObject:self->_phoneNumber];
  [v3 safelyAddObject:self->_postalAddress];
  [v3 safelyAddObject:self->_supplementarySubLocality];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKContact allocWithZone:](PKContact init];
  v6 = [(NSPersonNameComponents *)self->_name copyWithZone:a3];
  name = v5->_name;
  v5->_name = v6;

  v8 = [(NSString *)self->_emailAddress copyWithZone:a3];
  emailAddress = v5->_emailAddress;
  v5->_emailAddress = v8;

  v10 = [(NSString *)self->_supplementarySubLocality copyWithZone:a3];
  supplementarySubLocality = v5->_supplementarySubLocality;
  v5->_supplementarySubLocality = v10;

  v12 = objc_opt_respondsToSelector();
  phoneNumber = self->_phoneNumber;
  if (v12)
  {
    v14 = [(CNPhoneNumber *)phoneNumber copyWithZone:a3];
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
    v18 = [(CNPostalAddress *)postalAddress copyWithZone:a3];
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
    v12 = [(NSPersonNameComponents *)name givenName];
    [v3 setGivenName:v12];

    v13 = [(NSPersonNameComponents *)self->_name familyName];
    [v3 setFamilyName:v13];

    v14 = [(NSPersonNameComponents *)self->_name phoneticRepresentation];

    if (v14)
    {
      v15 = [(NSPersonNameComponents *)self->_name phoneticRepresentation];
      v16 = [v15 givenName];
      [v3 setPhoneticGivenName:v16];

      v17 = [(NSPersonNameComponents *)self->_name phoneticRepresentation];
      v18 = [v17 familyName];
      [v3 setPhoneticFamilyName:v18];
    }
  }

  return v3;
}

- (NSString)contactHandle
{
  emailAddress = self->_emailAddress;
  if (emailAddress)
  {
    v3 = emailAddress;
  }

  else
  {
    v3 = [(CNPhoneNumber *)self->_phoneNumber stringValue];
  }

  return v3;
}

- (void)sanitizePostalAddressCountry
{
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  [(PKContact *)self sanitizePostalAddressCountryWithLocale:v3];
}

- (void)sanitizePostalAddressCountryWithLocale:(id)a3
{
  v4 = a3;
  postalAddress = self->_postalAddress;
  if (postalAddress)
  {
    v6 = [(CNPostalAddress *)postalAddress ISOCountryCode];
    v7 = [v6 uppercaseString];

    v8 = [v7 pk_stringIfNotEmpty];

    if (v8 && ([MEMORY[0x1E695CF68] supportedCountries], v9 = objc_claimAutoreleasedReturnValue(), v28[0] = MEMORY[0x1E69E9820], v28[1] = 3221225472, v28[2] = __52__PKContact_sanitizePostalAddressCountryWithLocale___block_invoke, v28[3] = &unk_1E79E1448, v10 = v7, v29 = v10, objc_msgSend(v9, "pk_firstObjectPassingTest:", v28), v11 = objc_claimAutoreleasedReturnValue(), v29, v9, v11))
    {
      v12 = [(CNPostalAddress *)self->_postalAddress country];
      v13 = [v12 pk_stringIfNotEmpty];

      if (v13)
      {
LABEL_11:

        goto LABEL_12;
      }

      v14 = [(CNPostalAddress *)self->_postalAddress mutableCopy];
      v15 = MEMORY[0x1E695CF68];
      v16 = [v10 lowercaseString];
      v17 = [v15 localizedCountryNameForISOCountryCode:v16];
      [v14 setCountry:v17];

      v18 = [v14 copy];
      v19 = self->_postalAddress;
      self->_postalAddress = v18;
    }

    else
    {
      v14 = [(CNPostalAddress *)self->_postalAddress mutableCopy];
      v20 = [v4 regionCode];
      v19 = [v20 uppercaseString];

      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = @"US";
      }

      [v14 setISOCountryCode:v21];
      v22 = MEMORY[0x1E695CF68];
      v23 = [v14 ISOCountryCode];
      v24 = [v23 lowercaseString];
      v25 = [v22 localizedCountryNameForISOCountryCode:v24];
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

- (PKContact)initWithDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
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
    [v6 enumerateKeysAndObjectsUsingBlock:v56];
    if (v59[3])
    {
      v8 = [v6 objectForKeyedSubscript:@"familyName"];
      if (v8)
      {
      }

      else
      {
        v9 = [v6 objectForKeyedSubscript:@"givenName"];

        if (!v9)
        {
LABEL_15:
          v19 = [v6 objectForKeyedSubscript:@"emailAddress"];
          emailAddress = v7->_emailAddress;
          v7->_emailAddress = v19;

          v21 = [v6 objectForKeyedSubscript:@"phoneNumber"];

          if (v21)
          {
            v22 = objc_alloc(MEMORY[0x1E695CF50]);
            v23 = [v6 objectForKeyedSubscript:@"phoneNumber"];
            v24 = [v22 initWithStringValue:v23];
            phoneNumber = v7->_phoneNumber;
            v7->_phoneNumber = v24;
          }

          v26 = [v6 objectForKeyedSubscript:@"addressLines"];
          v27 = [v26 count];

          if (v27)
          {
            v28 = [v6 objectForKeyedSubscript:@"addressLines"];
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
            v32 = [v6 objectForKeyedSubscript:@"locality"];

            if (v32)
            {
              v33 = [v6 objectForKeyedSubscript:@"locality"];
              [(CNPostalAddress *)v29 setCity:v33];
            }

            v34 = [v6 objectForKeyedSubscript:@"postalCode"];

            if (v34)
            {
              v35 = [v6 objectForKeyedSubscript:@"postalCode"];
              [(CNPostalAddress *)v29 setPostalCode:v35];
            }

            v36 = [v6 objectForKeyedSubscript:@"administrativeArea"];

            if (v36)
            {
              v37 = [v6 objectForKeyedSubscript:@"administrativeArea"];
              [(CNPostalAddress *)v29 setState:v37];
            }

            v38 = [v6 objectForKeyedSubscript:@"subAdministrativeArea"];

            if (v38)
            {
              v39 = [v6 objectForKeyedSubscript:@"subAdministrativeArea"];
              [(CNPostalAddress *)v29 setSubAdministrativeArea:v39];
            }

            v40 = [v6 objectForKeyedSubscript:@"country"];

            if (v40)
            {
              v41 = [v6 objectForKeyedSubscript:@"country"];
              [(CNPostalAddress *)v29 setCountry:v41];
            }

            v42 = [v6 objectForKeyedSubscript:@"countryCode"];

            if (v42)
            {
              v43 = [v6 objectForKeyedSubscript:@"countryCode"];
              [(CNPostalAddress *)v29 setISOCountryCode:v43];
            }

            v44 = [v6 objectForKeyedSubscript:@"subLocality"];

            if (v44)
            {
              v45 = [v6 objectForKeyedSubscript:@"subLocality"];
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
      v11 = [v6 objectForKeyedSubscript:@"familyName"];
      [(NSPersonNameComponents *)v10 setFamilyName:v11];

      v12 = [v6 objectForKeyedSubscript:@"givenName"];
      [(NSPersonNameComponents *)v10 setGivenName:v12];

      v13 = [v6 objectForKeyedSubscript:@"phoneticGivenName"];
      if (v13)
      {
      }

      else
      {
        v14 = [v6 objectForKeyedSubscript:@"phoneticFamilyName"];

        if (!v14)
        {
LABEL_14:
          name = v7->_name;
          v7->_name = v10;

          goto LABEL_15;
        }
      }

      v15 = objc_alloc_init(MEMORY[0x1E696ADF0]);
      v16 = [v6 objectForKeyedSubscript:@"phoneticFamilyName"];
      [v15 setFamilyName:v16];

      v17 = [v6 objectForKeyedSubscript:@"phoneticGivenName"];
      [v15 setGivenName:v17];

      [(NSPersonNameComponents *)v7->_name setPhoneticRepresentation:v15];
      goto LABEL_14;
    }
  }

  else
  {
    *(v59 + 24) = 0;
  }

  if (a4)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:0];
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
    v5 = [(CNPhoneNumber *)phoneNumber stringValue];
    [v3 setObject:v5 forKeyedSubscript:@"phoneNumber"];
  }

  emailAddress = self->_emailAddress;
  if (emailAddress)
  {
    [v3 setObject:emailAddress forKeyedSubscript:@"emailAddress"];
  }

  v7 = [(NSPersonNameComponents *)self->_name givenName];

  if (v7)
  {
    v8 = [(NSPersonNameComponents *)self->_name givenName];
    [v3 setObject:v8 forKeyedSubscript:@"givenName"];
  }

  v9 = [(NSPersonNameComponents *)self->_name familyName];

  if (v9)
  {
    v10 = [(NSPersonNameComponents *)self->_name familyName];
    [v3 setObject:v10 forKeyedSubscript:@"familyName"];
  }

  v11 = [(NSPersonNameComponents *)self->_name phoneticRepresentation];
  v12 = [v11 givenName];

  if (v12)
  {
    v13 = [(NSPersonNameComponents *)self->_name phoneticRepresentation];
    v14 = [v13 givenName];
    [v3 setObject:v14 forKeyedSubscript:@"phoneticGivenName"];
  }

  v15 = [(NSPersonNameComponents *)self->_name phoneticRepresentation];
  v16 = [v15 familyName];

  if (v16)
  {
    v17 = [(NSPersonNameComponents *)self->_name phoneticRepresentation];
    v18 = [v17 familyName];
    [v3 setObject:v18 forKeyedSubscript:@"phoneticFamilyName"];
  }

  v19 = self->_postalAddress;
  v20 = [(CNPostalAddress *)v19 street];

  if (v20)
  {
    v21 = [(CNPostalAddress *)v19 street];
    v22 = [v21 componentsSeparatedByString:@"\n"];
    [v3 setObject:v22 forKeyedSubscript:@"addressLines"];
  }

  v23 = [(CNPostalAddress *)v19 city];

  if (v23)
  {
    v24 = [(CNPostalAddress *)v19 city];
    [v3 setObject:v24 forKeyedSubscript:@"locality"];
  }

  v25 = [(CNPostalAddress *)v19 postalCode];

  if (v25)
  {
    v26 = [(CNPostalAddress *)v19 postalCode];
    [v3 setObject:v26 forKeyedSubscript:@"postalCode"];
  }

  v27 = [(CNPostalAddress *)v19 subLocality];

  if (v27)
  {
    v28 = [(CNPostalAddress *)v19 subLocality];
    [v3 setObject:v28 forKeyedSubscript:@"subLocality"];
  }

  v29 = [(CNPostalAddress *)v19 state];

  if (v29)
  {
    v30 = [(CNPostalAddress *)v19 state];
    [v3 setObject:v30 forKeyedSubscript:@"administrativeArea"];
  }

  v31 = [(CNPostalAddress *)v19 country];

  if (v31)
  {
    v32 = [(CNPostalAddress *)v19 country];
    [v3 setObject:v32 forKeyedSubscript:@"country"];
  }

  v33 = [(CNPostalAddress *)v19 ISOCountryCode];

  if (v33)
  {
    v34 = [(CNPostalAddress *)v19 ISOCountryCode];
    [v3 setObject:v34 forKeyedSubscript:@"countryCode"];
  }

  v35 = [v3 copy];

  return v35;
}

@end