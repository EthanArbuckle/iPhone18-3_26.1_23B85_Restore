@interface NSURL(BRPersonaAdditions)
- (BOOL)_br_isInPersonaRoot:()BRPersonaAdditions;
- (id)br_containerIDWithCurrentPersonaID:()BRPersonaAdditions needsPersonaSwitch:;
- (id)br_pathRelativeToSyncedRootURL:()BRPersonaAdditions currentPersonaID:;
- (uint64_t)_br_isInLocalHomeDirectoryUnderCurrentPersona;
- (uint64_t)_br_isInLocalHomeDirectoryUnderPersona:()BRPersonaAdditions needsPersonaSwitch:;
- (uint64_t)br_mightBeOnDataSeparatedVolume;
@end

@implementation NSURL(BRPersonaAdditions)

- (BOOL)_br_isInPersonaRoot:()BRPersonaAdditions
{
  absoluteString = [a3 absoluteString];
  if (([absoluteString hasSuffix:@"/"] & 1) == 0)
  {
    v5 = [absoluteString stringByAppendingString:@"/"];

    absoluteString = v5;
  }

  if ([self isFileReferenceURL])
  {
    filePathURL = [self filePathURL];
    absoluteString2 = [filePathURL absoluteString];
LABEL_7:

    goto LABEL_8;
  }

  absoluteString2 = [self absoluteString];
  if ([absoluteString2 hasPrefix:@"file:///var/"])
  {
    filePathURL = [absoluteString2 substringFromIndex:{objc_msgSend(@"file:///var/", "length")}];
    v8 = [@"file:///private/var/" stringByAppendingString:filePathURL];

    absoluteString2 = v8;
    goto LABEL_7;
  }

LABEL_8:
  v10 = absoluteString2 && (v9 = [absoluteString2 length], v9 >= objc_msgSend(absoluteString, "length")) && objc_msgSend(absoluteString2, "compare:options:range:", absoluteString, 1, 0, objc_msgSend(absoluteString, "length")) == 0;

  return v10;
}

- (uint64_t)_br_isInLocalHomeDirectoryUnderPersona:()BRPersonaAdditions needsPersonaSwitch:
{
  v6 = a3;
  v7 = [BRDaemonConnection homeDirectoryURLForPersonaID:v6 needsPersonaSwitch:a4];
  v8 = [BRDaemonConnection mobileDocumentsURLForPersonaID:v6 needsPersonaSwitch:a4];

  if ([self _br_isInPersonaRoot:v7])
  {
    v9 = 1;
  }

  else
  {
    v9 = [self _br_isInPersonaRoot:v8];
  }

  return v9;
}

- (uint64_t)_br_isInLocalHomeDirectoryUnderCurrentPersona
{
  v2 = [MEMORY[0x1E696AEC0] br_currentPersonaIDWithIsDataSeparated:0];
  v3 = [self _br_isInLocalHomeDirectoryUnderPersona:v2 needsPersonaSwitch:0];

  return v3;
}

- (id)br_pathRelativeToSyncedRootURL:()BRPersonaAdditions currentPersonaID:
{
  v6 = a3;
  v7 = a4;
  isFileURL = [self isFileURL];
  v9 = 0;
  if (v6 && isFileURL)
  {
    if ([self _br_isInLocalHomeDirectoryUnderPersona:v7 needsPersonaSwitch:0])
    {
      path = [v6 path];
      path2 = [self path];
      v9 = [path2 br_pathRelativeToPath:path];
      if (![v9 length])
      {
        br_realpathKeepingLastSymlink = [path2 br_realpathKeepingLastSymlink];
        v13 = [br_realpathKeepingLastSymlink br_pathRelativeToPath:path];

        v9 = v13;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)br_containerIDWithCurrentPersonaID:()BRPersonaAdditions needsPersonaSwitch:
{
  v6 = a3;
  if ([self br_isInTrash])
  {
    appLibraryOrZoneName = 0;
  }

  else
  {
    v8 = [BRDaemonConnection mobileDocumentsURLForPersonaID:v6 needsPersonaSwitch:a4];
    v9 = [self br_pathRelativeToSyncedRootURL:v8 currentPersonaID:v6];

    pathComponents = [v9 pathComponents];
    if ([pathComponents count])
    {
      v11 = [BRMangledID alloc];
      v12 = [pathComponents objectAtIndexedSubscript:0];
      v13 = [(BRMangledID *)v11 initWithMangledString:v12];

      appLibraryOrZoneName = [(BRMangledID *)v13 appLibraryOrZoneName];
    }

    else
    {
      appLibraryOrZoneName = 0;
    }
  }

  return appLibraryOrZoneName;
}

- (uint64_t)br_mightBeOnDataSeparatedVolume
{
  pathComponents = [self pathComponents];
  if ([pathComponents count] < 5)
  {
    v5 = 0;
  }

  else
  {
    v2 = [pathComponents objectAtIndexedSubscript:0];
    if ([v2 isEqualToString:@"/"])
    {
      v3 = [pathComponents objectAtIndexedSubscript:1];
      if ([v3 isEqualToString:@"private"])
      {
        v4 = [pathComponents objectAtIndexedSubscript:3];
        v5 = [v4 isEqualToString:@"PersonaVolumes"];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end