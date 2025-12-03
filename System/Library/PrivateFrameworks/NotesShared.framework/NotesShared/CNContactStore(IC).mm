@interface CNContactStore(IC)
- (id)ic_contactForEmailAddressString:()IC keysToFetch:;
- (id)ic_contactForHandleString:()IC keysToFetch:;
- (id)ic_contatForPhoneNumberString:()IC keysToFetch:;
- (id)ic_existingOrNewContactFromParticipant:()IC keysToFetch:;
@end

@implementation CNContactStore(IC)

- (id)ic_existingOrNewContactFromParticipant:()IC keysToFetch:
{
  v6 = a3;
  v7 = a4;
  userIdentity = [v6 userIdentity];
  lookupInfo = [userIdentity lookupInfo];
  emailAddress = [lookupInfo emailAddress];

  if (emailAddress)
  {
    v11 = [self ic_contactForEmailAddressString:emailAddress keysToFetch:v7];
  }

  else
  {
    v11 = 0;
  }

  userIdentity2 = [v6 userIdentity];
  lookupInfo2 = [userIdentity2 lookupInfo];
  phoneNumber = [lookupInfo2 phoneNumber];

  if (!v11 && phoneNumber)
  {
    v11 = [self ic_contatForPhoneNumberString:phoneNumber keysToFetch:v7];
  }

  if (!v11)
  {
    v15 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [(CNContactStore(IC) *)v15 ic_existingOrNewContactFromParticipant:v16 keysToFetch:v17, v18, v19, v20, v21, v22];
    }

    v11 = [MEMORY[0x277CBDA58] ic_contactFromParticipant:v6];
  }

  return v11;
}

- (id)ic_contactForEmailAddressString:()IC keysToFetch:
{
  v6 = a3;
  v7 = a4;
  if (![v6 length])
  {
    firstObject = 0;
    goto LABEL_12;
  }

  v8 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:v6];
  v21 = 0;
  v9 = [self unifiedContactsMatchingPredicate:v8 keysToFetch:v7 error:&v21];
  v10 = v21;
  firstObject = [v9 firstObject];

  if (v10)
  {
    v12 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CNContactStore(IC) ic_contactForEmailAddressString:v10 keysToFetch:v12];
    }
  }

  else if (firstObject)
  {
    v10 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(CNContactStore(IC) *)v10 ic_contactForEmailAddressString:v13 keysToFetch:v14, v15, v16, v17, v18, v19];
    }

    goto LABEL_11;
  }

  firstObject = 0;
LABEL_11:

LABEL_12:

  return firstObject;
}

- (id)ic_contatForPhoneNumberString:()IC keysToFetch:
{
  v6 = a3;
  v7 = a4;
  if (!v6 || (v8 = [objc_alloc(MEMORY[0x277CBDB70]) initWithStringValue:v6]) == 0)
  {
    firstObject = 0;
    goto LABEL_13;
  }

  v9 = v8;
  v10 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:v8];
  v23 = 0;
  v11 = [self unifiedContactsMatchingPredicate:v10 keysToFetch:v7 error:&v23];
  v12 = v23;
  firstObject = [v11 firstObject];

  if (v12)
  {
    v14 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CNContactStore(IC) ic_contatForPhoneNumberString:v12 keysToFetch:v14];
    }
  }

  else if (firstObject)
  {
    v12 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(CNContactStore(IC) *)v12 ic_contatForPhoneNumberString:v15 keysToFetch:v16, v17, v18, v19, v20, v21];
    }

    goto LABEL_12;
  }

  firstObject = 0;
LABEL_12:

LABEL_13:

  return firstObject;
}

- (id)ic_contactForHandleString:()IC keysToFetch:
{
  v6 = a3;
  v7 = a4;
  if (!v6 || ([self ic_contactForEmailAddressString:v6 keysToFetch:v7], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = [self ic_contatForPhoneNumberString:v6 keysToFetch:v7];
  }

  return v8;
}

- (void)ic_contactForEmailAddressString:()IC keysToFetch:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Cannot fetch contact for participant by email address {error: %@}", &v2, 0xCu);
}

- (void)ic_contatForPhoneNumberString:()IC keysToFetch:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Cannot fetch contact for participant by phone number {error: %@}", &v2, 0xCu);
}

@end