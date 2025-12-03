@interface UMUserPersona(BRAdditions)
- (__CFString)br_personaID;
- (id)br_generateAndRestorePersonaContextWithPersonaUniqueString:()BRAdditions;
- (id)br_restorePersonaWithSavedPersonaContext:()BRAdditions;
@end

@implementation UMUserPersona(BRAdditions)

- (__CFString)br_personaID
{
  v2 = @"__defaultPersonaID__";
  if ([self isDataSeparatedPersona])
  {
    userPersonaUniqueString = [self userPersonaUniqueString];
    v4 = userPersonaUniqueString;
    if (userPersonaUniqueString)
    {
      v5 = userPersonaUniqueString;
    }

    else
    {
      v5 = @"__defaultPersonaID__";
    }

    v2 = v5;
  }

  return v2;
}

- (id)br_generateAndRestorePersonaContextWithPersonaUniqueString:()BRAdditions
{
  v4 = a3;
  v5 = [self generateAndRestorePersonaContextWithPersonaUniqueString:v4];

  if (v5)
  {
    [MEMORY[0x1E696AF00] sleepForTimeInterval:0.2];
    v6 = [self generateAndRestorePersonaContextWithPersonaUniqueString:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)br_restorePersonaWithSavedPersonaContext:()BRAdditions
{
  v4 = a3;
  v5 = [self restorePersonaWithSavedPersonaContext:v4];

  if (v5)
  {
    [MEMORY[0x1E696AF00] sleepForTimeInterval:0.2];
    v6 = [self restorePersonaWithSavedPersonaContext:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end