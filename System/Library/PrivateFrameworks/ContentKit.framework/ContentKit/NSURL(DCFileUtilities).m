@interface NSURL(DCFileUtilities)
+ (id)wf_realLibraryDirectoryURL;
+ (id)wf_savedShortcutStatesURL;
+ (id)wf_shortcutsDirectoryURL;
+ (uint64_t)wf_realHomeDirectoryURL;
- (BOOL)wf_fileHasExtendedAttribute:()DCFileUtilities;
- (BOOL)wf_fileIsShortcutsOwned;
- (BOOL)wf_proposedFileIsContainedByDirectoryAtURL:()DCFileUtilities;
- (BOOL)wf_sandboxAllowsOperation:()DCFileUtilities;
- (__CFString)wf_relativePathFromURL:()DCFileUtilities;
- (id)wf_fileSize;
- (uint64_t)wf_fileExists;
- (uint64_t)wf_fileIsDirectory;
- (uint64_t)wf_fileIsOnSameVolumeAsURL:()DCFileUtilities;
- (uint64_t)wf_fileIsReadable;
- (uint64_t)wf_fileIsWritable;
- (uint64_t)wf_relationshipToDirectoryAtURL:()DCFileUtilities;
- (uint64_t)wf_sandboxAllowsReadingFileWithAuditToken:()DCFileUtilities;
- (uint64_t)wf_sandboxAllowsWritingFileWithAuditToken:()DCFileUtilities;
@end

@implementation NSURL(DCFileUtilities)

+ (id)wf_shortcutsDirectoryURL
{
  v1 = [a1 wf_realLibraryDirectoryURL];
  v2 = [v1 URLByAppendingPathComponent:@"Shortcuts" isDirectory:1];

  return v2;
}

+ (id)wf_realLibraryDirectoryURL
{
  v1 = [a1 wf_realHomeDirectoryURL];
  v2 = [v1 URLByAppendingPathComponent:@"Library" isDirectory:1];

  return v2;
}

+ (uint64_t)wf_realHomeDirectoryURL
{
  v0 = MEMORY[0x277CBEBC0];
  v1 = CPSharedResourcesDirectory();

  return [v0 fileURLWithPath:v1 isDirectory:1];
}

- (BOOL)wf_fileIsShortcutsOwned
{
  v2 = [MEMORY[0x277CBEBC0] wf_shortcutsDirectoryURL];
  v3 = ([a1 wf_proposedFileIsContainedByDirectoryAtURL:v2] & 1) != 0 || +[WFTemporaryFileManager isTemporaryFile:](WFTemporaryFileManager, "isTemporaryFile:", a1);

  return v3;
}

- (uint64_t)wf_fileIsOnSameVolumeAsURL:()DCFileUtilities
{
  v4 = a3;
  v5 = WFExistingFileFromURL(a1);
  v6 = WFExistingFileFromURL(v4);

  v7 = 0;
  if (v5 && v6)
  {
    v19 = 0;
    v8 = *MEMORY[0x277CBEA08];
    v18 = 0;
    [v5 getResourceValue:&v19 forKey:v8 error:&v18];
    v9 = v19;
    v16 = 0;
    v17 = 0;
    v10 = v18;
    v11 = v9;
    [v6 getResourceValue:&v17 forKey:v8 error:&v16];
    v12 = v17;
    v13 = v16;
    v14 = v12;

    v7 = [v11 isEqual:v14];
  }

  return v7;
}

- (BOOL)wf_proposedFileIsContainedByDirectoryAtURL:()DCFileUtilities
{
  v4 = a3;
  v5 = WFExistingFileFromURL(a1);
  v6 = v5;
  if (v5)
  {
    v7 = [v5 URLByResolvingSymlinksInPath];
    v8 = [v4 URLByResolvingSymlinksInPath];
    v9 = [v7 wf_relationshipToDirectoryAtURL:v8] < 2;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (__CFString)wf_relativePathFromURL:()DCFileUtilities
{
  v4 = [a3 path];
  v5 = [a1 path];
  v6 = 0;
  if (v5 && v4)
  {
    if ([v4 isEqualToString:v5])
    {
      v6 = &stru_282F53518;
      goto LABEL_18;
    }

    if ([v4 hasPrefix:v5])
    {
      v7 = [v5 length];
      v8 = v4;
    }

    else
    {
      if (![v5 hasPrefix:v4])
      {
        v6 = 0;
        goto LABEL_18;
      }

      v7 = [v4 length];
      v8 = v5;
    }

    v9 = [v8 substringFromIndex:v7];
    if ([v9 length] && (objc_msgSend(v9, "isEqualToString:", @"/") & 1) == 0)
    {
      if ([v9 hasPrefix:@"/"])
      {
        v10 = [v9 substringFromIndex:1];
      }

      else
      {
        v10 = v9;
        v9 = v10;
      }

      v6 = v10;
    }

    else
    {
      v6 = &stru_282F53518;
    }
  }

LABEL_18:

  return v6;
}

- (uint64_t)wf_relationshipToDirectoryAtURL:()DCFileUtilities
{
  v9 = 0;
  v4 = MEMORY[0x277CCAA00];
  v5 = a3;
  v6 = [v4 defaultManager];
  v8 = 0;
  LODWORD(a1) = [v6 getRelationship:&v9 ofDirectoryAtURL:v5 toItemAtURL:a1 error:&v8];

  if (a1)
  {
    return v9;
  }

  else
  {
    return 2;
  }
}

- (id)wf_fileSize
{
  if ([a1 isFileURL])
  {
    v2 = [MEMORY[0x277CCAA00] defaultManager];
    v3 = [a1 path];
    v4 = [v2 attributesOfItemAtPath:v3 error:0];
    v5 = [v4 objectForKey:*MEMORY[0x277CCA1C0]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)wf_fileHasExtendedAttribute:()DCFileUtilities
{
  v4 = a3;
  if (!v4)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSURL(DCFileUtilities) wf_fileHasExtendedAttribute:]"];
    [v8 handleFailureInFunction:v9 file:@"NSURL+DCFileUtilities.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"attributeName"}];
  }

  v5 = [a1 path];
  v6 = getxattr([v5 UTF8String], objc_msgSend(v4, "UTF8String"), 0, 0, 0, 0);

  return v6 >= 0;
}

- (uint64_t)wf_sandboxAllowsWritingFileWithAuditToken:()DCFileUtilities
{
  v3 = a3[1];
  v5[0] = *a3;
  v5[1] = v3;
  return [a1 wf_sandboxAllowsOperation:"file-write-data" withAuditToken:v5];
}

- (uint64_t)wf_sandboxAllowsReadingFileWithAuditToken:()DCFileUtilities
{
  v3 = a3[1];
  v5[0] = *a3;
  v5[1] = v3;
  return [a1 wf_sandboxAllowsOperation:"file-read-data" withAuditToken:v5];
}

- (BOOL)wf_sandboxAllowsOperation:()DCFileUtilities
{
  getpid();
  if (!sandbox_check())
  {
    return 1;
  }

  getpid();
  [a1 fileSystemRepresentation];
  return sandbox_check() == 0;
}

- (uint64_t)wf_fileIsDirectory
{
  v6 = 0;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [a1 path];
  v4 = [v2 fileExistsAtPath:v3 isDirectory:&v6];

  return (v4 & v6);
}

- (uint64_t)wf_fileIsWritable
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [a1 path];
  v4 = [v2 isWritableFileAtPath:v3];

  return v4;
}

- (uint64_t)wf_fileIsReadable
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [a1 path];
  v4 = [v2 isReadableFileAtPath:v3];

  return v4;
}

- (uint64_t)wf_fileExists
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [a1 path];
  v4 = [v2 fileExistsAtPath:v3];

  return v4;
}

+ (id)wf_savedShortcutStatesURL
{
  v0 = +[WFTemporaryFileManager sharedAppGroupDirectoryURL];
  v1 = [v0 URLByAppendingPathComponent:@"SavedShortcutStates" isDirectory:1];

  return v1;
}

@end