@interface TDDistillRunner
- (BOOL)_isDistillUnnecessaryForDocument:(id)document;
- (TDDistillRunner)init;
- (id)carScratchURL;
- (void)_moveScratchToOutputPath;
- (void)_removeScratchPath;
- (void)dealloc;
@end

@implementation TDDistillRunner

- (TDDistillRunner)init
{
  v3.receiver = self;
  v3.super_class = TDDistillRunner;
  result = [(TDDistillRunner *)&v3 init];
  if (result)
  {
    result->_assetStoreVersionNumber = 17;
  }

  return result;
}

- (id)carScratchURL
{
  v11 = *MEMORY[0x277D85DE8];
  result = self->_carScratchURL;
  if (!result)
  {
    [[(NSString *)NSTemporaryDirectory() stringByAppendingPathComponent:@"CoreThemeThemeDistillXXXXXX.car"] getFileSystemRepresentation:__s maxLength:1024];
    v4 = mkstemps(__s, 4);
    v5 = strlen(__s);
    self->_carScratchURL = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x277CBECE8], __s, v5, 0);
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSend(defaultManager, "attributesOfItemAtPath:error:", -[NSURL path](self->_carScratchURL, "path"), 0)}];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:420];
    [v7 setObject:v8 forKey:*MEMORY[0x277CCA180]];
    [defaultManager setAttributes:v7 ofItemAtPath:-[NSURL path](self->_carScratchURL error:{"path"), 0}];
    close(v4);
    result = self->_carScratchURL;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_removeScratchPath
{
  carScratchURL = [(TDDistillRunner *)self carScratchURL];
  if ([carScratchURL checkResourceIsReachableAndReturnError:0])
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];

    [defaultManager removeItemAtURL:carScratchURL error:0];
  }
}

- (void)_moveScratchToOutputPath
{
  carScratchURL = [(TDDistillRunner *)self carScratchURL];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (([carScratchURL checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    [(TDDistillRunner *)carScratchURL _moveScratchToOutputPath];
  }

  outputURL = [(TDDistillRunner *)self outputURL];
  if ([(NSURL *)outputURL checkResourceIsReachableAndReturnError:0])
  {
    [defaultManager removeItemAtURL:outputURL error:0];
  }

  v10 = 0;
  if (([defaultManager moveItemAtURL:carScratchURL toURL:outputURL error:&v10] & 1) == 0)
  {
    logger = [(TDDistillRunner *)self logger];
    path = [carScratchURL path];
    path2 = [(NSURL *)outputURL path];
    [(TDLogger *)logger logErrorWithFormat:@"move from %@ toPath: %@ failed: %@", path, path2, v10];
  }
}

- (BOOL)_isDistillUnnecessaryForDocument:(id)document
{
  outputURL = [(TDDistillRunner *)self outputURL];
  if ([(NSURL *)outputURL checkResourceIsReachableAndReturnError:0])
  {
    v5 = [[TDProMergeableCommonAssetStorage alloc] initWithPath:[(NSURL *)outputURL path]];
    checksum = [document checksum];
    if (v5 && checksum == [(CUICommonAssetStorage *)v5 associatedChecksum])
    {
      historian = [document historian];
      v8 = [historian foundDataChangesSinceDate:{objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSince1970:", -[CUICommonAssetStorage storageTimestamp](v5, "storageTimestamp"))}] ^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

uint64_t __87__TDDistillRunner_runDistillWithDocumentURL_outputURL_attemptIncremental_forceDistill___block_invoke_2(id *a1, int a2, void *a3)
{
  v6 = [*(a1[4] + 2) isIncremental];
  if (a2)
  {
    if ((v6 & 1) == 0)
    {
      [a1[4] _moveScratchToOutputPath];
    }
  }

  else
  {
    if ((v6 & 1) == 0)
    {
      [a1[4] _removeScratchPath];
    }

    [objc_msgSend(a1[4] "logger")];
    [objc_msgSend(a1[4] "logger")];
  }

  result = [objc_msgSend(a1[6] "lastPathComponent")];
  if (result)
  {
    v12 = 0;
    [a1[7] close];

    v8 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    v9 = [a1[4] logger];
    v10 = [a1[6] path];
    if (v8)
    {
      return [v9 logInfoWithFormat:@"Removed temporary migration file at path: %@", v10];
    }

    else
    {
      [v9 logErrorWithFormat:@"Failed to remove temporary migration file at path: %@", v10];
      v11 = [a1[4] logger];
      return [v11 logError:{objc_msgSend(v12, "localizedDescription")}];
    }
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TDDistillRunner;
  [(TDDistillRunner *)&v3 dealloc];
}

@end