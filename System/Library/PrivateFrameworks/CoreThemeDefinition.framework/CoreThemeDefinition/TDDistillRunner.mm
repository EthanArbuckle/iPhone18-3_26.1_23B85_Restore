@interface TDDistillRunner
- (BOOL)_isDistillUnnecessaryForDocument:(id)a3;
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
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSend(v6, "attributesOfItemAtPath:error:", -[NSURL path](self->_carScratchURL, "path"), 0)}];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:420];
    [v7 setObject:v8 forKey:*MEMORY[0x277CCA180]];
    [v6 setAttributes:v7 ofItemAtPath:-[NSURL path](self->_carScratchURL error:{"path"), 0}];
    close(v4);
    result = self->_carScratchURL;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_removeScratchPath
{
  v2 = [(TDDistillRunner *)self carScratchURL];
  if ([v2 checkResourceIsReachableAndReturnError:0])
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];

    [v3 removeItemAtURL:v2 error:0];
  }
}

- (void)_moveScratchToOutputPath
{
  v4 = [(TDDistillRunner *)self carScratchURL];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  if (([v4 checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    [(TDDistillRunner *)v4 _moveScratchToOutputPath];
  }

  v6 = [(TDDistillRunner *)self outputURL];
  if ([(NSURL *)v6 checkResourceIsReachableAndReturnError:0])
  {
    [v5 removeItemAtURL:v6 error:0];
  }

  v10 = 0;
  if (([v5 moveItemAtURL:v4 toURL:v6 error:&v10] & 1) == 0)
  {
    v7 = [(TDDistillRunner *)self logger];
    v8 = [v4 path];
    v9 = [(NSURL *)v6 path];
    [(TDLogger *)v7 logErrorWithFormat:@"move from %@ toPath: %@ failed: %@", v8, v9, v10];
  }
}

- (BOOL)_isDistillUnnecessaryForDocument:(id)a3
{
  v4 = [(TDDistillRunner *)self outputURL];
  if ([(NSURL *)v4 checkResourceIsReachableAndReturnError:0])
  {
    v5 = [[TDProMergeableCommonAssetStorage alloc] initWithPath:[(NSURL *)v4 path]];
    v6 = [a3 checksum];
    if (v5 && v6 == [(CUICommonAssetStorage *)v5 associatedChecksum])
    {
      v7 = [a3 historian];
      v8 = [v7 foundDataChangesSinceDate:{objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSince1970:", -[CUICommonAssetStorage storageTimestamp](v5, "storageTimestamp"))}] ^ 1;
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