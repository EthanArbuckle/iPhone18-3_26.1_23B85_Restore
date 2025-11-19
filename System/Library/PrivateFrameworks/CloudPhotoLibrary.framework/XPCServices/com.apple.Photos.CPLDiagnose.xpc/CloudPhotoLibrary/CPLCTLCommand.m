@interface CPLCTLCommand
+ (NSString)commandName;
+ (NSString)shortDescription;
+ (NSString)toolName;
+ (id)commandWithArgc:(int)a3 argv:(char *)a4;
+ (id)commandWithName:(id)a3;
+ (void)_printUsage;
+ (void)registerCommandClass:(Class)a3;
+ (void)setToolName:(id)a3;
+ (void)setToolPath:(id)a3;
- (BOOL)_shouldUseTimeoutForLibraryOpening;
- (BOOL)parseCommandOptionsWithArgc:(int)a3 argv:(char *)a4;
- (CPLCTLCommand)init;
- (CPLDaemonConnection)daemonConnection;
- (CPLPhotosDaemonConnection)photosDaemonConnection;
- (CPLPrivateEngine)privateEngine;
- (NSString)defaultLibraryIdentifier;
- (id)_tempFolderURL;
- (id)getEngineWrapperStatusesWithError:(id *)a3;
- (id)getLibraryIdentifiersWithDomain:(int64_t)a3 error:(id *)a4;
- (id)openedLibraryManagerWithError:(id *)a3;
- (id)openedLibraryManagerWithLibraryIdentifier:(id)a3 timeout:(BOOL)a4 withTargetUserIdentifier:(unsigned int)a5 error:(id *)a6;
- (id)photosLibraryURLFromBaseURL:(id)a3;
- (id)tempFolderURLWithError:(id *)a3;
- (int)execute;
- (int)outputFd;
- (void)_setInterruptionHandler:(id)a3;
- (void)beginOutputTo:(id)a3;
- (void)closeLibraryManager:(id)a3;
- (void)closeOutput;
- (void)cplInterrupt;
- (void)disableOutput;
- (void)endOutputTo:(id)a3;
- (void)forgetRemainingSpace;
- (void)prepareToRunWithinCommand:(id)a3;
- (void)printError:(id)a3 arguments:(char *)a4;
- (void)printFormat:(id)a3;
- (void)printFormat:(id)a3 arguments:(char *)a4;
- (void)printJSONData:(id)a3;
- (void)printJSONObject:(id)a3;
- (void)put:(id)a3;
- (void)putBrightF:(id)a3;
- (void)putF:(id)a3;
- (void)putF:(id)a3 arguments:(char *)a4;
- (void)puts:(const char *)a3;
- (void)startInterruptibleOperationWithInterruptionBlock:(id)a3;
- (void)stopInterruptibleOperation;
@end

@implementation CPLCTLCommand

+ (void)setToolPath:(id)a3
{
  qword_100040BE0 = [a3 copy];

  _objc_release_x1();
}

+ (void)setToolName:(id)a3
{
  v5 = a3;
  if (qword_100040BE8)
  {
    sub_10001E4FC(a1, a2);
  }

  v8 = v5;
  v6 = [v5 copy];
  v7 = qword_100040BE8;
  qword_100040BE8 = v6;
}

+ (NSString)toolName
{
  v3 = qword_100040BE8;
  if (!qword_100040BE8)
  {
    sub_10001E62C(a1, a2);
  }

  return v3;
}

+ (id)commandWithArgc:(int)a3 argv:(char *)a4
{
  v5 = (a3 - 1);
  if (a3 == 1)
  {
    v6 = [a1 commandWithName:{@"help", a4}];
    goto LABEL_11;
  }

  v7 = a4 + 1;
  v8 = [NSString stringWithUTF8String:a4[1]];
  if (!v8)
  {
    v10 = [a1 commandWithName:@"help"];
    [(CPLCTLCommand *)v10 printFormat:@"Invalid command name"];
    v6 = 0;
    goto LABEL_10;
  }

  v9 = [a1 commandWithName:v8];
  if (!v9)
  {
    v10 = [a1 commandWithName:@"help"];
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

+ (id)commandWithName:(id)a3
{
  v3 = objc_alloc_init([a1 commandClassWithName:a3]);

  return v3;
}

+ (void)registerCommandClass:(Class)a3
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

  v11 = [(objc_class *)a3 commandName];
  v10 = [qword_100040BF0 objectForKey:?];

  if (v10)
  {
    sub_10001E75C(v11, a2, a1);
  }

  [qword_100040BF0 setObject:a3 forKey:v11];
  [qword_100040BF8 addObject:v11];
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
  [v4 handleFailureInMethod:a2 object:a1 file:v5 lineNumber:190 description:{@"+[%@ %@] should be overriden", v6, v7}];

  abort();
}

+ (NSString)shortDescription
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Tools/cplctl/CPLCTLCommand.m"];
  v6 = objc_opt_class();
  v7 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:a1 file:v5 lineNumber:195 description:{@"+[%@ %@] should be overriden", v6, v7}];

  abort();
}

- (BOOL)parseCommandOptionsWithArgc:(int)a3 argv:(char *)a4
{
  if (a3 != 1)
  {
    v6 = [objc_opt_class() commandName];
    [(CPLCTLCommand *)self printFormat:@"Invalid parameters for %@", v6];
  }

  return a3 == 1;
}

- (int)execute
{
  v3 = [objc_opt_class() commandName];
  [(CPLCTLCommand *)self printFormat:@"%@ is not implemented yet.", v3];

  return 1;
}

- (BOOL)_shouldUseTimeoutForLibraryOpening
{
  v2 = +[NSProcessInfo processInfo];
  v3 = [v2 environment];
  v4 = [v3 objectForKeyedSubscript:@"CPLCTL_TIMEOUT"];

  if (v4)
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)openedLibraryManagerWithLibraryIdentifier:(id)a3 timeout:(BOOL)a4 withTargetUserIdentifier:(unsigned int)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [(CPLCTLCommand *)self privateEngine];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 libraryManager];
    goto LABEL_20;
  }

  v12 = [[CPLLibraryManager alloc] initForManagementWithLibraryIdentifier:v9];
  [v12 setDelegate:self];
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
  [v12 openWithCompletionHandler:v37];
  if (a4)
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
      v35 = v12;
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

    if (a6)
    {
      if (([v9 isEqualToString:CPLLibraryIdentifierSystemLibrary] & 1) == 0)
      {
        v22 = [NSError alloc];
        v32 = [v18 domain];
        v23 = [v18 code];
        v40[0] = NSLocalizedDescriptionKey;
        v24 = [NSString alloc];
        v25 = [v18 localizedDescription];
        v26 = [v24 initWithFormat:@"%@ (%@)", v25, v9];
        v40[1] = NSUnderlyingErrorKey;
        v41[0] = v26;
        v41[1] = v18;
        v27 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];
        v28 = [v22 initWithDomain:v32 code:v23 userInfo:v27];

        v18 = v28;
      }

      v29 = v18;
      *a6 = v18;
    }

    else
    {
      v30 = [v18 localizedDescription];
      [(CPLCTLCommand *)self printFormat:@"Can't get access to daemon's library manager for %@: %@", v9, v30];
    }

    v12 = 0;
  }

LABEL_20:

  return v12;
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
    v6 = [v5 environment];
    v7 = [v6 objectForKeyedSubscript:@"CPLDefaultLibraryIdentifier"];

    if (!v7)
    {
      storeCommand = self->_storeCommand;
      if (storeCommand)
      {
        v7 = [(CPLStoreCommand *)storeCommand defaultLibraryIdentifier];
      }

      else
      {
        v7 = 0;
      }
    }

    v9 = CPLLibraryIdentifierSystemLibrary;
    if (v7)
    {
      v9 = v7;
    }

    v3 = v9;
  }

  return v3;
}

- (id)photosLibraryURLFromBaseURL:(id)a3
{
  v3 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 pathComponents];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v15 = v3;
    v6 = 0;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
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

        v12 = [v9 pathExtension];
        v13 = [v12 isEqualToString:@"photoslibrary"];

        if (v13)
        {
          v5 = v6;
          objc_autoreleasePoolPop(v10);
          v6 = v5;
          goto LABEL_14;
        }

        objc_autoreleasePoolPop(v10);
      }

      v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

LABEL_14:
    v3 = v15;
  }

  else
  {
    v6 = 0;
  }

  return v5;
}

- (id)openedLibraryManagerWithError:(id *)a3
{
  v5 = [(CPLCTLCommand *)self defaultLibraryIdentifier];
  v6 = [(CPLCTLCommand *)self openedLibraryManagerWithLibraryIdentifier:v5 error:a3];

  return v6;
}

- (void)closeLibraryManager:(id)a3
{
  v4 = a3;
  v5 = [(CPLCTLCommand *)self privateEngine];
  if (!v5)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001E120;
    v7[3] = &unk_100034DF8;
    v8 = dispatch_semaphore_create(0);
    v6 = v8;
    [v4 closeWithCompletionHandler:v7];
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  }
}

+ (void)_printUsage
{
  v4 = objc_alloc_init(CPLHelpCommand);
  [(CPLHelpCommand *)v4 setStandaloneTool:1];
  v3 = [a1 commandName];
  [(CPLHelpCommand *)v4 setHelpCommandName:v3];

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

- (id)getEngineWrapperStatusesWithError:(id *)a3
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
  v4 = [(CPLCTLCommand *)self daemonConnection];
  [v4 queue];
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
  v7 = v4;
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
  if (a3 && !v15)
  {
    *a3 = v45[5];
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

- (id)getLibraryIdentifiersWithDomain:(int64_t)a3 error:(id *)a4
{
  v6 = [(CPLCTLCommand *)self photosDaemonConnection];
  v7 = [v6 managementServiceWithError:a4];
  if (v7)
  {
    v8 = [v6 queue];
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
    [(PLPhotoLibrarySearchCriteria *)v9 setDomain:a3];
    v10 = dispatch_semaphore_create(0);
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v33 = 0;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10000B580;
    v26[3] = &unk_100034F38;
    v11 = v8;
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
    if (a4 && !v17)
    {
      *a4 = v41[5];
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

- (void)printFormat:(id)a3 arguments:(char *)a4
{
  output = self->_output;
  v7 = a3;
  [(CPLOutput *)output printFormat:v7 arguments:a4];
  [(CPLOutput *)self->_logOutput printFormat:v7 arguments:a4];
}

- (void)printFormat:(id)a3
{
  output = self->_output;
  v5 = a3;
  [(CPLOutput *)output printFormat:v5 arguments:&v6];
  [(CPLOutput *)self->_logOutput printFormat:v5 arguments:&v6];
}

- (void)printError:(id)a3 arguments:(char *)a4
{
  output = self->_output;
  v7 = a3;
  [(CPLOutput *)output printError:v7 arguments:a4];
  [(CPLOutput *)self->_logOutput printError:v7 arguments:a4];
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

- (void)puts:(const char *)a3
{
  [(CPLOutput *)self->_output puts:?];
  logOutput = self->_logOutput;

  [(CPLOutput *)logOutput puts:a3];
}

- (void)put:(id)a3
{
  output = self->_output;
  v5 = a3;
  [(CPLOutput *)output put:v5];
  [(CPLOutput *)self->_logOutput put:v5];
}

- (void)putBrightF:(id)a3
{
  output = self->_output;
  v5 = a3;
  [(CPLOutput *)output startFgColor:0xFFFFFFFFLL bgColor:0xFFFFFFFFLL attr:2];
  [(CPLOutput *)self->_output putF:v5 arguments:&v6];
  [(CPLOutput *)self->_logOutput putF:v5 arguments:&v6];

  [(CPLOutput *)self->_output resetColorsAndAttributes];
}

- (void)putF:(id)a3
{
  output = self->_output;
  v5 = a3;
  [(CPLOutput *)output putF:v5 arguments:&v6];
  [(CPLOutput *)self->_logOutput putF:v5 arguments:&v6];
}

- (void)putF:(id)a3 arguments:(char *)a4
{
  output = self->_output;
  v7 = a3;
  [(CPLOutput *)output putF:v7 arguments:a4];
  [(CPLOutput *)self->_logOutput putF:v7 arguments:a4];
}

- (void)disableOutput
{
  v3 = objc_alloc_init(CPLOutputToVoid);
  [(CPLCTLCommand *)self beginOutputTo:v3];
}

- (void)beginOutputTo:(id)a3
{
  v4 = a3;
  outputStack = self->_outputStack;
  if (!outputStack)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_outputStack;
    self->_outputStack = v6;

    outputStack = self->_outputStack;
  }

  [(NSMutableArray *)outputStack addObject:self->_output];
  [(CPLOutput *)v4 setPrintHeader:[(CPLOutput *)self->_output printHeader]];
  output = self->_output;
  self->_output = v4;
}

- (void)endOutputTo:(id)a3
{
  v7 = a3;
  if (![(NSMutableArray *)self->_outputStack count])
  {
    sub_10001E94C();
  }

  if (self->_output != v7)
  {
    sub_10001E920();
  }

  v4 = [(NSMutableArray *)self->_outputStack lastObject];
  output = self->_output;
  self->_output = v4;

  [(CPLOutput *)self->_output setPrintHeader:[(CPLOutput *)v7 printHeader]];
  [(NSMutableArray *)self->_outputStack removeLastObject];
  if (![(NSMutableArray *)self->_outputStack count])
  {
    outputStack = self->_outputStack;
    self->_outputStack = 0;
  }
}

- (void)prepareToRunWithinCommand:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_output, a3);
  v6 = [v5 logOutput];
  logOutput = self->_logOutput;
  self->_logOutput = v6;

  storeCommand = self->_storeCommand;
  self->_storeCommand = v5;
}

- (CPLPrivateEngine)privateEngine
{
  v2 = [(CPLCTLCommand *)self storeCommand];
  v3 = [v2 store];
  v4 = [v3 currentPrivateEngine];

  return v4;
}

- (void)printJSONObject:(id)a3
{
  output = self->_output;
  v5 = a3;
  [(CPLOutput *)output printJSONObject:v5];
  [(CPLOutput *)self->_logOutput printJSONObject:v5];
}

- (void)printJSONData:(id)a3
{
  output = self->_output;
  v5 = a3;
  [(CPLOutput *)output printJSONData:v5];
  [(CPLOutput *)self->_logOutput printJSONData:v5];
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

- (void)_setInterruptionHandler:(id)a3
{
  v4 = a3;
  interruptionQueue = self->_interruptionQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000C09C;
  v7[3] = &unk_100035020;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(interruptionQueue, v7);
}

- (void)startInterruptibleOperationWithInterruptionBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_storeCommand)
  {
    interruptionQueue = self->_interruptionQueue;
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_10000C2E4;
    v10 = &unk_100035048;
    v11 = self;
    v12 = v4;
    dispatch_sync(interruptionQueue, &v7);
    [(CPLStoreCommand *)self->_storeCommand startInterruptibleOperation:self, v7, v8, v9, v10, v11];
  }

  else
  {
    [(CPLCTLCommand *)self _setInterruptionHandler:v4];
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
  v3 = [(CPLCTLCommand *)self storeCommand];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 store];
    v6 = v5;
LABEL_4:
    v7 = [v5 tempFolderURL];
    goto LABEL_5;
  }

  v5 = [(CPLCTLCommand *)self privateEngine];
  v6 = v5;
  if (v5)
  {
    goto LABEL_4;
  }

  v9 = NSTemporaryDirectory();
  v7 = [[NSURL alloc] initFileURLWithPath:v9 isDirectory:1];

LABEL_5:

  return v7;
}

- (id)tempFolderURLWithError:(id *)a3
{
  v5 = [(CPLCTLCommand *)self _tempFolderURL];
  if (!v5)
  {
    sub_10001EA54();
  }

  v6 = v5;
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

  v12 = [(CPLCTLCommand *)self storeCommand];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 currentStepIndex];
    v15 = [NSString alloc];
    v16 = +[NSUUID UUID];
    v17 = [v15 initWithFormat:@"%lu-%@-%@", v14, v9, v16];
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
  v21 = [v20 path];
  v22 = [v7 fileExistsAtPath:v21 isDirectory:&v31];

  if (v22)
  {
    if (v31 == 1)
    {
      v23 = v20;
    }

    else if (a3)
    {
      +[CPLErrors unknownError];
      *a3 = v23 = 0;
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

    else if (a3)
    {
      v27 = v25;
      v23 = 0;
      *a3 = v26;
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

@end