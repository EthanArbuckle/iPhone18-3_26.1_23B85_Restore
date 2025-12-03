@interface DTFileTransferService
+ (void)registerCapabilities:(id)capabilities;
- (BOOL)_fileTransfer:(id)transfer isValidForApplication:(id)application;
- (BOOL)_unarchivePackageIfNecessary:(id)necessary;
- (DTFileTransferService)initWithChannel:(id)channel;
- (id)_beginTransferOfFileNamed:(id)named outError:(id *)error;
- (id)_moveFileTransfer:(id)transfer inDataContainerOfApplicationBundleIdentifier:(id)identifier withError:(id *)error;
- (id)_moveFileTransfer:(id)transfer toDebugInboxOfApplicationWithBundleIdentifier:(id)identifier outError:(id *)error;
- (id)openFileInDocumentDebugInbox:(id)inbox forApplicationWithBundleIdentifier:(id)identifier withAnnotation:(id)annotation;
- (id)transferData:(id)data intoAppContainerForBundleIdentifier:(id)identifier filename:(id)filename;
- (id)transferFile:(id)file toDebugInboxOfApplicationWithBundleIdentifier:(id)identifier destinationFilename:(id)filename;
@end

@implementation DTFileTransferService

+ (void)registerCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.filetransfer" withVersion:1 forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.filetransfer.debuginbox" withVersion:1 forClass:self];
}

- (DTFileTransferService)initWithChannel:(id)channel
{
  v12.receiver = self;
  v12.super_class = DTFileTransferService;
  v3 = [(DTXService *)&v12 initWithChannel:channel];
  if (v3)
  {
    v4 = dispatch_queue_create("File transfer service coordination queue", 0);
    coordinationQueue = v3->_coordinationQueue;
    v3->_coordinationQueue = v4;

    v6 = objc_opt_new();
    activeFileTransfers = v3->_activeFileTransfers;
    v3->_activeFileTransfers = v6;

    channel = [(DTXService *)v3 channel];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_247FD7C0C;
    v10[3] = &unk_278EF1070;
    v11 = v3;
    [channel registerDisconnectHandler:v10];
  }

  return v3;
}

- (id)transferFile:(id)file toDebugInboxOfApplicationWithBundleIdentifier:(id)identifier destinationFilename:(id)filename
{
  fileCopy = file;
  identifierCopy = identifier;
  filenameCopy = filename;
  v11 = objc_opt_new();
  if (identifierCopy && (v12 = [identifierCopy length], filenameCopy) && fileCopy && v12 && objc_msgSend(filenameCopy, "length"))
  {
    v27 = 0;
    v13 = [(DTFileTransferService *)self _beginTransferOfFileNamed:filenameCopy outError:&v27];
    v14 = v27;
    if (v13)
    {
      writeHandle = [v13 writeHandle];
      [writeHandle writeData:fileCopy];

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
      v26 = identifierCopy;
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

- (id)openFileInDocumentDebugInbox:(id)inbox forApplicationWithBundleIdentifier:(id)identifier withAnnotation:(id)annotation
{
  v50[3] = *MEMORY[0x277D85DE8];
  inboxCopy = inbox;
  identifierCopy = identifier;
  annotationCopy = annotation;
  v10 = objc_opt_new();
  if (!inboxCopy || (v11 = [inboxCopy length], !identifierCopy) || !v11 || !objc_msgSend(identifierCopy, "length"))
  {
    v23 = sub_247FD7F9C(1);
    [v10 invokeCompletionWithReturnValue:v23 error:v23];
    v24 = v10;

    goto LABEL_14;
  }

  if (([identifierCopy isEqualToString:@"com.apple.Playgrounds"] & 1) == 0)
  {
    [v10 invokeCompletionWithReturnValue:0 error:0];
    v27 = v10;
    goto LABEL_14;
  }

  v48 = 0;
  v12 = [MEMORY[0x277CC1E70] bundleRecordWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:&v48];
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

    v18 = sub_247FD88A8(inboxCopy);

    v19 = [v16 URLByAppendingPathComponent:v18 isDirectory:0];
    memset(&v47, 0, sizeof(v47));
    path = [v19 path];
    if (lstat([path fileSystemRepresentation], &v47))
    {
    }

    else
    {
      v31 = v47.st_mode & 0xF000;

      if (v31 == 0x4000 || v31 == 0x8000)
      {
        v42 = v18;
        if (annotationCopy)
        {
          v32 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:annotationCopy];
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
        serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
        bundleIdentifier = [v12 bundleIdentifier];
        [MEMORY[0x277D0AD60] optionsWithDictionary:v43];
        v37 = v40 = v19;
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = sub_247FD893C;
        v45[3] = &unk_278EF3818;
        v38 = v10;
        v46 = v38;
        [serviceWithDefaultShellEndpoint openApplication:bundleIdentifier withOptions:v37 completion:v45];

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

    inboxCopy = v18;
    goto LABEL_27;
  }

  [v10 invokeCompletionWithReturnValue:v13 error:v13];
  v28 = v10;
LABEL_28:

LABEL_14:
  v25 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)transferData:(id)data intoAppContainerForBundleIdentifier:(id)identifier filename:(id)filename
{
  v45 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identifierCopy = identifier;
  filenameCopy = filename;
  v11 = objc_opt_new();
  v12 = sub_247FD8D80();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    *&buf[4] = dataCopy;
    *&buf[12] = 2080;
    *&buf[14] = [identifierCopy UTF8String];
    *&buf[22] = 2080;
    uTF8String = [filenameCopy UTF8String];
    _os_log_impl(&dword_247F67000, v12, OS_LOG_TYPE_INFO, "transferData:%p intoAppContainerForBundleIdentifier:%s withFileName: %s", buf, 0x20u);
  }

  if (!identifierCopy)
  {
    goto LABEL_16;
  }

  v13 = [identifierCopy length];
  if (!filenameCopy || !dataCopy || !v13 || ![filenameCopy length])
  {
    goto LABEL_16;
  }

  if ([filenameCopy rangeOfString:@"/"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = sub_247FD8D80();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_24802F904(filenameCopy);
    }

LABEL_16:
    v19 = sub_247FD7F9C(1);
    [v11 invokeCompletionWithReturnValue:0 error:v19];
    v31 = v11;
    goto LABEL_17;
  }

  v14 = MEMORY[0x277CCACA8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  filenameCopy = [v14 stringWithFormat:@"%@-%@", uUIDString, filenameCopy];

  v40 = 0;
  v18 = [(DTFileTransferService *)self _beginTransferOfFileNamed:filenameCopy outError:&v40];
  v19 = v40;
  if (v18)
  {
    writeHandle = [v18 writeHandle];
    [writeHandle writeData:dataCopy];

    [v18 closeFileTransfer];
    v21 = sub_247FD8D80();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      destinationDirectoryURLToRemoveOnDealloc = [v18 destinationDirectoryURLToRemoveOnDealloc];
      absoluteString = [destinationDirectoryURLToRemoveOnDealloc absoluteString];
      uTF8String2 = [absoluteString UTF8String];
      *buf = 136315138;
      *&buf[4] = uTF8String2;
      _os_log_impl(&dword_247F67000, v21, OS_LOG_TYPE_INFO, "File transfer successfully staged. %s", buf, 0xCu);
    }

    destinationURL = [v18 destinationURL];
    path = [destinationURL path];
    sub_247FD8DC4([path fileSystemRepresentation]);

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    uTF8String = sub_247FD8E08;
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
    v37 = identifierCopy;
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

  filenameCopy = filenameCopy;
LABEL_17:

  v32 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)_fileTransfer:(id)transfer isValidForApplication:(id)application
{
  v22 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  v6 = MEMORY[0x277CC1EB8];
  destinationURL = [transfer destinationURL];
  v8 = [v6 documentProxyForURL:destinationURL];

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

        bundleRecord = [*(*(&v17 + 1) + 8 * i) bundleRecord];
        v14 = [bundleRecord isEqual:applicationCopy];

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

- (id)_beginTransferOfFileNamed:(id)named outError:(id *)error
{
  v5 = MEMORY[0x277CCAA00];
  namedCopy = named;
  defaultManager = [v5 defaultManager];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/tmp"];
  v11 = sub_247FD93A8(v10, @"DTFileTransferService", 1);
  v12 = sub_247FD93A8(v11, uUIDString, 0);

  v13 = v12;
  v14 = sub_247FD88A8(namedCopy);

  v15 = [v13 URLByAppendingPathComponent:v14 isDirectory:0];

  path = [v15 path];
  v17 = lstat([path fileSystemRepresentation], &v24);

  if (v17)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0;
  }

  if (v13 && v18 && ([defaultManager createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:0] & 1) != 0 && (objc_msgSend(v18, "path"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(defaultManager, "createFileAtPath:contents:attributes:", v19, 0, 0), v19, (v20 & 1) != 0))
  {
    v21 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:v18 error:0];
    if (v21)
    {
      v22 = objc_opt_new();
      [v22 setDestinationURL:v18];
      [v22 setDestinationDirectoryURLToRemoveOnDealloc:v13];
      [v22 setWriteHandle:v21];
    }

    else if (error)
    {
      sub_247FD7F9C(2);
      *error = v22 = 0;
    }

    else
    {
      v22 = 0;
    }
  }

  else if (error)
  {
    sub_247FD7F9C(2);
    *error = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)_moveFileTransfer:(id)transfer toDebugInboxOfApplicationWithBundleIdentifier:(id)identifier outError:(id *)error
{
  transferCopy = transfer;
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.Playgrounds"])
  {
    v24 = 0;
    v10 = [MEMORY[0x277CC1E70] bundleRecordWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:&v24];
    v11 = v24;
    v12 = v11;
    if (v10)
    {
      if ([(DTFileTransferService *)self _fileTransfer:transferCopy isValidForApplication:v10])
      {
        v13 = sub_247FD87C8(v10);
        if (v13)
        {
          v14 = v13;
          if (!sub_247FD9704(v13, 1))
          {
            if (error)
            {
              sub_247FD7F9C(6);
              *error = v20 = 0;
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
            destinationURL = [transferCopy destinationURL];
            lastPathComponent = [destinationURL lastPathComponent];
            v18 = [v15 URLByAppendingPathComponent:lastPathComponent isDirectory:0];

            v19 = sub_247FD97BC(transferCopy, v18, 1);

            if (v19)
            {
              v20 = v18;
            }

            else if (error)
            {
              sub_247FD7F9C(6);
              *error = v20 = 0;
            }

            else
            {
              v20 = 0;
            }

            goto LABEL_32;
          }

          if (error)
          {
            v22 = sub_247FD7F9C(6);
            goto LABEL_23;
          }
        }

        else
        {
          if (error)
          {
            v22 = sub_247FD7F9C(6);
            v15 = 0;
LABEL_23:
            v20 = 0;
            *error = v22;
LABEL_32:

            goto LABEL_33;
          }

          v15 = 0;
        }

        v20 = 0;
        goto LABEL_32;
      }

      if (error)
      {
        sub_247FD7F9C(5);
        *error = v20 = 0;
        goto LABEL_33;
      }
    }

    else if (error)
    {
      v21 = v11;
      v20 = 0;
      *error = v12;
LABEL_33:

      goto LABEL_34;
    }

    v20 = 0;
    goto LABEL_33;
  }

  if (error)
  {
    sub_247FD7F9C(5);
    *error = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

LABEL_34:

  return v20;
}

- (id)_moveFileTransfer:(id)transfer inDataContainerOfApplicationBundleIdentifier:(id)identifier withError:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  identifierCopy = identifier;
  v38 = 0;
  v9 = [MEMORY[0x277CC1E70] bundleRecordWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:&v38];
  v10 = v38;
  if (!v9)
  {
    v37 = v10;
    v9 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:identifierCopy error:&v37];
    v11 = v37;

    if (!v9)
    {
      v32 = sub_247FD8D80();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_24802FB24(identifierCopy);
      }

      if (error)
      {
        v33 = v11;
        v9 = 0;
        v22 = 0;
        v30 = 0;
        *error = v11;
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

  dataContainerURL = [v9 dataContainerURL];
  v13 = sub_247FD8D80();
  v14 = v13;
  if (!dataContainerURL)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_24802FAA8(identifierCopy);
    }

    if (error)
    {
      v31 = sub_247FD7F9C(6);
      v22 = 0;
LABEL_29:
      v30 = 0;
      *error = v31;
      goto LABEL_42;
    }

    v22 = 0;
LABEL_31:
    v30 = 0;
    goto LABEL_42;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    path = [dataContainerURL path];
    uTF8String = [path UTF8String];
    *buf = 136315138;
    v40 = uTF8String;
    _os_log_impl(&dword_247F67000, v14, OS_LOG_TYPE_INFO, "Checking for container at: %s", buf, 0xCu);
  }

  v17 = sub_247FD9704(dataContainerURL, 0);
  v18 = sub_247FD8D80();
  v19 = v18;
  if (v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      path2 = [dataContainerURL path];
      uTF8String2 = [path2 UTF8String];
      *buf = 136315138;
      v40 = uTF8String2;
      _os_log_impl(&dword_247F67000, v19, OS_LOG_TYPE_INFO, "Data container exists at: %s", buf, 0xCu);
    }

    v22 = [dataContainerURL URLByAppendingPathComponent:@"/tmp"];

    if (sub_247FD9704(v22, 0))
    {
      v23 = sub_247FD8D80();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        path3 = [v22 path];
        uTF8String3 = [path3 UTF8String];
        *buf = 136315138;
        v40 = uTF8String3;
        _os_log_impl(&dword_247F67000, v23, OS_LOG_TYPE_INFO, "Temp directory exists: %s", buf, 0xCu);
      }

      destinationURL = [transferCopy destinationURL];
      lastPathComponent = [destinationURL lastPathComponent];
      v28 = [v22 URLByAppendingPathComponent:lastPathComponent isDirectory:0];

      v29 = sub_247FD97BC(transferCopy, v28, 0);

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

        if (error)
        {
          sub_247FD7F9C(6);
          *error = v30 = 0;
        }

        else
        {
          v30 = 0;
        }
      }

      goto LABEL_42;
    }

    if (error)
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

  if (error)
  {
    sub_247FD7F9C(6);
    *error = v30 = 0;
  }

  else
  {
    v30 = 0;
  }

  v22 = dataContainerURL;
LABEL_42:

  v35 = *MEMORY[0x277D85DE8];

  return v30;
}

- (BOOL)_unarchivePackageIfNecessary:(id)necessary
{
  v52 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  destinationURL = [necessaryCopy destinationURL];
  lastPathComponent = [destinationURL lastPathComponent];

  pathExtension = [lastPathComponent pathExtension];
  lowercaseString = [pathExtension lowercaseString];
  v8 = [lowercaseString isEqualToString:@"zip"];

  if (!v8)
  {
    LOBYTE(v21) = 1;
    goto LABEL_28;
  }

  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  pathExtension2 = [stringByDeletingPathExtension pathExtension];
  if (!pathExtension2)
  {

    goto LABEL_10;
  }

  v11 = pathExtension2;
  v12 = [pathExtension2 length];

  if (!v12)
  {
LABEL_10:
    LOBYTE(v21) = 0;
    goto LABEL_28;
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  destinationDirectoryURLToRemoveOnDealloc = [necessaryCopy destinationDirectoryURLToRemoveOnDealloc];
  v16 = [destinationDirectoryURLToRemoveOnDealloc URLByAppendingPathComponent:uUIDString isDirectory:1];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v50 = 0;
  v18 = [defaultManager createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:&v50];
  v19 = v50;
  v20 = v19;
  LOBYTE(v21) = 0;
  if (v18 && !v19)
  {
    v22 = MEMORY[0x277D036C0];
    destinationURL2 = [necessaryCopy destinationURL];
    v49 = 0;
    v24 = [v22 flatUnarchiveFileAtURL:destinationURL2 toURL:v16 error:&v49];
    v25 = v49;

    if (v25)
    {
      v20 = 0;
      LOBYTE(v21) = 0;
    }

    else
    {
      stringByDeletingPathExtension2 = [lastPathComponent stringByDeletingPathExtension];
      pathExtension3 = [stringByDeletingPathExtension2 pathExtension];

      path = [v16 path];
      v48 = 0;
      v28 = [defaultManager subpathsOfDirectoryAtPath:path error:&v48];
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
          v41 = uUIDString;
          v42 = v16;
          v40 = defaultManager;
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
              pathExtension4 = [v34 pathExtension];
              v36 = [pathExtension4 caseInsensitiveCompare:pathExtension3];

              if (!v36)
              {
                v37 = [v42 URLByAppendingPathComponent:v34];
                [necessaryCopy setDestinationURL:v37];

                LOBYTE(v21) = 1;
                defaultManager = v40;
                uUIDString = v41;
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

          defaultManager = v40;
          uUIDString = v41;
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