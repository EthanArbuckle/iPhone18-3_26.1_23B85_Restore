@interface ACAccount(BRAdditions)
- (BOOL)br_hasPersonaIdentifier;
- (__CFString)br_personaIdentifier;
- (id)br_volumeUUID;
- (uint64_t)br_isEligibleiCloudAccount;
- (uint64_t)br_isEnabledForCloudDocs;
- (uint64_t)br_isEnabledForUbiquity;
- (void)br_setEnabledForiCloudDesktop:()BRAdditions;
@end

@implementation ACAccount(BRAdditions)

- (void)br_setEnabledForiCloudDesktop:()BRAdditions
{
  v5 = *MEMORY[0x1E6959B58];
  v6 = [self propertiesForDataclass:*MEMORY[0x1E6959B58]];
  dictionary = [v6 mutableCopy];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [dictionary setObject:v7 forKeyedSubscript:BRAccountPropertyiCloudDesktopEnabled];

  [self setProperties:dictionary forDataclass:v5];
}

- (uint64_t)br_isEnabledForCloudDocs
{
  result = [self isEnabledForDataclass:*MEMORY[0x1E6959B58]];
  if (result)
  {

    return [self br_isCloudDocsMigrated];
  }

  return result;
}

- (uint64_t)br_isEnabledForUbiquity
{
  result = [self isEnabledForDataclass:*MEMORY[0x1E6959B58]];
  if (result)
  {
    return [self aa_isUsingCloudDocs] ^ 1;
  }

  return result;
}

- (__CFString)br_personaIdentifier
{
  v1 = [self accountPropertyForKey:*MEMORY[0x1E69597A0]];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = @"__defaultPersonaID__";
  }

  v4 = v3;

  return v3;
}

- (BOOL)br_hasPersonaIdentifier
{
  br_personaIdentifier = [self br_personaIdentifier];
  v2 = [br_personaIdentifier length] != 0;

  return v2;
}

- (uint64_t)br_isEligibleiCloudAccount
{
  accountType = [self accountType];
  identifier = [accountType identifier];
  if ([identifier isEqualToString:*MEMORY[0x1E69597F8]])
  {
    if ([self aa_isAccountClass:*MEMORY[0x1E698B760]])
    {
      isDataSeparatedAccount = 1;
    }

    else
    {
      isDataSeparatedAccount = [self isDataSeparatedAccount];
    }
  }

  else
  {
    isDataSeparatedAccount = 0;
  }

  return isDataSeparatedAccount;
}

- (id)br_volumeUUID
{
  br_personaIdentifier = [self br_personaIdentifier];
  v2 = [BRSpecialFolders volumeUUIDForPersona:br_personaIdentifier];

  return v2;
}

@end