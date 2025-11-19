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
  v3 = [v2 stringFromContact:a1];

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
  v1 = [a1 emailAddresses];
  v2 = [v1 valueForKeyPath:@"value"];

  return v2;
}

- (id)CalPhoneNumbers
{
  v1 = [a1 phoneNumbers];
  v2 = [v1 valueForKeyPath:@"value"];

  return v2;
}

- (id)CalBirthdayStringForDate:()CalExtensions
{
  v4 = a3;
  v5 = [a1 CalDisplayName];
  v6 = [a1 birthday];
  if (v6)
  {
    v7 = v6;
    v8 = [a1 nonGregorianBirthday];

    if (!v8)
    {
      goto LABEL_12;
    }
  }

  v9 = [a1 nonGregorianBirthday];
  if (v9)
  {
    v10 = v9;
    v11 = [a1 birthday];

    if (!v11)
    {
      v24 = [a1 nonGregorianBirthday];
      goto LABEL_15;
    }
  }

  v12 = [a1 birthday];
  if (!v12 || (v13 = v12, [a1 nonGregorianBirthday], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, !v14))
  {
    v25 = [MEMORY[0x1E695CD58] CalDefaultBirthdayString];
    goto LABEL_21;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v15 = [a1 birthday];
  v16 = [v15 calendar];
  v17 = [v16 components:30 fromDate:v4];

  if (!v17)
  {
LABEL_12:
    v24 = [a1 birthday];
LABEL_15:
    v26 = v24;
    goto LABEL_16;
  }

  v18 = [v17 day];
  v19 = [a1 birthday];
  if (v18 != [v19 day])
  {

    goto LABEL_25;
  }

  v20 = [v17 month];
  v21 = [a1 birthday];
  v22 = [v21 month];

  if (v20 != v22)
  {
LABEL_25:
    v23 = [a1 nonGregorianBirthday];
    goto LABEL_26;
  }

  v23 = [a1 birthday];
LABEL_26:
  v26 = v23;

LABEL_16:
  v27 = [v26 calendar];
  v28 = [v27 calendarIdentifier];

  v29 = [v5 length];
  if (v26 && v29)
  {
    v30 = [v26 calendar];
    v31 = [MEMORY[0x1E695DFE8] defaultTimeZone];
    [v30 setTimeZone:v31];

    v32 = [v30 dateFromComponents:v26];
    v25 = [CalContactsProvider birthdayStringForContactName:v5 eventDate:v4 birthDate:v32 lunarCalendar:v28];
  }

  else
  {
    v25 = [MEMORY[0x1E695CD58] CalDefaultBirthdayString];
  }

LABEL_21:

  return v25;
}

- (id)CalFirstValueForKey:()CalExtensions
{
  v1 = [a1 valueForKey:?];
  if ([v1 count])
  {
    v2 = [v1 firstObject];
    v3 = [v2 value];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)CalValueForKey:()CalExtensions withLabel:
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  [a1 valueForKey:a3];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v19 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 label];
        v13 = [v12 isEqualToString:v6];

        if (v13)
        {
          v8 = [v11 value];
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x1E69E9840];

  return v8;
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