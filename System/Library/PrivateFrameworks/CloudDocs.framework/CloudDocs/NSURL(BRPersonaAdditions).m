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
  v4 = [a3 absoluteString];
  if (([v4 hasSuffix:@"/"] & 1) == 0)
  {
    v5 = [v4 stringByAppendingString:@"/"];

    v4 = v5;
  }

  if ([a1 isFileReferenceURL])
  {
    v6 = [a1 filePathURL];
    v7 = [v6 absoluteString];
LABEL_7:

    goto LABEL_8;
  }

  v7 = [a1 absoluteString];
  if ([v7 hasPrefix:@"file:///var/"])
  {
    v6 = [v7 substringFromIndex:{objc_msgSend(@"file:///var/", "length")}];
    v8 = [@"file:///private/var/" stringByAppendingString:v6];

    v7 = v8;
    goto LABEL_7;
  }

LABEL_8:
  v10 = v7 && (v9 = [v7 length], v9 >= objc_msgSend(v4, "length")) && objc_msgSend(v7, "compare:options:range:", v4, 1, 0, objc_msgSend(v4, "length")) == 0;

  return v10;
}

- (uint64_t)_br_isInLocalHomeDirectoryUnderPersona:()BRPersonaAdditions needsPersonaSwitch:
{
  v6 = a3;
  v7 = [BRDaemonConnection homeDirectoryURLForPersonaID:v6 needsPersonaSwitch:a4];
  v8 = [BRDaemonConnection mobileDocumentsURLForPersonaID:v6 needsPersonaSwitch:a4];

  if ([a1 _br_isInPersonaRoot:v7])
  {
    v9 = 1;
  }

  else
  {
    v9 = [a1 _br_isInPersonaRoot:v8];
  }

  return v9;
}

- (uint64_t)_br_isInLocalHomeDirectoryUnderCurrentPersona
{
  v2 = [MEMORY[0x1E696AEC0] br_currentPersonaIDWithIsDataSeparated:0];
  v3 = [a1 _br_isInLocalHomeDirectoryUnderPersona:v2 needsPersonaSwitch:0];

  return v3;
}

- (id)br_pathRelativeToSyncedRootURL:()BRPersonaAdditions currentPersonaID:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 isFileURL];
  v9 = 0;
  if (v6 && v8)
  {
    if ([a1 _br_isInLocalHomeDirectoryUnderPersona:v7 needsPersonaSwitch:0])
    {
      v10 = [v6 path];
      v11 = [a1 path];
      v9 = [v11 br_pathRelativeToPath:v10];
      if (![v9 length])
      {
        v12 = [v11 br_realpathKeepingLastSymlink];
        v13 = [v12 br_pathRelativeToPath:v10];

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
  if ([a1 br_isInTrash])
  {
    v7 = 0;
  }

  else
  {
    v8 = [BRDaemonConnection mobileDocumentsURLForPersonaID:v6 needsPersonaSwitch:a4];
    v9 = [a1 br_pathRelativeToSyncedRootURL:v8 currentPersonaID:v6];

    v10 = [v9 pathComponents];
    if ([v10 count])
    {
      v11 = [BRMangledID alloc];
      v12 = [v10 objectAtIndexedSubscript:0];
      v13 = [(BRMangledID *)v11 initWithMangledString:v12];

      v7 = [(BRMangledID *)v13 appLibraryOrZoneName];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (uint64_t)br_mightBeOnDataSeparatedVolume
{
  v1 = [a1 pathComponents];
  if ([v1 count] < 5)
  {
    v5 = 0;
  }

  else
  {
    v2 = [v1 objectAtIndexedSubscript:0];
    if ([v2 isEqualToString:@"/"])
    {
      v3 = [v1 objectAtIndexedSubscript:1];
      if ([v3 isEqualToString:@"private"])
      {
        v4 = [v1 objectAtIndexedSubscript:3];
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