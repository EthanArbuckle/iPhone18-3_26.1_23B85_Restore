@interface CPLCTLCommand
+ (NSString)commandName;
+ (NSString)shortDescription;
+ (NSString)toolName;
+ (id)commandWithArgc:(int)argc argv:(char *)argv;
+ (id)commandWithName:(id)name;
+ (void)_printUsage;
+ (void)registerCommandClass:(Class)class;
+ (void)setToolName:(id)name;
+ (void)setToolPath:(id)path;
- (BOOL)_shouldUseTimeoutForLibraryOpening;
- (BOOL)parseCommandOptionsWithArgc:(int)argc argv:(char *)argv;
- (CPLCTLCommand)init;
- (CPLDaemonConnection)daemonConnection;
- (CPLPhotosDaemonConnection)photosDaemonConnection;
- (CPLPrivateEngine)privateEngine;
- (NSString)defaultLibraryIdentifier;
- (id)_tempFolderURL;
- (id)getEngineWrapperStatusesWithError:(id *)error;
- (id)getLibraryIdentifiersWithDomain:(int64_t)domain error:(id *)error;
- (id)openedLibraryManagerWithError:(id *)error;
- (id)openedLibraryManagerWithLibraryIdentifier:(id)identifier timeout:(BOOL)timeout withTargetUserIdentifier:(unsigned int)userIdentifier error:(id *)error;
- (id)photosLibraryURLFromBaseURL:(id)l;
- (id)tempFolderURLWithError:(id *)error;
- (int)execute;
- (int)outputFd;
- (void)_setInterruptionHandler:(id)handler;
- (void)beginOutputTo:(id)to;
- (void)closeLibraryManager:(id)manager;
- (void)closeOutput;
- (void)cplInterrupt;
- (void)disableOutput;
- (void)endOutputTo:(id)to;
- (void)forgetRemainingSpace;
- (void)prepareToRunWithinCommand:(id)command;
- (void)printError:(id)error arguments:(char *)arguments;
- (void)printFormat:(id)format;
- (void)printFormat:(id)format arguments:(char *)arguments;
- (void)printJSONData:(id)data;
- (void)printJSONObject:(id)object;
- (void)put:(id)put;
- (void)putBrightF:(id)f;
- (void)putF:(id)f;
- (void)putF:(id)f arguments:(char *)arguments;
- (void)puts:(const char *)puts;
- (void)startInterruptibleOperationWithInterruptionBlock:(id)block;
- (void)stopInterruptibleOperation;
@end

@implementation CPLCTLCommand

+ (void)setToolPath:(id)path
{
  qword_100040BE0 = [path copy];

  _objc_release_x1();
}

+ (void)setToolName:(id)name
{
  nameCopy = name;
  if (qword_100040BE8)
  {
    sub_10001E4FC(self, a2);
  }

  v8 = nameCopy;
  v6 = [nameCopy copy];
  v7 = qword_100040BE8;
  qword_100040BE8 = v6;
}

+ (NSString)toolName
{
  v3 = qword_100040BE8;
  if (!qword_100040BE8)
  {
    sub_10001E62C(self, a2);
  }

  return v3;
}

+ (id)commandWithArgc:(int)argc argv:(char *)argv
{
  v5 = (argc - 1);
  if (argc == 1)
  {
    v6 = [self commandWithName:{@"help", argv}];
    goto LABEL_11;
  }

  v7 = argv + 1;
  v8 = [NSString stringWithUTF8String:argv[1]];
  if (!v8)
  {
    v10 = [self commandWithName:@"help"];
    [(CPLCTLCommand *)v10 printFormat:@"Invalid command name"];
    v6 = 0;
    goto LABEL_10;
  }

  v9 = [self commandWithName:v8];
  if (!v9)
  {
    v10 = [self commandWithName:@"help"];
    [(CPLCTLCommand *)v10 printFormat:@"Invalid command '%@'", v8];
    goto LABEL_9;
  }

  v10 = v9;
  if ([(CPLHelpCommand *)v9 parseCommandOptionsWithArgc:v5 argv:v7])
  {
LABEL_9:
    v10 = v10;
    v6 = v10;
    goto LABEL_10;
  }

  v6 = objc_alloc_init(CPLHelpCommand);
  [(CPLHelpCommand *)v6 setHelpCommandName:v8];
LABEL_10:

LABEL_11:

  return v6;
}

+ (id)commandWithName:(id)name
{
  v3 = objc_alloc_init([self commandClassWithName:name]);

  return v3;
}

+ (void)registerCommandClass:(Class)class
{
  if (!qword_100040BF0)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = qword_100040BF8;
    qword_100040BF8 = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = qword_100040BF0;
    qword_100040BF0 = v8;
  }

  commandName = [(objc_class *)class commandName];
  v10 = [qword_100040BF0 objectForKey:?];

  if (v10)
  {
    sub_10001E75C(commandName, a2, self);
  }

  [qword_100040BF0 setObject:class forKey:commandName];
  [qword_100040BF8 addObject:commandName];
}

- (CPLCTLCommand)init
{
  v8.receiver = self;
  v8.super_class = CPLCTLCommand;
  v2 = [(CPLCTLCommand *)&v8 init];
  if (v2)
  {
    v3 = [[CPLOutput alloc] initWithFileDescriptor:2];
    output = v2->_output;
    v2->_output = v3;

    v5 = dispatch_queue_create("com.apple.cplctl.interruptionqueue", 0);
    interruptionQueue = v2->_interruptionQueue;
    v2->_interruptionQueue = v5;
  }

  return v2;
}

+ (NSString)commandName
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Tools/cplctl/CPLCTLCommand.m"];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:v5 lineNumber:190 description:{@"+[%@ %@] should be overriden", v6, v7}];

  abort();
}

+ (NSString)shortDescription
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Tools/cplctl/CPLCTLCommand.m"];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:v5 lineNumber:195 description:{@"+[%@ %@] should be overriden", v6, v7}];

  abort();
}

- (BOOL)parseCommandOptionsWithArgc:(int)argc argv:(char *)argv
{
  if (argc != 1)
  {
    commandName = [objc_opt_class() commandName];
    [(CPLCTLCommand *)self printFormat:@"Invalid parameters for %@", commandName];
  }

  return argc == 1;
}

- (int)execute
{
  commandName = [objc_opt_class() commandName];
  [(CPLCTLCommand *)self printFormat:@"%@ is not implemented yet.", commandName];

  return 1;
}

- (BOOL)_shouldUseTimeoutForLibraryOpening
{
  v2 = +[NSProcessInfo processInfo];
  environment = [v2 environment];
  v4 = [environment objectForKeyedSubscript:@"CPLCTL_TIMEOUT"];

  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)openedLibraryManagerWithLibraryIdentifier:(id)identifier timeout:(BOOL)timeout withTargetUserIdentifier:(unsigned int)userIdentifier error:(id *)error
{
  identifierCopy = identifier;
  privateEngine = [(CPLCTLCommand *)self privateEngine];
  v11 = privateEngine;
  if (privateEngine)
  {
    libraryManager = [privateEngine libraryManager];
    goto LABEL_20;
  }

  libraryManager = [[CPLLibraryManager alloc] initForManagementWithLibraryIdentifier:identifierCopy];
  [libraryManager setDelegate:self];
  v13 = +[NSDate date];
  v14 = dispatch_group_create();
  dispatch_group_enter(v14);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v45 = 0x3032000000;
  v46 = sub_100009E98;
  v47 = sub_100009EA8;
  v48 = 0;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100009EB0;
  v37[3] = &unk_100034D80;
  p_buf = &buf;
  v15 = v14;
  v38 = v15;
  [libraryManager openWithCompletionHandler:v37];
  if (timeout)
  {
    v16 = dispatch_time(0, 30000000000);
    if (dispatch_group_wait(v15, v16))
    {
      v42 = NSLocalizedDescriptionKey;
      v43 = @"Timed out opening library manager";
      v17 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v18 = [NSError errorWithDomain:NSPOSIXErrorDomain code:60 userInfo:v17];

      v19 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100009F18;
      block[3] = &unk_100034DD0;
      v36 = &buf;
      block[4] = self;
      v34 = v13;
      v35 = libraryManager;
      dispatch_group_notify(v15, v19, block);

      goto LABEL_9;
    }
  }

  else
  {
    while (1)
    {
      v20 = dispatch_time(0, 10000000000);
      if (!dispatch_group_wait(v15, v20))
      {
        break;
      }

      [(CPLCTLCommand *)self printFormat:@"Waiting to get a library manager"];
    }
  }

  v18 = *(*(&buf + 1) + 40);
LABEL_9:

  _Block_object_dispose(&buf, 8);
  if (v18)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v21 = sub_10000A0FC();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v18;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Error trying to open daemon's library manager: %@", &buf, 0xCu);
      }
    }

    if (error)
    {
      if (([identifierCopy isEqualToString:CPLLibraryIdentifierSystemLibrary] & 1) == 0)
      {
        v22 = [NSError alloc];
        domain = [v18 domain];
        code = [v18 code];
        v40[0] = NSLocalizedDescriptionKey;
        v24 = [NSString alloc];
        localizedDescription = [v18 localizedDescription];
        identifierCopy = [v24 initWithFormat:@"%@ (%@)", localizedDescription, identifierCopy];
        v40[1] = NSUnderlyingErrorKey;
        v41[0] = identifierCopy;
        v41[1] = v18;
        v27 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];
        v28 = [v22 initWithDomain:domain code:code userInfo:v27];

        v18 = v28;
      }

      v29 = v18;
      *error = v18;
    }

    else
    {
      localizedDescription2 = [v18 localizedDescription];
      [(CPLCTLCommand *)self printFormat:@"Can't get access to daemon's library manager for %@: %@", identifierCopy, localizedDescription2];
    }

    libraryManager = 0;
  }

LABEL_20:

  return libraryManager;
}

- (NSString)defaultLibraryIdentifier
{
  defaultLibraryIdentifier = self->_defaultLibraryIdentifier;
  if (defaultLibraryIdentifier)
  {
    v3 = defaultLibraryIdentifier;
  }

  else
  {
    v5 = +[NSProcessInfo processInfo];
    environment = [v5 environment];
    defaultLibraryIdentifier = [environment objectForKeyedSubscript:@"CPLDefaultLibraryIdentifier"];

    if (!defaultLibraryIdentifier)
    {
      storeCommand = self->_storeCommand;
      if (storeCommand)
      {
        defaultLibraryIdentifier = [(CPLStoreCommand *)storeCommand defaultLibraryIdentifier];
      }

      else
      {
        defaultLibraryIdentifier = 0;
      }
    }

    v9 = CPLLibraryIdentifierSystemLibrary;
    if (defaultLibraryIdentifier)
    {
      v9 = defaultLibraryIdentifier;
    }

    v3 = v9;
  }

  return v3;
}

- (id)photosLibraryURLFromBaseURL:(id)l
{
  lCopy = l;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  pathComponents = [lCopy pathComponents];
  v5 = [pathComponents countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v15 = lCopy;
    v6 = 0;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(pathComponents);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        if (v6)
        {
          v11 = [v6 URLByAppendingPathComponent:v9 isDirectory:1];

          v6 = v11;
        }

        else
        {
          v6 = [[NSURL alloc] initFileURLWithPath:v9 isDirectory:1];
        }

        pathExtension = [v9 pathExtension];
        v13 = [pathExtension isEqualToString:@"photoslibrary"];

        if (v13)
        {
          v5 = v6;
          objc_autoreleasePoolPop(v10);
          v6 = v5;
          goto LABEL_14;
        }

        objc_autoreleasePoolPop(v10);
      }

      v5 = [pathComponents countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

LABEL_14:
    lCopy = v15;
  }

  else
  {
    v6 = 0;
  }

  return v5;
}

- (id)openedLibraryManagerWithError:(id *)error
{
  defaultLibraryIdentifier = [(CPLCTLCommand *)self defaultLibraryIdentifier];
  v6 = [(CPLCTLCommand *)self openedLibraryManagerWithLibraryIdentifier:defaultLibraryIdentifier error:error];

  return v6;
}

- (void)closeLibraryManager:(id)manager
{
  managerCopy = manager;
  privateEngine = [(CPLCTLCommand *)self privateEngine];
  if (!privateEngine)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001E120;
    v7[3] = &unk_100034DF8;
    v8 = dispatch_semaphore_create(0);
    v6 = v8;
    [managerCopy closeWithCompletionHandler:v7];
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  }
}

+ (void)_printUsage
{
  v4 = objc_alloc_init(CPLHelpCommand);
  [(CPLHelpCommand *)v4 setStandaloneTool:1];
  commandName = [self commandName];
  [(CPLHelpCommand *)v4 setHelpCommandName:commandName];

  [(CPLHelpCommand *)v4 execute];
}

- (CPLDaemonConnection)daemonConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_daemonConnection);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_daemonConnection);
  }

  else
  {
    v4 = objc_alloc_init(CPLDaemonConnection);
    objc_storeWeak(&self->_daemonConnection, v4);
  }

  return v4;
}

- (id)getEngineWrapperStatusesWithError:(id *)error
{
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_100009E98;
  v54 = sub_100009EA8;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_100009E98;
  v48 = sub_100009EA8;
  v49 = 0;
  daemonConnection = [(CPLCTLCommand *)self daemonConnection];
  [daemonConnection queue];
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v43 = 1;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v41 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = sub_100009E98;
  v38[4] = sub_100009EA8;
  v39 = 0;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10000AB98;
  v5 = v34[3] = &unk_100034E20;
  v35 = v5;
  v36 = v40;
  v37 = v38;
  v6 = objc_retainBlock(v34);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10000AC1C;
  v28[3] = &unk_100034E70;
  v31 = v38;
  v32 = v40;
  v7 = daemonConnection;
  v29 = v7;
  v8 = v6;
  v30 = v8;
  v33 = &v44;
  v9 = objc_retainBlock(v28);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000AE58;
  v22[3] = &unk_100034EC0;
  v25 = v38;
  v10 = v5;
  v23 = v10;
  v11 = v8;
  v24 = v11;
  v26 = &v44;
  v27 = v42;
  v12 = objc_retainBlock(v22);
  v13 = (v9[2])(v9);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000B018;
  v18[3] = &unk_100034F10;
  v14 = v11;
  v19 = v14;
  v20 = &v50;
  v21 = &v44;
  [v13 getEngineWrapperStatusesWithCompletionHandler:v18];

  (v12[2])(v12);
  v15 = v51[5];
  if (error && !v15)
  {
    *error = v45[5];
    v15 = v51[5];
  }

  v16 = v15;

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v40, 8);
  _Block_object_dispose(v42, 8);

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v50, 8);

  return v16;
}

- (CPLPhotosDaemonConnection)photosDaemonConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_photosDaemonConnection);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_photosDaemonConnection);
  }

  else
  {
    v4 = objc_alloc_init(CPLPhotosDaemonConnection);
    objc_storeWeak(&self->_photosDaemonConnection, v4);
  }

  return v4;
}

- (id)getLibraryIdentifiersWithDomain:(int64_t)domain error:(id *)error
{
  photosDaemonConnection = [(CPLCTLCommand *)self photosDaemonConnection];
  v7 = [photosDaemonConnection managementServiceWithError:error];
  if (v7)
  {
    queue = [photosDaemonConnection queue];
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = sub_100009E98;
    v44 = sub_100009EA8;
    v45 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = sub_100009E98;
    v38 = sub_100009EA8;
    v39 = 0;
    v9 = objc_alloc_init(PLPhotoLibrarySearchCriteria);
    [(PLPhotoLibrarySearchCriteria *)v9 setDomain:domain];
    v10 = dispatch_semaphore_create(0);
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v33 = 0;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10000B580;
    v26[3] = &unk_100034F38;
    v11 = queue;
    v27 = v11;
    v29 = v32;
    v30 = &v34;
    v31 = &v40;
    v12 = v10;
    v28 = v12;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10000B638;
    v24[3] = &unk_100034F60;
    v13 = objc_retainBlock(v26);
    v25 = v13;
    v14 = [v7 remoteObjectProxyWithErrorHandler:v24];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10000B650;
    v22[3] = &unk_100034F88;
    v15 = v13;
    v23 = v15;
    [v14 findPhotoLibraryIdentifiersMatchingSearchCriteria:v9 reply:v22];

    v16 = dispatch_time(0, 30000000000);
    if (dispatch_semaphore_wait(v12, v16))
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10000B660;
      v20[3] = &unk_100034FB0;
      v21 = v15;
      dispatch_sync(v11, v20);
    }

    v17 = v35[5];
    if (error && !v17)
    {
      *error = v41[5];
      v17 = v35[5];
    }

    v18 = v17;

    _Block_object_dispose(v32, 8);
    _Block_object_dispose(&v34, 8);

    _Block_object_dispose(&v40, 8);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)printFormat:(id)format arguments:(char *)arguments
{
  output = self->_output;
  formatCopy = format;
  [(CPLOutput *)output printFormat:formatCopy arguments:arguments];
  [(CPLOutput *)self->_logOutput printFormat:formatCopy arguments:arguments];
}

- (void)printFormat:(id)format
{
  output = self->_output;
  formatCopy = format;
  [(CPLOutput *)output printFormat:formatCopy arguments:&v6];
  [(CPLOutput *)self->_logOutput printFormat:formatCopy arguments:&v6];
}

- (void)printError:(id)error arguments:(char *)arguments
{
  output = self->_output;
  errorCopy = error;
  [(CPLOutput *)output printError:errorCopy arguments:arguments];
  [(CPLOutput *)self->_logOutput printError:errorCopy arguments:arguments];
}

- (int)outputFd
{
  output = self->_output;
  if (output)
  {
    return [(CPLOutput *)output outputFd];
  }

  else
  {
    return -1;
  }
}

- (void)forgetRemainingSpace
{
  [(CPLOutput *)self->_output forgetRemainingSpace];
  logOutput = self->_logOutput;

  [(CPLOutput *)logOutput forgetRemainingSpace];
}

- (void)puts:(const char *)puts
{
  [(CPLOutput *)self->_output puts:?];
  logOutput = self->_logOutput;

  [(CPLOutput *)logOutput puts:puts];
}

- (void)put:(id)put
{
  output = self->_output;
  putCopy = put;
  [(CPLOutput *)output put:putCopy];
  [(CPLOutput *)self->_logOutput put:putCopy];
}

- (void)putBrightF:(id)f
{
  output = self->_output;
  fCopy = f;
  [(CPLOutput *)output startFgColor:0xFFFFFFFFLL bgColor:0xFFFFFFFFLL attr:2];
  [(CPLOutput *)self->_output putF:fCopy arguments:&v6];
  [(CPLOutput *)self->_logOutput putF:fCopy arguments:&v6];

  [(CPLOutput *)self->_output resetColorsAndAttributes];
}

- (void)putF:(id)f
{
  output = self->_output;
  fCopy = f;
  [(CPLOutput *)output putF:fCopy arguments:&v6];
  [(CPLOutput *)self->_logOutput putF:fCopy arguments:&v6];
}

- (void)putF:(id)f arguments:(char *)arguments
{
  output = self->_output;
  fCopy = f;
  [(CPLOutput *)output putF:fCopy arguments:arguments];
  [(CPLOutput *)self->_logOutput putF:fCopy arguments:arguments];
}

- (void)disableOutput
{
  v3 = objc_alloc_init(CPLOutputToVoid);
  [(CPLCTLCommand *)self beginOutputTo:v3];
}

- (void)beginOutputTo:(id)to
{
  toCopy = to;
  outputStack = self->_outputStack;
  if (!outputStack)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_outputStack;
    self->_outputStack = v6;

    outputStack = self->_outputStack;
  }

  [(NSMutableArray *)outputStack addObject:self->_output];
  [(CPLOutput *)toCopy setPrintHeader:[(CPLOutput *)self->_output printHeader]];
  output = self->_output;
  self->_output = toCopy;
}

- (void)endOutputTo:(id)to
{
  toCopy = to;
  if (![(NSMutableArray *)self->_outputStack count])
  {
    sub_10001E94C();
  }

  if (self->_output != toCopy)
  {
    sub_10001E920();
  }

  lastObject = [(NSMutableArray *)self->_outputStack lastObject];
  output = self->_output;
  self->_output = lastObject;

  [(CPLOutput *)self->_output setPrintHeader:[(CPLOutput *)toCopy printHeader]];
  [(NSMutableArray *)self->_outputStack removeLastObject];
  if (![(NSMutableArray *)self->_outputStack count])
  {
    outputStack = self->_outputStack;
    self->_outputStack = 0;
  }
}

- (void)prepareToRunWithinCommand:(id)command
{
  commandCopy = command;
  objc_storeStrong(&self->_output, command);
  logOutput = [commandCopy logOutput];
  logOutput = self->_logOutput;
  self->_logOutput = logOutput;

  storeCommand = self->_storeCommand;
  self->_storeCommand = commandCopy;
}

- (CPLPrivateEngine)privateEngine
{
  storeCommand = [(CPLCTLCommand *)self storeCommand];
  store = [storeCommand store];
  currentPrivateEngine = [store currentPrivateEngine];

  return currentPrivateEngine;
}

- (void)printJSONObject:(id)object
{
  output = self->_output;
  objectCopy = object;
  [(CPLOutput *)output printJSONObject:objectCopy];
  [(CPLOutput *)self->_logOutput printJSONObject:objectCopy];
}

- (void)printJSONData:(id)data
{
  output = self->_output;
  dataCopy = data;
  [(CPLOutput *)output printJSONData:dataCopy];
  [(CPLOutput *)self->_logOutput printJSONData:dataCopy];
}

- (void)closeOutput
{
  [(CPLOutput *)self->_output closeOutput];
  v3 = objc_alloc_init(CPLOutputToVoid);
  output = self->_output;
  self->_output = v3;

  logOutput = self->_logOutput;
  self->_logOutput = 0;
}

- (void)_setInterruptionHandler:(id)handler
{
  handlerCopy = handler;
  interruptionQueue = self->_interruptionQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000C09C;
  v7[3] = &unk_100035020;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(interruptionQueue, v7);
}

- (void)startInterruptibleOperationWithInterruptionBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (self->_storeCommand)
  {
    interruptionQueue = self->_interruptionQueue;
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_10000C2E4;
    v10 = &unk_100035048;
    selfCopy = self;
    v12 = blockCopy;
    dispatch_sync(interruptionQueue, &v7);
    [(CPLStoreCommand *)self->_storeCommand startInterruptibleOperation:self, v7, v8, v9, v10, selfCopy];
  }

  else
  {
    [(CPLCTLCommand *)self _setInterruptionHandler:blockCopy];
  }
}

- (void)stopInterruptibleOperation
{
  if (self->_storeCommand)
  {
    interruptionQueue = self->_interruptionQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000C3F0;
    block[3] = &unk_100034BD0;
    block[4] = self;
    dispatch_sync(interruptionQueue, block);
    [(CPLStoreCommand *)self->_storeCommand stopInterruptibleOperation:self];
  }

  else
  {

    [(CPLCTLCommand *)self _setInterruptionHandler:0];
  }
}

- (void)cplInterrupt
{
  interruptionQueue = self->_interruptionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C494;
  block[3] = &unk_100034BD0;
  block[4] = self;
  dispatch_sync(interruptionQueue, block);
}

- (id)_tempFolderURL
{
  storeCommand = [(CPLCTLCommand *)self storeCommand];
  v4 = storeCommand;
  if (storeCommand)
  {
    store = [storeCommand store];
    v6 = store;
LABEL_4:
    tempFolderURL = [store tempFolderURL];
    goto LABEL_5;
  }

  store = [(CPLCTLCommand *)self privateEngine];
  v6 = store;
  if (store)
  {
    goto LABEL_4;
  }

  v9 = NSTemporaryDirectory();
  tempFolderURL = [[NSURL alloc] initFileURLWithPath:v9 isDirectory:1];

LABEL_5:

  return tempFolderURL;
}

- (id)tempFolderURLWithError:(id *)error
{
  _tempFolderURL = [(CPLCTLCommand *)self _tempFolderURL];
  if (!_tempFolderURL)
  {
    sub_10001EA54();
  }

  v6 = _tempFolderURL;
  v7 = +[NSFileManager defaultManager];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  if ([v9 hasPrefix:@"CPL"])
  {
    v10 = [v9 substringFromIndex:3];

    v9 = v10;
  }

  if ([v9 hasSuffix:@"Command"])
  {
    v11 = [v9 substringToIndex:{objc_msgSend(v9, "length") - objc_msgSend(@"Command", "length")}];

    v9 = v11;
  }

  storeCommand = [(CPLCTLCommand *)self storeCommand];
  v13 = storeCommand;
  if (storeCommand)
  {
    currentStepIndex = [storeCommand currentStepIndex];
    v15 = [NSString alloc];
    v16 = +[NSUUID UUID];
    v17 = [v15 initWithFormat:@"%lu-%@-%@", currentStepIndex, v9, v16];
  }

  else
  {
    v18 = [NSString alloc];
    v16 = +[NSUUID UUID];
    v17 = [v18 initWithFormat:@"%@-%@", v9, v16, v29];
  }

  v19 = v17;

  v31 = 0;
  v20 = [v6 URLByAppendingPathComponent:v19 isDirectory:1];
  path = [v20 path];
  v22 = [v7 fileExistsAtPath:path isDirectory:&v31];

  if (v22)
  {
    if (v31 == 1)
    {
      v23 = v20;
    }

    else if (error)
    {
      +[CPLErrors unknownError];
      *error = v23 = 0;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v30 = 0;
    v24 = [v7 createDirectoryAtURL:v20 withIntermediateDirectories:0 attributes:0 error:&v30];
    v25 = v30;
    v26 = v25;
    if (v24)
    {
      v23 = v20;
    }

    else if (error)
    {
      v27 = v25;
      v23 = 0;
      *error = v26;
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

@end