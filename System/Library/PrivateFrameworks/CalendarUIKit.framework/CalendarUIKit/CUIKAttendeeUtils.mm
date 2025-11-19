@interface CUIKAttendeeUtils
+ (id)_contactForIdentity:(id)a3 keys:(id)a4;
+ (id)_displayStringForIdentityWithDecomposedName:(id)a3 useAddressAsFallback:(BOOL)a4 contactIdentifier:(id *)a5 outFirstName:(id *)a6 outLastName:(id *)a7 outDepartment:(id *)a8 useShortName:(BOOL)a9;
+ (id)_filteredAttendeeName:(id)a3 parenthesizedPart:(id *)a4;
+ (id)attendeesWithoutSelfOrganizerAndLocationsWithEvent:(id)a3 outSelfOrganizer:(id *)a4;
+ (id)contactForIdentity:(id)a3 keys:(id)a4 provider:(id)a5;
+ (id)sortEKParticipantsIgnoringNonHumans:(id)a3 event:(id)a4 includeOrganizer:(BOOL)a5;
+ (id)sortedEKParticipantsForSortingIgnoringNonHumans:(id)a3 event:(id)a4 includeOrganizer:(BOOL)a5;
@end

@implementation CUIKAttendeeUtils

+ (id)contactForIdentity:(id)a3 keys:(id)a4 provider:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [v9 phoneNumber];
  v11 = [v9 emailAddress];

  if (!v10)
  {
    if (!v11)
    {
      v16 = 0;
      v14 = 0;
      goto LABEL_9;
    }

    v14 = [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:v11];
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    goto LABEL_9;
  }

  v12 = MEMORY[0x1E695CD58];
  v13 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v10];
  v14 = [v12 predicateForContactsMatchingPhoneNumber:v13];

  if (!v14)
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = [v8 unifiedContactsMatchingPredicate:v14 keysToFetch:v7];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 firstObject];
    goto LABEL_10;
  }

LABEL_9:
  v17 = 0;
LABEL_10:

  return v17;
}

+ (id)_contactForIdentity:(id)a3 keys:(id)a4
{
  v6 = MEMORY[0x1E6992F50];
  v7 = a4;
  v8 = a3;
  v9 = [v6 defaultProvider];
  v10 = [a1 contactForIdentity:v8 keys:v7 provider:v9];

  return v10;
}

+ (id)_displayStringForIdentityWithDecomposedName:(id)a3 useAddressAsFallback:(BOOL)a4 contactIdentifier:(id *)a5 outFirstName:(id *)a6 outLastName:(id *)a7 outDepartment:(id *)a8 useShortName:(BOOL)a9
{
  v44 = a4;
  v50[3] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = EKWeakLinkClass();
  v14 = v13;
  if (a9)
  {
    v15 = 1000;
  }

  else
  {
    v15 = 0;
  }

  v16 = [v13 descriptorForRequiredKeysForStyle:v15];
  v50[0] = v16;
  v17 = EKWeakLinkStringConstant();
  v50[1] = v17;
  v18 = EKWeakLinkStringConstant();
  v50[2] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:3];
  v20 = [a1 _contactForIdentity:v12 keys:v19];

  v21 = a6;
  if (v20)
  {
    v22 = [v14 stringFromContact:v20 style:v15];
    if (a6)
    {
      *a6 = [v20 givenName];
    }

    if (a7)
    {
      *a7 = [v20 familyName];
    }

    if (a5)
    {
      *a5 = [v20 identifier];
    }

    if (v22)
    {
LABEL_31:
      v35 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v36 = [v22 stringByTrimmingCharactersInSet:v35];
      v37 = [v36 isEqual:&stru_1F4AA8958];

      if (!v37 || !v44)
      {
        goto LABEL_42;
      }

      goto LABEL_35;
    }
  }

  v22 = [v12 name];
  v23 = [v12 firstName];
  v24 = [v12 lastName];
  if (![v22 length])
  {
LABEL_17:
    v27 = 0;
    goto LABEL_19;
  }

  if (![v23 length] || !objc_msgSend(v24, "length"))
  {
    if (([v22 cal_isPhoneNumber]& 1) == 0)
    {
      v46 = v24;
      v47[0] = v23;
      CUIKDecomposedAttendeeName(v22, v47, &v46);
      v28 = v47[0];

      v29 = v46;
      v27 = 0;
      v24 = v29;
      v21 = a6;
      v23 = v28;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v48 = 0;
  v49 = 0;
  v47[1] = 0;
  CUIKDecomposedAttendeeName(v22, &v49, &v48);
  v25 = v49;
  v26 = v48;

  v27 = 0;
  v21 = a6;
LABEL_19:
  if ([v23 length] && objc_msgSend(v24, "length"))
  {
    v30 = objc_alloc_init(EKWeakLinkClass());
    [v30 setGivenName:v23];
    [v30 setFamilyName:v24];
    if ([v27 length])
    {
      [v30 setDepartmentName:v27];
    }

    v31 = [EKWeakLinkClass() stringFromContact:v30 style:v15];

    if (v21)
    {
      v32 = v23;
      *v21 = v23;
    }

    if (a7)
    {
      v33 = v24;
      *a7 = v24;
    }

    if (a8)
    {
      v34 = v27;
      *a8 = v27;
    }

    v22 = v31;
  }

  if (v22)
  {
    goto LABEL_31;
  }

  if (!v44)
  {
    goto LABEL_42;
  }

LABEL_35:
  v38 = [v12 emailAddress];
  v39 = [v12 phoneNumber];
  if ([v38 length])
  {
    v40 = v22;
    v22 = v38;
  }

  else if ([v39 length])
  {
    v40 = +[CUIKPhoneNumberDescriptionGenerator sharedGenerator];
    v41 = [v40 formattedStringForPhoneNumber:v39];

    v22 = v41;
  }

  else
  {
    v40 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [CUIKAttendeeUtils _displayStringForIdentityWithDecomposedName:v12 useAddressAsFallback:v40 contactIdentifier:? outFirstName:? outLastName:? outDepartment:? useShortName:?];
    }
  }

LABEL_42:

  return v22;
}

+ (id)_filteredAttendeeName:(id)a3 parenthesizedPart:(id *)a4
{
  v5 = a3;
  v6 = objc_msgSend(v5, "rangeOfString:", @"(");
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v5;
  }

  else
  {
    v8 = v6;
    v9 = [v5 rangeOfString:@"" options:? range:?], 0, v8, objc_msgSend(v5, "length") - v8);
    v10 = v5;
    v11 = v10;
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v10;
    }

    else
    {
      v12 = [v10 length];
      v13 = [v11 substringToIndex:v8];
      if (v9 + 1 == v12)
      {
        v14 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v7 = [v13 stringByTrimmingCharactersInSet:v14];
        v15 = v11;
      }

      else
      {
        v14 = [v11 substringFromIndex:v9];
        v15 = [v13 stringByAppendingString:@" "];
        v7 = [v15 stringByAppendingString:v14];
      }

      if (a4 && v9 + ~v8)
      {
        *a4 = [v11 substringWithRange:{v8 + 1, v9 + ~v8}];
      }
    }
  }

  return v7;
}

+ (id)sortedEKParticipantsForSortingIgnoringNonHumans:(id)a3 event:(id)a4 includeOrganizer:(BOOL)a5
{
  v7 = a4;
  v8 = MEMORY[0x1E696AE18];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __92__CUIKAttendeeUtils_sortedEKParticipantsForSortingIgnoringNonHumans_event_includeOrganizer___block_invoke;
  v19 = &unk_1E839A900;
  v21 = a5;
  v9 = v7;
  v20 = v9;
  v10 = a3;
  v11 = [v8 predicateWithBlock:&v16];
  v12 = [v10 filteredArrayUsingPredicate:{v11, v16, v17, v18, v19}];

  if ([v12 count])
  {
    v13 = [MEMORY[0x1E6966A88] participantsForSortingWithEKParticipants:v12];
    v14 = [v13 mutableCopy];
  }

  else
  {
    v14 = 0;
  }

  [v14 sortUsingSelector:sel_compare_];

  return v14;
}

BOOL __92__CUIKAttendeeUtils_sortedEKParticipantsForSortingIgnoringNonHumans_event_includeOrganizer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 participantType];
  v5 = [v3 name];
  if ([v5 length])
  {
    v6 = 0;
  }

  else
  {
    v7 = [v3 URL];
    v8 = [v7 resourceSpecifier];
    v6 = [v8 length] == 0;
  }

  if (*(a1 + 40))
  {
    v9 = (v4 & 0xFFFFFFFFFFFFFFFELL) == 2 || v6;
  }

  else
  {
    v10 = [*(a1 + 32) organizer];
    v9 = ([v3 isEqualToParticipant:v10] & 1) != 0 || (v4 & 0xFFFFFFFFFFFFFFFELL) == 2 || v6;
  }

  return (v9 & 1) == 0;
}

+ (id)sortEKParticipantsIgnoringNonHumans:(id)a3 event:(id)a4 includeOrganizer:(BOOL)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [a1 sortedEKParticipantsForSortingIgnoringNonHumans:a3 event:a4 includeOrganizer:a5];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * i) participant];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

+ (id)attendeesWithoutSelfOrganizerAndLocationsWithEvent:(id)a3 outSelfOrganizer:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 organizer];
  v6 = [v4 calendar];
  v7 = [v6 sharingStatus];

  v8 = [v4 calendar];
  v9 = [v8 sharingStatus];

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = [v4 attendees];
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v12)
  {
    v14 = 0;
    goto LABEL_23;
  }

  v13 = v12;
  v14 = 0;
  v15 = *v24;
  if (v7)
  {
    v16 = v9 == 2;
  }

  else
  {
    v16 = 0;
  }

  v17 = !v16;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v24 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v19 = *(*(&v23 + 1) + 8 * i);
      if ([v19 participantType] != 2)
      {
        if (v14)
        {
          goto LABEL_18;
        }

        if (![v19 isEqualToParticipant:v5] || !objc_msgSend(v5, "isCurrentUser"))
        {
          v14 = 0;
LABEL_18:
          [v10 addObject:v19];
          continue;
        }

        v14 = v19;
        if ((v17 & 1) == 0)
        {
          goto LABEL_18;
        }
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v13);
LABEL_23:

  if (a4)
  {
    v20 = v14;
    *a4 = v14;
  }

  return v10;
}

+ (void)_displayStringForIdentityWithDecomposedName:(uint64_t)a1 useAddressAsFallback:(NSObject *)a2 contactIdentifier:outFirstName:outLastName:outDepartment:useShortName:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1CAB19000, a2, OS_LOG_TYPE_ERROR, "Unable to get fallback for display string. Identity: %@.", &v2, 0xCu);
}

@end