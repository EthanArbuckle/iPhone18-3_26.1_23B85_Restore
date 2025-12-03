@interface FAFamilyMember
- (BOOL)_nilEqualProperty:(id)property with:(id)with;
- (BOOL)canRemoveSelf;
- (BOOL)hasAskToBuyEnabled;
- (BOOL)hasHSA2;
- (BOOL)hasLinkediTunesAccount;
- (BOOL)hasParentalControlsEnabled;
- (BOOL)hasSiwaEnabled;
- (BOOL)isChildAccount;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFamilyMember:(id)member;
- (BOOL)isGuardian;
- (BOOL)isMe;
- (BOOL)isOrganizer;
- (BOOL)isParent;
- (BOOL)memberIsPending;
- (BOOL)purchaseSharingEnabled;
- (FAFamilyMember)initWithCoder:(id)coder;
- (FAFamilyMember)initWithDictionaryRepresentation:(id)representation;
- (NSDate)birthDate;
- (NSDate)invitationDate;
- (NSDate)joinedDate;
- (NSString)fullName;
- (NSString)shortName;
- (id)_dateWithEpochString:(id)string;
- (id)contactWithKeys:(id)keys contactStore:(id)store;
- (id)contactsIncludingImage:(BOOL)image;
- (id)contactsWithKeys:(id)keys contactStore:(id)store;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)memberType;
- (unint64_t)age;
- (unint64_t)hash;
- (void)fetchFamilyPhotoWithRequestedSize:(unint64_t)size fallbackToLocalAddressBook:(BOOL)book completionHandler:(id)handler;
- (void)finishWith:(id)with;
@end

@implementation FAFamilyMember

- (FAFamilyMember)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v9.receiver = self;
  v9.super_class = FAFamilyMember;
  v5 = [(FAFamilyMember *)&v9 init];
  if (v5)
  {
    v6 = [representationCopy copy];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;
  }

  return v5;
}

- (id)description
{
  v14 = MEMORY[0x1E696AD60];
  v3 = objc_opt_class();
  appleID = [(FAFamilyMember *)self appleID];
  dsid = [(FAFamilyMember *)self dsid];
  hashedDSID = dsid;
  if (!dsid)
  {
    hashedDSID = [(FAFamilyMember *)self hashedDSID];
  }

  altDSID = [(FAFamilyMember *)self altDSID];
  firstName = [(FAFamilyMember *)self firstName];
  lastName = [(FAFamilyMember *)self lastName];
  memberTypeString = [(FAFamilyMember *)self memberTypeString];
  remoteChildren = [(FAFamilyMember *)self remoteChildren];
  remoteGuardians = [(FAFamilyMember *)self remoteGuardians];
  inviteEmail = [(FAFamilyMember *)self inviteEmail];
  v12 = [v14 stringWithFormat:@"<%@: %p - appleID=%@ dsid=%@ altDSID=%@ firstName=%@ lastName=%@ type=%@ remote guardians %@ remote children %@ inviteEmail=%@ purchaseSharingEnabled=%d>", v3, self, appleID, hashedDSID, altDSID, firstName, lastName, memberTypeString, remoteChildren, remoteGuardians, inviteEmail, -[FAFamilyMember purchaseSharingEnabled](self, "purchaseSharingEnabled")];

  if (!dsid)
  {
  }

  return v12;
}

- (BOOL)isMe
{
  v2 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"is-me"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)canRemoveSelf
{
  v2 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"can-remove-self"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSString)shortName
{
  contact = [(FAFamilyMember *)self contact];
  v4 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  if (contact)
  {
    givenName = [contact givenName];
    [v4 setGivenName:givenName];

    familyName = [contact familyName];
    [v4 setFamilyName:familyName];

    v7 = [MEMORY[0x1E696ADF8] _localizedShortNameForComponents:v4 withStyle:3 options:0];
  }

  else
  {
    v7 = 0;
  }

  firstName = [(FAFamilyMember *)self firstName];
  if ([firstName length])
  {
    lastName = [(FAFamilyMember *)self lastName];
    if ([lastName length])
    {
      v10 = [v7 length];

      if (v10)
      {
        goto LABEL_10;
      }

      firstName2 = [(FAFamilyMember *)self firstName];
      [v4 setGivenName:firstName2];

      lastName2 = [(FAFamilyMember *)self lastName];
      [v4 setFamilyName:lastName2];

      [MEMORY[0x1E696ADF8] _localizedShortNameForComponents:v4 withStyle:3 options:0];
      v7 = firstName = v7;
    }

    else
    {
    }
  }

LABEL_10:
  if ([v7 length])
  {
    v13 = v7;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (NSString)fullName
{
  contact = [(FAFamilyMember *)self contact];
  if (contact)
  {
    v4 = [MEMORY[0x1E695CD80] stringFromContact:contact style:0];
    if ([v4 length])
    {
      goto LABEL_10;
    }
  }

  firstName = [(FAFamilyMember *)self firstName];
  if (![firstName length])
  {
    v4 = 0;
    goto LABEL_8;
  }

  lastName = [(FAFamilyMember *)self lastName];
  v7 = [lastName length];

  if (v7)
  {
    firstName = objc_alloc_init(MEMORY[0x1E696ADF0]);
    firstName2 = [(FAFamilyMember *)self firstName];
    [firstName setGivenName:firstName2];

    lastName2 = [(FAFamilyMember *)self lastName];
    [firstName setFamilyName:lastName2];

    v10 = objc_alloc_init(MEMORY[0x1E696ADF8]);
    v4 = [v10 stringFromPersonNameComponents:firstName];

LABEL_8:
    goto LABEL_10;
  }

  v4 = 0;
LABEL_10:

  return v4;
}

- (unint64_t)age
{
  appleID = [(FAFamilyMember *)self appleID];
  v4 = CFPreferencesCopyAppValue(appleID, @"com.apple.familycircle.ages");

  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v6 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"member-age"];
    integerValue = [v6 integerValue];
  }

  return integerValue;
}

- (NSDate)birthDate
{
  v3 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"member-date-of-birth"];

  if (v3)
  {
    v4 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"member-date-of-birth"];
    v5 = [(FAFamilyMember *)self _dateWithEpochString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)memberIsPending
{
  v2 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"member-status"];
  v3 = [v2 isEqualToString:@"Pending"];

  return v3;
}

- (int64_t)memberType
{
  v11 = *MEMORY[0x1E69E9840];
  memberTypeString = [(FAFamilyMember *)self memberTypeString];
  if ([memberTypeString isEqualToString:@"ADULT"])
  {
    v4 = 0;
  }

  else if ([memberTypeString isEqualToString:@"TEEN"])
  {
    v4 = 1;
  }

  else if ([memberTypeString isEqualToString:@"CHILD"])
  {
    v4 = 2;
  }

  else
  {
    if (![(FAFamilyMember *)self memberIsPending])
    {
      v5 = _FALogSystem();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"member-status"];
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&dword_1B70B0000, v5, OS_LOG_TYPE_DEFAULT, "No valid member type present! %@", &v9, 0xCu);
      }
    }

    v4 = -1;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (NSDate)joinedDate
{
  v3 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"member-join-date-epoch"];
  v4 = [(FAFamilyMember *)self _dateWithEpochString:v3];

  return v4;
}

- (NSDate)invitationDate
{
  v3 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"member-invite-date-epoch"];
  v4 = [(FAFamilyMember *)self _dateWithEpochString:v3];

  return v4;
}

- (id)_dateWithEpochString:(id)string
{
  [string doubleValue];
  if (string)
  {
    v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v4 * 0.001];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isChildAccount
{
  v2 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"member-is-child-account"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)hasParentalControlsEnabled
{
  if (hasParentalControlsEnabled_onceToken != -1)
  {
    [FAFamilyMember hasParentalControlsEnabled];
  }

  v3 = hasParentalControlsEnabled_forceParentalControlsAppleIDs;
  appleID = [(FAFamilyMember *)self appleID];
  LOBYTE(v3) = [v3 containsObject:appleID];

  if (v3)
  {
    return 1;
  }

  v6 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"is-parental-controls-enabled"];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

void __44__FAFamilyMember_hasParentalControlsEnabled__block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = CFPreferencesCopyAppValue(@"ParentalControlsAppleIDs", @"com.apple.familycircle");
  v1 = hasParentalControlsEnabled_forceParentalControlsAppleIDs;
  hasParentalControlsEnabled_forceParentalControlsAppleIDs = v0;

  if (hasParentalControlsEnabled_forceParentalControlsAppleIDs)
  {
    v2 = _FALogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = hasParentalControlsEnabled_forceParentalControlsAppleIDs;
      _os_log_impl(&dword_1B70B0000, v2, OS_LOG_TYPE_DEFAULT, "WARNING: Parent controls is being forced for these Apple Accounts by preference: %@", &v4, 0xCu);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)isParent
{
  if (isParent_onceToken != -1)
  {
    [FAFamilyMember isParent];
  }

  v3 = isParent_forceParentAppleIDs;
  appleID = [(FAFamilyMember *)self appleID];
  LOBYTE(v3) = [v3 containsObject:appleID];

  if (v3)
  {
    return 1;
  }

  v6 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"member-is-parent-account"];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

void __26__FAFamilyMember_isParent__block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = CFPreferencesCopyAppValue(@"ParentAppleIDs", @"com.apple.familycircle");
  v1 = isParent_forceParentAppleIDs;
  isParent_forceParentAppleIDs = v0;

  if (isParent_forceParentAppleIDs)
  {
    v2 = _FALogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = isParent_forceParentAppleIDs;
      _os_log_impl(&dword_1B70B0000, v2, OS_LOG_TYPE_DEFAULT, "WARNING: These Apple Accounts are forced to be parent accounts by preference: %@", &v4, 0xCu);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)isGuardian
{
  if ([(FAFamilyMember *)self isParent])
  {
    return 1;
  }

  return [(FAFamilyMember *)self isOrganizer];
}

- (BOOL)isOrganizer
{
  v2 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"member-is-organizer"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)hasHSA2
{
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  altDSID = [(FAFamilyMember *)self altDSID];
  v5 = [mEMORY[0x1E698DC80] authKitAccountWithAltDSID:altDSID];

  LOBYTE(altDSID) = [mEMORY[0x1E698DC80] securityLevelForAccount:v5] == 4;
  return altDSID;
}

- (BOOL)hasAskToBuyEnabled
{
  v2 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"is-ask-to-buy-enabled"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)hasSiwaEnabled
{
  v2 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"isSiwaEnabled"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)hasLinkediTunesAccount
{
  v2 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"is-itunes-linked"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)purchaseSharingEnabled
{
  v2 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"family-purchase-sharing-enabled"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)fetchFamilyPhotoWithRequestedSize:(unint64_t)size fallbackToLocalAddressBook:(BOOL)book completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__FAFamilyMember_fetchFamilyPhotoWithRequestedSize_fallbackToLocalAddressBook_completionHandler___block_invoke;
  block[3] = &unk_1E7CA4970;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(v6, block);
}

- (FAFamilyMember)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(FAFamilyMember *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"_dictionary"];
    dictionary = v5->_dictionary;
    v5->_dictionary = v12;

    v14 = v5;
  }

  return v5;
}

- (id)contactWithKeys:(id)keys contactStore:(id)store
{
  v4 = [(FAFamilyMember *)self contactsWithKeys:keys contactStore:store];
  firstObject = [v4 firstObject];

  return firstObject;
}

- (id)contactsIncludingImage:(BOOL)image
{
  imageCopy = image;
  v23[17] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695C240];
  v23[0] = *MEMORY[0x1E695C300];
  v23[1] = v5;
  v6 = *MEMORY[0x1E695C230];
  v23[2] = *MEMORY[0x1E695C2F0];
  v23[3] = v6;
  v7 = *MEMORY[0x1E695C308];
  v23[4] = *MEMORY[0x1E695C390];
  v23[5] = v7;
  v8 = *MEMORY[0x1E695C328];
  v23[6] = *MEMORY[0x1E695C310];
  v23[7] = v8;
  v9 = *MEMORY[0x1E695C2C8];
  v23[8] = *MEMORY[0x1E695C1F8];
  v23[9] = v9;
  v10 = *MEMORY[0x1E695C350];
  v23[10] = *MEMORY[0x1E695C348];
  v23[11] = v10;
  v11 = *MEMORY[0x1E695C358];
  v23[12] = *MEMORY[0x1E695C340];
  v23[13] = v11;
  v12 = *MEMORY[0x1E695C330];
  v23[14] = *MEMORY[0x1E695C410];
  v23[15] = v12;
  v23[16] = *MEMORY[0x1E695C208];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:17];
  v14 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v15 = [v13 arrayByAddingObject:v14];

  if (imageCopy)
  {
    v22 = *MEMORY[0x1E695C400];
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    v17 = [v15 arrayByAddingObjectsFromArray:v16];

    v15 = v17;
  }

  v18 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v19 = [(FAFamilyMember *)self contactsWithKeys:v15 contactStore:v18];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)contactsWithKeys:(id)keys contactStore:(id)store
{
  v58 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  storeCopy = store;
  v8 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  if ([(FAFamilyMember *)self isMe])
  {
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    altDSID = [(FAFamilyMember *)self altDSID];
    v11 = [defaultStore aa_appleAccountWithAltDSID:altDSID];

    if (v11)
    {
      v12 = [storeCopy _crossPlatformUnifiedMeContactWithKeysToFetch:keysCopy error:0];
      if (v12)
      {
        [v8 addObject:v12];
      }

      array = [v8 array];

      goto LABEL_34;
    }
  }

  array2 = [MEMORY[0x1E695DF70] array];
  appleID = [(FAFamilyMember *)self appleID];

  if (appleID)
  {
    v16 = MEMORY[0x1E695CD58];
    appleID2 = [(FAFamilyMember *)self appleID];
    v18 = [v16 predicateForContactsMatchingEmailAddress:appleID2];
    [array2 addObject:v18];
  }

  inviteEmail = [(FAFamilyMember *)self inviteEmail];

  if (inviteEmail)
  {
    v20 = MEMORY[0x1E695CD58];
    inviteEmail2 = [(FAFamilyMember *)self inviteEmail];
    v22 = [v20 predicateForContactsMatchingEmailAddress:inviteEmail2];
    [array2 addObject:v22];
  }

  v23 = MEMORY[0x1E695CF50];
  inviteEmail3 = [(FAFamilyMember *)self inviteEmail];
  v25 = [v23 phoneNumberWithStringValue:inviteEmail3];

  if (v25)
  {
    v26 = [MEMORY[0x1E695CD58] predicateForContactsMatchingPhoneNumber:v25];
    [array2 addObject:v26];
  }

  memberPhoneNumbers = [(FAFamilyMember *)self memberPhoneNumbers];

  if (memberPhoneNumbers)
  {
    v28 = array2;
    v47 = v25;
    memberPhoneNumbers2 = [(FAFamilyMember *)self memberPhoneNumbers];
    v30 = [memberPhoneNumbers2 componentsSeparatedByString:{@", "}];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v31 = v30;
    v32 = [v31 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v53;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v53 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v52 + 1) + 8 * i);
          if ([v36 length])
          {
            v37 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v36];
            if (v37)
            {
              v38 = [MEMORY[0x1E695CD58] predicateForContactsMatchingPhoneNumber:v37];
              [v28 addObject:v38];
            }
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v33);
    }

    v25 = v47;
    array2 = v28;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v39 = array2;
  v40 = [v39 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v49;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v49 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = [storeCopy unifiedContactsMatchingPredicate:*(*(&v48 + 1) + 8 * j) keysToFetch:keysCopy error:0];
        [v8 addObjectsFromArray:v44];
      }

      v41 = [v39 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v41);
  }

  array = [v8 array];

LABEL_34:
  v45 = *MEMORY[0x1E69E9840];

  return array;
}

- (unint64_t)hash
{
  altDSID = [(FAFamilyMember *)self altDSID];
  v3 = [altDSID hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(FAFamilyMember *)self isEqualToFamilyMember:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToFamilyMember:(id)member
{
  memberCopy = member;
  v5 = [(FAFamilyMember *)self age];
  if (v5 == [memberCopy age])
  {
    altDSID = [(FAFamilyMember *)self altDSID];
    altDSID2 = [memberCopy altDSID];
    if ([(FAFamilyMember *)self _nilEqualProperty:altDSID with:altDSID2])
    {
      appleID = [(FAFamilyMember *)self appleID];
      appleID2 = [memberCopy appleID];
      if ([(FAFamilyMember *)self _nilEqualProperty:appleID with:appleID2])
      {
        dsid = [(FAFamilyMember *)self dsid];
        dsid2 = [memberCopy dsid];
        if ([(FAFamilyMember *)self _nilEqualProperty:dsid with:dsid2])
        {
          firstName = [(FAFamilyMember *)self firstName];
          firstName2 = [memberCopy firstName];
          if ([(FAFamilyMember *)self _nilEqualProperty:firstName with:firstName2])
          {
            v50 = firstName;
            hasAskToBuyEnabled = [(FAFamilyMember *)self hasAskToBuyEnabled];
            if (hasAskToBuyEnabled == [memberCopy hasAskToBuyEnabled])
            {
              hashedDSID = [(FAFamilyMember *)self hashedDSID];
              hashedDSID2 = [memberCopy hashedDSID];
              v49 = hashedDSID;
              if (-[FAFamilyMember _nilEqualProperty:with:](self, "_nilEqualProperty:with:", hashedDSID) && (v17 = -[FAFamilyMember hasLinkediTunesAccount](self, "hasLinkediTunesAccount"), v17 == [memberCopy hasLinkediTunesAccount]) && (v18 = -[FAFamilyMember hasParentalControlsEnabled](self, "hasParentalControlsEnabled"), v18 == objc_msgSend(memberCopy, "hasParentalControlsEnabled")))
              {
                inviteEmail = [(FAFamilyMember *)self inviteEmail];
                inviteEmail2 = [memberCopy inviteEmail];
                v47 = inviteEmail;
                if (-[FAFamilyMember _nilEqualProperty:with:](self, "_nilEqualProperty:with:", inviteEmail) && (v21 = -[FAFamilyMember isMe](self, "isMe"), v21 == [memberCopy isMe]) && (v22 = -[FAFamilyMember isOrganizer](self, "isOrganizer"), v22 == objc_msgSend(memberCopy, "isOrganizer")) && (v23 = -[FAFamilyMember isParent](self, "isParent"), v23 == objc_msgSend(memberCopy, "isParent")))
                {
                  iTunesAccountDSID = [(FAFamilyMember *)self iTunesAccountDSID];
                  iTunesAccountDSID2 = [memberCopy iTunesAccountDSID];
                  v45 = iTunesAccountDSID;
                  if ([(FAFamilyMember *)self _nilEqualProperty:iTunesAccountDSID with:?])
                  {
                    iTunesAccountUsername = [(FAFamilyMember *)self iTunesAccountUsername];
                    iTunesAccountUsername2 = [memberCopy iTunesAccountUsername];
                    v43 = iTunesAccountUsername;
                    if ([(FAFamilyMember *)self _nilEqualProperty:iTunesAccountUsername with:?])
                    {
                      lastName = [(FAFamilyMember *)self lastName];
                      lastName2 = [memberCopy lastName];
                      v41 = lastName;
                      if (-[FAFamilyMember _nilEqualProperty:with:](self, "_nilEqualProperty:with:", lastName) && (v27 = -[FAFamilyMember memberType](self, "memberType"), v27 == [memberCopy memberType]))
                      {
                        memberTypeDisplayString = [(FAFamilyMember *)self memberTypeDisplayString];
                        memberTypeDisplayString2 = [memberCopy memberTypeDisplayString];
                        v39 = memberTypeDisplayString;
                        if (-[FAFamilyMember _nilEqualProperty:with:](self, "_nilEqualProperty:with:", memberTypeDisplayString) && (v29 = -[FAFamilyMember memberType](self, "memberType"), v29 == [memberCopy memberType]))
                        {
                          memberTypeDisplayString3 = [(FAFamilyMember *)self memberTypeDisplayString];
                          memberTypeDisplayString4 = [memberCopy memberTypeDisplayString];
                          v37 = memberTypeDisplayString3;
                          if ([(FAFamilyMember *)self _nilEqualProperty:memberTypeDisplayString3 with:?])
                          {
                            memberTypeString = [(FAFamilyMember *)self memberTypeString];
                            memberTypeString2 = [memberCopy memberTypeString];
                            v35 = memberTypeString;
                            if ([(FAFamilyMember *)self _nilEqualProperty:memberTypeString with:?])
                            {
                              statusString = [(FAFamilyMember *)self statusString];
                              statusString2 = [memberCopy statusString];
                              v15 = [(FAFamilyMember *)self _nilEqualProperty:statusString with:?];
                            }

                            else
                            {
                              v15 = 0;
                            }
                          }

                          else
                          {
                            v15 = 0;
                          }
                        }

                        else
                        {
                          v15 = 0;
                        }
                      }

                      else
                      {
                        v15 = 0;
                      }
                    }

                    else
                    {
                      v15 = 0;
                    }
                  }

                  else
                  {
                    v15 = 0;
                  }

                  firstName = v50;
                }

                else
                {
                  v15 = 0;
                  firstName = v50;
                }
              }

              else
              {
                v15 = 0;
                firstName = v50;
              }
            }

            else
            {
              v15 = 0;
              firstName = v50;
            }
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [FAFamilyMember alloc];
  dictionary = [(FAFamilyMember *)self dictionary];
  v6 = [(FAFamilyMember *)v4 initWithDictionaryRepresentation:dictionary];

  return v6;
}

- (BOOL)_nilEqualProperty:(id)property with:(id)with
{
  if (property == with)
  {
    return 1;
  }

  else
  {
    return [property isEqual:with];
  }
}

- (void)finishWith:(id)with
{
  v26 = *MEMORY[0x1E69E9840];
  withCopy = with;
  if (_os_feature_enabled_impl())
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"member-child-dsids"];
    selfCopy = self;
    v7 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"member-guardian-dsids"];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    allKeys = [withCopy allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = v5;
          if (([v6 containsObject:v13] & 1) == 0)
          {
            v14 = v20;
            if (![v7 containsObject:v13])
            {
              continue;
            }
          }

          v15 = [withCopy objectForKeyedSubscript:v13];
          [v14 addObject:v15];
        }

        v10 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    if ([v5 count])
    {
      v16 = v5;
    }

    else
    {
      v16 = 0;
    }

    objc_storeStrong(&selfCopy->_remoteChildren, v16);
    if ([v20 count])
    {
      v17 = v20;
    }

    else
    {
      v17 = 0;
    }

    objc_storeStrong(&selfCopy->_remoteGuardians, v17);
  }

  v18 = *MEMORY[0x1E69E9840];
}

@end