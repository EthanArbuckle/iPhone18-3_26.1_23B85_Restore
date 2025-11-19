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
  v6 = [a1 propertiesForDataclass:*MEMORY[0x1E6959B58]];
  v8 = [v6 mutableCopy];

  if (!v8)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [v8 setObject:v7 forKeyedSubscript:BRAccountPropertyiCloudDesktopEnabled];

  [a1 setProperties:v8 forDataclass:v5];
}

- (uint64_t)br_isEnabledForCloudDocs
{
  result = [a1 isEnabledForDataclass:*MEMORY[0x1E6959B58]];
  if (result)
  {

    return [a1 br_isCloudDocsMigrated];
  }

  return result;
}

- (uint64_t)br_isEnabledForUbiquity
{
  result = [a1 isEnabledForDataclass:*MEMORY[0x1E6959B58]];
  if (result)
  {
    return [a1 aa_isUsingCloudDocs] ^ 1;
  }

  return result;
}

- (__CFString)br_personaIdentifier
{
  v1 = [a1 accountPropertyForKey:*MEMORY[0x1E69597A0]];
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
  v1 = [a1 br_personaIdentifier];
  v2 = [v1 length] != 0;

  return v2;
}

- (uint64_t)br_isEligibleiCloudAccount
{
  v2 = [a1 accountType];
  v3 = [v2 identifier];
  if ([v3 isEqualToString:*MEMORY[0x1E69597F8]])
  {
    if ([a1 aa_isAccountClass:*MEMORY[0x1E698B760]])
    {
      v4 = 1;
    }

    else
    {
      v4 = [a1 isDataSeparatedAccount];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)br_volumeUUID
{
  v1 = [a1 br_personaIdentifier];
  v2 = [BRSpecialFolders volumeUUIDForPersona:v1];

  return v2;
}

@end