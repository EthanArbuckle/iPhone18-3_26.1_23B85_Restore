@interface LNAvailabilityAnnotation(LNAvailabilityChecker)
- (__CFString)_availabilityResultWithSystemVersion:()LNAvailabilityChecker;
- (__CFString)_availabilityResultWithoutSystemVersion;
@end

@implementation LNAvailabilityAnnotation(LNAvailabilityChecker)

- (__CFString)_availabilityResultWithoutSystemVersion
{
  v4 = [a1 obsoletedVersion];

  if (v4)
  {
    return @"LNAvailabilityResultUnavailable";
  }

  v6 = [a1 deprecatedVersion];

  if (v6)
  {
    return @"LNAvailabilityResultDeprecated";
  }

  v7 = [a1 introducedVersion];

  if (!v7)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"LNAvailabilityChecker.m" lineNumber:71 description:{@"invalid availability annotation: %@", a1}];
  }

  return @"LNAvailabilityResultAvailable";
}

- (__CFString)_availabilityResultWithSystemVersion:()LNAvailabilityChecker
{
  v4 = a3;
  v5 = [a1 obsoletedVersion];
  if (v5)
  {
    v6 = v5;
    v7 = [a1 obsoletedVersion];
    if ([v7 isEqualToString:*MEMORY[0x1E69AC1C0]])
    {

LABEL_5:
      v11 = @"LNAvailabilityResultUnavailable";
      goto LABEL_16;
    }

    v8 = [MEMORY[0x1E6963608] defaultWorkspace];
    v9 = [a1 obsoletedVersion];
    v10 = [v8 isVersion:v4 greaterThanOrEqualToVersion:v9];

    if (v10)
    {
      goto LABEL_5;
    }
  }

  v12 = [a1 deprecatedVersion];
  if (v12)
  {
    v13 = v12;
    v14 = [a1 deprecatedVersion];
    if ([v14 isEqualToString:*MEMORY[0x1E69AC1C0]])
    {

LABEL_10:
      v11 = @"LNAvailabilityResultDeprecated";
      goto LABEL_16;
    }

    v15 = [MEMORY[0x1E6963608] defaultWorkspace];
    v16 = [a1 deprecatedVersion];
    v17 = [v15 isVersion:v4 greaterThanOrEqualToVersion:v16];

    if (v17)
    {
      goto LABEL_10;
    }
  }

  v18 = [a1 introducedVersion];

  v11 = @"LNAvailabilityResultAvailable";
  if (v18)
  {
    v19 = [a1 introducedVersion];
    if ([v19 isEqualToString:*MEMORY[0x1E69AC1C0]])
    {
    }

    else
    {
      v20 = [MEMORY[0x1E6963608] defaultWorkspace];
      v21 = [a1 introducedVersion];
      v22 = [v20 isVersion:v4 greaterThanOrEqualToVersion:v21];

      if (!v22)
      {
        v11 = @"LNAvailabilityResultUnavailable";
      }
    }
  }

LABEL_16:

  return v11;
}

@end