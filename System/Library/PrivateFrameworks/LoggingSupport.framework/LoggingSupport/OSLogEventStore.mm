@interface OSLogEventStore
+ (id)localStore;
+ (id)localStoreWithRelativePaths:(id)a3;
+ (id)storeWithArchiveURL:(id)a3;
+ (id)storeWithArchiveURL:(id)a3 relativePaths:(id)a4;
+ (id)storeWithFileURL:(id)a3;
- (OSLogEventStore)initWithArchiveURL:(id)a3;
- (OSLogEventStore)initWithArchiveURL:(id)a3 relativePaths:(id)a4;
- (void)addFilesToSource:(id)a3 forCollection:(id)a4 withProgress:(id)a5;
- (void)prepareWithCompletionHandler:(id)a3;
@end

@implementation OSLogEventStore

+ (id)localStore
{
  v2 = objc_alloc_init(OSLogEventLocalStore);

  return v2;
}

- (void)prepareWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:6];
  archiveURL = self->_archiveURL;
  if (!archiveURL)
  {
    v16 = _OSLogError(1);
LABEL_10:
    v18 = v16;
    v4[2](v4, 0, v16);

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
  v20 = self;
  [v19 setCompletedUnitCount:{objc_msgSend(v19, "completedUnitCount") + 1}];
  progressHandler = v20->_progressHandler;

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
    v4[2](v4, 0, v35);

    [(_OSLogCollectionReference *)v23 close];
    goto LABEL_51;
  }

  v74 = v22;
  v75 = v10;
  v73 = v9;
  v27 = v19;
  v28 = v20;
  [v27 setCompletedUnitCount:{objc_msgSend(v27, "completedUnitCount") + 1}];
  v29 = v20->_progressHandler;

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
        v38 = v20->_progressHandler;
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
            v4[2](v4, 0, v64);

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
          v39 = *__error();
          v40 = 5;
LABEL_48:
          v42 = _OSLogPOSIXError(v40, v39);
LABEL_49:
          v59 = v42;
          v4[2](v4, 0, v42);

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
          v4[2](v4, 0, v62);

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
          v49 = v20->_progressHandler;
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
        v55 = v20->_progressHandler;

        if (v55)
        {
          [v53 fractionCompleted];
          v55[2](v55, 0);
        }

        if (!_timesync_db_openat([(_OSLogDirectoryReference *)v74 fileDescriptor], "."))
        {
          v65 = __error();
          v66 = _OSLogPOSIXError(12, *v65);
          v4[2](v4, 0, v66);

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
          v67 = _enumerateArchiveIntoSource(v56, v72, v20->_progressHandler, v4);
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
        (v4)[2](v4, v56, 0);
        goto LABEL_60;
      }

      v30 = [(_OSLogVersioning *)v24 state];
      if (v30 == 3)
      {
        break;
      }

      if (v30 == 2)
      {
        v41 = 11;
        goto LABEL_34;
      }

      if (!v30)
      {
        v39 = [(_OSLogVersioning *)v24 version];
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
  v4[2](v4, 0, v34);

  [(_OSLogCollectionReference *)v23 close];
  v26 = v33;
  v9 = v73;
  v10 = v75;
LABEL_51:

LABEL_52:
}

- (void)addFilesToSource:(id)a3 forCollection:(id)a4 withProgress:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  v29 = v10;
  v30 = self;
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

        v16 = [objc_alloc((p_vtable + 87)) initWithCollection:v9 subpath:{objc_msgSend(*(*(&v33 + 1) + 8 * v15), "fileSystemRepresentation")}];
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
          progressHandler = v30->_progressHandler;
          if (progressHandler)
          {
            [v29 fractionCompleted];
            v22 = v21;
            _OSLogInternalError(17, v19);
            v23 = v13;
            v24 = v9;
            v25 = v12;
            v27 = v26 = v11;
            progressHandler[2](progressHandler, v27, v22);

            v11 = v26;
            v12 = v25;
            v9 = v24;
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

- (OSLogEventStore)initWithArchiveURL:(id)a3 relativePaths:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(OSLogEventStore *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_archiveURL, a3);
    objc_storeStrong(&v10->_relativeFilePaths, a4);
  }

  return v10;
}

- (OSLogEventStore)initWithArchiveURL:(id)a3
{
  v5 = a3;
  v6 = [(OSLogEventStore *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_archiveURL, a3);
  }

  return v7;
}

+ (id)storeWithArchiveURL:(id)a3 relativePaths:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithArchiveURL:v7 relativePaths:v6];

  return v8;
}

+ (id)storeWithFileURL:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = [a3 pathComponents];
  v5 = [v4 mutableCopy];

  v6 = [MEMORY[0x277CBEB18] array];
  while ([v5 count])
  {
    v7 = [v5 lastObject];
    v8 = [v7 hasSuffix:@".logarchive"];

    if (v8)
    {
      break;
    }

    v9 = [v5 lastObject];
    [v6 insertObject:v9 atIndex:0];

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

  if ([v6 count])
  {
    v11 = [v6 componentsJoinedByString:@"/"];
    v16[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  }

  else
  {
    v12 = 0;
  }

  v13 = [[a1 alloc] initWithArchiveURL:v10 relativePaths:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)storeWithArchiveURL:(id)a3
{
  v3 = a3;
  v4 = [[OSLogEventStore alloc] initWithArchiveURL:v3];

  return v4;
}

+ (id)localStoreWithRelativePaths:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(OSLogEventLocalStore);
  [(OSLogEventStore *)v4 set_relativeFilePaths:v3];

  return v4;
}

@end