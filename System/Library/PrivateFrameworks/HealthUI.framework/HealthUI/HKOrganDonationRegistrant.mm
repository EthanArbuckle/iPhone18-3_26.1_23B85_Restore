@interface HKOrganDonationRegistrant
+ (BOOL)_isNumericStringValid:(id)valid withLength:(int64_t)length;
+ (HKOrganDonationRegistrant)organDonationRegistrantWithDemographicsInformation:(id)information;
+ (HKOrganDonationRegistrant)organDonationRegistrantWithJSONDictionary:(id)dictionary;
+ (id)_importNumberFormatter;
+ (id)convertLocalizedNumericStringToLatin:(id)latin withNumberFormatter:(id)formatter;
+ (id)exportDateFormatter;
+ (id)ssnNumberFormatter;
+ (id)zipcodeNumberFormatter;
+ (void)_loadStateInformationIfNeeded;
- (BOOL)isFieldValid:(int64_t)valid;
- (BOOL)isRegistrantValid;
- (HKOrganDonationRegistrant)init;
- (HKOrganDonationRegistrant)initWithCoder:(id)coder;
- (HKOrganDonationRegistrantDelegate)delegate;
- (NSNumber)age;
- (id)_createDateOfBirthEntryItem;
- (id)_stateChoiceDisplayNames;
- (id)_stateChoiceValues;
- (id)_todayBirthdayDateComponents;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataEntryItemForRegistrantField:(int64_t)field;
- (id)dataEntryItemsValidOnly:(BOOL)only;
- (id)jsonDictionaryRepresentation;
- (void)_addDataEntryItemIntoArray:(id)array validOnly:(BOOL)only forField:(int64_t)field;
- (void)dataEntryItemDidUpdateValue:(id)value;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKOrganDonationRegistrant

+ (HKOrganDonationRegistrant)organDonationRegistrantWithJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(HKOrganDonationRegistrant);
  v5 = [dictionaryCopy objectForKeyedSubscript:@"firstname"];
  [(HKOrganDonationRegistrant *)v4 setFirstname:v5];

  v6 = [dictionaryCopy objectForKeyedSubscript:@"middlename"];
  [(HKOrganDonationRegistrant *)v4 setMiddlename:v6];

  v7 = [dictionaryCopy objectForKeyedSubscript:@"lastname"];
  [(HKOrganDonationRegistrant *)v4 setLastname:v7];

  v8 = [dictionaryCopy objectForKeyedSubscript:@"dob"];
  [(HKOrganDonationRegistrant *)v4 setDob:v8];

  v9 = [dictionaryCopy objectForKeyedSubscript:@"gender"];
  [(HKOrganDonationRegistrant *)v4 setSex:v9];

  v10 = [dictionaryCopy objectForKeyedSubscript:@"email"];
  [(HKOrganDonationRegistrant *)v4 setEmail:v10];

  v11 = [dictionaryCopy objectForKeyedSubscript:@"address1"];
  [(HKOrganDonationRegistrant *)v4 setAddress1:v11];

  v12 = [dictionaryCopy objectForKeyedSubscript:@"address2"];
  [(HKOrganDonationRegistrant *)v4 setAddress2:v12];

  v13 = [dictionaryCopy objectForKeyedSubscript:@"city"];
  [(HKOrganDonationRegistrant *)v4 setCity:v13];

  v14 = [dictionaryCopy objectForKeyedSubscript:@"state"];
  [(HKOrganDonationRegistrant *)v4 setState:v14];

  v15 = [dictionaryCopy objectForKeyedSubscript:@"zip"];
  [(HKOrganDonationRegistrant *)v4 setZip:v15];

  v16 = [dictionaryCopy objectForKeyedSubscript:@"last4SSN"];

  [(HKOrganDonationRegistrant *)v4 setLast4SSN:v16];

  return v4;
}

+ (HKOrganDonationRegistrant)organDonationRegistrantWithDemographicsInformation:(id)information
{
  v84 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  v5 = objc_alloc_init(HKOrganDonationRegistrant);
  if (!informationCopy)
  {
    goto LABEL_60;
  }

  selfCopy = self;
  firstName = [informationCopy firstName];
  [(HKOrganDonationRegistrant *)v5 setFirstname:firstName];

  middleName = [informationCopy middleName];
  [(HKOrganDonationRegistrant *)v5 setMiddlename:middleName];

  lastName = [informationCopy lastName];
  [(HKOrganDonationRegistrant *)v5 setLastname:lastName];

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = [informationCopy postalAddresses];
  v9 = [obj countByEnumeratingWithState:&v78 objects:v83 count:16];
  v10 = MEMORY[0x1E695CB60];
  v67 = v5;
  v68 = informationCopy;
  if (!v9)
  {
    v28 = 0;
    v30 = obj;
LABEL_39:

    goto LABEL_40;
  }

  v11 = v9;
  value3 = 0;
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
      value = [v16 value];
      label = [v16 label];
      iSOCountryCode = [value ISOCountryCode];
      v20 = [iSOCountryCode length];

      if (v20)
      {
        iSOCountryCode2 = [value ISOCountryCode];
        v22 = [iSOCountryCode2 isEqualToString:@"us"];
      }

      else
      {
        iSOCountryCode2 = [value country];
        currentLocale = [MEMORY[0x1E695DF58] currentLocale];
        [currentLocale displayNameForKey:v69 value:@"us"];
        v25 = v24 = value3;

        v22 = [iSOCountryCode2 isEqualToString:v25];
        value3 = v24;
        v14 = obj;
      }

      v26 = [label isEqualToString:v13];
      if (!v22 || (v26 & 1) != 0 || value3)
      {
        if ((v22 & v26) == 1)
        {
          value2 = [v16 value];

          value3 = value2;
        }
      }

      else
      {
        value3 = [v16 value];
      }
    }

    v11 = [v14 countByEnumeratingWithState:&v78 objects:v83 count:16];
  }

  while (v11);

  if (value3)
  {
    v28 = value3;
    street = [value3 street];
    v30 = [street componentsSeparatedByString:@"\n"];

    v31 = [v30 count] == 1;
    informationCopy = v68;
    v10 = MEMORY[0x1E695CB60];
    if (v31)
    {
      lastObject = [v30 lastObject];
      [(HKOrganDonationRegistrant *)v67 setAddress1:lastObject];
    }

    else
    {
      if ([v30 count] < 2)
      {
LABEL_27:
        city = [value3 city];
        [(HKOrganDonationRegistrant *)v67 setCity:city];

        postalCode = [value3 postalCode];
        if ([postalCode length] < 5)
        {
          v36 = postalCode;
        }

        else
        {
          v36 = [postalCode substringToIndex:5];

          if ([selfCopy _isNumericStringValid:v36 withLength:5])
          {
            [(HKOrganDonationRegistrant *)v67 setZip:v36];
          }
        }

        state = [value3 state];
        uppercaseString = [state uppercaseString];

        if ([uppercaseString length] == 2)
        {
          [selfCopy _loadStateInformationIfNeeded];
          if ([_sortedStateAbbreviations indexOfObject:uppercaseString] != 0x7FFFFFFFFFFFFFFFLL)
          {
            [(HKOrganDonationRegistrant *)v67 setState:uppercaseString];
          }
        }

        else if ([uppercaseString length])
        {
          [selfCopy _loadStateInformationIfNeeded];
          v39 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF LIKE[c] %@", uppercaseString];
          v40 = [_sortedStateNames filteredArrayUsingPredicate:v39];
          firstObject = [v40 firstObject];

          if (firstObject)
          {
            v42 = [_sortedStateNames indexOfObject:firstObject];
            v43 = [_sortedStateAbbreviations objectAtIndexedSubscript:v42];
            [(HKOrganDonationRegistrant *)v67 setState:v43];
          }
        }

        goto LABEL_39;
      }

      firstObject2 = [v30 firstObject];
      [(HKOrganDonationRegistrant *)v67 setAddress1:firstObject2];

      lastObject = [v30 lastObject];
      [(HKOrganDonationRegistrant *)v67 setAddress2:lastObject];
    }

    goto LABEL_27;
  }

  v28 = 0;
  informationCopy = v68;
  v10 = MEMORY[0x1E695CB60];
LABEL_40:
  obja = v28;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  emailAddresses = [informationCopy emailAddresses];
  v45 = [emailAddresses countByEnumeratingWithState:&v74 objects:v82 count:16];
  if (v45)
  {
    v46 = v45;
    value6 = 0;
    v47 = *v75;
    v48 = *v10;
    while (2)
    {
      for (j = 0; j != v46; ++j)
      {
        if (*v75 != v47)
        {
          objc_enumerationMutation(emailAddresses);
        }

        v50 = *(*(&v74 + 1) + 8 * j);
        value4 = [v50 value];
        v52 = [value4 rangeOfString:@"^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2 options:{}$", 1025}];

        if (v52 != 0x7FFFFFFFFFFFFFFFLL)
        {
          label2 = [v50 label];
          v54 = [label2 isEqualToString:v48];

          if (v54)
          {
            value5 = [v50 value];

            value6 = value5;
            goto LABEL_54;
          }

          if (!value6)
          {
            value6 = [v50 value];
          }
        }
      }

      v46 = [emailAddresses countByEnumeratingWithState:&v74 objects:v82 count:16];
      if (v46)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    value6 = 0;
  }

LABEL_54:

  v5 = v67;
  [(HKOrganDonationRegistrant *)v67 setEmail:value6];
  informationCopy = v68;
  dateOfBirthComponents = [v68 dateOfBirthComponents];

  if (dateOfBirthComponents)
  {
    v57 = +[HKSimpleDataEntryDateItem gregorianGMTCalendar];
    dateOfBirthComponents2 = [v68 dateOfBirthComponents];
    v59 = [v57 dateFromComponents:dateOfBirthComponents2];

    exportDateFormatter = [selfCopy exportDateFormatter];
    v61 = [exportDateFormatter stringFromDate:v59];
    [(HKOrganDonationRegistrant *)v67 setDob:v61];
  }

  biologicalSexObject = [v68 biologicalSexObject];

  if (biologicalSexObject)
  {
    biologicalSexObject2 = [v68 biologicalSexObject];
    biologicalSex = [biologicalSexObject2 biologicalSex];

    if ((biologicalSex - 1) <= 2)
    {
      [(HKOrganDonationRegistrant *)v67 setSex:off_1E81BA1A0[biologicalSex - 1]];
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

- (HKOrganDonationRegistrant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = HKOrganDonationRegistrant;
  v5 = [(HKOrganDonationRegistrant *)&v31 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"firstname"];
    firstname = v5->_firstname;
    v5->_firstname = v6;

    v8 = [coderCopy decodeObjectForKey:@"middlename"];
    middlename = v5->_middlename;
    v5->_middlename = v8;

    v10 = [coderCopy decodeObjectForKey:@"lastname"];
    lastname = v5->_lastname;
    v5->_lastname = v10;

    v12 = [coderCopy decodeObjectForKey:@"dob"];
    dob = v5->_dob;
    v5->_dob = v12;

    v14 = [coderCopy decodeObjectForKey:@"sex"];
    sex = v5->_sex;
    v5->_sex = v14;

    v16 = [coderCopy decodeObjectForKey:@"email"];
    email = v5->_email;
    v5->_email = v16;

    v18 = [coderCopy decodeObjectForKey:@"address1"];
    address1 = v5->_address1;
    v5->_address1 = v18;

    v20 = [coderCopy decodeObjectForKey:@"address2"];
    address2 = v5->_address2;
    v5->_address2 = v20;

    v22 = [coderCopy decodeObjectForKey:@"city"];
    city = v5->_city;
    v5->_city = v22;

    v24 = [coderCopy decodeObjectForKey:@"state"];
    state = v5->_state;
    v5->_state = v24;

    v26 = [coderCopy decodeObjectForKey:@"zip"];
    zip = v5->_zip;
    v5->_zip = v26;

    v28 = [coderCopy decodeObjectForKey:@"last4SSN"];
    last4SSN = v5->_last4SSN;
    v5->_last4SSN = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  firstname = self->_firstname;
  coderCopy = coder;
  [coderCopy encodeObject:firstname forKey:@"firstname"];
  [coderCopy encodeObject:self->_middlename forKey:@"middlename"];
  [coderCopy encodeObject:self->_lastname forKey:@"lastname"];
  [coderCopy encodeObject:self->_dob forKey:@"dob"];
  [coderCopy encodeObject:self->_sex forKey:@"sex"];
  [coderCopy encodeObject:self->_email forKey:@"email"];
  [coderCopy encodeObject:self->_address1 forKey:@"address1"];
  [coderCopy encodeObject:self->_address2 forKey:@"address2"];
  [coderCopy encodeObject:self->_city forKey:@"city"];
  [coderCopy encodeObject:self->_state forKey:@"state"];
  [coderCopy encodeObject:self->_zip forKey:@"zip"];
  [coderCopy encodeObject:self->_last4SSN forKey:@"last4SSN"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[HKOrganDonationRegistrant allocWithZone:](HKOrganDonationRegistrant init];
  v6 = [(NSString *)self->_firstname copyWithZone:zone];
  firstname = v5->_firstname;
  v5->_firstname = v6;

  v8 = [(NSString *)self->_middlename copyWithZone:zone];
  middlename = v5->_middlename;
  v5->_middlename = v8;

  v10 = [(NSString *)self->_lastname copyWithZone:zone];
  lastname = v5->_lastname;
  v5->_lastname = v10;

  v12 = [(NSString *)self->_dob copyWithZone:zone];
  dob = v5->_dob;
  v5->_dob = v12;

  v14 = [(NSString *)self->_sex copyWithZone:zone];
  sex = v5->_sex;
  v5->_sex = v14;

  v16 = [(NSString *)self->_email copyWithZone:zone];
  email = v5->_email;
  v5->_email = v16;

  v18 = [(NSString *)self->_address1 copyWithZone:zone];
  address1 = v5->_address1;
  v5->_address1 = v18;

  v20 = [(NSString *)self->_address2 copyWithZone:zone];
  address2 = v5->_address2;
  v5->_address2 = v20;

  v22 = [(NSString *)self->_city copyWithZone:zone];
  city = v5->_city;
  v5->_city = v22;

  v24 = [(NSString *)self->_state copyWithZone:zone];
  state = v5->_state;
  v5->_state = v24;

  v26 = [(NSString *)self->_zip copyWithZone:zone];
  zip = v5->_zip;
  v5->_zip = v26;

  v28 = [(NSString *)self->_last4SSN copyWithZone:zone];
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
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v10 = [(NSString *)email stringByTrimmingCharactersInSet:whitespaceCharacterSet];
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
    zipcodeNumberFormatter = [objc_opt_class() zipcodeNumberFormatter];
    v20 = [v17 convertLocalizedNumericStringToLatin:zip withNumberFormatter:zipcodeNumberFormatter];

    [v4 setObject:v20 forKey:@"zip"];
  }

  if (self->_last4SSN)
  {
    v21 = objc_opt_class();
    last4SSN = self->_last4SSN;
    ssnNumberFormatter = [objc_opt_class() ssnNumberFormatter];
    v24 = [v21 convertLocalizedNumericStringToLatin:last4SSN withNumberFormatter:ssnNumberFormatter];

    [v4 setObject:v24 forKey:@"last4SSN"];
  }

  return v4;
}

- (id)dataEntryItemsValidOnly:(BOOL)only
{
  onlyCopy = only;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  isGivenNameFirst = [v6 isGivenNameFirst];
  if (isGivenNameFirst)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  if (isGivenNameFirst)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  [(HKOrganDonationRegistrant *)self _addDataEntryItemIntoArray:v5 validOnly:onlyCopy forField:v8];
  [(HKOrganDonationRegistrant *)self _addDataEntryItemIntoArray:v5 validOnly:onlyCopy forField:1];
  [(HKOrganDonationRegistrant *)self _addDataEntryItemIntoArray:v5 validOnly:onlyCopy forField:v9];
  [(HKOrganDonationRegistrant *)self _addDataEntryItemIntoArray:v5 validOnly:onlyCopy forField:3];
  [(HKOrganDonationRegistrant *)self _addDataEntryItemIntoArray:v5 validOnly:onlyCopy forField:12];
  [(HKOrganDonationRegistrant *)self _addDataEntryItemIntoArray:v5 validOnly:onlyCopy forField:5];
  [(HKOrganDonationRegistrant *)self _addDataEntryItemIntoArray:v5 validOnly:onlyCopy forField:7];
  [(HKOrganDonationRegistrant *)self _addDataEntryItemIntoArray:v5 validOnly:onlyCopy forField:8];
  [(HKOrganDonationRegistrant *)self _addDataEntryItemIntoArray:v5 validOnly:onlyCopy forField:9];
  [(HKOrganDonationRegistrant *)self _addDataEntryItemIntoArray:v5 validOnly:onlyCopy forField:10];
  [(HKOrganDonationRegistrant *)self _addDataEntryItemIntoArray:v5 validOnly:onlyCopy forField:11];
  [(HKOrganDonationRegistrant *)self _addDataEntryItemIntoArray:v5 validOnly:onlyCopy forField:4];

  return v5;
}

- (void)_addDataEntryItemIntoArray:(id)array validOnly:(BOOL)only forField:(int64_t)field
{
  onlyCopy = only;
  arrayCopy = array;
  if (!onlyCopy || [(HKOrganDonationRegistrant *)self isFieldValid:field])
  {
    v8 = [(HKOrganDonationRegistrant *)self dataEntryItemForRegistrantField:field];
    [arrayCopy addObject:v8];
  }
}

- (id)dataEntryItemForRegistrantField:(int64_t)field
{
  v65[4] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  _createDateOfBirthEntryItem = [(NSMutableDictionary *)self->_dataEntryItems objectForKeyedSubscript:v5];
  if (!_createDateOfBirthEntryItem)
  {
    switch(field)
    {
      case 0:
        v7 = [HKSimpleDataEntryPlainTextItem alloc];
        v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v9 = [v8 localizedStringForKey:@"OD_FIRST_NAME" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        firstname = [(HKOrganDonationRegistrant *)self firstname];
        _createDateOfBirthEntryItem = [(HKSimpleDataEntryPlainTextItem *)v7 initWithTitle:v9 registrantModelKey:@"firstname" defaultText:firstname intention:0];

        selfCopy12 = self;
        v12 = 0;
        goto LABEL_17;
      case 1:
        v40 = [HKSimpleDataEntryPlainTextItem alloc];
        v41 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v42 = [v41 localizedStringForKey:@"OD_MIDDLE_NAME" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        middlename = [(HKOrganDonationRegistrant *)self middlename];
        _createDateOfBirthEntryItem = [(HKSimpleDataEntryPlainTextItem *)v40 initWithTitle:v42 registrantModelKey:@"middlename" defaultText:middlename intention:1];

        selfCopy12 = self;
        v12 = 1;
        goto LABEL_17;
      case 2:
        v32 = [HKSimpleDataEntryPlainTextItem alloc];
        v33 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v34 = [v33 localizedStringForKey:@"OD_LAST_NAME" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        lastname = [(HKOrganDonationRegistrant *)self lastname];
        _createDateOfBirthEntryItem = [(HKSimpleDataEntryPlainTextItem *)v32 initWithTitle:v34 registrantModelKey:@"lastname" defaultText:lastname intention:2];

        selfCopy12 = self;
        v12 = 2;
        goto LABEL_17;
      case 3:
        _createDateOfBirthEntryItem = [(HKOrganDonationRegistrant *)self _createDateOfBirthEntryItem];
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
        _createDateOfBirthEntryItem = [(HKSimpleDataEntryMultipleChoiceItem *)v17 initWithTitle:v18 registrantModelKey:@"sex" choices:v59 choiceDisplayNames:v22 defaultChoice:v23];

        selfCopy12 = self;
        v12 = 4;
        goto LABEL_17;
      case 5:
        v44 = [HKSimpleDataEntryPlainTextItem alloc];
        v45 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v46 = [v45 localizedStringForKey:@"OD_EMAIL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        email = [(HKOrganDonationRegistrant *)self email];
        _createDateOfBirthEntryItem = [(HKSimpleDataEntryPlainTextItem *)v44 initWithTitle:v46 registrantModelKey:@"email" defaultText:email intention:3];

        selfCopy12 = self;
        v12 = 5;
        goto LABEL_17;
      case 6:
        _createDateOfBirthEntryItem = [[HKOrganDonationAddressEntryItem alloc] initWithRegistrant:self];
        selfCopy12 = self;
        v12 = 6;
        goto LABEL_17;
      case 7:
        v36 = [HKSimpleDataEntryPlainTextItem alloc];
        v37 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v38 = [v37 localizedStringForKey:@"OD_ADDRESS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        address1 = [(HKOrganDonationRegistrant *)self address1];
        _createDateOfBirthEntryItem = [(HKSimpleDataEntryPlainTextItem *)v36 initWithTitle:v38 registrantModelKey:@"address1" defaultText:address1 intention:4];

        selfCopy12 = self;
        v12 = 7;
        goto LABEL_17;
      case 8:
        v54 = [HKSimpleDataEntryPlainTextItem alloc];
        v55 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v56 = [v55 localizedStringForKey:@"OD_ADDRESS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        address2 = [(HKOrganDonationRegistrant *)self address2];
        _createDateOfBirthEntryItem = [(HKSimpleDataEntryPlainTextItem *)v54 initWithTitle:v56 registrantModelKey:@"address2" defaultText:address2 intention:5];

        selfCopy12 = self;
        v12 = 8;
        goto LABEL_17;
      case 9:
        v28 = [HKSimpleDataEntryPlainTextItem alloc];
        v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v30 = [v29 localizedStringForKey:@"OD_ADDRESS_CITY" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        city = [(HKOrganDonationRegistrant *)self city];
        _createDateOfBirthEntryItem = [(HKSimpleDataEntryPlainTextItem *)v28 initWithTitle:v30 registrantModelKey:@"city" defaultText:city intention:6];

        selfCopy12 = self;
        v12 = 9;
        goto LABEL_17;
      case 10:
        v48 = [HKSimpleDataEntryMultipleChoiceItem alloc];
        v49 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v50 = [v49 localizedStringForKey:@"OD_ADDRESS_STATE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        _stateChoiceValues = [(HKOrganDonationRegistrant *)self _stateChoiceValues];
        _stateChoiceDisplayNames = [(HKOrganDonationRegistrant *)self _stateChoiceDisplayNames];
        state = [(HKOrganDonationRegistrant *)self state];
        _createDateOfBirthEntryItem = [(HKSimpleDataEntryMultipleChoiceItem *)v48 initWithTitle:v50 registrantModelKey:@"state" choices:_stateChoiceValues choiceDisplayNames:_stateChoiceDisplayNames defaultChoice:state];

        selfCopy12 = self;
        v12 = 10;
        goto LABEL_17;
      case 11:
        v13 = [HKSimpleDataEntryPlainTextItem alloc];
        v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v15 = [v14 localizedStringForKey:@"OD_ADDRESS_ZIP" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        v16 = [(HKOrganDonationRegistrant *)self zip];
        _createDateOfBirthEntryItem = [(HKSimpleDataEntryPlainTextItem *)v13 initWithTitle:v15 registrantModelKey:@"zip" defaultText:v16 intention:7];

        selfCopy12 = self;
        v12 = 11;
        goto LABEL_17;
      case 12:
        v24 = [HKSimpleDataEntryPlainTextItem alloc];
        v25 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v26 = [v25 localizedStringForKey:@"OD_SSN" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
        last4SSN = [(HKOrganDonationRegistrant *)self last4SSN];
        _createDateOfBirthEntryItem = [(HKSimpleDataEntryPlainTextItem *)v24 initWithTitle:v26 registrantModelKey:@"last4SSN" defaultText:last4SSN intention:8];

        selfCopy12 = self;
        v12 = 12;
LABEL_17:
        [(HKSimpleDataEntryItem *)_createDateOfBirthEntryItem setPlaceholderType:[(HKOrganDonationRegistrant *)selfCopy12 _placeHolderTypeForField:v12]];
        [(HKSimpleDataEntryItem *)_createDateOfBirthEntryItem setDelegate:self];
        break;
      default:
        _createDateOfBirthEntryItem = 0;
        break;
    }

    [(NSMutableDictionary *)self->_dataEntryItems setObject:_createDateOfBirthEntryItem forKeyedSubscript:v5];
  }

  return _createDateOfBirthEntryItem;
}

- (BOOL)isFieldValid:(int64_t)valid
{
  LOBYTE(email) = 1;
  if (valid <= 6)
  {
    if (valid > 2)
    {
      switch(valid)
      {
        case 3:
          exportDateFormatter = [objc_opt_class() exportDateFormatter];
          v12 = [exportDateFormatter dateFromString:self->_dob];
          LOBYTE(email) = v12 != 0;

          break;
        case 4:
          LOBYTE(email) = [(NSString *)self->_sex length]== 1;
          break;
        case 5:
          email = self->_email;
          if (email)
          {
            whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
            v7 = [(NSString *)email stringByTrimmingCharactersInSet:whitespaceCharacterSet];
            LOBYTE(email) = [v7 rangeOfString:@"^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2 options:{}$", 1025}] != 0x7FFFFFFFFFFFFFFFLL;
          }

          break;
      }

      return email;
    }

    switch(valid)
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

  if (valid <= 9)
  {
    if (valid == 7)
    {
      firstname = self->_address1;
    }

    else if (valid == 8)
    {
      firstname = self->_address2;
    }

    else
    {
      firstname = self->_city;
    }

    goto LABEL_27;
  }

  if (valid == 10)
  {
    v13 = [_sortedStateAbbreviations indexOfObject:self->_state] == 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_28;
  }

  if (valid == 11)
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

  if (valid != 12)
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
    exportDateFormatter = [objc_opt_class() exportDateFormatter];
    v4 = [exportDateFormatter dateFromString:self->_dob];

    if (v4)
    {
      v5 = +[HKSimpleDataEntryDateItem gregorianGMTCalendar];
      v6 = [v5 hk_dateOfBirthDateComponentsWithDate:v4];

      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      _todayBirthdayDateComponents = [(HKOrganDonationRegistrant *)self _todayBirthdayDateComponents];
      v9 = [currentCalendar components:4 fromDateComponents:v6 toDateComponents:_todayBirthdayDateComponents options:0];

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
    timeZone = [v8 timeZone];
    [v7 setTimeZone:timeZone];

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

+ (BOOL)_isNumericStringValid:(id)valid withLength:(int64_t)length
{
  v5 = [MEMORY[0x1E696AE88] localizedScannerWithString:valid];
  decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v10 = 0;
  [v5 scanCharactersFromSet:decimalDigitCharacterSet intoString:&v10];
  v7 = v10;

  v8 = [v7 length];
  return v8 == length;
}

+ (id)convertLocalizedNumericStringToLatin:(id)latin withNumberFormatter:(id)formatter
{
  formatterCopy = formatter;
  latinCopy = latin;
  _importNumberFormatter = [objc_opt_class() _importNumberFormatter];
  v8 = [_importNumberFormatter numberFromString:latinCopy];

  v9 = [formatterCopy stringFromNumber:v8];

  return v9;
}

- (id)_todayBirthdayDateComponents
{
  v2 = +[HKSimpleDataEntryDateItem gregorianGMTCalendar];
  date = [MEMORY[0x1E695DF00] date];
  v4 = [v2 hk_dateOfBirthDateComponentsWithDate:date];

  return v4;
}

- (id)_createDateOfBirthEntryItem
{
  _todayBirthdayDateComponents = [(HKOrganDonationRegistrant *)self _todayBirthdayDateComponents];
  v4 = +[HKSimpleDataEntryDateItem gregorianGMTCalendar];
  v18 = _todayBirthdayDateComponents;
  v5 = [v4 dateFromComponents:_todayBirthdayDateComponents];
  v6 = [v4 dateByAddingUnit:4 value:-130 toDate:v5 options:0];
  v17 = [v4 dateByAddingUnit:4 value:-30 toDate:v5 options:0];
  if ([(NSString *)self->_dob length])
  {
    exportDateFormatter = [objc_opt_class() exportDateFormatter];
    v8 = [exportDateFormatter dateFromString:self->_dob];
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
    allKeys = [v6 allKeys];
    array = [MEMORY[0x1E695DF70] array];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = allKeys;
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

          [array addObject:v16];
          [dictionary setObject:v13 forKey:v16];
        }

        v10 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v10);
    }

    v17 = [array sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];
    v18 = [v17 mutableCopy];

    [v18 insertObject:&stru_1F42FFBE0 atIndex:0];
    array2 = [MEMORY[0x1E695DF70] array];
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

          v25 = [dictionary objectForKeyedSubscript:*(*(&v34 + 1) + 8 * j)];
          v26 = v25;
          if (v25)
          {
            v27 = v25;
          }

          else
          {
            v27 = &stru_1F42FFBE0;
          }

          [array2 addObject:v27];
        }

        v22 = [v20 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v22);
    }

    v28 = _sortedStateNames;
    _sortedStateNames = v20;
    v29 = v20;

    v30 = _sortedStateAbbreviations;
    _sortedStateAbbreviations = array2;
  }
}

- (void)dataEntryItemDidUpdateValue:(id)value
{
  v18 = *MEMORY[0x1E69E9840];
  formattedKeyAndValue = [value formattedKeyAndValue];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [formattedKeyAndValue countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(formattedKeyAndValue);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [formattedKeyAndValue objectForKeyedSubscript:v9];
        v11 = [(HKOrganDonationRegistrant *)self valueForKey:v9];
        if (([v10 isEqualToString:v11] & 1) == 0)
        {
          [(HKOrganDonationRegistrant *)self setValue:v10 forKey:v9];
          self->_hasEdits = 1;
        }
      }

      v6 = [formattedKeyAndValue countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  delegate = [(HKOrganDonationRegistrant *)self delegate];
  [delegate organDonationRegistrantDidUpdateValue:self];
}

- (HKOrganDonationRegistrantDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end