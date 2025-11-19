@interface ACAccount(IC)
- (BOOL)ic_hasPersonaIdentifier;
- (uint64_t)ic_hasICloudEmailAddress;
- (uint64_t)ic_isICloudNotesAccount;
- (uint64_t)ic_isManagedAppleID;
- (uint64_t)ic_isNotesMigrated;
- (uint64_t)ic_isPrimaryAppleAccount;
- (uint64_t)ic_shouldCreateSeparatePersistentStore;
- (uint64_t)ic_supportsHTMLNotes;
- (uint64_t)ic_supportsModernNotes;
- (void)ic_hasICloudEmailAddress;
@end

@implementation ACAccount(IC)

- (uint64_t)ic_hasICloudEmailAddress
{
  v2 = [a1 displayAccount];
  v3 = [v2 dataclassProperties];

  if (v3)
  {
    v4 = [a1 accountType];
    v5 = [v4 identifier];
    v6 = [v5 isEqualToString:*MEMORY[0x1E69597F8]];

    if (v6)
    {
      v7 = [v2 aa_needsEmailConfiguration];
      v8 = os_log_create("com.apple.notes", "Accounts");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [(ACAccount(IC) *)v7 ic_hasICloudEmailAddress];
      }

      v9 = v7 ^ 1u;
    }

    else
    {
      v11 = os_log_create("com.apple.notes", "Accounts");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [(ACAccount(IC) *)v2 ic_hasICloudEmailAddress];
      }

      v9 = 0;
    }
  }

  else
  {
    v10 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(ACAccount(IC) *)v2 ic_hasICloudEmailAddress];
    }

    v9 = 1;
  }

  return v9;
}

- (BOOL)ic_hasPersonaIdentifier
{
  v2 = objc_opt_class();
  v3 = [a1 accountPropertyForKey:*MEMORY[0x1E69597A0]];
  v4 = ICDynamicCast(v2, v3);

  v5 = [v4 length] != 0;
  return v5;
}

- (uint64_t)ic_isManagedAppleID
{
  result = [a1 ic_isICloudNotesAccount];
  if (result)
  {

    return [a1 aa_isManagedAppleID];
  }

  return result;
}

- (uint64_t)ic_supportsModernNotes
{
  result = [a1 isProvisionedForDataclass:*MEMORY[0x1E69596C0]];
  if (result)
  {
    result = [a1 ic_isICloudNotesAccount];
    if (result)
    {
      return [a1 ic_isBasicAccountClass] ^ 1;
    }
  }

  return result;
}

- (uint64_t)ic_supportsHTMLNotes
{
  result = [a1 isProvisionedForDataclass:*MEMORY[0x1E69596C0]];
  if (result)
  {
    if ([a1 ic_isICloudNotesAccount])
    {

      return [a1 ic_hasICloudEmailAddress];
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (uint64_t)ic_isNotesMigrated
{
  result = [a1 ic_isICloudNotesAccount];
  if (result)
  {

    return [a1 aa_isNotesMigrated];
  }

  return result;
}

- (uint64_t)ic_isPrimaryAppleAccount
{
  result = [a1 ic_isICloudNotesAccount];
  if (result)
  {
    v3 = *MEMORY[0x1E698B760];

    return [a1 aa_isAccountClass:v3];
  }

  return result;
}

- (uint64_t)ic_isICloudNotesAccount
{
  v1 = [a1 accountType];
  v2 = [v1 identifier];
  v3 = [v2 isEqualToString:*MEMORY[0x1E69597F8]];

  return v3;
}

- (uint64_t)ic_shouldCreateSeparatePersistentStore
{
  if (([a1 ic_isPrimaryAppleAccount] & 1) != 0 || !objc_msgSend(a1, "ic_isICloudNotesAccount"))
  {
    return 0;
  }

  return [a1 ic_isFullAccountClass];
}

- (void)ic_hasICloudEmailAddress
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1D4576000, a2, OS_LOG_TYPE_DEBUG, "Trying to determine if an account has an iCloud email address, but there are no dataclass properties: %@", &v2, 0xCu);
}

@end