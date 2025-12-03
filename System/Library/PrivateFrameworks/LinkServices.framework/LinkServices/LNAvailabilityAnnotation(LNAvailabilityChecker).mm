@interface LNAvailabilityAnnotation(LNAvailabilityChecker)
- (__CFString)_availabilityResultWithSystemVersion:()LNAvailabilityChecker;
- (__CFString)_availabilityResultWithoutSystemVersion;
@end

@implementation LNAvailabilityAnnotation(LNAvailabilityChecker)

- (__CFString)_availabilityResultWithoutSystemVersion
{
  obsoletedVersion = [self obsoletedVersion];

  if (obsoletedVersion)
  {
    return @"LNAvailabilityResultUnavailable";
  }

  deprecatedVersion = [self deprecatedVersion];

  if (deprecatedVersion)
  {
    return @"LNAvailabilityResultDeprecated";
  }

  introducedVersion = [self introducedVersion];

  if (!introducedVersion)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNAvailabilityChecker.m" lineNumber:71 description:{@"invalid availability annotation: %@", self}];
  }

  return @"LNAvailabilityResultAvailable";
}

- (__CFString)_availabilityResultWithSystemVersion:()LNAvailabilityChecker
{
  v4 = a3;
  obsoletedVersion = [self obsoletedVersion];
  if (obsoletedVersion)
  {
    v6 = obsoletedVersion;
    obsoletedVersion2 = [self obsoletedVersion];
    if ([obsoletedVersion2 isEqualToString:*MEMORY[0x1E69AC1C0]])
    {

LABEL_5:
      v11 = @"LNAvailabilityResultUnavailable";
      goto LABEL_16;
    }

    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    obsoletedVersion3 = [self obsoletedVersion];
    v10 = [defaultWorkspace isVersion:v4 greaterThanOrEqualToVersion:obsoletedVersion3];

    if (v10)
    {
      goto LABEL_5;
    }
  }

  deprecatedVersion = [self deprecatedVersion];
  if (deprecatedVersion)
  {
    v13 = deprecatedVersion;
    deprecatedVersion2 = [self deprecatedVersion];
    if ([deprecatedVersion2 isEqualToString:*MEMORY[0x1E69AC1C0]])
    {

LABEL_10:
      v11 = @"LNAvailabilityResultDeprecated";
      goto LABEL_16;
    }

    defaultWorkspace2 = [MEMORY[0x1E6963608] defaultWorkspace];
    deprecatedVersion3 = [self deprecatedVersion];
    v17 = [defaultWorkspace2 isVersion:v4 greaterThanOrEqualToVersion:deprecatedVersion3];

    if (v17)
    {
      goto LABEL_10;
    }
  }

  introducedVersion = [self introducedVersion];

  v11 = @"LNAvailabilityResultAvailable";
  if (introducedVersion)
  {
    introducedVersion2 = [self introducedVersion];
    if ([introducedVersion2 isEqualToString:*MEMORY[0x1E69AC1C0]])
    {
    }

    else
    {
      defaultWorkspace3 = [MEMORY[0x1E6963608] defaultWorkspace];
      introducedVersion3 = [self introducedVersion];
      v22 = [defaultWorkspace3 isVersion:v4 greaterThanOrEqualToVersion:introducedVersion3];

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