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
  wf_realLibraryDirectoryURL = [self wf_realLibraryDirectoryURL];
  v2 = [wf_realLibraryDirectoryURL URLByAppendingPathComponent:@"Shortcuts" isDirectory:1];

  return v2;
}

+ (id)wf_realLibraryDirectoryURL
{
  wf_realHomeDirectoryURL = [self wf_realHomeDirectoryURL];
  v2 = [wf_realHomeDirectoryURL URLByAppendingPathComponent:@"Library" isDirectory:1];

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
  wf_shortcutsDirectoryURL = [MEMORY[0x277CBEBC0] wf_shortcutsDirectoryURL];
  v3 = ([self wf_proposedFileIsContainedByDirectoryAtURL:wf_shortcutsDirectoryURL] & 1) != 0 || +[WFTemporaryFileManager isTemporaryFile:](WFTemporaryFileManager, "isTemporaryFile:", self);

  return v3;
}

- (uint64_t)wf_fileIsOnSameVolumeAsURL:()DCFileUtilities
{
  v4 = a3;
  v5 = WFExistingFileFromURL(self);
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
  v5 = WFExistingFileFromURL(self);
  v6 = v5;
  if (v5)
  {
    uRLByResolvingSymlinksInPath = [v5 URLByResolvingSymlinksInPath];
    uRLByResolvingSymlinksInPath2 = [v4 URLByResolvingSymlinksInPath];
    v9 = [uRLByResolvingSymlinksInPath wf_relationshipToDirectoryAtURL:uRLByResolvingSymlinksInPath2] < 2;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (__CFString)wf_relativePathFromURL:()DCFileUtilities
{
  path = [a3 path];
  path2 = [self path];
  v6 = 0;
  if (path2 && path)
  {
    if ([path isEqualToString:path2])
    {
      v6 = &stru_282F53518;
      goto LABEL_18;
    }

    if ([path hasPrefix:path2])
    {
      v7 = [path2 length];
      v8 = path;
    }

    else
    {
      if (![path2 hasPrefix:path])
      {
        v6 = 0;
        goto LABEL_18;
      }

      v7 = [path length];
      v8 = path2;
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
  defaultManager = [v4 defaultManager];
  v8 = 0;
  LODWORD(self) = [defaultManager getRelationship:&v9 ofDirectoryAtURL:v5 toItemAtURL:self error:&v8];

  if (self)
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
  if ([self isFileURL])
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [self path];
    v4 = [defaultManager attributesOfItemAtPath:path error:0];
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSURL(DCFileUtilities) wf_fileHasExtendedAttribute:]"];
    [currentHandler handleFailureInFunction:v9 file:@"NSURL+DCFileUtilities.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"attributeName"}];
  }

  path = [self path];
  v6 = getxattr([path UTF8String], objc_msgSend(v4, "UTF8String"), 0, 0, 0, 0);

  return v6 >= 0;
}

- (uint64_t)wf_sandboxAllowsWritingFileWithAuditToken:()DCFileUtilities
{
  v3 = a3[1];
  v5[0] = *a3;
  v5[1] = v3;
  return [self wf_sandboxAllowsOperation:"file-write-data" withAuditToken:v5];
}

- (uint64_t)wf_sandboxAllowsReadingFileWithAuditToken:()DCFileUtilities
{
  v3 = a3[1];
  v5[0] = *a3;
  v5[1] = v3;
  return [self wf_sandboxAllowsOperation:"file-read-data" withAuditToken:v5];
}

- (BOOL)wf_sandboxAllowsOperation:()DCFileUtilities
{
  getpid();
  if (!sandbox_check())
  {
    return 1;
  }

  getpid();
  [self fileSystemRepresentation];
  return sandbox_check() == 0;
}

- (uint64_t)wf_fileIsDirectory
{
  v6 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [self path];
  v4 = [defaultManager fileExistsAtPath:path isDirectory:&v6];

  return (v4 & v6);
}

- (uint64_t)wf_fileIsWritable
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [self path];
  v4 = [defaultManager isWritableFileAtPath:path];

  return v4;
}

- (uint64_t)wf_fileIsReadable
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [self path];
  v4 = [defaultManager isReadableFileAtPath:path];

  return v4;
}

- (uint64_t)wf_fileExists
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [self path];
  v4 = [defaultManager fileExistsAtPath:path];

  return v4;
}

+ (id)wf_savedShortcutStatesURL
{
  v0 = +[WFTemporaryFileManager sharedAppGroupDirectoryURL];
  v1 = [v0 URLByAppendingPathComponent:@"SavedShortcutStates" isDirectory:1];

  return v1;
}

@end