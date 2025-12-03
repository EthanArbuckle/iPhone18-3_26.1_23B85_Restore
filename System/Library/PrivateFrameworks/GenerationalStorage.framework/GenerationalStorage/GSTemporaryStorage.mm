@interface GSTemporaryStorage
- (BOOL)__lockWithFlags:(int)flags error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)mergeAdditionUserInfo:(id)info value:(id)value error:(id *)error;
- (BOOL)replaceDocumentWithContentsOfAddition:(id)addition preservingCurrentVersionWithCreationInfo:(id)info createdAddition:(id *)createdAddition error:(id *)error;
- (BOOL)replaceDocumentWithContentsOfItemAtURL:(id)l preservingCurrentVersionWithCreationInfo:(id)info createdAddition:(id *)addition error:(id *)error;
- (BOOL)setAdditionConflictResolved:(id)resolved value:(BOOL)value error:(id *)error;
- (BOOL)setAdditionDisplayName:(id)name value:(id)value error:(id *)error;
- (BOOL)setAdditionOptions:(id)options value:(unint64_t)value error:(id *)error;
- (GSTemporaryStorage)init;
- (GSTemporaryStorage)initWithLibraryURL:(id)l forItemAtURL:(id)rL error:(id *)error;
- (id)URLforReplacingItemWithError:(id *)error;
- (id)_URLForNameSpace:(id)space createIfNeeded:(BOOL)needed allowMissing:(BOOL)missing error:(id *)error;
- (id)_enumerateItemsAtURL:(id)l;
- (id)additionWithName:(id)name inNameSpace:(id)space error:(id *)error;
- (id)additionsWithNames:(id)names inNameSpace:(id)space error:(id *)error;
- (id)getAdditionDictionary:(id)dictionary error:(id *)error;
- (id)prepareAdditionCreationWithItemAtURL:(id)l byMoving:(BOOL)moving creationInfo:(id)info error:(id *)error;
- (id)setAdditionNameSpace:(id)space value:(id)value error:(id *)error;
- (id)stagingURLforCreatingAdditionWithError:(id *)error;
- (void)_protectPath:(id)path;
- (void)_unlock;
- (void)_unprotectPath:(id)path;
- (void)cleanupStagingURL:(id)l;
- (void)createAdditionStagedAtURL:(id)l creationInfo:(id)info completionHandler:(id)handler;
- (void)dealloc;
- (void)finalize;
- (void)removeAdditions:(id)additions completionHandler:(id)handler;
- (void)removeAllAdditionsForNamespaces:(id)namespaces completionHandler:(id)handler;
@end

@implementation GSTemporaryStorage

- (GSTemporaryStorage)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = _NSMethodExceptionProem();
  [v3 raise:v4 format:{@"%@: cannot use -init for initialization", v5}];

  return 0;
}

- (GSTemporaryStorage)initWithLibraryURL:(id)l forItemAtURL:(id)rL error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  if (([rLCopy isFileURL] & 1) == 0)
  {
    [GSTemporaryStorage initWithLibraryURL:a2 forItemAtURL:self error:?];
  }

  v24.receiver = self;
  v24.super_class = GSTemporaryStorage;
  v12 = [(GSTemporaryStorage *)&v24 init];
  if (v12)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    objc_storeStrong(&v12->_libraryURL, l);
    objc_storeStrong(&v12->_documentURL, rL);
    v14 = [lCopy URLByAppendingPathComponent:@".genstore_staging"];
    stagingURL = v12->_stagingURL;
    v12->_stagingURL = v14;

    v12->_lockFd = -1;
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.genstore.temp-storage-background-queue", v16);
    workQueue = v12->_workQueue;
    v12->_workQueue = v17;

    [(NSURL *)v12->_libraryURL gs_chmod:448];
    v19 = v12->_stagingURL;
    v25 = *MEMORY[0x277CCA180];
    v26[0] = &unk_28627ABD0;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v21 = [defaultManager createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:v20 error:error];

    if (v21)
    {
      [(NSURL *)v12->_libraryURL gs_chmod:320];
    }

    else
    {

      v12 = 0;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)finalize
{
  [(GSTemporaryStorage *)self _unlock];
  v3.receiver = self;
  v3.super_class = GSTemporaryStorage;
  [(GSTemporaryStorage *)&v3 finalize];
}

- (void)dealloc
{
  [(GSTemporaryStorage *)self _unlock];
  v3.receiver = self;
  v3.super_class = GSTemporaryStorage;
  [(GSTemporaryStorage *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSURL *)self->_libraryURL isEqual:equalCopy->_libraryURL];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)__lockWithFlags:(int)flags error:(id *)error
{
  if ((self->_lockFd & 0x80000000) == 0)
  {
    *__error() = 22;
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"_lockFd isn't -1"];
    v6 = *__error();
    v7 = gs_default_log();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
LABEL_4:

      if (error)
      {
        *error = _GSErrorForErrno(v6, v5);
      }

      return 0;
    }

LABEL_3:
    [GSTemporaryStorage __lockWithFlags:error:];
    goto LABEL_4;
  }

  v11 = open([(NSURL *)self->_libraryURL fileSystemRepresentation], 256);
  self->_lockFd = v11;
  if (v11 < 0)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to open %@ for locking", self->_libraryURL];
    v6 = *__error();
    v7 = gs_default_log();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (flock(v11, flags))
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to lock %@", self->_libraryURL];
    v13 = *__error();
    v14 = gs_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [GSTemporaryStorage __lockWithFlags:error:];
    }

    if (error)
    {
      *error = _GSErrorForErrno(v13, v12);
    }

    [(GSTemporaryStorage *)self _unlock];
    return 0;
  }

  return 1;
}

- (void)_unlock
{
  lockFd = self->_lockFd;
  if ((lockFd & 0x80000000) == 0)
  {
    flock(lockFd, 8);
    close(self->_lockFd);
    self->_lockFd = -1;
  }
}

- (void)_protectPath:(id)path
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAA00];
  pathCopy = path;
  defaultManager = [v3 defaultManager];
  v8 = *MEMORY[0x277CCA180];
  v9[0] = &unk_28627ABE8;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [defaultManager setAttributes:v6 ofItemAtPath:pathCopy error:0];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_unprotectPath:(id)path
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAA00];
  pathCopy = path;
  defaultManager = [v3 defaultManager];
  v8 = *MEMORY[0x277CCA180];
  v9[0] = &unk_28627ABD0;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [defaultManager setAttributes:v6 ofItemAtPath:pathCopy error:0];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_URLForNameSpace:(id)space createIfNeeded:(BOOL)needed allowMissing:(BOOL)missing error:(id *)error
{
  missingCopy = missing;
  neededCopy = needed;
  spaceCopy = space;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (![spaceCopy validateGSName:error])
  {
    v14 = 0;
    goto LABEL_20;
  }

  v12 = [spaceCopy isEqualToString:@"com.apple.documentVersions"];
  libraryURL = self->_libraryURL;
  if (v12)
  {
    v14 = libraryURL;
    goto LABEL_20;
  }

  v15 = [(NSURL *)libraryURL URLByAppendingPathComponent:@".ns"];
  v16 = [v15 URLByAppendingPathComponent:spaceCopy];
  if (access([(NSURL *)v16 fileSystemRepresentation], 0))
  {
    if (!neededCopy)
    {
      if (!missingCopy || *__error() != 2)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"The supplied addition doesn't exist"];
        v18 = gs_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [NSString(GSExtensions) validateGSNameAllowingDot:error:];
        }

        if (error)
        {
          *error = _GSErrorForStatus(105, v17, 0);
        }
      }

      v14 = 0;
      goto LABEL_19;
    }

    [(NSURL *)self->_libraryURL gs_chmod:448];
    [v15 gs_chmod:448];
    if (([defaultManager createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:error] & 1) == 0)
    {

      v16 = 0;
    }

    [v15 gs_chmod:320];
    [(NSURL *)self->_libraryURL gs_chmod:320];
  }

  v16 = v16;
  v14 = v16;
LABEL_19:

LABEL_20:

  return v14;
}

- (id)getAdditionDictionary:(id)dictionary error:(id *)error
{
  v21[4] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy url];
  fileSystemRepresentation = [v7 fileSystemRepresentation];

  if (![(GSTemporaryStorage *)self _readLock:error])
  {
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v9 = GSGetGenerationOptions(fileSystemRepresentation);
  v10 = GSGetConflictResolved(fileSystemRepresentation);
  if (access(fileSystemRepresentation, 0))
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"The supplied addition doesn't exist"];
    v12 = gs_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [NSString(GSExtensions) validateGSNameAllowingDot:error:];
    }

    if (error)
    {
      *error = _GSErrorForStatus(105, v11, 0);
    }

    [(GSTemporaryStorage *)self _unlock];
    goto LABEL_8;
  }

  [(GSTemporaryStorage *)self _unlock];
  v20[0] = @"o";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v9];
  v21[0] = v16;
  v20[1] = @"ns";
  nameSpace = [dictionaryCopy nameSpace];
  v21[1] = nameSpace;
  v20[2] = @"u";
  v18 = [dictionaryCopy url];
  v21[2] = v18;
  v20[3] = @"cr";
  v19 = [MEMORY[0x277CCABB0] numberWithBool:v10];
  v21[3] = v19;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];

LABEL_9:
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)setAdditionOptions:(id)options value:(unint64_t)value error:(id *)error
{
  valueCopy = value;
  v8 = [options url];
  fileSystemRepresentation = [v8 fileSystemRepresentation];

  if (![(GSTemporaryStorage *)self _writeLock:error])
  {
    return 0;
  }

  if (access(fileSystemRepresentation, 0))
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"The supplied addition doesn't exist"];
    v11 = gs_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [NSString(GSExtensions) validateGSNameAllowingDot:error:];
    }

    if (error)
    {
      *error = _GSErrorForStatus(105, v10, 0);
    }

    v12 = 0;
  }

  else
  {
    v12 = GSSetGenerationOptions(fileSystemRepresentation, valueCopy, error);
  }

  [(GSTemporaryStorage *)self _unlock];
  return v12;
}

- (BOOL)setAdditionConflictResolved:(id)resolved value:(BOOL)value error:(id *)error
{
  v8 = [resolved url];
  fileSystemRepresentation = [v8 fileSystemRepresentation];

  if (![(GSTemporaryStorage *)self _writeLock:error])
  {
    return 0;
  }

  if (access(fileSystemRepresentation, 0))
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"The supplied addition doesn't exist"];
    v11 = gs_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [NSString(GSExtensions) validateGSNameAllowingDot:error:];
    }

    if (error)
    {
      *error = _GSErrorForStatus(105, v10, 0);
    }

    v12 = 0;
  }

  else
  {
    v12 = GSSetConflictResolved(fileSystemRepresentation, value, error);
  }

  [(GSTemporaryStorage *)self _unlock];
  return v12;
}

- (BOOL)setAdditionDisplayName:(id)name value:(id)value error:(id *)error
{
  valueCopy = value;
  v9 = [name url];
  fileSystemRepresentation = [v9 fileSystemRepresentation];

  if ([(GSTemporaryStorage *)self _writeLock:error])
  {
    if (access(fileSystemRepresentation, 0))
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"The supplied addition doesn't exist"];
      v12 = gs_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [NSString(GSExtensions) validateGSNameAllowingDot:error:];
      }

      if (error)
      {
        *error = _GSErrorForStatus(105, v11, 0);
      }

      v13 = 0;
    }

    else
    {
      v13 = GSSetOriginalDisplayName(fileSystemRepresentation, valueCopy, error);
    }

    [(GSTemporaryStorage *)self _unlock];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)setAdditionNameSpace:(id)space value:(id)value error:(id *)error
{
  v26[4] = *MEMORY[0x277D85DE8];
  spaceCopy = space;
  valueCopy = value;
  if (![(GSTemporaryStorage *)self _writeLock:error])
  {
    v22 = 0;
    goto LABEL_13;
  }

  nameSpace = [spaceCopy nameSpace];
  v11 = [(GSTemporaryStorage *)self _URLForNameSpace:nameSpace createIfNeeded:0 allowMissing:0 error:error];

  if (v11)
  {
    v12 = [(GSTemporaryStorage *)self _URLForNameSpace:valueCopy createIfNeeded:1 allowMissing:0 error:error];
    if (v12)
    {
      name = [spaceCopy name];
      v14 = [v12 URLByAppendingPathComponent:name];

      [v11 gs_chmod:448];
      [v12 gs_chmod:448];
      v15 = [spaceCopy url];
      v16 = _PathRename([v15 fileSystemRepresentation], objc_msgSend(v14, "fileSystemRepresentation"), error);

      if (v16)
      {
        v17 = GSGetGenerationOptions([v14 fileSystemRepresentation]);
        v18 = GSGetConflictResolved([v14 fileSystemRepresentation]);
        v25[0] = @"o";
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v17];
        v26[0] = v19;
        v26[1] = valueCopy;
        v25[1] = @"ns";
        v25[2] = @"u";
        v26[2] = v14;
        v25[3] = @"cr";
        v20 = [MEMORY[0x277CCABB0] numberWithBool:v18];
        v26[3] = v20;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];
      }

      else
      {
        v21 = 0;
      }

      [v11 gs_chmod:320];
      [v12 gs_chmod:320];
      goto LABEL_12;
    }

    v21 = 0;
  }

  else
  {
    v21 = 0;
    v12 = 0;
  }

  v14 = 0;
LABEL_12:
  [(GSTemporaryStorage *)self _unlock];
  v22 = v21;

LABEL_13:
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (BOOL)mergeAdditionUserInfo:(id)info value:(id)value error:(id *)error
{
  valueCopy = value;
  v9 = [info url];
  fileSystemRepresentation = [v9 fileSystemRepresentation];

  if ([(GSTemporaryStorage *)self _writeLock:error])
  {
    if (access(fileSystemRepresentation, 0))
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"The supplied addition doesn't exist"];
      v12 = gs_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [NSString(GSExtensions) validateGSNameAllowingDot:error:];
      }

      if (error)
      {
        *error = _GSErrorForStatus(105, v11, 0);
      }

      v13 = 0;
    }

    else
    {
      v13 = GSMergeInfoValueDictionary(fileSystemRepresentation, valueCopy, error);
    }

    [(GSTemporaryStorage *)self _unlock];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)stagingURLforCreatingAdditionWithError:(id *)error
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [(NSURL *)self->_stagingURL path];
  v7 = [defaultManager gs_createTemporarySubdirectoryOfItem:path withTemplate:@"XXXXXXX" error:error];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)URLforReplacingItemWithError:(id *)error
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager URLForDirectory:99 inDomain:1 appropriateForURL:self->_documentURL create:1 error:error];

  return v6;
}

- (void)cleanupStagingURL:(id)l
{
  stagingURL = self->_stagingURL;
  lCopy = l;
  path = [(NSURL *)stagingURL path];
  pathComponents = [(NSURL *)self->_stagingURL pathComponents];
  path2 = [lCopy path];

  v9 = GSStagingContainer(path, pathComponents, path2);

  if (v9)
  {
    _RemoveTree([v9 fileSystemRepresentation], 0, 0);
  }
}

- (id)prepareAdditionCreationWithItemAtURL:(id)l byMoving:(BOOL)moving creationInfo:(id)info error:(id *)error
{
  movingCopy = moving;
  lCopy = l;
  infoCopy = info;
  v12 = lCopy;
  path = [(NSURL *)self->_stagingURL path];
  pathComponents = [(NSURL *)self->_stagingURL pathComponents];
  path2 = [v12 path];
  v16 = GSStagingContainer(path, pathComponents, path2);

  if (v16)
  {
    if (GSArchiveTree([v12 fileSystemRepresentation], 0, 0, error))
    {
      v17 = v12;
      goto LABEL_11;
    }

LABEL_7:
    v23 = 0;
    v17 = v12;
    goto LABEL_26;
  }

  v18 = [(GSTemporaryStorage *)self stagingURLforCreatingAdditionWithError:error];
  if (!v18)
  {
    goto LABEL_7;
  }

  v19 = v18;
  v20 = [infoCopy objectForKey:@"kGSAdditionName"];
  v21 = v20;
  if (v20)
  {
    lastPathComponent = v20;
  }

  else
  {
    lastPathComponent = [v12 lastPathComponent];
  }

  v24 = lastPathComponent;

  v25 = [infoCopy objectForKeyedSubscript:@"kGSAdditionKeepFileID"];
  bOOLValue = [v25 BOOLValue];

  v17 = [v19 URLByAppendingPathComponent:v24];

  if (!GSStageTree([v12 fileSystemRepresentation], objc_msgSend(v17, "fileSystemRepresentation"), movingCopy, bOOLValue, error))
  {
    _RemoveTree([v19 fileSystemRepresentation], 0, 0);
    goto LABEL_19;
  }

LABEL_11:
  fileSystemRepresentation = [v17 fileSystemRepresentation];
  v28 = GSAdditionComputePOSIXName(infoCopy, self->_documentURL, v17, error);
  if (v28 && GSSetOriginalPOSIXName(fileSystemRepresentation, v28, error))
  {
    v19 = GSAdditionComputeDN(infoCopy, self->_documentURL, v17, error);

    if (v19)
    {
      if (!GSSetOriginalDisplayName(fileSystemRepresentation, v19, error))
      {
        v23 = 0;
        goto LABEL_24;
      }

      v24 = GSAdditionValidateUInfo(infoCopy, error);
      if (v24 && GSSetInfoDictionary(fileSystemRepresentation, v24, error))
      {
        v23 = v17;
LABEL_20:

LABEL_24:
        v28 = v19;
        goto LABEL_25;
      }

LABEL_19:
      v23 = 0;
      goto LABEL_20;
    }

    v28 = 0;
  }

  v23 = 0;
LABEL_25:

LABEL_26:

  return v23;
}

- (void)createAdditionStagedAtURL:(id)l creationInfo:(id)info completionHandler:(id)handler
{
  lCopy = l;
  infoCopy = info;
  handlerCopy = handler;
  workQueue = self->_workQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__GSTemporaryStorage_createAdditionStagedAtURL_creationInfo_completionHandler___block_invoke;
  v15[3] = &unk_279697A60;
  v15[4] = self;
  v16 = lCopy;
  v17 = infoCopy;
  v18 = handlerCopy;
  v12 = infoCopy;
  v13 = handlerCopy;
  v14 = lCopy;
  dispatch_async(workQueue, v15);
}

void __79__GSTemporaryStorage_createAdditionStagedAtURL_creationInfo_completionHandler___block_invoke(uint64_t a1)
{
  v58[4] = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 24) path];
  v3 = [*(*(a1 + 32) + 24) pathComponents];
  v4 = [*(a1 + 40) path];
  v5 = GSStagingContainer(v2, v3, v4);

  if (v5)
  {
    v6 = [*(a1 + 40) path];
    v7 = *(a1 + 48);
    v53 = 0;
    v8 = GSAdditionCreationInfoValidate(v6, v7, &v53);
    v9 = v53;

    if (v8)
    {
      v10 = *(a1 + 32);
      v52 = v9;
      v11 = [v10 _writeLock:&v52];
      v12 = v52;

      if (v11)
      {
        v13 = [v8 objectForKey:@"kGSAdditionNameSpace"];
        v14 = [v8 objectForKey:@"kGSAdditionName"];
        v15 = [v8 objectForKey:@"kGSAdditionOnDuplicate"];
        v16 = [v8 objectForKey:@"kGSAdditionOptions"];
        v45 = [v8 objectForKey:@"kGSAdditionConflictResolved"];
        v17 = *(a1 + 32);
        v51 = v12;
        v18 = [v17 _URLForNameSpace:v13 createIfNeeded:1 allowMissing:0 error:&v51];
        v19 = v51;

        v46 = v16;
        if (!v18)
        {
          v47 = 0;
          v34 = 0;
LABEL_29:
          [v18 gs_chmod:320];
          [*(a1 + 32) _unlock];
          v9 = v19;
          goto LABEL_30;
        }

        v44 = v14;
        v47 = [v18 URLByAppendingPathComponent:v14];
        v20 = [v47 fileSystemRepresentation];
        v21 = access(v20, 0);
        v43 = v15;
        if (!v21)
        {
          v35 = [v15 intValue];
          if (v35 == 1)
          {
            v57[0] = @"o";
            v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:GSGetGenerationOptions(v20)];
            v58[0] = v30;
            v58[1] = v13;
            v57[1] = @"ns";
            v57[2] = @"u";
            v58[2] = v47;
            v57[3] = @"cr";
            v39 = [MEMORY[0x277CCABB0] numberWithBool:GSGetConflictResolved(v20)];
            v58[3] = v39;
            v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:4];

LABEL_26:
            v34 = [[GSAddition alloc] _initWithStorage:*(a1 + 32) andDictionary:v31];
LABEL_27:

            goto LABEL_28;
          }

          if (!v35)
          {
            v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Generation already exists"];
            v37 = gs_default_log();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              __79__GSTemporaryStorage_createAdditionStagedAtURL_creationInfo_completionHandler___block_invoke_cold_1();
            }

            v38 = _GSErrorForStatus(106, v36, 0);

            v34 = 0;
            v31 = v19;
            v19 = v38;
            goto LABEL_27;
          }
        }

        v42 = v13;
        v22 = [*(a1 + 40) fileSystemRepresentation];
        v50 = v19;
        v23 = GSSetGenerationOptions(v22, [v16 unsignedLongLongValue], &v50);
        v9 = v50;

        if (!v23)
        {
          v34 = 0;
          v13 = v42;
          v15 = v43;
          v14 = v44;
LABEL_30:
          (*(*(a1 + 56) + 16))();
          _RemoveTree([v5 fileSystemRepresentation], 0, 0);

          goto LABEL_31;
        }

        [v18 gs_chmod:448];
        if (!v21)
        {
          v24 = MEMORY[0x277CBEBC0];
          v56[0] = v5;
          v41 = [MEMORY[0x277CCAD78] UUID];
          v25 = [v41 UUIDString];
          v56[1] = v25;
          v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
          v27 = [v24 fileURLWithPathComponents:v26];

          v28 = v27;
          v49 = v9;
          LODWORD(v26) = _PathRename(v20, [v27 fileSystemRepresentation], &v49);
          v19 = v49;

          if (!v26)
          {
            v34 = 0;
            v13 = v42;
            goto LABEL_28;
          }

          v9 = v19;
        }

        v13 = v42;
        v48 = v9;
        v29 = _PathRename(v22, v20, &v48);
        v19 = v48;

        if (!v29)
        {
          v34 = 0;
LABEL_28:
          v15 = v43;
          v14 = v44;
          goto LABEL_29;
        }

        v54[0] = @"o";
        v54[1] = @"ns";
        v55[0] = v46;
        v55[1] = v42;
        v55[2] = v47;
        v54[2] = @"u";
        v54[3] = @"cr";
        v30 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v45, "BOOLValue")}];
        v55[3] = v30;
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:4];
        goto LABEL_26;
      }

      (*(*(a1 + 56) + 16))();
      _RemoveTree([v5 fileSystemRepresentation], 0, 0);

      v9 = v12;
    }

    else
    {
      (*(*(a1 + 56) + 16))();
      _RemoveTree([v5 fileSystemRepresentation], 0, 0);
    }
  }

  else
  {
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"not a staged URL: %@", *(a1 + 40)];
    v33 = gs_default_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      GSLibraryCopyGeneration_cold_1();
    }

    v9 = _GSErrorForStatus(104, v32, 0);

    (*(*(a1 + 56) + 16))();
  }

LABEL_31:

  v40 = *MEMORY[0x277D85DE8];
}

- (BOOL)replaceDocumentWithContentsOfAddition:(id)addition preservingCurrentVersionWithCreationInfo:(id)info createdAddition:(id *)createdAddition error:(id *)error
{
  additionCopy = addition;
  infoCopy = info;
  if (infoCopy)
  {
    v12 = GSAdditionSaveBlocking(self, self->_documentURL, 0, infoCopy, error);
    if (!v12)
    {
      v15 = 0;
      goto LABEL_11;
    }

    if (createdAddition)
    {
      v12 = v12;
      *createdAddition = v12;
    }
  }

  v13 = GSRestoreAdditionInternal(self->_documentURL, additionCopy, error);
  v14 = v13;
  v15 = v13 != 0;
  if (v13 && self->_documentURL != v13)
  {
    [(GSTemporaryStorage *)self setDocumentURL:v13];
  }

LABEL_11:
  return v15;
}

- (BOOL)replaceDocumentWithContentsOfItemAtURL:(id)l preservingCurrentVersionWithCreationInfo:(id)info createdAddition:(id *)addition error:(id *)error
{
  lCopy = l;
  infoCopy = info;
  if (infoCopy)
  {
    v12 = GSAdditionSaveBlocking(self, self->_documentURL, 0, infoCopy, error);
    if (!v12)
    {
LABEL_11:
      v15 = 0;
      goto LABEL_12;
    }

    if (addition)
    {
      v12 = v12;
      *addition = v12;
    }
  }

  if (![(NSURL *)self->_documentURL checkResourceIsReachableAndReturnError:error])
  {
    goto LABEL_11;
  }

  v13 = GSReplaceDocumentInternal(self->_documentURL, lCopy, error);
  v14 = v13;
  v15 = v13 != 0;
  if (v13 && self->_documentURL != v13)
  {
    [(GSTemporaryStorage *)self setDocumentURL:v13];
  }

LABEL_12:
  return v15;
}

- (id)additionWithName:(id)name inNameSpace:(id)space error:(id *)error
{
  v22[4] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  spaceCopy = space;
  v10 = [(GSTemporaryStorage *)self _URLForNameSpace:spaceCopy createIfNeeded:0 allowMissing:0 error:error];
  if (!v10)
  {
    v12 = 0;
    goto LABEL_10;
  }

  v11 = v10;
  v12 = [v10 URLByAppendingPathComponent:nameCopy];

  fileSystemRepresentation = [v12 fileSystemRepresentation];
  if (access(fileSystemRepresentation, 0))
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"The supplied addition doesn't exist"];
    v15 = gs_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [NSString(GSExtensions) validateGSNameAllowingDot:error:];
    }

    if (error)
    {
      _GSErrorForStatus(105, v14, 0);
      *error = v16 = 0;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_12;
  }

  if (![(GSTemporaryStorage *)self _readLock:error])
  {
LABEL_10:
    v16 = 0;
    goto LABEL_13;
  }

  v21[0] = @"o";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:GSGetGenerationOptions(fileSystemRepresentation)];
  v22[0] = v17;
  v22[1] = spaceCopy;
  v21[1] = @"ns";
  v21[2] = @"u";
  v22[2] = v12;
  v21[3] = @"cr";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:GSGetConflictResolved(fileSystemRepresentation)];
  v22[3] = v18;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];

  [(GSTemporaryStorage *)self _unlock];
  v16 = [[GSAddition alloc] _initWithStorage:self andDictionary:v14];
LABEL_12:

LABEL_13:
  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)additionsWithNames:(id)names inNameSpace:(id)space error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  spaceCopy = space;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = namesCopy;
  v12 = [v11 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v36;
    errorCopy = error;
    selfCopy = self;
    while (2)
    {
      v15 = 0;
      v34 = v13;
      do
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v35 + 1) + 8 * v15);
        v17 = [(GSTemporaryStorage *)self _URLForNameSpace:spaceCopy createIfNeeded:0 allowMissing:0 error:error];
        if (v17)
        {
          v18 = v17;
          v19 = [v17 URLByAppendingPathComponent:v16];

          fileSystemRepresentation = [v19 fileSystemRepresentation];
          if (!access(fileSystemRepresentation, 0))
          {
            if (![(GSTemporaryStorage *)self _readLock:error])
            {

              v29 = 0;
              goto LABEL_15;
            }

            v39[0] = @"o";
            v21 = v14;
            v22 = v11;
            v23 = v10;
            v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:GSGetGenerationOptions(fileSystemRepresentation)];
            v40[0] = v24;
            v40[1] = spaceCopy;
            v39[1] = @"ns";
            v39[2] = @"u";
            v40[2] = v19;
            v39[3] = @"cr";
            v25 = spaceCopy;
            v26 = [MEMORY[0x277CCABB0] numberWithBool:GSGetConflictResolved(fileSystemRepresentation)];
            v40[3] = v26;
            v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:4];

            v10 = v23;
            v11 = v22;
            v14 = v21;
            v13 = v34;
            self = selfCopy;
            [(GSTemporaryStorage *)selfCopy _unlock];
            v28 = [[GSAddition alloc] _initWithStorage:selfCopy andDictionary:v27];
            [v10 addObject:v28];

            spaceCopy = v25;
            error = errorCopy;
          }
        }

        else
        {
          v19 = 0;
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v29 = v10;
LABEL_15:

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)_enumerateItemsAtURL:(id)l
{
  v3 = MEMORY[0x277CCAA00];
  lCopy = l;
  defaultManager = [v3 defaultManager];
  v6 = [defaultManager enumeratorAtURL:lCopy includingPropertiesForKeys:0 options:1 errorHandler:0];

  return v6;
}

- (void)removeAdditions:(id)additions completionHandler:(id)handler
{
  additionsCopy = additions;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (additionsCopy)
  {
    workQueue = self->_workQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__GSTemporaryStorage_removeAdditions_completionHandler___block_invoke_2;
    v11[3] = &unk_279697A88;
    v11[4] = self;
    v13 = handlerCopy;
    v12 = additionsCopy;
    dispatch_async(workQueue, v11);

    v10 = v13;
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__GSTemporaryStorage_removeAdditions_completionHandler___block_invoke;
    v14[3] = &unk_279697888;
    v15 = handlerCopy;
    [(GSTemporaryStorage *)self removeAllAdditionsForNamespaces:0 completionHandler:v14];
    v10 = v15;
  }
}

void __56__GSTemporaryStorage_removeAdditions_completionHandler___block_invoke_2(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) URLByAppendingPathComponent:@".ns"];
  v3 = *(a1 + 32);
  v36 = 0;
  v4 = [v3 _writeLock:&v36];
  v5 = v36;
  if (v4)
  {
    [*(*(a1 + 32) + 8) gs_chmod:448];
    [v2 gs_chmod:448];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v6 = [*(a1 + 32) _enumerateItemsAtURL:v2];
    v7 = [v6 countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v33;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v32 + 1) + 8 * i) gs_chmod:448];
        }

        v8 = [v6 countByEnumeratingWithState:&v32 objects:v39 count:16];
      }

      while (v8);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = *(a1 + 40);
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v28 + 1) + 8 * j) url];
          _RemoveTree([v16 fileSystemRepresentation], 0, 0);
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v38 count:16];
      }

      while (v13);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v17 = [*(a1 + 32) _enumerateItemsAtURL:{v2, 0}];
    v18 = [v17 countByEnumeratingWithState:&v24 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v25;
      do
      {
        for (k = 0; k != v19; ++k)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v24 + 1) + 8 * k);
          rmdir([v22 fileSystemRepresentation]);
          [v22 gs_chmod:448];
        }

        v19 = [v17 countByEnumeratingWithState:&v24 objects:v37 count:16];
      }

      while (v19);
    }

    [v2 gs_chmod:320];
    [*(*(a1 + 32) + 8) gs_chmod:320];
    [*(a1 + 32) _unlock];
  }

  (*(*(a1 + 48) + 16))();

  v23 = *MEMORY[0x277D85DE8];
}

- (void)removeAllAdditionsForNamespaces:(id)namespaces completionHandler:(id)handler
{
  namespacesCopy = namespaces;
  handlerCopy = handler;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__GSTemporaryStorage_removeAllAdditionsForNamespaces_completionHandler___block_invoke;
  block[3] = &unk_279697A88;
  v12 = namespacesCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = namespacesCopy;
  v10 = handlerCopy;
  dispatch_async(workQueue, block);
}

void __72__GSTemporaryStorage_removeAllAdditionsForNamespaces_completionHandler___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) URLByAppendingPathComponent:@".ns"];
  v3 = *(a1 + 32);
  v34 = 0;
  v4 = [v3 _writeLock:&v34];
  v5 = v34;
  if (v4)
  {
    [*(*(a1 + 32) + 8) gs_chmod:448];
    [v2 gs_chmod:448];
    v6 = *(a1 + 40);
    if (!v6 && (_RemoveTree([v2 fileSystemRepresentation], 0, 0), v2, v2 = 0, (v6 = *(a1 + 40)) == 0) || objc_msgSend(v6, "containsObject:", @"com.apple.documentVersions"))
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v7 = [*(a1 + 32) _enumerateItemsAtURL:*(*(a1 + 32) + 8)];
      v8 = [v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v8)
      {
        v9 = v8;
        v25 = v5;
        v10 = 0;
        v11 = *v31;
        do
        {
          v12 = 0;
          v13 = v10;
          do
          {
            if (*v31 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v10 = *(*(&v30 + 1) + 8 * v12);

            v14 = [v10 lastPathComponent];
            v15 = [v14 hasPrefix:@"."];

            if ((v15 & 1) == 0)
            {
              _RemoveTree([v10 fileSystemRepresentation], 0, 0);
            }

            ++v12;
            v13 = v10;
          }

          while (v9 != v12);
          v9 = [v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
        }

        while (v9);

        v5 = v25;
      }
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = *(a1 + 40);
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = *v27;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v26 + 1) + 8 * i);
          if (([v22 isEqualToString:@"com.apple.documentVersions"] & 1) == 0)
          {
            v23 = [v2 URLByAppendingPathComponent:v22];

            _RemoveTree([v23 fileSystemRepresentation], 0, 0);
            v19 = v23;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v18);
    }

    else
    {
      v19 = 0;
    }

    [v2 gs_chmod:320];
    [*(*(a1 + 32) + 8) gs_chmod:320];
    [*(a1 + 32) _unlock];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)initWithLibraryURL:(uint64_t)a1 forItemAtURL:(uint64_t)a2 error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GSTemporaryStorage.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"[url isFileURL]"}];
}

- (void)__lockWithFlags:error:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v9 = *MEMORY[0x277D85DE8];
  strerror(v0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_24FD46000, v1, v2, "[DEBUG] %@; error %d (%s)", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __79__GSTemporaryStorage_createAdditionStagedAtURL_creationInfo_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24FD46000, v0, v1, "[DEBUG] %@; status %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end