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
  displayAccount = [self displayAccount];
  dataclassProperties = [displayAccount dataclassProperties];

  if (dataclassProperties)
  {
    accountType = [self accountType];
    identifier = [accountType identifier];
    v6 = [identifier isEqualToString:*MEMORY[0x1E69597F8]];

    if (v6)
    {
      aa_needsEmailConfiguration = [displayAccount aa_needsEmailConfiguration];
      v8 = os_log_create("com.apple.notes", "Accounts");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [(ACAccount(IC) *)aa_needsEmailConfiguration ic_hasICloudEmailAddress];
      }

      v9 = aa_needsEmailConfiguration ^ 1u;
    }

    else
    {
      v11 = os_log_create("com.apple.notes", "Accounts");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [(ACAccount(IC) *)displayAccount ic_hasICloudEmailAddress];
      }

      v9 = 0;
    }
  }

  else
  {
    v10 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(ACAccount(IC) *)displayAccount ic_hasICloudEmailAddress];
    }

    v9 = 1;
  }

  return v9;
}

- (BOOL)ic_hasPersonaIdentifier
{
  v2 = objc_opt_class();
  v3 = [self accountPropertyForKey:*MEMORY[0x1E69597A0]];
  v4 = ICDynamicCast(v2, v3);

  v5 = [v4 length] != 0;
  return v5;
}

- (uint64_t)ic_isManagedAppleID
{
  result = [self ic_isICloudNotesAccount];
  if (result)
  {

    return [self aa_isManagedAppleID];
  }

  return result;
}

- (uint64_t)ic_supportsModernNotes
{
  result = [self isProvisionedForDataclass:*MEMORY[0x1E69596C0]];
  if (result)
  {
    result = [self ic_isICloudNotesAccount];
    if (result)
    {
      return [self ic_isBasicAccountClass] ^ 1;
    }
  }

  return result;
}

- (uint64_t)ic_supportsHTMLNotes
{
  result = [self isProvisionedForDataclass:*MEMORY[0x1E69596C0]];
  if (result)
  {
    if ([self ic_isICloudNotesAccount])
    {

      return [self ic_hasICloudEmailAddress];
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
  result = [self ic_isICloudNotesAccount];
  if (result)
  {

    return [self aa_isNotesMigrated];
  }

  return result;
}

- (uint64_t)ic_isPrimaryAppleAccount
{
  result = [self ic_isICloudNotesAccount];
  if (result)
  {
    v3 = *MEMORY[0x1E698B760];

    return [self aa_isAccountClass:v3];
  }

  return result;
}

- (uint64_t)ic_isICloudNotesAccount
{
  accountType = [self accountType];
  identifier = [accountType identifier];
  v3 = [identifier isEqualToString:*MEMORY[0x1E69597F8]];

  return v3;
}

- (uint64_t)ic_shouldCreateSeparatePersistentStore
{
  if (([self ic_isPrimaryAppleAccount] & 1) != 0 || !objc_msgSend(self, "ic_isICloudNotesAccount"))
  {
    return 0;
  }

  return [self ic_isFullAccountClass];
}

- (void)ic_hasICloudEmailAddress
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1D4576000, a2, OS_LOG_TYPE_DEBUG, "Trying to determine if an account has an iCloud email address, but there are no dataclass properties: %@", &v2, 0xCu);
}

@end