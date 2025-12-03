@interface CKShareParticipant(IC)
+ (id)ic_displayableNames:()IC maximumNamesCount:;
+ (id)ic_mentionableNamesCache;
+ (id)ic_participantFallbackNameForUserRecordName:()IC note:;
+ (id)ic_participantNameOrFallbackForUserRecordName:()IC note:;
+ (id)ic_participantsWithDisplayableNames:()IC maximumNamesCount:;
+ (id)ic_shortParticipantNameOrFallbackForUserRecordName:()IC note:;
- (id)ic_activityStreamDisplayName;
- (id)ic_cachedDisplayNameFromContacts;
- (id)ic_mentionTokens;
- (id)ic_mentionTokensFromContacts;
- (id)ic_mentionableNamesFromContacts;
- (id)ic_participantName;
- (id)ic_participantNameMatchingString:()IC returnFullName:;
- (id)ic_shortParticipantName;
- (id)ic_userRecordNameInNote:()IC;
- (void)ic_emailAddress;
- (void)ic_phoneNumber;
@end

@implementation CKShareParticipant(IC)

+ (id)ic_mentionableNamesCache
{
  if (ic_mentionableNamesCache_token != -1)
  {
    +[CKShareParticipant(IC) ic_mentionableNamesCache];
  }

  v1 = ic_mentionableNamesCache_sMentionableNamesCache;

  return v1;
}

- (id)ic_participantName
{
  userIdentity = [self userIdentity];
  nameComponents = [userIdentity nameComponents];

  if (!nameComponents)
  {
LABEL_6:
    ic_emailAddress = [self ic_emailAddress];
    if ([ic_emailAddress length])
    {
      ic_trimmedString = ic_emailAddress;
    }

    else
    {
      ic_trimmedString = 0;
    }

    goto LABEL_10;
  }

  ic_localizedNameWithDefaultFormattingStyle = [nameComponents ic_localizedNameWithDefaultFormattingStyle];
  ic_trimmedString = [ic_localizedNameWithDefaultFormattingStyle ic_trimmedString];

  if (![ic_trimmedString length])
  {

    goto LABEL_6;
  }

  if (!ic_trimmedString)
  {
    goto LABEL_6;
  }

LABEL_10:

  return ic_trimmedString;
}

- (id)ic_shortParticipantName
{
  userIdentity = [self userIdentity];
  nameComponents = [userIdentity nameComponents];

  if (nameComponents)
  {
    v3 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:nameComponents style:1 options:0];
    ic_trimmedString = [v3 ic_trimmedString];
    if ([ic_trimmedString length])
    {
      v5 = ic_trimmedString;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)ic_emailAddress
{
  userIdentity = [self userIdentity];
  lookupInfo = [userIdentity lookupInfo];
  emailAddress = [lookupInfo emailAddress];
  ic_trimmedString = [emailAddress ic_trimmedString];

  if ([ic_trimmedString length])
  {
    v5 = ic_trimmedString;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)ic_phoneNumber
{
  userIdentity = [self userIdentity];
  lookupInfo = [userIdentity lookupInfo];
  phoneNumber = [lookupInfo phoneNumber];
  ic_trimmedString = [phoneNumber ic_trimmedString];

  if ([ic_trimmedString length])
  {
    v5 = ic_trimmedString;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

+ (id)ic_participantFallbackNameForUserRecordName:()IC note:
{
  v5 = a3;
  account = [a4 account];
  userRecordName = [account userRecordName];
  v8 = [v5 ic_isCaseInsensitiveEqualToString:userRecordName];

  if (v8)
  {
    v9 = @"Me";
  }

  else
  {
    v9 = @"Somebody";
  }

  v10 = __ICLocalizedFrameworkString_impl(v9, v9, 0, 1);

  return v10;
}

+ (id)ic_participantNameOrFallbackForUserRecordName:()IC note:
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 participantForUserID:v5];
  ic_participantName = [v7 ic_participantName];
  v9 = ic_participantName;
  if (ic_participantName)
  {
    v10 = ic_participantName;
  }

  else
  {
    v10 = [MEMORY[0x277CBC6A0] ic_participantFallbackNameForUserRecordName:v5 note:v6];
  }

  v11 = v10;

  return v11;
}

+ (id)ic_shortParticipantNameOrFallbackForUserRecordName:()IC note:
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 participantForUserID:v5];
  ic_shortParticipantName = [v7 ic_shortParticipantName];
  v9 = ic_shortParticipantName;
  if (ic_shortParticipantName)
  {
    v10 = ic_shortParticipantName;
  }

  else
  {
    v10 = [MEMORY[0x277CBC6A0] ic_participantFallbackNameForUserRecordName:v5 note:v6];
  }

  v11 = v10;

  return v11;
}

+ (id)ic_displayableNames:()IC maximumNamesCount:
{
  v1 = [self ic_participantsWithDisplayableNames:? maximumNamesCount:?];
  v2 = [v1 ic_compactMap:&__block_literal_global_18];

  return v2;
}

+ (id)ic_participantsWithDisplayableNames:()IC maximumNamesCount:
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v16 + 1) + 8 * v11);
      if ([array count] >= a4)
      {
        break;
      }

      if (([v12 isCurrentUser] & 1) == 0)
      {
        ic_participantName = [v12 ic_participantName];

        if (ic_participantName)
        {
          [array ic_addNonNilObject:v12];
        }
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v14 = [array copy];

  return v14;
}

- (id)ic_mentionTokens
{
  v2 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(objc_opt_class(), "ic_mentionTokensPerParticipant")}];
  userIdentity = [self userIdentity];
  nameComponents = [userIdentity nameComponents];
  givenName = [nameComponents givenName];
  ic_tokenSafeText = [givenName ic_tokenSafeText];

  [v2 ic_addNonEmptyString:ic_tokenSafeText];
  userIdentity2 = [self userIdentity];
  nameComponents2 = [userIdentity2 nameComponents];
  familyName = [nameComponents2 familyName];
  ic_tokenSafeText2 = [familyName ic_tokenSafeText];

  [v2 ic_addNonEmptyString:ic_tokenSafeText2];
  userIdentity3 = [self userIdentity];
  nameComponents3 = [userIdentity3 nameComponents];

  if (nameComponents3)
  {
    v13 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:nameComponents3 style:4 options:0];
    if (([v13 ic_containsWhitespaceCharacters] & 1) == 0)
    {
      ic_tokenSafeText3 = [v13 ic_tokenSafeText];
      [v2 ic_addNonEmptyString:ic_tokenSafeText3];
    }

    v15 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:nameComponents3 style:0 options:0];

    ic_tokenSafeText4 = [v15 ic_tokenSafeText];
    [v2 ic_addNonEmptyString:ic_tokenSafeText4];
  }

  v17 = [v2 copy];

  return v17;
}

- (id)ic_mentionTokensFromContacts
{
  ic_mentionableNamesFromContacts = [self ic_mentionableNamesFromContacts];
  v2 = [ic_mentionableNamesFromContacts ic_compactMap:&__block_literal_global_57];

  return v2;
}

- (id)ic_mentionableNamesFromContacts
{
  v64[6] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"![NSThread isMainThread]" functionName:"-[CKShareParticipant(IC) ic_mentionableNamesFromContacts]" simulateCrash:1 showAlert:0 format:@"Unexpected call from main thread"];
  }

  ic_mentionableNamesCache = [objc_opt_class() ic_mentionableNamesCache];
  v3 = [ic_mentionableNamesCache objectForKey:self];

  if (!v3)
  {
    v3 = objc_alloc_init(ICShareParticipantCacheEntry);
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    ic_emailAddress = [self ic_emailAddress];
    v7 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    v8 = *MEMORY[0x277CBD000];
    v64[0] = *MEMORY[0x277CBD160];
    v64[1] = v8;
    v9 = *MEMORY[0x277CBD078];
    v64[2] = *MEMORY[0x277CBCFF8];
    v64[3] = v9;
    v10 = *MEMORY[0x277CBD098];
    v64[4] = *MEMORY[0x277CBD090];
    v64[5] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:6];
    v48 = v7;
    selfCopy = self;
    v46 = ic_emailAddress;
    v47 = v11;
    if ([ic_emailAddress length])
    {
      v12 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:ic_emailAddress];
      v60 = 0;
      v13 = [v7 unifiedContactsMatchingPredicate:v12 keysToFetch:v11 error:&v60];
      v50 = v60;
      if (v50)
      {
        v14 = os_log_create("com.apple.notes", "Mentions");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v63 = v50;
          _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_INFO, "Error fetching contacts via email: %@", buf, 0xCu);
        }
      }

      self = selfCopy;
    }

    else
    {
      v50 = 0;
      v13 = 0;
    }

    if (![v13 count])
    {
      ic_phoneNumber = [self ic_phoneNumber];
      if ([ic_phoneNumber length])
      {
        v16 = MEMORY[0x277CBDA58];
        v17 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:ic_phoneNumber];
        v18 = [v16 predicateForContactsMatchingPhoneNumber:v17];

        v59 = v50;
        v19 = [v48 unifiedContactsMatchingPredicate:v18 keysToFetch:v47 error:&v59];
        v20 = v59;

        if (v20)
        {
          v21 = os_log_create("com.apple.notes", "Mentions");
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v63 = v20;
            _os_log_impl(&dword_214D51000, v21, OS_LOG_TYPE_INFO, "Error fetching contacts via phone number: %@", buf, 0xCu);
          }
        }

        v13 = v19;
        v50 = v20;
      }
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = v13;
    v22 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
    if (!v22)
    {
LABEL_46:

      ic_mentionableNamesCache2 = [objc_opt_class() ic_mentionableNamesCache];
      [ic_mentionableNamesCache2 setObject:v3 forKey:selfCopy];

      names = [v5 copy];
      goto LABEL_47;
    }

    v23 = v22;
    v24 = *v56;
    v25 = 0x277CCA000uLL;
    v51 = *v56;
LABEL_23:
    v26 = 0;
    v52 = v23;
    while (1)
    {
      if (*v56 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(*(&v55 + 1) + 8 * v26);
      contactType = [v27 contactType];
      if (contactType == 1)
      {
        break;
      }

      if (!contactType)
      {
        givenName = [v27 givenName];
        ic_trimmedString = [givenName ic_trimmedString];

        if ([ic_trimmedString length])
        {
          [v5 addObject:ic_trimmedString];
          [(ICShareParticipantCacheEntry *)v3 setGivenName:ic_trimmedString];
        }

        familyName = [v27 familyName];
        ic_trimmedString2 = [familyName ic_trimmedString];

        if ([ic_trimmedString2 length])
        {
          [v5 addObject:ic_trimmedString2];
          [(ICShareParticipantCacheEntry *)v3 setFamilyName:ic_trimmedString2];
        }

        nickname = [v27 nickname];
        ic_trimmedString3 = [nickname ic_trimmedString];

        if ([ic_trimmedString3 length])
        {
          [v5 addObject:ic_trimmedString3];
          [(ICShareParticipantCacheEntry *)v3 setNickname:ic_trimmedString3];
        }

        v54 = ic_trimmedString3;
        v35 = objc_alloc_init(MEMORY[0x277CCAC00]);
        [v35 setGivenName:ic_trimmedString];
        [v35 setFamilyName:ic_trimmedString2];
        ic_localizedNameWithDefaultFormattingStyle = [v35 ic_localizedNameWithDefaultFormattingStyle];
        ic_trimmedString4 = [ic_localizedNameWithDefaultFormattingStyle ic_trimmedString];

        if ([ic_trimmedString4 length])
        {
          [v5 addObject:ic_trimmedString4];
          [(ICShareParticipantCacheEntry *)v3 setDisplayName:ic_trimmedString4];
        }

        v38 = [*(v25 + 3080) localizedStringFromPersonNameComponents:v35 style:4 options:0];
        if ([v38 length])
        {
          [v5 addObject:v38];
          [(ICShareParticipantCacheEntry *)v3 setInitials:v38];
        }

        v39 = v5;
        [*(v25 + 3080) localizedStringFromPersonNameComponents:v35 style:1 options:0];
        v41 = v40 = v3;
        ic_trimmedString5 = [v41 ic_trimmedString];

        v3 = v40;
        if ([ic_trimmedString5 length])
        {
          [(ICShareParticipantCacheEntry *)v40 setActivityStreamDisplayName:ic_trimmedString5];
        }

        v5 = v39;
        v24 = v51;
        v23 = v52;
        v25 = 0x277CCA000;
LABEL_43:
      }

      if (v23 == ++v26)
      {
        v23 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
        if (!v23)
        {
          goto LABEL_46;
        }

        goto LABEL_23;
      }
    }

    organizationName = [v27 organizationName];
    ic_trimmedString = [organizationName ic_trimmedString];

    if ([ic_trimmedString length])
    {
      [v5 addObject:ic_trimmedString];
      [(ICShareParticipantCacheEntry *)v3 setDisplayName:ic_trimmedString];
    }

    goto LABEL_43;
  }

  names = [(ICShareParticipantCacheEntry *)v3 names];
  if (!names)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((names) != nil)" functionName:"-[CKShareParticipant(IC) ic_mentionableNamesFromContacts]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "names"}];
  }

LABEL_47:

  return names;
}

- (id)ic_cachedDisplayNameFromContacts
{
  objc_opt_class();
  ic_mentionableNamesCache = [objc_opt_class() ic_mentionableNamesCache];
  v3 = [ic_mentionableNamesCache objectForKey:self];
  v4 = ICCheckedDynamicCast();
  displayName = [v4 displayName];

  return displayName;
}

- (id)ic_participantNameMatchingString:()IC returnFullName:
{
  v5 = a3;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__13;
  v79 = __Block_byref_object_dispose__13;
  v80 = 0;
  ic_mentionableNamesCache = [objc_opt_class() ic_mentionableNamesCache];
  v7 = [ic_mentionableNamesCache objectForKey:self];

  ic_tokenSafeText = [v5 ic_tokenSafeText];
  if ([ic_tokenSafeText length])
  {
    userIdentity = [self userIdentity];
    nameComponents = [userIdentity nameComponents];

    userIdentity2 = [self userIdentity];
    nameComponents2 = [userIdentity2 nameComponents];
    givenName = [nameComponents2 givenName];

    userIdentity3 = [self userIdentity];
    nameComponents3 = [userIdentity3 nameComponents];
    familyName = [nameComponents3 familyName];

    v58 = nameComponents;
    v63 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:nameComponents style:0 options:0];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__CKShareParticipant_IC__ic_participantNameMatchingString_returnFullName___block_invoke;
    aBlock[3] = &unk_278196270;
    v15 = ic_tokenSafeText;
    v74 = a4;
    v72 = v15;
    v73 = &v75;
    v61 = _Block_copy(aBlock);
    if (v7)
    {
      v16 = ic_tokenSafeText;
      v17 = v5;
      initials = [v7 initials];
      givenName2 = [v7 givenName];
      familyName2 = [v7 familyName];
      displayName = [v7 displayName];
      v61[2](v61, initials, givenName2, familyName2, displayName);

      v5 = v17;
      ic_tokenSafeText = v16;
    }

    if (!v76[5])
    {
      v22 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v58 style:4 options:0];
      v61[2](v61, v22, givenName, familyName, v63);

      if (!v76[5])
      {
        v57 = ic_tokenSafeText;
        v67 = 0;
        v68 = &v67;
        v69 = 0x2020000000;
        v70 = 0;
        v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:7];
        v56 = v5;
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __74__CKShareParticipant_IC__ic_participantNameMatchingString_returnFullName___block_invoke_2;
        v64[3] = &unk_278196298;
        v24 = v23;
        v65 = v24;
        v66 = &v67;
        v25 = _Block_copy(v64);
        givenName3 = [v7 givenName];
        v25[2](v25, givenName3);

        familyName3 = [v7 familyName];
        v25[2](v25, familyName3);

        nickname = [v7 nickname];
        v25[2](v25, nickname);

        displayName2 = [v7 displayName];
        v25[2](v25, displayName2);

        [v24 ic_addNonNilObject:givenName];
        userIdentity4 = [self userIdentity];
        nameComponents4 = [userIdentity4 nameComponents];
        familyName4 = [nameComponents4 familyName];
        [v24 ic_addNonNilObject:familyName4];

        [v24 ic_addNonNilObject:v63];
        v55 = v25;
        v33 = 0;
        v34 = 0;
        while (v33 < [v24 count])
        {
          if (v33 >= v68[3])
          {
            displayName3 = v63;
          }

          else
          {
            displayName3 = [v7 displayName];
          }

          v36 = displayName3;
          v37 = [v24 objectAtIndexedSubscript:v33];
          ic_tokenSafeText2 = [v37 ic_tokenSafeText];
          v39 = [ic_tokenSafeText2 isEqualToString:v15];

          if (v39)
          {
            if (a4)
            {
              v43 = v36;
            }

            else
            {
              v43 = v37;
            }

            objc_storeStrong(v76 + 5, v43);

            break;
          }

          if (!v34)
          {
            ic_tokenSafeText3 = [v37 ic_tokenSafeText];
            v41 = [ic_tokenSafeText3 hasPrefix:v15];

            if (v41)
            {
              if (a4)
              {
                v42 = v36;
              }

              else
              {
                v42 = v37;
              }

              v34 = v42;
            }

            else
            {
              v34 = 0;
            }
          }

          ++v33;
        }

        if (!v76[5])
        {
          objc_storeStrong(v76 + 5, v34);
        }

        _Block_object_dispose(&v67, 8);
        v5 = v56;
        ic_tokenSafeText = v57;
      }
    }
  }

  v44 = v76[5];
  if (!v44 || ![v44 length])
  {
    ic_shortParticipantName = [self ic_shortParticipantName];
    v46 = v76[5];
    v76[5] = ic_shortParticipantName;

    givenName4 = [v7 givenName];
    v48 = [givenName4 length];

    if (v48)
    {
      v49 = MEMORY[0x277CCACA8];
      givenName5 = [v7 givenName];
      familyName5 = [v7 familyName];
      v52 = [v49 ic_shortNameFromGivenName:givenName5 familyName:familyName5];

      if ([v52 length])
      {
        objc_storeStrong(v76 + 5, v52);
      }
    }
  }

  v53 = v76[5];

  _Block_object_dispose(&v75, 8);

  return v53;
}

- (id)ic_activityStreamDisplayName
{
  objc_opt_class();
  ic_mentionableNamesCache = [objc_opt_class() ic_mentionableNamesCache];
  v3 = [ic_mentionableNamesCache objectForKey:self];
  v4 = ICCheckedDynamicCast();

  activityStreamDisplayName = [v4 activityStreamDisplayName];
  v6 = activityStreamDisplayName;
  if (activityStreamDisplayName)
  {
    v7 = activityStreamDisplayName;
  }

  else
  {
    ic_shortParticipantName = [self ic_shortParticipantName];
    v9 = ic_shortParticipantName;
    if (ic_shortParticipantName)
    {
      v10 = ic_shortParticipantName;
    }

    else
    {
      v10 = __ICLocalizedFrameworkString_impl(@"Somebody", @"Somebody", 0, 1);
    }

    v7 = v10;
  }

  return v7;
}

- (id)ic_userRecordNameInNote:()IC
{
  v4 = a3;
  userIdentity = [self userIdentity];
  userRecordID = [userIdentity userRecordID];
  recordName = [userRecordID recordName];

  if ([recordName isEqualToString:*MEMORY[0x277CBBF28]])
  {
    account = [v4 account];
    userRecordName = [account userRecordName];

    recordName = userRecordName;
  }

  return recordName;
}

@end