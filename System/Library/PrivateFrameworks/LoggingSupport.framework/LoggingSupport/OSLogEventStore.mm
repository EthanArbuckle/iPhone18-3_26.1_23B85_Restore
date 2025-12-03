@interface OSLogEventStore
+ (id)localStore;
+ (id)localStoreWithRelativePaths:(id)paths;
+ (id)storeWithArchiveURL:(id)l;
+ (id)storeWithArchiveURL:(id)l relativePaths:(id)paths;
+ (id)storeWithFileURL:(id)l;
- (OSLogEventStore)initWithArchiveURL:(id)l;
- (OSLogEventStore)initWithArchiveURL:(id)l relativePaths:(id)paths;
- (void)addFilesToSource:(id)source forCollection:(id)collection withProgress:(id)progress;
- (void)prepareWithCompletionHandler:(id)handler;
@end

@implementation OSLogEventStore

+ (id)localStore
{
  v2 = objc_alloc_init(OSLogEventLocalStore);

  return v2;
}

- (void)prepareWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:6];
  archiveURL = self->_archiveURL;
  if (!archiveURL)
  {
    v16 = _OSLogError(1);
LABEL_10:
    v18 = v16;
    handlerCopy[2](handlerCopy, 0, v16);

    goto LABEL_52;
  }

  v7 = open([(NSURL *)archiveURL fileSystemRepresentation], 0);
  if (v7 == -1)
  {
    v17 = __error();
    v16 = _OSLogPOSIXError(3, *v17);
    goto LABEL_10;
  }

  v8 = v7;
  v9 = [[_OSLogDirectoryReference alloc] initWithDescriptor:v7];
  v10 = [[_OSLogDirectoryReference alloc] initWithDescriptor:v8];
  if (close(v8) == -1)
  {
    v60 = *__error();
    v15 = *__error();
    if (v60 == 9)
    {
      qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
      qword_27DA527A8 = v15;
      __break(1u);
      goto LABEL_65;
    }

    _os_assumes_log();
  }

  v76 = [(NSURL *)self->_archiveURL URLByAppendingPathComponent:@"timesync"];
  v11 = open([v76 fileSystemRepresentation], 0);
  if (v11 == -1)
  {
    v13 = 0;
    goto LABEL_12;
  }

  v12 = v11;
  v13 = [[_OSLogDirectoryReference alloc] initWithDescriptor:v11];
  if (close(v12) == -1)
  {
    v14 = *__error();
    v15 = *__error();
    if (v14 != 9)
    {
      _os_assumes_log();
      goto LABEL_12;
    }

LABEL_65:
    qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
    qword_27DA527A8 = v15;
    __break(1u);
    return;
  }

LABEL_12:
  v19 = v5;
  selfCopy = self;
  [v19 setCompletedUnitCount:{objc_msgSend(v19, "completedUnitCount") + 1}];
  progressHandler = selfCopy->_progressHandler;

  if (progressHandler)
  {
    [v19 fractionCompleted];
    progressHandler[2](progressHandler, 0);
  }

  v22 = v13;
  v23 = [[_OSLogCollectionReference alloc] initWithDiagnosticsDirectory:v9 timesyncDirectory:v13 UUIDTextDirectory:v10];
  v78 = 0;
  v24 = [[_OSLogVersioning alloc] initWithCollection:v23 error:&v78];
  v25 = v78;
  v26 = v25;
  if (!v24)
  {
    v35 = _OSLogPOSIXError(4, [v25 code]);
    handlerCopy[2](handlerCopy, 0, v35);

    [(_OSLogCollectionReference *)v23 close];
    goto LABEL_51;
  }

  v74 = v22;
  v75 = v10;
  v73 = v9;
  v27 = v19;
  v28 = selfCopy;
  [v27 setCompletedUnitCount:{objc_msgSend(v27, "completedUnitCount") + 1}];
  v29 = selfCopy->_progressHandler;

  if (v29)
  {
    [v27 fractionCompleted];
    v29[2](v29, 0);
  }

  while (2)
  {
    v9 = v73;
    v10 = v75;
    while (1)
    {
      if ([(_OSLogVersioning *)v24 state]== 1)
      {
        v36 = v27;
        v37 = v28;
        [v36 setCompletedUnitCount:{objc_msgSend(v36, "completedUnitCount") + 1}];
        v38 = selfCopy->_progressHandler;
        v71 = v37;

        if (v38)
        {
          [v36 fractionCompleted];
          v38[2](v38, 0);
        }

        v9 = v73;
        if (v74)
        {
          v10 = v75;
        }

        else
        {
          v43 = open([v76 fileSystemRepresentation], 0);
          v10 = v75;
          if (v43 == -1)
          {
            v63 = __error();
            v64 = _OSLogPOSIXError(3, *v63);
            handlerCopy[2](handlerCopy, 0, v64);

            [(_OSLogDirectoryReference *)v73 close];
            [(_OSLogDirectoryReference *)v75 close];
            goto LABEL_51;
          }

          v74 = [[_OSLogDirectoryReference alloc] initWithDescriptor:v43];
          v44 = [[_OSLogCollectionReference alloc] initWithDiagnosticsDirectory:v73 timesyncDirectory:v74 UUIDTextDirectory:v75];

          v23 = v44;
        }

        [(_OSLogDirectoryReference *)v73 fileDescriptor];
        v45 = _os_trace_mmap_at();
        if (!v45)
        {
          version = *__error();
          v40 = 5;
LABEL_48:
          v42 = _OSLogPOSIXError(v40, version);
LABEL_49:
          v59 = v42;
          handlerCopy[2](handlerCopy, 0, v42);

          [(_OSLogCollectionReference *)v23 close];
LABEL_50:

          goto LABEL_51;
        }

        v72 = v23;
        v70 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v45 length:0 deallocator:&__block_literal_global_4227];
        v46 = [MEMORY[0x277CCAC58] propertyListWithData:? options:? format:? error:?];
        v47 = 0;

        if (!v46)
        {
          _OSLogInternalError(5, v47);
          v62 = v61 = 0;
          handlerCopy[2](handlerCopy, 0, v62);

          [(_OSLogCollectionReference *)v72 close];
          v57 = v70;
          v58 = v47;
LABEL_62:

          v26 = v58;
          v23 = v72;
          goto LABEL_50;
        }

        v68 = v47;
        v69 = v46;
        v48 = [[_OSLogEventStoreMetadata alloc] initWithDictionary:v46];
        if (!v48)
        {
          v49 = selfCopy->_progressHandler;
          if (v49)
          {
            [v36 fractionCompleted];
            v51 = v50;
            v52 = _OSLogError(16);
            v49[2](v49, v52, v51);

            v9 = v73;
          }
        }

        v53 = v36;
        v54 = v71;
        [v53 setCompletedUnitCount:{objc_msgSend(v53, "completedUnitCount") + 1}];
        v55 = selfCopy->_progressHandler;

        if (v55)
        {
          [v53 fractionCompleted];
          v55[2](v55, 0);
        }

        if (!_timesync_db_openat([(_OSLogDirectoryReference *)v74 fileDescriptor], "."))
        {
          v65 = __error();
          v66 = _OSLogPOSIXError(12, *v65);
          handlerCopy[2](handlerCopy, 0, v66);

          [(_OSLogCollectionReference *)v72 close];
          v57 = v70;
          v58 = v68;
LABEL_61:

          v61 = v69;
          goto LABEL_62;
        }

        v56 = [OSLogEventSource initWithCollection:"initWithCollection:metadata:timesync:" metadata:v72 timesync:?];
        _progress(v54, v53, 1);
        [v53 becomeCurrentWithPendingUnitCount:1];
        if (v54->_relativeFilePaths)
        {
          [(OSLogEventStore *)v54 addFilesToSource:v56 forCollection:v72 withProgress:v53];
          v57 = v70;
          v58 = v68;
        }

        else
        {
          v67 = _enumerateArchiveIntoSource(v56, v72, selfCopy->_progressHandler, handlerCopy);
          v57 = v70;
          v58 = v68;
          if (!v67)
          {
LABEL_60:

            v10 = v75;
            goto LABEL_61;
          }
        }

        [v53 resignCurrent];
        _progress(v54, v53, 0);
        (handlerCopy)[2](handlerCopy, v56, 0);
        goto LABEL_60;
      }

      state = [(_OSLogVersioning *)v24 state];
      if (state == 3)
      {
        break;
      }

      if (state == 2)
      {
        v41 = 11;
        goto LABEL_34;
      }

      if (!state)
      {
        version = [(_OSLogVersioning *)v24 version];
        v40 = 10;
        goto LABEL_48;
      }
    }

    upgradeHandler = v28->_upgradeHandler;
    if (!upgradeHandler || (upgradeHandler[2]() & 1) == 0)
    {
      v41 = 8;
LABEL_34:
      v42 = _OSLogError(v41);
      goto LABEL_49;
    }

    v77 = v26;
    v32 = [(_OSLogVersioning *)v24 performDestructiveUpdates:&v77];
    v33 = v77;

    v26 = v33;
    if (v32)
    {
      continue;
    }

    break;
  }

  v34 = _OSLogPOSIXError(9, [v33 code]);
  handlerCopy[2](handlerCopy, 0, v34);

  [(_OSLogCollectionReference *)v23 close];
  v26 = v33;
  v9 = v73;
  v10 = v75;
LABEL_51:

LABEL_52:
}

- (void)addFilesToSource:(id)source forCollection:(id)collection withProgress:(id)progress
{
  v38 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  collectionCopy = collection;
  progressCopy = progress;
  v11 = sourceCopy;
  v29 = progressCopy;
  selfCopy = self;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = self->_relativeFilePaths;
  v31 = [(NSArray *)v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v31)
  {
    v13 = *v34;
    p_vtable = &OBJC_METACLASS____OSLogIndex.vtable;
    do
    {
      v15 = 0;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [objc_alloc((p_vtable + 87)) initWithCollection:collectionCopy subpath:{objc_msgSend(*(*(&v33 + 1) + 8 * v15), "fileSystemRepresentation")}];
        v17 = [_OSLogIndexFile alloc];
        v32 = 0;
        v18 = [(_OSLogIndexFile *)v17 initWithTraceFile:v16 error:&v32];
        v19 = v32;
        if (v18)
        {
          [v11 _insertIndexFile:v18];
        }

        else
        {
          progressHandler = selfCopy->_progressHandler;
          if (progressHandler)
          {
            [v29 fractionCompleted];
            v22 = v21;
            _OSLogInternalError(17, v19);
            v23 = v13;
            v24 = collectionCopy;
            v25 = v12;
            v27 = v26 = v11;
            progressHandler[2](progressHandler, v27, v22);

            v11 = v26;
            v12 = v25;
            collectionCopy = v24;
            v13 = v23;
            p_vtable = (&OBJC_METACLASS____OSLogIndex + 24);
          }
        }

        ++v15;
      }

      while (v31 != v15);
      v31 = [(NSArray *)v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v31);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (OSLogEventStore)initWithArchiveURL:(id)l relativePaths:(id)paths
{
  lCopy = l;
  pathsCopy = paths;
  v9 = [(OSLogEventStore *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_archiveURL, l);
    objc_storeStrong(&v10->_relativeFilePaths, paths);
  }

  return v10;
}

- (OSLogEventStore)initWithArchiveURL:(id)l
{
  lCopy = l;
  v6 = [(OSLogEventStore *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_archiveURL, l);
  }

  return v7;
}

+ (id)storeWithArchiveURL:(id)l relativePaths:(id)paths
{
  pathsCopy = paths;
  lCopy = l;
  v8 = [[self alloc] initWithArchiveURL:lCopy relativePaths:pathsCopy];

  return v8;
}

+ (id)storeWithFileURL:(id)l
{
  v16[1] = *MEMORY[0x277D85DE8];
  pathComponents = [l pathComponents];
  v5 = [pathComponents mutableCopy];

  array = [MEMORY[0x277CBEB18] array];
  while ([v5 count])
  {
    lastObject = [v5 lastObject];
    v8 = [lastObject hasSuffix:@".logarchive"];

    if (v8)
    {
      break;
    }

    lastObject2 = [v5 lastObject];
    [array insertObject:lastObject2 atIndex:0];

    [v5 removeLastObject];
  }

  if ([v5 count])
  {
    v10 = [MEMORY[0x277CBEBC0] fileURLWithPathComponents:v5];
  }

  else
  {
    v10 = 0;
  }

  if ([array count])
  {
    v11 = [array componentsJoinedByString:@"/"];
    v16[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  }

  else
  {
    v12 = 0;
  }

  v13 = [[self alloc] initWithArchiveURL:v10 relativePaths:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)storeWithArchiveURL:(id)l
{
  lCopy = l;
  v4 = [[OSLogEventStore alloc] initWithArchiveURL:lCopy];

  return v4;
}

+ (id)localStoreWithRelativePaths:(id)paths
{
  pathsCopy = paths;
  v4 = objc_alloc_init(OSLogEventLocalStore);
  [(OSLogEventStore *)v4 set_relativeFilePaths:pathsCopy];

  return v4;
}

@end