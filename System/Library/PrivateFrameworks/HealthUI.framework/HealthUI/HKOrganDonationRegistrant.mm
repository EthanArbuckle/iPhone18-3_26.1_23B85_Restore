@interface HKOrganDonationRegistrant
+ (BOOL)_isNumericStringValid:(id)a3 withLength:(int64_t)a4;
+ (HKOrganDonationRegistrant)organDonationRegistrantWithDemographicsInformation:(id)a3;
+ (HKOrganDonationRegistrant)organDonationRegistrantWithJSONDictionary:(id)a3;
+ (id)_importNumberFormatter;
+ (id)convertLocalizedNumericStringToLatin:(id)a3 withNumberFormatter:(id)a4;
+ (id)exportDateFormatter;
+ (id)ssnNumberFormatter;
+ (id)zipcodeNumberFormatter;
+ (void)_loadStateInformationIfNeeded;
- (BOOL)isFieldValid:(int64_t)a3;
- (BOOL)isRegistrantValid;
- (HKOrganDonationRegistrant)init;
- (HKOrganDonationRegistrant)initWithCoder:(id)a3;
- (HKOrganDonationRegistrantDelegate)delegate;
- (NSNumber)age;
- (id)_createDateOfBirthEntryItem;
- (id)_stateChoiceDisplayNames;
- (id)_stateChoiceValues;
- (id)_todayBirthdayDateComponents;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataEntryItemForRegistrantField:(int64_t)a3;
- (id)dataEntryItemsValidOnly:(BOOL)a3;
- (id)jsonDictionaryRepresentation;
- (void)_addDataEntryItemIntoArray:(id)a3 validOnly:(BOOL)a4 forField:(int64_t)a5;
- (void)dataEntryItemDidUpdateValue:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKOrganDonationRegistrant

+ (HKOrganDonationRegistrant)organDonationRegistrantWithJSONDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(HKOrganDonationRegistrant);
  v5 = [v3 objectForKeyedSubscript:@"firstname"];
  [(HKOrganDonationRegistrant *)v4 setFirstname:v5];

  v6 = [v3 objectForKeyedSubscript:@"middlename"];
  [(HKOrganDonationRegistrant *)v4 setMiddlename:v6];

  v7 = [v3 objectForKeyedSubscript:@"lastname"];
  [(HKOrganDonationRegistrant *)v4 setLastname:v7];

  v8 = [v3 objectForKeyedSubscript:@"dob"];
  [(HKOrganDonationRegistrant *)v4 setDob:v8];

  v9 = [v3 objectForKeyedSubscript:@"gender"];
  [(HKOrganDonationRegistrant *)v4 setSex:v9];

  v10 = [v3 objectForKeyedSubscript:@"email"];
  [(HKOrganDonationRegistrant *)v4 setEmail:v10];

  v11 = [v3 objectForKeyedSubscript:@"address1"];
  [(HKOrganDonationRegistrant *)v4 setAddress1:v11];

  v12 = [v3 objectForKeyedSubscript:@"address2"];
  [(HKOrganDonationRegistrant *)v4 setAddress2:v12];

  v13 = [v3 objectForKeyedSubscript:@"city"];
  [(HKOrganDonationRegistrant *)v4 setCity:v13];

  v14 = [v3 objectForKeyedSubscript:@"state"];
  [(HKOrganDonationRegistrant *)v4 setState:v14];

  v15 = [v3 objectForKeyedSubscript:@"zip"];
  [(HKOrganDonationRegistrant *)v4 setZip:v15];

  v16 = [v3 objectForKeyedSubscript:@"last4SSN"];

  [(HKOrganDonationRegistrant *)v4 setLast4SSN:v16];

  return v4;
}

+ (HKOrganDonationRegistrant)organDonationRegistrantWithDemographicsInformation:(id)a3
{
  v84 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(HKOrganDonationRegistrant);
  if (!v4)
  {
    goto LABEL_60;
  }

  v66 = a1;
  v6 = [v4 firstName];
  [(HKOrganDonationRegistrant *)v5 setFirstname:v6];

  v7 = [v4 middleName];
  [(HKOrganDonationRegistrant *)v5 setMiddlename:v7];

  v8 = [v4 lastName];
  [(HKOrganDonationRegistrant *)v5 setLastname:v8];

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = [v4 postalAddresses];
  v9 = [obj countByEnumeratingWithState:&v78 objects:v83 count:16];
  v10 = MEMORY[0x1E695CB60];
  v67 = v5;
  v68 = v4;
  if (!v9)
  {
    v28 = 0;
    v30 = obj;
LABEL_39:

    goto LABEL_40;
  }

  v11 = v9;
  v12 = 0;
  v72 = *v79;
  v69 = *MEMORY[0x1E695D978];
  v13 = *MEMORY[0x1E695CB60];
  v14 = obj;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v79 != v72)
      {
        objc_enumerationMutation(v14);
      }

      v16 = *(*(&v78 + 1) + 8 * i);
      v17 = [v16 value];
      v18 = [v16 label];
      v19 = [v17 ISOCountryCode];
      v20 = [v19 length];

      if (v20)
      {
        v21 = [v17 ISOCountryCode];
        v22 = [v21 isEqualToString:@"us"];
      }

      else
      {
        v21 = [v17 country];
        v23 = [MEMORY[0x1E695DF58] currentLocale];
        [v23 displayNameForKey:v69 value:@"us"];
        v25 = v24 = v12;

        v22 = [v21 isEqualToString:v25];
        v12 = v24;
        v14 = obj;
      }

      v26 = [v18 isEqualToString:v13];
      if (!v22 || (v26 & 1) != 0 || v12)
      {
        if ((v22 & v26) == 1)
        {
          v27 = [v16 value];

          v12 = v27;
        }
      }

      else
      {
        v12 = [v16 value];
      }
    }

    v11 = [v14 countByEnumeratingWithState:&v78 objects:v83 count:16];
  }

  while (v11);

  if (v12)
  {
    v28 = v12;
    v29 = [v12 street];
    v30 = [v29 componentsSeparatedByString:@"\n"];

    v31 = [v30 count] == 1;
    v4 = v68;
    v10 = MEMORY[0x1E695CB60];
    if (v31)
    {
      v32 = [v30 lastObject];
      [(HKOrganDonationRegistrant *)v67 setAddress1:v32];
    }

    else
    {
      if ([v30 count] < 2)
      {
LABEL_27:
        v34 = [v12 city];
        [(HKOrganDonationRegistrant *)v67 setCity:v34];

        v35 = [v12 postalCode];
        if ([v35 length] < 5)
        {
          v36 = v35;
        }

        else
        {
          v36 = [v35 substringToIndex:5];

          if ([v66 _isNumericStringValid:v36 withLength:5])
          {
            [(HKOrganDonationRegistrant *)v67 setZip:v36];
          }
        }

        v37 = [v12 state];
        v38 = [v37 uppercaseString];

        if ([v38 length] == 2)
        {
          [v66 _loadStateInformationIfNeeded];
          if ([_sortedStateAbbreviations indexOfObject:v38] != 0x7FFFFFFFFFFFFFFFLL)
          {
            [(HKOrganDonationRegistrant *)v67 setState:v38];
          }
        }

        else if ([v38 length])
        {
          [v66 _loadStateInformationIfNeeded];
          v39 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF LIKE[c] %@", v38];
          v40 = [_sortedStateNames filteredArrayUsingPredicate:v39];
          v41 = [v40 firstObject];

          if (v41)
          {
            v42 = [_sortedStateNames indexOfObject:v41];
            v43 = [_sortedStateAbbreviations objectAtIndexedSubscript:v42];
            [(HKOrganDonationRegistrant *)v67 setState:v43];
          }
        }

        goto LABEL_39;
      }

      v33 = [v30 firstObject];
      [(HKOrganDonationRegistrant *)v67 setAddress1:v33];

      v32 = [v30 lastObject];
      [(HKOrganDonationRegistrant *)v67 setAddress2:v32];
    }

    goto LABEL_27;
  }

  v28 = 0;
  v4 = v68;
  v10 = MEMORY[0x1E695CB60];
LABEL_40:
  obja = v28;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v44 = [v4 emailAddresses];
  v45 = [v44 countByEnumeratingWithState:&v74 objects:v82 count:16];
  if (v45)
  {
    v46 = v45;
    v73 = 0;
    v47 = *v75;
    v48 = *v10;
    while (2)
    {
      for (j = 0; j != v46; ++j)
      {
        if (*v75 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v50 = *(*(&v74 + 1) + 8 * j);
        v51 = [v50 value];
        v52 = [v51 rangeOfString:@"^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2 options:{}$", 1025}];

        if (v52 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v53 = [v50 label];
          v54 = [v53 isEqualToString:v48];

          if (v54)
          {
            v55 = [v50 value];

            v73 = v55;
            goto LABEL_54;
          }

          if (!v73)
          {
            v73 = [v50 value];
          }
        }
      }

      v46 = [v44 countByEnumeratingWithState:&v74 objects:v82 count:16];
      if (v46)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v73 = 0;
  }

LABEL_54:

  v5 = v67;
  [(HKOrganDonationRegistrant *)v67 setEmail:v73];
  v4 = v68;
  v56 = [v68 dateOfBirthComponents];

  if (v56)
  {
    v57 = +[HKSimpleDataEntryDateItem gregorianGMTCalendar];
    v58 = [v68 dateOfBirthComponents];
    v59 = [v57 dateFromComponents:v58];

    v60 = [v66 exportDateFormatter];
    v61 = [v60 stringFromDate:v59];
    [(HKOrganDonationRegistrant *)v67 setDob:v61];
  }

  v62 = [v68 biologicalSexObject];

  if (v62)
  {
    v63 = [v68 biologicalSexObject];
    v64 = [v63 biologicalSex];

    if ((v64 - 1) <= 2)
    {
      [(HKOrganDonationRegistrant *)v67 setSex:off_1E81BA1A0[v64 - 1]];
    }
  }

LABEL_60:

  return v5;
}

- (HKOrganDonationRegistrant)init
{
  v6.receiver = self;
  v6.super_class = HKOrganDonationRegistrant;
  v2 = [(HKOrganDonationRegistrant *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dataEntryItems = v2->_dataEntryItems;
    v2->_dataEntryItems = v3;

    v2->_hasEdits = 0;
  }

  return v2;
}

- (HKOrganDonationRegistrant)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = HKOrganDonationRegistrant;
  v5 = [(HKOrganDonationRegistrant *)&v31 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"firstname"];
    firstname = v5->_firstname;
    v5->_firstname = v6;

    v8 = [v4 decodeObjectForKey:@"middlename"];
    middlename = v5->_middlename;
    v5->_middlename = v8;

    v10 = [v4 decodeObjectForKey:@"lastname"];
    lastname = v5->_lastname;
    v5->_lastname = v10;

    v12 = [v4 decodeObjectForKey:@"dob"];
    dob = v5->_dob;
    v5->_dob = v12;

    v14 = [v4 decodeObjectForKey:@"sex"];
    sex = v5->_sex;
    v5->_sex = v14;

    v16 = [v4 decodeObjectForKey:@"email"];
    email = v5->_email;
    v5->_email = v16;

    v18 = [v4 decodeObjectForKey:@"address1"];
    address1 = v5->_address1;
    v5->_address1 = v18;

    v20 = [v4 decodeObjectForKey:@"address2"];
    address2 = v5->_address2;
    v5->_address2 = v20;

    v22 = [v4 decodeObjectForKey:@"city"];
    city = v5->_city;
    v5->_city = v22;

    v24 = [v4 decodeObjectForKey:@"state"];
    state = v5->_state;
    v5->_state = v24;

    v26 = [v4 decodeObjectForKey:@"zip"];
    zip = v5->_zip;
    v5->_zip = v26;

    v28 = [v4 decodeObjectForKey:@"last4SSN"];
    last4SSN = v5->_last4SSN;
    v5->_last4SSN = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  firstname = self->_firstname;
  v5 = a3;
  [v5 encodeObject:firstname forKey:@"firstname"];
  [v5 encodeObject:self->_middlename forKey:@"middlename"];
  [v5 encodeObject:self->_lastname forKey:@"lastname"];
  [v5 encodeObject:self->_dob forKey:@"dob"];
  [v5 encodeObject:self->_sex forKey:@"sex"];
  [v5 encodeObject:self->_email forKey:@"email"];
  [v5 encodeObject:self->_address1 forKey:@"address1"];
  [v5 encodeObject:self->_address2 forKey:@"address2"];
  [v5 encodeObject:self->_city forKey:@"city"];
  [v5 encodeObject:self->_state forKey:@"state"];
  [v5 encodeObject:self->_zip forKey:@"zip"];
  [v5 encodeObject:self->_last4SSN forKey:@"last4SSN"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[HKOrganDonationRegistrant allocWithZone:](HKOrganDonationRegistrant init];
  v6 = [(NSString *)self->_firstname copyWithZone:a3];
  firstname = v5->_firstname;
  v5->_firstname = v6;

  v8 = [(NSString *)self->_middlename copyWithZone:a3];
  middlename = v5->_middlename;
  v5->_middlename = v8;

  v10 = [(NSString *)self->_lastname copyWithZone:a3];
  lastname = v5->_lastname;
  v5->_lastname = v10;

  v12 = [(NSString *)self->_dob copyWithZone:a3];
  dob = v5->_dob;
  v5->_dob = v12;

  v14 = [(NSString *)self->_sex copyWithZone:a3];
  sex = v5->_sex;
  v5->_sex = v14;

  v16 = [(NSString *)self->_email copyWithZone:a3];
  email = v5->_email;
  v5->_email = v16;

  v18 = [(NSString *)self->_address1 copyWithZone:a3];
  address1 = v5->_address1;
  v5->_address1 = v18;

  v20 = [(NSString *)self->_address2 copyWithZone:a3];
  address2 = v5->_address2;
  v5->_address2 = v20;

  v22 = [(NSString *)self->_city copyWithZone:a3];
  city = v5->_city;
  v5->_city = v22;

  v24 = [(NSString *)self->_state copyWithZone:a3];
  state = v5->_state;
  v5->_state = v24;

  v26 = [(NSString *)self->_zip copyWithZone:a3];
  zip = v5->_zip;
  v5->_zip = v26;

  v28 = [(NSString *)self->_last4SSN copyWithZone:a3];
  last4SSN = v5->_last4SSN;
  v5->_last4SSN = v28;

  return v5;
}

- (id)jsonDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  firstname = self->_firstname;
  if (firstname)
  {
    [v3 setObject:firstname forKey:@"firstname"];
  }

  middlename = self->_middlename;
  if (middlename)
  {
    [v4 setObject:middlename forKey:@"middlename"];
  }

  lastname = self->_lastname;
  if (lastname)
  {
    [v4 setObject:lastname forKey:@"lastname"];
  }

  email = self->_email;
  if (email)
  {
    v9 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v10 = [(NSString *)email stringByTrimmingCharactersInSet:v9];
    [v4 setObject:v10 forKey:@"email"];
  }

  dob = self->_dob;
  if (dob)
  {
    [v4 setObject:dob forKey:@"dob"];
  }

  sex = self->_sex;
  if (sex)
  {
    [v4 setObject:sex forKey:@"gender"];
  }

  address1 = self->_address1;
  if (address1)
  {
    [v4 setObject:address1 forKey:@"address1"];
  }

  address2 = self->_address2;
  if (address2)
  {
    [v4 setObject:address2 forKey:@"address2"];
  }

  city = self->_city;
  if (city)
  {
    [v4 setObject:city forKey:@"city"];
  }

  state = self->_state;
  if (state)
  {
    [v4 setObject:state forKey:@"state"];
  }

  if (self->_zip)
  {
    v17 = objc_opt_class();
    zip = self->_zip;
    v19 = [objc_opt_class() zipcodeNumberFormatter];
    v20 = [v17 convertLocalizedNumericStringToLatin:zip withNumberFormatter:v19];

    [v4 setObject:v20 forKey:@"zip"];
  }

  if (self->_last4SSN)
  {
    v21 = objc_opt_class();
    last4SSN = self->_last4SSN;
    v23 = [objc_opt_class() ssnNumberFormatter];
    v24 = [v21 convertLocalizedNumericStringToLatin:last4SSN withNumberFormatter:v23];

    [v4 setObject:v24 forKey:@"last4SSN"];
  }

  return v4;
}

- (id)dataEntryItemsValidOnly:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  v7 = [v6 isGivenNameFirst];
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  if (v7)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  [(HKOrganDonationRegistrant *)self _addDataEntryItemIntoArray:v5 validOnly:v3 forField:v8];
  [(HKOrganDonationRegistrant *)self _addDataEntryItemIntoArray:v5 validOnly:v3 forField:1];
  [(HKOrganDonationRegistrant *)self _addDataEntryItemIntoArray:v5 validOnly:v3 forField:v9];
  [(HKOrganDonationRegistrant *)self _addDataEntryItemIntoArray:v5 validOnly:v3 forField:3];
  [(HKOrganDonationRegistrant *)self _addDataEntryItemIntoArray:v5 validOnly:v3 forField:12];
  [(HKOrganDonationRegistrant *)self _addDataEntryItemIntoArray:v5 validOnly:v3 forField:5];
  [(HKOrganDonationRegistrant *)self _addDataEntryItemIntoArray:v5 validOnly:v3 forField:7];
  [(HKOrganDonationRegistrant *)self _addDataEntryItemIntoArray:v5 validOnly:v3 forField:8];
  [(HKOrganDonationRegistrant *)self _addDataEntryItemIntoArray:v5 validOnly:v3 forField:9];
  [(HKOrganDonationRegistrant *)self _addDataEntryItemIntoArray:v5 validOnly:v3 forField:10];
  [(HKOrganDonationRegistrant *)self _addDataEntryItemIntoArray:v5 validOnly:v3 forField:11];
  [(HKOrganDonationRegistrant *)self _addDataEntryItemIntoArray:v5 validOnly:v3 forField:4];

  return v5;
}

- (void)_addDataEntryItemIntoArray:(id)a3 validOnly:(BOOL)a4 forField:(int64_t)a5
{
  v6 = a4;
  v9 = a3;
  if (!v6 || [(HKOrganDonationRegistrant *)self isFieldValid:a5])
  {
    v8 = [(HKOrganDonationRegistrant *)self dataEntryItemForRegistrantField:a5];
    [v9 addObject:v8];
  }
}

- (id)dataEntryItemForRegistrantField:(int64_t)a3
{
  v65[4] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v6 = [(NSMutableDictionary *)self->_dataEntryItems objectForKeyedSubscript:v5];
  if (!v6)
  {
    switch(a3)
    {
      case 0:
        v7 = [HKSimpleDataEntryPlainTextItem alloc];
        v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v9 = [v8 localizedStringForKey:@"OD_FIRST_NAME" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        v10 = [(HKOrganDonationRegistrant *)self firstname];
        v6 = [(HKSimpleDataEntryPlainTextItem *)v7 initWithTitle:v9 registrantModelKey:@"firstname" defaultText:v10 intention:0];

        v11 = self;
        v12 = 0;
        goto LABEL_17;
      case 1:
        v40 = [HKSimpleDataEntryPlainTextItem alloc];
        v41 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v42 = [v41 localizedStringForKey:@"OD_MIDDLE_NAME" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        v43 = [(HKOrganDonationRegistrant *)self middlename];
        v6 = [(HKSimpleDataEntryPlainTextItem *)v40 initWithTitle:v42 registrantModelKey:@"middlename" defaultText:v43 intention:1];

        v11 = self;
        v12 = 1;
        goto LABEL_17;
      case 2:
        v32 = [HKSimpleDataEntryPlainTextItem alloc];
        v33 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v34 = [v33 localizedStringForKey:@"OD_LAST_NAME" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        v35 = [(HKOrganDonationRegistrant *)self lastname];
        v6 = [(HKSimpleDataEntryPlainTextItem *)v32 initWithTitle:v34 registrantModelKey:@"lastname" defaultText:v35 intention:2];

        v11 = self;
        v12 = 2;
        goto LABEL_17;
      case 3:
        v6 = [(HKOrganDonationRegistrant *)self _createDateOfBirthEntryItem];
        break;
      case 4:
        v17 = [HKSimpleDataEntryMultipleChoiceItem alloc];
        v63 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v18 = [v63 localizedStringForKey:@"OD_BIOLOGICAL_SEX" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        v65[0] = &stru_1F42FFBE0;
        v65[1] = @"M";
        v65[2] = @"F";
        v65[3] = @"O";
        v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:4];
        v64[0] = &stru_1F42FFBE0;
        v62 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v61 = [v62 localizedStringForKey:@"OD_MALE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        v64[1] = v61;
        v60 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v19 = [v60 localizedStringForKey:@"OD_FEMALE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        v64[2] = v19;
        v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v21 = [v20 localizedStringForKey:@"OD_SEX_OTHER" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        v64[3] = v21;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:4];
        v23 = [(HKOrganDonationRegistrant *)self sex];
        v6 = [(HKSimpleDataEntryMultipleChoiceItem *)v17 initWithTitle:v18 registrantModelKey:@"sex" choices:v59 choiceDisplayNames:v22 defaultChoice:v23];

        v11 = self;
        v12 = 4;
        goto LABEL_17;
      case 5:
        v44 = [HKSimpleDataEntryPlainTextItem alloc];
        v45 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v46 = [v45 localizedStringForKey:@"OD_EMAIL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        v47 = [(HKOrganDonationRegistrant *)self email];
        v6 = [(HKSimpleDataEntryPlainTextItem *)v44 initWithTitle:v46 registrantModelKey:@"email" defaultText:v47 intention:3];

        v11 = self;
        v12 = 5;
        goto LABEL_17;
      case 6:
        v6 = [[HKOrganDonationAddressEntryItem alloc] initWithRegistrant:self];
        v11 = self;
        v12 = 6;
        goto LABEL_17;
      case 7:
        v36 = [HKSimpleDataEntryPlainTextItem alloc];
        v37 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v38 = [v37 localizedStringForKey:@"OD_ADDRESS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        v39 = [(HKOrganDonationRegistrant *)self address1];
        v6 = [(HKSimpleDataEntryPlainTextItem *)v36 initWithTitle:v38 registrantModelKey:@"address1" defaultText:v39 intention:4];

        v11 = self;
        v12 = 7;
        goto LABEL_17;
      case 8:
        v54 = [HKSimpleDataEntryPlainTextItem alloc];
        v55 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v56 = [v55 localizedStringForKey:@"OD_ADDRESS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        v57 = [(HKOrganDonationRegistrant *)self address2];
        v6 = [(HKSimpleDataEntryPlainTextItem *)v54 initWithTitle:v56 registrantModelKey:@"address2" defaultText:v57 intention:5];

        v11 = self;
        v12 = 8;
        goto LABEL_17;
      case 9:
        v28 = [HKSimpleDataEntryPlainTextItem alloc];
        v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v30 = [v29 localizedStringForKey:@"OD_ADDRESS_CITY" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        v31 = [(HKOrganDonationRegistrant *)self city];
        v6 = [(HKSimpleDataEntryPlainTextItem *)v28 initWithTitle:v30 registrantModelKey:@"city" defaultText:v31 intention:6];

        v11 = self;
        v12 = 9;
        goto LABEL_17;
      case 10:
        v48 = [HKSimpleDataEntryMultipleChoiceItem alloc];
        v49 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v50 = [v49 localizedStringForKey:@"OD_ADDRESS_STATE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        v51 = [(HKOrganDonationRegistrant *)self _stateChoiceValues];
        v52 = [(HKOrganDonationRegistrant *)self _stateChoiceDisplayNames];
        v53 = [(HKOrganDonationRegistrant *)self state];
        v6 = [(HKSimpleDataEntryMultipleChoiceItem *)v48 initWithTitle:v50 registrantModelKey:@"state" choices:v51 choiceDisplayNames:v52 defaultChoice:v53];

        v11 = self;
        v12 = 10;
        goto LABEL_17;
      case 11:
        v13 = [HKSimpleDataEntryPlainTextItem alloc];
        v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v15 = [v14 localizedStringForKey:@"OD_ADDRESS_ZIP" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        v16 = [(HKOrganDonationRegistrant *)self zip];
        v6 = [(HKSimpleDataEntryPlainTextItem *)v13 initWithTitle:v15 registrantModelKey:@"zip" defaultText:v16 intention:7];

        v11 = self;
        v12 = 11;
        goto LABEL_17;
      case 12:
        v24 = [HKSimpleDataEntryPlainTextItem alloc];
        v25 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v26 = [v25 localizedStringForKey:@"OD_SSN" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        v27 = [(HKOrganDonationRegistrant *)self last4SSN];
        v6 = [(HKSimpleDataEntryPlainTextItem *)v24 initWithTitle:v26 registrantModelKey:@"last4SSN" defaultText:v27 intention:8];

        v11 = self;
        v12 = 12;
LABEL_17:
        [(HKSimpleDataEntryItem *)v6 setPlaceholderType:[(HKOrganDonationRegistrant *)v11 _placeHolderTypeForField:v12]];
        [(HKSimpleDataEntryItem *)v6 setDelegate:self];
        break;
      default:
        v6 = 0;
        break;
    }

    [(NSMutableDictionary *)self->_dataEntryItems setObject:v6 forKeyedSubscript:v5];
  }

  return v6;
}

- (BOOL)isFieldValid:(int64_t)a3
{
  LOBYTE(email) = 1;
  if (a3 <= 6)
  {
    if (a3 > 2)
    {
      switch(a3)
      {
        case 3:
          v11 = [objc_opt_class() exportDateFormatter];
          v12 = [v11 dateFromString:self->_dob];
          LOBYTE(email) = v12 != 0;

          break;
        case 4:
          LOBYTE(email) = [(NSString *)self->_sex length]== 1;
          break;
        case 5:
          email = self->_email;
          if (email)
          {
            v6 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
            v7 = [(NSString *)email stringByTrimmingCharactersInSet:v6];
            LOBYTE(email) = [v7 rangeOfString:@"^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2 options:{}$", 1025}] != 0x7FFFFFFFFFFFFFFFLL;
          }

          break;
      }

      return email;
    }

    switch(a3)
    {
      case 0:
        firstname = self->_firstname;
        goto LABEL_27;
      case 1:
        firstname = self->_middlename;
        goto LABEL_27;
      case 2:
        firstname = self->_lastname;
LABEL_27:
        v13 = [(NSString *)firstname length]== 0;
LABEL_28:
        LOBYTE(email) = !v13;
        break;
    }

    return email;
  }

  if (a3 <= 9)
  {
    if (a3 == 7)
    {
      firstname = self->_address1;
    }

    else if (a3 == 8)
    {
      firstname = self->_address2;
    }

    else
    {
      firstname = self->_city;
    }

    goto LABEL_27;
  }

  if (a3 == 10)
  {
    v13 = [_sortedStateAbbreviations indexOfObject:self->_state] == 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_28;
  }

  if (a3 == 11)
  {
    if (self->_zip)
    {
      v8 = objc_opt_class();
      zip = self->_zip;
      v10 = 5;
      goto LABEL_35;
    }

LABEL_38:
    LOBYTE(email) = 0;
    return email;
  }

  if (a3 != 12)
  {
    return email;
  }

  if (!self->_last4SSN)
  {
    goto LABEL_38;
  }

  v8 = objc_opt_class();
  zip = self->_last4SSN;
  v10 = 4;
LABEL_35:

  return [v8 _isNumericStringValid:zip withLength:v10];
}

- (BOOL)isRegistrantValid
{
  if (![(HKOrganDonationRegistrant *)self isFieldValid:0]|| ![(HKOrganDonationRegistrant *)self isFieldValid:2]|| ![(HKOrganDonationRegistrant *)self isFieldValid:5]|| ![(HKOrganDonationRegistrant *)self isFieldValid:4]|| ![(HKOrganDonationRegistrant *)self isFieldValid:3]|| ![(HKOrganDonationRegistrant *)self isFieldValid:7]|| ![(HKOrganDonationRegistrant *)self isFieldValid:9]|| ![(HKOrganDonationRegistrant *)self isFieldValid:10]|| ![(HKOrganDonationRegistrant *)self isFieldValid:11])
  {
    return 0;
  }

  return [(HKOrganDonationRegistrant *)self isFieldValid:12];
}

- (NSNumber)age
{
  if (self->_dob)
  {
    v3 = [objc_opt_class() exportDateFormatter];
    v4 = [v3 dateFromString:self->_dob];

    if (v4)
    {
      v5 = +[HKSimpleDataEntryDateItem gregorianGMTCalendar];
      v6 = [v5 hk_dateOfBirthDateComponentsWithDate:v4];

      v7 = [MEMORY[0x1E695DEE8] currentCalendar];
      v8 = [(HKOrganDonationRegistrant *)self _todayBirthdayDateComponents];
      v9 = [v7 components:4 fromDateComponents:v6 toDateComponents:v8 options:0];

      v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "year")}];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)exportDateFormatter
{
  v2 = exportDateFormatter___dateFormatter;
  if (!exportDateFormatter___dateFormatter)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v4 = exportDateFormatter___dateFormatter;
    exportDateFormatter___dateFormatter = v3;

    v5 = exportDateFormatter___dateFormatter;
    v6 = +[HKSimpleDataEntryDateItem gregorianGMTCalendar];
    [v5 setCalendar:v6];

    v7 = exportDateFormatter___dateFormatter;
    v8 = +[HKSimpleDataEntryDateItem gregorianGMTCalendar];
    v9 = [v8 timeZone];
    [v7 setTimeZone:v9];

    [exportDateFormatter___dateFormatter setDateFormat:@"MM/dd/yyyy"];
    v10 = exportDateFormatter___dateFormatter;
    v11 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"_US"];
    [v10 setLocale:v11];

    v2 = exportDateFormatter___dateFormatter;
  }

  return v2;
}

+ (id)zipcodeNumberFormatter
{
  v2 = zipcodeNumberFormatter__numberFormatter;
  if (!zipcodeNumberFormatter__numberFormatter)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v4 = zipcodeNumberFormatter__numberFormatter;
    zipcodeNumberFormatter__numberFormatter = v3;

    [zipcodeNumberFormatter__numberFormatter setNumberStyle:0];
    [zipcodeNumberFormatter__numberFormatter setFormatWidth:5];
    [zipcodeNumberFormatter__numberFormatter setPaddingCharacter:@"0"];
    v5 = zipcodeNumberFormatter__numberFormatter;
    v6 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"_US"];
    [v5 setLocale:v6];

    v2 = zipcodeNumberFormatter__numberFormatter;
  }

  return v2;
}

+ (id)ssnNumberFormatter
{
  v2 = ssnNumberFormatter__numberFormatter;
  if (!ssnNumberFormatter__numberFormatter)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v4 = ssnNumberFormatter__numberFormatter;
    ssnNumberFormatter__numberFormatter = v3;

    [ssnNumberFormatter__numberFormatter setNumberStyle:0];
    [ssnNumberFormatter__numberFormatter setFormatWidth:4];
    [ssnNumberFormatter__numberFormatter setPaddingCharacter:@"0"];
    v5 = ssnNumberFormatter__numberFormatter;
    v6 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"_US"];
    [v5 setLocale:v6];

    v2 = ssnNumberFormatter__numberFormatter;
  }

  return v2;
}

+ (id)_importNumberFormatter
{
  v2 = _importNumberFormatter__numberFormatter;
  if (!_importNumberFormatter__numberFormatter)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v4 = _importNumberFormatter__numberFormatter;
    _importNumberFormatter__numberFormatter = v3;

    [_importNumberFormatter__numberFormatter setNumberStyle:0];
    v2 = _importNumberFormatter__numberFormatter;
  }

  return v2;
}

+ (BOOL)_isNumericStringValid:(id)a3 withLength:(int64_t)a4
{
  v5 = [MEMORY[0x1E696AE88] localizedScannerWithString:a3];
  v6 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v10 = 0;
  [v5 scanCharactersFromSet:v6 intoString:&v10];
  v7 = v10;

  v8 = [v7 length];
  return v8 == a4;
}

+ (id)convertLocalizedNumericStringToLatin:(id)a3 withNumberFormatter:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() _importNumberFormatter];
  v8 = [v7 numberFromString:v6];

  v9 = [v5 stringFromNumber:v8];

  return v9;
}

- (id)_todayBirthdayDateComponents
{
  v2 = +[HKSimpleDataEntryDateItem gregorianGMTCalendar];
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [v2 hk_dateOfBirthDateComponentsWithDate:v3];

  return v4;
}

- (id)_createDateOfBirthEntryItem
{
  v3 = [(HKOrganDonationRegistrant *)self _todayBirthdayDateComponents];
  v4 = +[HKSimpleDataEntryDateItem gregorianGMTCalendar];
  v18 = v3;
  v5 = [v4 dateFromComponents:v3];
  v6 = [v4 dateByAddingUnit:4 value:-130 toDate:v5 options:0];
  v17 = [v4 dateByAddingUnit:4 value:-30 toDate:v5 options:0];
  if ([(NSString *)self->_dob length])
  {
    v7 = [objc_opt_class() exportDateFormatter];
    v8 = [v7 dateFromString:self->_dob];
  }

  else
  {
    v8 = 0;
  }

  v9 = [HKSimpleDataEntryDateItem alloc];
  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v11 = [v10 localizedStringForKey:@"OD_DATE_OF_BIRTH" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v12 = [HKValueRange valueRangeWithMinValue:v6 maxValue:v5];
  [objc_opt_class() exportDateFormatter];
  v13 = v16 = v6;
  v14 = [(HKSimpleDataEntryDateItem *)v9 initWithTitle:v11 registrantModelKey:@"dob" date:v8 defaultDate:v17 dateRange:v12 exportFormatter:v13];

  [(HKSimpleDataEntryItem *)v14 setPlaceholderType:[(HKOrganDonationRegistrant *)self _placeHolderTypeForField:3]];
  [(HKSimpleDataEntryItem *)v14 setDelegate:self];

  return v14;
}

- (id)_stateChoiceDisplayNames
{
  [objc_opt_class() _loadStateInformationIfNeeded];
  v2 = _sortedStateNames;

  return v2;
}

- (id)_stateChoiceValues
{
  [objc_opt_class() _loadStateInformationIfNeeded];
  v2 = _sortedStateAbbreviations;

  return v2;
}

+ (void)_loadStateInformationIfNeeded
{
  v44 = *MEMORY[0x1E69E9840];
  if (_sortedStateNames)
  {
    v2 = _sortedStateAbbreviations == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v3 = MEMORY[0x1E695DF20];
    v4 = HKHealthUIFrameworkBundle();
    v5 = [v4 pathForResource:@"USStateAbbreviations" ofType:@"plist"];
    v6 = [v3 dictionaryWithContentsOfFile:v5];

    v32 = v6;
    v7 = [v6 allKeys];
    v33 = [MEMORY[0x1E695DF70] array];
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v39;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v39 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v38 + 1) + 8 * i);
          v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v15 = [v32 objectForKeyedSubscript:v13];
          v16 = [v14 localizedStringForKey:v15 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-USState"];

          [v33 addObject:v16];
          [v8 setObject:v13 forKey:v16];
        }

        v10 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v10);
    }

    v17 = [v33 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];
    v18 = [v17 mutableCopy];

    [v18 insertObject:&stru_1F42FFBE0 atIndex:0];
    v19 = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v20 = v18;
    v21 = [v20 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v35;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v35 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [v8 objectForKeyedSubscript:*(*(&v34 + 1) + 8 * j)];
          v26 = v25;
          if (v25)
          {
            v27 = v25;
          }

          else
          {
            v27 = &stru_1F42FFBE0;
          }

          [v19 addObject:v27];
        }

        v22 = [v20 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v22);
    }

    v28 = _sortedStateNames;
    _sortedStateNames = v20;
    v29 = v20;

    v30 = _sortedStateAbbreviations;
    _sortedStateAbbreviations = v19;
  }
}

- (void)dataEntryItemDidUpdateValue:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [a3 formattedKeyAndValue];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v4 objectForKeyedSubscript:v9];
        v11 = [(HKOrganDonationRegistrant *)self valueForKey:v9];
        if (([v10 isEqualToString:v11] & 1) == 0)
        {
          [(HKOrganDonationRegistrant *)self setValue:v10 forKey:v9];
          self->_hasEdits = 1;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = [(HKOrganDonationRegistrant *)self delegate];
  [v12 organDonationRegistrantDidUpdateValue:self];
}

- (HKOrganDonationRegistrantDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end