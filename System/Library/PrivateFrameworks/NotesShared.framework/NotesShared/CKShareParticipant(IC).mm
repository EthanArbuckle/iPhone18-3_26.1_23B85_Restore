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
  v2 = [a1 userIdentity];
  v3 = [v2 nameComponents];

  if (!v3)
  {
LABEL_6:
    v6 = [a1 ic_emailAddress];
    if ([v6 length])
    {
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_10;
  }

  v4 = [v3 ic_localizedNameWithDefaultFormattingStyle];
  v5 = [v4 ic_trimmedString];

  if (![v5 length])
  {

    goto LABEL_6;
  }

  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_10:

  return v5;
}

- (id)ic_shortParticipantName
{
  v1 = [a1 userIdentity];
  v2 = [v1 nameComponents];

  if (v2)
  {
    v3 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v2 style:1 options:0];
    v4 = [v3 ic_trimmedString];
    if ([v4 length])
    {
      v5 = v4;
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
  v1 = [a1 userIdentity];
  v2 = [v1 lookupInfo];
  v3 = [v2 emailAddress];
  v4 = [v3 ic_trimmedString];

  if ([v4 length])
  {
    v5 = v4;
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
  v1 = [a1 userIdentity];
  v2 = [v1 lookupInfo];
  v3 = [v2 phoneNumber];
  v4 = [v3 ic_trimmedString];

  if ([v4 length])
  {
    v5 = v4;
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
  v6 = [a4 account];
  v7 = [v6 userRecordName];
  v8 = [v5 ic_isCaseInsensitiveEqualToString:v7];

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
  v8 = [v7 ic_participantName];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
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
  v8 = [v7 ic_shortParticipantName];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
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
  v1 = [a1 ic_participantsWithDisplayableNames:? maximumNamesCount:?];
  v2 = [v1 ic_compactMap:&__block_literal_global_18];

  return v2;
}

+ (id)ic_participantsWithDisplayableNames:()IC maximumNamesCount:
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEB18] array];
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
      if ([v6 count] >= a4)
      {
        break;
      }

      if (([v12 isCurrentUser] & 1) == 0)
      {
        v13 = [v12 ic_participantName];

        if (v13)
        {
          [v6 ic_addNonNilObject:v12];
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

  v14 = [v6 copy];

  return v14;
}

- (id)ic_mentionTokens
{
  v2 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(objc_opt_class(), "ic_mentionTokensPerParticipant")}];
  v3 = [a1 userIdentity];
  v4 = [v3 nameComponents];
  v5 = [v4 givenName];
  v6 = [v5 ic_tokenSafeText];

  [v2 ic_addNonEmptyString:v6];
  v7 = [a1 userIdentity];
  v8 = [v7 nameComponents];
  v9 = [v8 familyName];
  v10 = [v9 ic_tokenSafeText];

  [v2 ic_addNonEmptyString:v10];
  v11 = [a1 userIdentity];
  v12 = [v11 nameComponents];

  if (v12)
  {
    v13 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v12 style:4 options:0];
    if (([v13 ic_containsWhitespaceCharacters] & 1) == 0)
    {
      v14 = [v13 ic_tokenSafeText];
      [v2 ic_addNonEmptyString:v14];
    }

    v15 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v12 style:0 options:0];

    v16 = [v15 ic_tokenSafeText];
    [v2 ic_addNonEmptyString:v16];
  }

  v17 = [v2 copy];

  return v17;
}

- (id)ic_mentionTokensFromContacts
{
  v1 = [a1 ic_mentionableNamesFromContacts];
  v2 = [v1 ic_compactMap:&__block_literal_global_57];

  return v2;
}

- (id)ic_mentionableNamesFromContacts
{
  v64[6] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"![NSThread isMainThread]" functionName:"-[CKShareParticipant(IC) ic_mentionableNamesFromContacts]" simulateCrash:1 showAlert:0 format:@"Unexpected call from main thread"];
  }

  v2 = [objc_opt_class() ic_mentionableNamesCache];
  v3 = [v2 objectForKey:a1];

  if (!v3)
  {
    v3 = objc_alloc_init(ICShareParticipantCacheEntry);
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v6 = [a1 ic_emailAddress];
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
    v49 = a1;
    v46 = v6;
    v47 = v11;
    if ([v6 length])
    {
      v12 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:v6];
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

      a1 = v49;
    }

    else
    {
      v50 = 0;
      v13 = 0;
    }

    if (![v13 count])
    {
      v15 = [a1 ic_phoneNumber];
      if ([v15 length])
      {
        v16 = MEMORY[0x277CBDA58];
        v17 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v15];
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

      v44 = [objc_opt_class() ic_mentionableNamesCache];
      [v44 setObject:v3 forKey:v49];

      v4 = [v5 copy];
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
      v28 = [v27 contactType];
      if (v28 == 1)
      {
        break;
      }

      if (!v28)
      {
        v29 = [v27 givenName];
        v30 = [v29 ic_trimmedString];

        if ([v30 length])
        {
          [v5 addObject:v30];
          [(ICShareParticipantCacheEntry *)v3 setGivenName:v30];
        }

        v31 = [v27 familyName];
        v32 = [v31 ic_trimmedString];

        if ([v32 length])
        {
          [v5 addObject:v32];
          [(ICShareParticipantCacheEntry *)v3 setFamilyName:v32];
        }

        v33 = [v27 nickname];
        v34 = [v33 ic_trimmedString];

        if ([v34 length])
        {
          [v5 addObject:v34];
          [(ICShareParticipantCacheEntry *)v3 setNickname:v34];
        }

        v54 = v34;
        v35 = objc_alloc_init(MEMORY[0x277CCAC00]);
        [v35 setGivenName:v30];
        [v35 setFamilyName:v32];
        v36 = [v35 ic_localizedNameWithDefaultFormattingStyle];
        v37 = [v36 ic_trimmedString];

        if ([v37 length])
        {
          [v5 addObject:v37];
          [(ICShareParticipantCacheEntry *)v3 setDisplayName:v37];
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
        v42 = [v41 ic_trimmedString];

        v3 = v40;
        if ([v42 length])
        {
          [(ICShareParticipantCacheEntry *)v40 setActivityStreamDisplayName:v42];
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

    v43 = [v27 organizationName];
    v30 = [v43 ic_trimmedString];

    if ([v30 length])
    {
      [v5 addObject:v30];
      [(ICShareParticipantCacheEntry *)v3 setDisplayName:v30];
    }

    goto LABEL_43;
  }

  v4 = [(ICShareParticipantCacheEntry *)v3 names];
  if (!v4)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((names) != nil)" functionName:"-[CKShareParticipant(IC) ic_mentionableNamesFromContacts]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "names"}];
  }

LABEL_47:

  return v4;
}

- (id)ic_cachedDisplayNameFromContacts
{
  objc_opt_class();
  v2 = [objc_opt_class() ic_mentionableNamesCache];
  v3 = [v2 objectForKey:a1];
  v4 = ICCheckedDynamicCast();
  v5 = [v4 displayName];

  return v5;
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
  v6 = [objc_opt_class() ic_mentionableNamesCache];
  v7 = [v6 objectForKey:a1];

  v8 = [v5 ic_tokenSafeText];
  if ([v8 length])
  {
    v9 = [a1 userIdentity];
    v10 = [v9 nameComponents];

    v11 = [a1 userIdentity];
    v12 = [v11 nameComponents];
    v60 = [v12 givenName];

    v13 = [a1 userIdentity];
    v14 = [v13 nameComponents];
    v59 = [v14 familyName];

    v58 = v10;
    v63 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v10 style:0 options:0];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__CKShareParticipant_IC__ic_participantNameMatchingString_returnFullName___block_invoke;
    aBlock[3] = &unk_278196270;
    v15 = v8;
    v74 = a4;
    v72 = v15;
    v73 = &v75;
    v61 = _Block_copy(aBlock);
    if (v7)
    {
      v16 = v8;
      v17 = v5;
      v18 = [v7 initials];
      v19 = [v7 givenName];
      v20 = [v7 familyName];
      v21 = [v7 displayName];
      v61[2](v61, v18, v19, v20, v21);

      v5 = v17;
      v8 = v16;
    }

    if (!v76[5])
    {
      v22 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v58 style:4 options:0];
      v61[2](v61, v22, v60, v59, v63);

      if (!v76[5])
      {
        v57 = v8;
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
        v26 = [v7 givenName];
        v25[2](v25, v26);

        v27 = [v7 familyName];
        v25[2](v25, v27);

        v28 = [v7 nickname];
        v25[2](v25, v28);

        v29 = [v7 displayName];
        v25[2](v25, v29);

        [v24 ic_addNonNilObject:v60];
        v30 = [a1 userIdentity];
        v31 = [v30 nameComponents];
        v32 = [v31 familyName];
        [v24 ic_addNonNilObject:v32];

        [v24 ic_addNonNilObject:v63];
        v55 = v25;
        v33 = 0;
        v34 = 0;
        while (v33 < [v24 count])
        {
          if (v33 >= v68[3])
          {
            v35 = v63;
          }

          else
          {
            v35 = [v7 displayName];
          }

          v36 = v35;
          v37 = [v24 objectAtIndexedSubscript:v33];
          v38 = [v37 ic_tokenSafeText];
          v39 = [v38 isEqualToString:v15];

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
            v40 = [v37 ic_tokenSafeText];
            v41 = [v40 hasPrefix:v15];

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
        v8 = v57;
      }
    }
  }

  v44 = v76[5];
  if (!v44 || ![v44 length])
  {
    v45 = [a1 ic_shortParticipantName];
    v46 = v76[5];
    v76[5] = v45;

    v47 = [v7 givenName];
    v48 = [v47 length];

    if (v48)
    {
      v49 = MEMORY[0x277CCACA8];
      v50 = [v7 givenName];
      v51 = [v7 familyName];
      v52 = [v49 ic_shortNameFromGivenName:v50 familyName:v51];

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
  v2 = [objc_opt_class() ic_mentionableNamesCache];
  v3 = [v2 objectForKey:a1];
  v4 = ICCheckedDynamicCast();

  v5 = [v4 activityStreamDisplayName];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [a1 ic_shortParticipantName];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
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
  v5 = [a1 userIdentity];
  v6 = [v5 userRecordID];
  v7 = [v6 recordName];

  if ([v7 isEqualToString:*MEMORY[0x277CBBF28]])
  {
    v8 = [v4 account];
    v9 = [v8 userRecordName];

    v7 = v9;
  }

  return v7;
}

@end