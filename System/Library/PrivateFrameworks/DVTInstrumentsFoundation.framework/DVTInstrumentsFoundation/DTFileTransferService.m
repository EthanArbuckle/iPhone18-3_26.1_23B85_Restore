@interface DTFileTransferService
+ (void)registerCapabilities:(id)a3;
- (BOOL)_fileTransfer:(id)a3 isValidForApplication:(id)a4;
- (BOOL)_unarchivePackageIfNecessary:(id)a3;
- (DTFileTransferService)initWithChannel:(id)a3;
- (id)_beginTransferOfFileNamed:(id)a3 outError:(id *)a4;
- (id)_moveFileTransfer:(id)a3 inDataContainerOfApplicationBundleIdentifier:(id)a4 withError:(id *)a5;
- (id)_moveFileTransfer:(id)a3 toDebugInboxOfApplicationWithBundleIdentifier:(id)a4 outError:(id *)a5;
- (id)openFileInDocumentDebugInbox:(id)a3 forApplicationWithBundleIdentifier:(id)a4 withAnnotation:(id)a5;
- (id)transferData:(id)a3 intoAppContainerForBundleIdentifier:(id)a4 filename:(id)a5;
- (id)transferFile:(id)a3 toDebugInboxOfApplicationWithBundleIdentifier:(id)a4 destinationFilename:(id)a5;
@end

@implementation DTFileTransferService

+ (void)registerCapabilities:(id)a3
{
  v4 = a3;
  [v4 publishCapability:@"com.apple.instruments.server.services.filetransfer" withVersion:1 forClass:a1];
  [v4 publishCapability:@"com.apple.instruments.server.services.filetransfer.debuginbox" withVersion:1 forClass:a1];
}

- (DTFileTransferService)initWithChannel:(id)a3
{
  v12.receiver = self;
  v12.super_class = DTFileTransferService;
  v3 = [(DTXService *)&v12 initWithChannel:a3];
  if (v3)
  {
    v4 = dispatch_queue_create("File transfer service coordination queue", 0);
    coordinationQueue = v3->_coordinationQueue;
    v3->_coordinationQueue = v4;

    v6 = objc_opt_new();
    activeFileTransfers = v3->_activeFileTransfers;
    v3->_activeFileTransfers = v6;

    v8 = [(DTXService *)v3 channel];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_247FD7C0C;
    v10[3] = &unk_278EF1070;
    v11 = v3;
    [v8 registerDisconnectHandler:v10];
  }

  return v3;
}

- (id)transferFile:(id)a3 toDebugInboxOfApplicationWithBundleIdentifier:(id)a4 destinationFilename:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  if (v9 && (v12 = [v9 length], v10) && v8 && v12 && objc_msgSend(v10, "length"))
  {
    v27 = 0;
    v13 = [(DTFileTransferService *)self _beginTransferOfFileNamed:v10 outError:&v27];
    v14 = v27;
    if (v13)
    {
      v15 = [v13 writeHandle];
      [v15 writeData:v8];

      [v13 closeFileTransfer];
      coordinationQueue = self->_coordinationQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_247FD82C8;
      block[3] = &unk_278EF2A28;
      block[4] = self;
      v24 = v13;
      v17 = v11;
      v25 = v17;
      v26 = v9;
      dispatch_async(coordinationQueue, block);
      v18 = v17;
    }

    else
    {
      [v11 invokeCompletionWithReturnValue:v14 error:v14];
      v22 = v11;
    }
  }

  else
  {
    v19 = sub_247FD7F9C(1);
    [v11 invokeCompletionWithReturnValue:0 error:v19];
    v20 = v11;
  }

  return v11;
}

- (id)openFileInDocumentDebugInbox:(id)a3 forApplicationWithBundleIdentifier:(id)a4 withAnnotation:(id)a5
{
  v50[3] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  if (!v7 || (v11 = [v7 length], !v8) || !v11 || !objc_msgSend(v8, "length"))
  {
    v23 = sub_247FD7F9C(1);
    [v10 invokeCompletionWithReturnValue:v23 error:v23];
    v24 = v10;

    goto LABEL_14;
  }

  if (([v8 isEqualToString:@"com.apple.Playgrounds"] & 1) == 0)
  {
    [v10 invokeCompletionWithReturnValue:0 error:0];
    v27 = v10;
    goto LABEL_14;
  }

  v48 = 0;
  v12 = [MEMORY[0x277CC1E70] bundleRecordWithBundleIdentifier:v8 allowPlaceholder:1 error:&v48];
  v13 = v48;
  if (v12)
  {
    v14 = sub_247FD87C8(v12);
    v15 = sub_247FD882C(v14);
    v16 = [v14 URLByAppendingPathComponent:@"Debug" isDirectory:1];

    v17 = sub_247FD882C(v16);
    if (!v16 || !v15 || !v17)
    {
      v29 = sub_247FD7F9C(5);

      [v10 invokeCompletionWithReturnValue:v29 error:v29];
      v30 = v10;
      v13 = v29;
LABEL_27:

      goto LABEL_28;
    }

    v18 = sub_247FD88A8(v7);

    v19 = [v16 URLByAppendingPathComponent:v18 isDirectory:0];
    memset(&v47, 0, sizeof(v47));
    v20 = [v19 path];
    if (lstat([v20 fileSystemRepresentation], &v47))
    {
    }

    else
    {
      v31 = v47.st_mode & 0xF000;

      if (v31 == 0x4000 || v31 == 0x8000)
      {
        v42 = v18;
        if (v9)
        {
          v32 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v9];
        }

        else
        {
          v32 = objc_opt_new();
        }

        v33 = MEMORY[0x277CBEC38];
        v34 = v32;
        v44 = v32;
        [v32 setObject:MEMORY[0x277CBEC38] forKey:@"DTFileTransferServiceOriginatedKey"];
        v35 = *MEMORY[0x277D0AC40];
        v49[0] = *MEMORY[0x277D0AC58];
        v49[1] = v35;
        v50[0] = v33;
        v50[1] = v19;
        v49[2] = *MEMORY[0x277D0AC30];
        v50[2] = v34;
        v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:3];
        v36 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
        v41 = [v12 bundleIdentifier];
        [MEMORY[0x277D0AD60] optionsWithDictionary:v43];
        v37 = v40 = v19;
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = sub_247FD893C;
        v45[3] = &unk_278EF3818;
        v38 = v10;
        v46 = v38;
        [v36 openApplication:v41 withOptions:v37 completion:v45];

        v19 = v40;
        v39 = v38;

        v18 = v42;
        goto LABEL_26;
      }
    }

    v21 = sub_247FD7F9C(7);

    [v10 invokeCompletionWithReturnValue:v21 error:v21];
    v22 = v10;
    v13 = v21;
LABEL_26:

    v7 = v18;
    goto LABEL_27;
  }

  [v10 invokeCompletionWithReturnValue:v13 error:v13];
  v28 = v10;
LABEL_28:

LABEL_14:
  v25 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)transferData:(id)a3 intoAppContainerForBundleIdentifier:(id)a4 filename:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  v12 = sub_247FD8D80();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = [v9 UTF8String];
    *&buf[22] = 2080;
    v42 = [v10 UTF8String];
    _os_log_impl(&dword_247F67000, v12, OS_LOG_TYPE_INFO, "transferData:%p intoAppContainerForBundleIdentifier:%s withFileName: %s", buf, 0x20u);
  }

  if (!v9)
  {
    goto LABEL_16;
  }

  v13 = [v9 length];
  if (!v10 || !v8 || !v13 || ![v10 length])
  {
    goto LABEL_16;
  }

  if ([v10 rangeOfString:@"/"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = sub_247FD8D80();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_24802F904(v10);
    }

LABEL_16:
    v19 = sub_247FD7F9C(1);
    [v11 invokeCompletionWithReturnValue:0 error:v19];
    v31 = v11;
    goto LABEL_17;
  }

  v14 = MEMORY[0x277CCACA8];
  v15 = [MEMORY[0x277CCAD78] UUID];
  v16 = [v15 UUIDString];
  v17 = [v14 stringWithFormat:@"%@-%@", v16, v10];

  v40 = 0;
  v18 = [(DTFileTransferService *)self _beginTransferOfFileNamed:v17 outError:&v40];
  v19 = v40;
  if (v18)
  {
    v20 = [v18 writeHandle];
    [v20 writeData:v8];

    [v18 closeFileTransfer];
    v21 = sub_247FD8D80();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [v18 destinationDirectoryURLToRemoveOnDealloc];
      v23 = [v22 absoluteString];
      v24 = [v23 UTF8String];
      *buf = 136315138;
      *&buf[4] = v24;
      _os_log_impl(&dword_247F67000, v21, OS_LOG_TYPE_INFO, "File transfer successfully staged. %s", buf, 0xCu);
    }

    v25 = [v18 destinationURL];
    v26 = [v25 path];
    sub_247FD8DC4([v26 fileSystemRepresentation]);

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v42 = sub_247FD8E08;
    v43 = sub_247FD8E18;
    v44 = 0;
    coordinationQueue = self->_coordinationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_247FD8E20;
    block[3] = &unk_278EF3840;
    v39 = buf;
    block[4] = self;
    v36 = v18;
    v37 = v9;
    v28 = v11;
    v38 = v28;
    dispatch_sync(coordinationQueue, block);
    v29 = v28;

    _Block_object_dispose(buf, 8);
  }

  else
  {
    [v11 invokeCompletionWithReturnValue:0 error:v19];
    v34 = v11;
  }

  v10 = v17;
LABEL_17:

  v32 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)_fileTransfer:(id)a3 isValidForApplication:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MEMORY[0x277CC1EB8];
  v7 = [a3 destinationURL];
  v8 = [v6 documentProxyForURL:v7];

  if (!v8)
  {
    [MEMORY[0x277CBEAD8] raise:@"DTFileTransferServiceNoDefaultApplicationException" format:@"Unable to resolve default application for file in DTFileTransferService"];
  }

  [v8 availableClaimBindingsReturningError:0];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v20 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [*(*(&v17 + 1) + 8 * i) bundleRecord];
        v14 = [v13 isEqual:v5];

        if (v14)
        {
          LOBYTE(v10) = 1;
          goto LABEL_13;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)_beginTransferOfFileNamed:(id)a3 outError:(id *)a4
{
  v5 = MEMORY[0x277CCAA00];
  v6 = a3;
  v7 = [v5 defaultManager];
  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = [v8 UUIDString];

  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/tmp"];
  v11 = sub_247FD93A8(v10, @"DTFileTransferService", 1);
  v12 = sub_247FD93A8(v11, v9, 0);

  v13 = v12;
  v14 = sub_247FD88A8(v6);

  v15 = [v13 URLByAppendingPathComponent:v14 isDirectory:0];

  v16 = [v15 path];
  v17 = lstat([v16 fileSystemRepresentation], &v24);

  if (v17)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0;
  }

  if (v13 && v18 && ([v7 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:0] & 1) != 0 && (objc_msgSend(v18, "path"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v7, "createFileAtPath:contents:attributes:", v19, 0, 0), v19, (v20 & 1) != 0))
  {
    v21 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:v18 error:0];
    if (v21)
    {
      v22 = objc_opt_new();
      [v22 setDestinationURL:v18];
      [v22 setDestinationDirectoryURLToRemoveOnDealloc:v13];
      [v22 setWriteHandle:v21];
    }

    else if (a4)
    {
      sub_247FD7F9C(2);
      *a4 = v22 = 0;
    }

    else
    {
      v22 = 0;
    }
  }

  else if (a4)
  {
    sub_247FD7F9C(2);
    *a4 = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)_moveFileTransfer:(id)a3 toDebugInboxOfApplicationWithBundleIdentifier:(id)a4 outError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([v9 isEqualToString:@"com.apple.Playgrounds"])
  {
    v24 = 0;
    v10 = [MEMORY[0x277CC1E70] bundleRecordWithBundleIdentifier:v9 allowPlaceholder:1 error:&v24];
    v11 = v24;
    v12 = v11;
    if (v10)
    {
      if ([(DTFileTransferService *)self _fileTransfer:v8 isValidForApplication:v10])
      {
        v13 = sub_247FD87C8(v10);
        if (v13)
        {
          v14 = v13;
          if (!sub_247FD9704(v13, 1))
          {
            if (a5)
            {
              sub_247FD7F9C(6);
              *a5 = v20 = 0;
            }

            else
            {
              v20 = 0;
            }

            v15 = v14;
            goto LABEL_32;
          }

          v15 = [v14 URLByAppendingPathComponent:@"Debug" isDirectory:1];

          if (sub_247FD9704(v15, 1))
          {
            v16 = [v8 destinationURL];
            v17 = [v16 lastPathComponent];
            v18 = [v15 URLByAppendingPathComponent:v17 isDirectory:0];

            v19 = sub_247FD97BC(v8, v18, 1);

            if (v19)
            {
              v20 = v18;
            }

            else if (a5)
            {
              sub_247FD7F9C(6);
              *a5 = v20 = 0;
            }

            else
            {
              v20 = 0;
            }

            goto LABEL_32;
          }

          if (a5)
          {
            v22 = sub_247FD7F9C(6);
            goto LABEL_23;
          }
        }

        else
        {
          if (a5)
          {
            v22 = sub_247FD7F9C(6);
            v15 = 0;
LABEL_23:
            v20 = 0;
            *a5 = v22;
LABEL_32:

            goto LABEL_33;
          }

          v15 = 0;
        }

        v20 = 0;
        goto LABEL_32;
      }

      if (a5)
      {
        sub_247FD7F9C(5);
        *a5 = v20 = 0;
        goto LABEL_33;
      }
    }

    else if (a5)
    {
      v21 = v11;
      v20 = 0;
      *a5 = v12;
LABEL_33:

      goto LABEL_34;
    }

    v20 = 0;
    goto LABEL_33;
  }

  if (a5)
  {
    sub_247FD7F9C(5);
    *a5 = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

LABEL_34:

  return v20;
}

- (id)_moveFileTransfer:(id)a3 inDataContainerOfApplicationBundleIdentifier:(id)a4 withError:(id *)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v38 = 0;
  v9 = [MEMORY[0x277CC1E70] bundleRecordWithBundleIdentifier:v8 allowPlaceholder:1 error:&v38];
  v10 = v38;
  if (!v9)
  {
    v37 = v10;
    v9 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:v8 error:&v37];
    v11 = v37;

    if (!v9)
    {
      v32 = sub_247FD8D80();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_24802FB24(v8);
      }

      if (a5)
      {
        v33 = v11;
        v9 = 0;
        v22 = 0;
        v30 = 0;
        *a5 = v11;
      }

      else
      {
        v9 = 0;
        v22 = 0;
        v30 = 0;
      }

      v10 = v11;
      goto LABEL_42;
    }

    v10 = v11;
  }

  v12 = [v9 dataContainerURL];
  v13 = sub_247FD8D80();
  v14 = v13;
  if (!v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_24802FAA8(v8);
    }

    if (a5)
    {
      v31 = sub_247FD7F9C(6);
      v22 = 0;
LABEL_29:
      v30 = 0;
      *a5 = v31;
      goto LABEL_42;
    }

    v22 = 0;
LABEL_31:
    v30 = 0;
    goto LABEL_42;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = [v12 path];
    v16 = [v15 UTF8String];
    *buf = 136315138;
    v40 = v16;
    _os_log_impl(&dword_247F67000, v14, OS_LOG_TYPE_INFO, "Checking for container at: %s", buf, 0xCu);
  }

  v17 = sub_247FD9704(v12, 0);
  v18 = sub_247FD8D80();
  v19 = v18;
  if (v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v20 = [v12 path];
      v21 = [v20 UTF8String];
      *buf = 136315138;
      v40 = v21;
      _os_log_impl(&dword_247F67000, v19, OS_LOG_TYPE_INFO, "Data container exists at: %s", buf, 0xCu);
    }

    v22 = [v12 URLByAppendingPathComponent:@"/tmp"];

    if (sub_247FD9704(v22, 0))
    {
      v23 = sub_247FD8D80();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = [v22 path];
        v25 = [v24 UTF8String];
        *buf = 136315138;
        v40 = v25;
        _os_log_impl(&dword_247F67000, v23, OS_LOG_TYPE_INFO, "Temp directory exists: %s", buf, 0xCu);
      }

      v26 = [v7 destinationURL];
      v27 = [v26 lastPathComponent];
      v28 = [v22 URLByAppendingPathComponent:v27 isDirectory:0];

      v29 = sub_247FD97BC(v7, v28, 0);

      if (v29)
      {
        v30 = v28;
      }

      else
      {
        v34 = sub_247FD8D80();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_24802FA64(v34);
        }

        if (a5)
        {
          sub_247FD7F9C(6);
          *a5 = v30 = 0;
        }

        else
        {
          v30 = 0;
        }
      }

      goto LABEL_42;
    }

    if (a5)
    {
      v31 = sub_247FD7F9C(6);
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_24802FA20(v19);
  }

  if (a5)
  {
    sub_247FD7F9C(6);
    *a5 = v30 = 0;
  }

  else
  {
    v30 = 0;
  }

  v22 = v12;
LABEL_42:

  v35 = *MEMORY[0x277D85DE8];

  return v30;
}

- (BOOL)_unarchivePackageIfNecessary:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 destinationURL];
  v5 = [v4 lastPathComponent];

  v6 = [v5 pathExtension];
  v7 = [v6 lowercaseString];
  v8 = [v7 isEqualToString:@"zip"];

  if (!v8)
  {
    LOBYTE(v21) = 1;
    goto LABEL_28;
  }

  v9 = [v5 stringByDeletingPathExtension];
  v10 = [v9 pathExtension];
  if (!v10)
  {

    goto LABEL_10;
  }

  v11 = v10;
  v12 = [v10 length];

  if (!v12)
  {
LABEL_10:
    LOBYTE(v21) = 0;
    goto LABEL_28;
  }

  v13 = [MEMORY[0x277CCAD78] UUID];
  v14 = [v13 UUIDString];

  v15 = [v3 destinationDirectoryURLToRemoveOnDealloc];
  v16 = [v15 URLByAppendingPathComponent:v14 isDirectory:1];

  v17 = [MEMORY[0x277CCAA00] defaultManager];
  v50 = 0;
  v18 = [v17 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:&v50];
  v19 = v50;
  v20 = v19;
  LOBYTE(v21) = 0;
  if (v18 && !v19)
  {
    v22 = MEMORY[0x277D036C0];
    v23 = [v3 destinationURL];
    v49 = 0;
    v24 = [v22 flatUnarchiveFileAtURL:v23 toURL:v16 error:&v49];
    v25 = v49;

    if (v25)
    {
      v20 = 0;
      LOBYTE(v21) = 0;
    }

    else
    {
      v26 = [v5 stringByDeletingPathExtension];
      v43 = [v26 pathExtension];

      v27 = [v16 path];
      v48 = 0;
      v28 = [v17 subpathsOfDirectoryAtPath:v27 error:&v48];
      v20 = v48;

      LOBYTE(v21) = 0;
      if (v28 && !v20)
      {
        v29 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (SELF beginswith[c] '__MACOSX' OR SELF contains '/.' OR SELF beginswith '.')"];
        v30 = [v28 filteredArrayUsingPredicate:v29];

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v28 = v30;
        v21 = [v28 countByEnumeratingWithState:&v44 objects:v51 count:16];
        if (v21)
        {
          v41 = v14;
          v42 = v16;
          v40 = v17;
          v31 = *v45;
          while (2)
          {
            v32 = v28;
            for (i = 0; i != v21; ++i)
            {
              if (*v45 != v31)
              {
                objc_enumerationMutation(v32);
              }

              v34 = *(*(&v44 + 1) + 8 * i);
              v35 = [v34 pathExtension];
              v36 = [v35 caseInsensitiveCompare:v43];

              if (!v36)
              {
                v37 = [v42 URLByAppendingPathComponent:v34];
                [v3 setDestinationURL:v37];

                LOBYTE(v21) = 1;
                v17 = v40;
                v14 = v41;
                v25 = 0;
                v28 = v32;
                goto LABEL_23;
              }
            }

            v28 = v32;
            v21 = [v32 countByEnumeratingWithState:&v44 objects:v51 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }

          v17 = v40;
          v14 = v41;
          v25 = 0;
LABEL_23:
          v16 = v42;
        }
      }
    }
  }

LABEL_28:
  v38 = *MEMORY[0x277D85DE8];
  return v21;
}

@end