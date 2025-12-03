@interface CNContact(CalExtensions)
+ (id)CalDefaultBirthdayString;
+ (id)CalKeys;
- (id)CalBirthdayStringForDate:()CalExtensions;
- (id)CalDisplayName;
- (id)CalEmailAddresses;
- (id)CalFirstValueForKey:()CalExtensions;
- (id)CalPhoneNumbers;
- (id)CalValueForKey:()CalExtensions withLabel:;
@end

@implementation CNContact(CalExtensions)

- (id)CalDisplayName
{
  v2 = objc_alloc_init(MEMORY[0x1E695CD80]);
  v3 = [v2 stringFromContact:self];

  return v3;
}

+ (id)CalDefaultBirthdayString
{
  v0 = +[CalFoundationBundle bundle];
  v1 = [v0 localizedStringForKey:@"Birthday" value:&stru_1F379FFA8 table:0];

  return v1;
}

- (id)CalEmailAddresses
{
  emailAddresses = [self emailAddresses];
  v2 = [emailAddresses valueForKeyPath:@"value"];

  return v2;
}

- (id)CalPhoneNumbers
{
  phoneNumbers = [self phoneNumbers];
  v2 = [phoneNumbers valueForKeyPath:@"value"];

  return v2;
}

- (id)CalBirthdayStringForDate:()CalExtensions
{
  v4 = a3;
  calDisplayName = [self CalDisplayName];
  birthday = [self birthday];
  if (birthday)
  {
    v7 = birthday;
    nonGregorianBirthday = [self nonGregorianBirthday];

    if (!nonGregorianBirthday)
    {
      goto LABEL_12;
    }
  }

  nonGregorianBirthday2 = [self nonGregorianBirthday];
  if (nonGregorianBirthday2)
  {
    v10 = nonGregorianBirthday2;
    birthday2 = [self birthday];

    if (!birthday2)
    {
      nonGregorianBirthday3 = [self nonGregorianBirthday];
      goto LABEL_15;
    }
  }

  birthday3 = [self birthday];
  if (!birthday3 || (v13 = birthday3, [self nonGregorianBirthday], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, !v14))
  {
    calDefaultBirthdayString = [MEMORY[0x1E695CD58] CalDefaultBirthdayString];
    goto LABEL_21;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  birthday4 = [self birthday];
  calendar = [birthday4 calendar];
  v17 = [calendar components:30 fromDate:v4];

  if (!v17)
  {
LABEL_12:
    nonGregorianBirthday3 = [self birthday];
LABEL_15:
    v26 = nonGregorianBirthday3;
    goto LABEL_16;
  }

  v18 = [v17 day];
  birthday5 = [self birthday];
  if (v18 != [birthday5 day])
  {

    goto LABEL_25;
  }

  month = [v17 month];
  birthday6 = [self birthday];
  month2 = [birthday6 month];

  if (month != month2)
  {
LABEL_25:
    nonGregorianBirthday4 = [self nonGregorianBirthday];
    goto LABEL_26;
  }

  nonGregorianBirthday4 = [self birthday];
LABEL_26:
  v26 = nonGregorianBirthday4;

LABEL_16:
  calendar2 = [v26 calendar];
  calendarIdentifier = [calendar2 calendarIdentifier];

  v29 = [calDisplayName length];
  if (v26 && v29)
  {
    calendar3 = [v26 calendar];
    defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
    [calendar3 setTimeZone:defaultTimeZone];

    v32 = [calendar3 dateFromComponents:v26];
    calDefaultBirthdayString = [CalContactsProvider birthdayStringForContactName:calDisplayName eventDate:v4 birthDate:v32 lunarCalendar:calendarIdentifier];
  }

  else
  {
    calDefaultBirthdayString = [MEMORY[0x1E695CD58] CalDefaultBirthdayString];
  }

LABEL_21:

  return calDefaultBirthdayString;
}

- (id)CalFirstValueForKey:()CalExtensions
{
  v1 = [self valueForKey:?];
  if ([v1 count])
  {
    firstObject = [v1 firstObject];
    value = [firstObject value];
  }

  else
  {
    value = 0;
  }

  return value;
}

- (id)CalValueForKey:()CalExtensions withLabel:
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  [self valueForKey:a3];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v19 = 0u;
  value = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (value)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != value; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        label = [v11 label];
        v13 = [label isEqualToString:v6];

        if (v13)
        {
          value = [v11 value];
          goto LABEL_11;
        }
      }

      value = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (value)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x1E69E9840];

  return value;
}

+ (id)CalKeys
{
  v7[7] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v1 = *MEMORY[0x1E695C208];
  v7[0] = v0;
  v7[1] = v1;
  v2 = *MEMORY[0x1E695C418];
  v7[2] = *MEMORY[0x1E695C330];
  v7[3] = v2;
  v3 = *MEMORY[0x1E695C1D0];
  v7[4] = *MEMORY[0x1E695C1D8];
  v7[5] = v3;
  v7[6] = *MEMORY[0x1E695C318];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:7];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end