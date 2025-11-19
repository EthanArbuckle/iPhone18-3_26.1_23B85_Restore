@interface UMUserPersona(BRAdditions)
- (__CFString)br_personaID;
- (id)br_generateAndRestorePersonaContextWithPersonaUniqueString:()BRAdditions;
- (id)br_restorePersonaWithSavedPersonaContext:()BRAdditions;
@end

@implementation UMUserPersona(BRAdditions)

- (__CFString)br_personaID
{
  v2 = @"__defaultPersonaID__";
  if ([a1 isDataSeparatedPersona])
  {
    v3 = [a1 userPersonaUniqueString];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
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
  v5 = [a1 generateAndRestorePersonaContextWithPersonaUniqueString:v4];

  if (v5)
  {
    [MEMORY[0x1E696AF00] sleepForTimeInterval:0.2];
    v6 = [a1 generateAndRestorePersonaContextWithPersonaUniqueString:v4];
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
  v5 = [a1 restorePersonaWithSavedPersonaContext:v4];

  if (v5)
  {
    [MEMORY[0x1E696AF00] sleepForTimeInterval:0.2];
    v6 = [a1 restorePersonaWithSavedPersonaContext:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end