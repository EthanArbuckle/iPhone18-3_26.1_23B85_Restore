@interface DIDiskArb
+ (id)diskArbWithError:(id *)error;
- (BOOL)ejectWithBSDName:(id)name error:(id *)error;
- (BOOL)mountWithDeviceName:(id)name args:(id)args filesystem:(id)filesystem mountURL:(id)l error:(id *)error;
- (BOOL)unmountWithMountPoint:(id)point error:(id *)error;
- (BOOL)waitForDAIdleWithError:(id *)error;
- (DIDisappearedMountPointDelegate)delegate;
- (DIDiskArb)initWithError:(id *)error;
- (id)copyDescriptionWithBSDName:(id)name;
- (void)addDisappearedCallbackWithMountPoint:(id)point shadowMountPoints:(id)points delegate:(id)delegate;
- (void)onDiskDisappearedWithDisk:(__DADisk *)disk;
- (void)stop;
@end

@implementation DIDiskArb

+ (id)diskArbWithError:(id *)error
{
  v3 = [[DIDiskArb alloc] initWithError:0];
  if (!v3)
  {
    v3 = objc_alloc_init(DIDiskArbEmulation);
  }

  return v3;
}

- (DIDiskArb)initWithError:(id *)error
{
  v11.receiver = self;
  v11.super_class = DIDiskArb;
  v4 = [(DIDiskArb *)&v11 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (!MEMORY[0x282217F30])
  {
    daSession = v4->_daSession;
    if (daSession)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = [DIError nilWithEnumValue:156 verboseInfo:@"Failed DA init" error:error];
    goto LABEL_8;
  }

  daSession = DASessionCreate(0);
  v5->_daSession = daSession;
  if (!daSession)
  {
    goto LABEL_7;
  }

LABEL_4:
  Current = CFRunLoopGetCurrent();
  DASessionScheduleWithRunLoop(daSession, Current, *MEMORY[0x277CBF058]);
LABEL_5:
  v8 = v5;
LABEL_8:
  v9 = v8;

  return v9;
}

- (void)stop
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  daSession = obj->_daSession;
  if (daSession)
  {
    if (obj->_inputMountedOnURL || obj->_shadowMountedOnURLs)
    {
      MEMORY[0x24C1ECEE0](obj->_daSession, _diskDisappearedCallback);
      daSession = obj->_daSession;
    }

    Current = CFRunLoopGetCurrent();
    DASessionUnscheduleFromRunLoop(daSession, Current, *MEMORY[0x277CBF058]);
    CFRelease(obj->_daSession);
    v2 = obj;
    obj->_daSession = 0;
  }

  objc_sync_exit(v2);
}

- (void)onDiskDisappearedWithDisk:(__DADisk *)disk
{
  v54 = *MEMORY[0x277D85DE8];
  if ([(DIDiskArb *)self daSession])
  {
    v5 = DADiskCopyDescription(disk);
    v6 = [(__CFDictionary *)v5 objectForKey:*MEMORY[0x277D05578]];
    if (DIDebugLogsEnabled())
    {
      v7 = *__error();
      if (DIForwardLogs())
      {
        v46 = 0;
        v8 = getDIOSLog();
        os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
        *buf = 68158210;
        v49 = 39;
        v50 = 2080;
        v51 = "[DIDiskArb onDiskDisappearedWithDisk:]";
        v52 = 2114;
        v53 = v6;
        LODWORD(v41) = 28;
        v40 = buf;
        v9 = _os_log_send_and_compose_impl();

        if (v9)
        {
          fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
          free(v9);
        }
      }

      else
      {
        v14 = getDIOSLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68158210;
          v49 = 39;
          v50 = 2080;
          v51 = "[DIDiskArb onDiskDisappearedWithDisk:]";
          v52 = 2114;
          v53 = v6;
          _os_log_impl(&dword_248DE0000, v14, OS_LOG_TYPE_DEBUG, "%.*s: Reached with diskURL=%{public}@", buf, 0x1Cu);
        }
      }

      *__error() = v7;
    }

    if (v6)
    {
      inputMountedOnURL = [(DIDiskArb *)self inputMountedOnURL];
      if (inputMountedOnURL)
      {
        v16 = inputMountedOnURL;
        inputMountedOnURL2 = [(DIDiskArb *)self inputMountedOnURL];
        v18 = [v6 isEqual:inputMountedOnURL2];

        if (v18)
        {
          v19 = *__error();
          if (DIForwardLogs())
          {
            v46 = 0;
            v20 = getDIOSLog();
            os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
            path = [v6 path];
            *buf = 68158211;
            v49 = 39;
            v50 = 2080;
            v51 = "[DIDiskArb onDiskDisappearedWithDisk:]";
            v52 = 2113;
            v53 = path;
            LODWORD(v41) = 28;
            v40 = buf;
            v22 = _os_log_send_and_compose_impl();

            if (v22)
            {
              fprintf(*MEMORY[0x277D85DF8], "%s\n", v22);
              free(v22);
            }
          }

          else
          {
            v23 = getDIOSLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              path2 = [v6 path];
              *buf = 68158211;
              v49 = 39;
              v50 = 2080;
              v51 = "[DIDiskArb onDiskDisappearedWithDisk:]";
              v52 = 2113;
              v53 = path2;
              _os_log_impl(&dword_248DE0000, v23, OS_LOG_TYPE_ERROR, "%.*s: Mount point %{private}@ disappeared", buf, 0x1Cu);
            }
          }

          *__error() = v19;
          delegate = [(DIDiskArb *)self delegate];
          [delegate onDisappearedMountPoint];
        }
      }

      v26 = [(DIDiskArb *)self shadowMountedOnURLs:v40];

      if (v26)
      {
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        shadowMountedOnURLs = [(DIDiskArb *)self shadowMountedOnURLs];
        v28 = [shadowMountedOnURLs countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v43;
          while (2)
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v43 != v30)
              {
                objc_enumerationMutation(shadowMountedOnURLs);
              }

              if ([v6 isEqual:*(*(&v42 + 1) + 8 * i)])
              {
                v32 = *__error();
                if (DIForwardLogs())
                {
                  v46 = 0;
                  v33 = getDIOSLog();
                  os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
                  path3 = [v6 path];
                  *buf = 68158211;
                  v49 = 39;
                  v50 = 2080;
                  v51 = "[DIDiskArb onDiskDisappearedWithDisk:]";
                  v52 = 2113;
                  v53 = path3;
                  v35 = _os_log_send_and_compose_impl();

                  if (v35)
                  {
                    fprintf(*MEMORY[0x277D85DF8], "%s\n", v35);
                    free(v35);
                  }
                }

                else
                {
                  v36 = getDIOSLog();
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                  {
                    path4 = [v6 path];
                    *buf = 68158211;
                    v49 = 39;
                    v50 = 2080;
                    v51 = "[DIDiskArb onDiskDisappearedWithDisk:]";
                    v52 = 2113;
                    v53 = path4;
                    _os_log_impl(&dword_248DE0000, v36, OS_LOG_TYPE_ERROR, "%.*s: Mount point %{private}@ disappeared (shadow's mount point)", buf, 0x1Cu);
                  }
                }

                *__error() = v32;
                delegate2 = [(DIDiskArb *)self delegate];
                [delegate2 onDisappearedMountPoint];

                goto LABEL_44;
              }
            }

            v29 = [shadowMountedOnURLs countByEnumeratingWithState:&v42 objects:v47 count:16];
            if (v29)
            {
              continue;
            }

            break;
          }
        }

LABEL_44:
      }
    }
  }

  else
  {
    v10 = *__error();
    if (DIForwardLogs())
    {
      v46 = 0;
      v11 = getDIOSLog();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      v49 = 39;
      v50 = 2080;
      v51 = "[DIDiskArb onDiskDisappearedWithDisk:]";
      v12 = _os_log_send_and_compose_impl();

      if (v12)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v12);
        free(v12);
      }
    }

    else
    {
      v13 = getDIOSLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v49 = 39;
        v50 = 2080;
        v51 = "[DIDiskArb onDiskDisappearedWithDisk:]";
        _os_log_impl(&dword_248DE0000, v13, OS_LOG_TYPE_DEFAULT, "%.*s: Ignoring, during shutdown", buf, 0x12u);
      }
    }

    *__error() = v10;
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (BOOL)waitForDAIdleWithError:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = *__error();
  if (DIForwardLogs())
  {
    v5 = getDIOSLog();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v20 = 36;
    v21 = 2080;
    v22 = "[DIDiskArb waitForDAIdleWithError:]";
    LODWORD(v18) = 18;
    v17 = buf;
    v6 = _os_log_send_and_compose_impl();

    if (v6)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v6);
      free(v6);
    }
  }

  else
  {
    v7 = getDIOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v20 = 36;
      v21 = 2080;
      v22 = "[DIDiskArb waitForDAIdleWithError:]";
      _os_log_impl(&dword_248DE0000, v7, OS_LOG_TYPE_DEFAULT, "%.*s: Waiting for disk arbitration idle", buf, 0x12u);
    }
  }

  *__error() = v4;
  [(DIDiskArb *)self setCallbackReached:0];
  [(DIDiskArb *)self daSession];
  DARegisterIdleCallback();
  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  if (![(DIDiskArb *)self callbackReached])
  {
    v9 = *MEMORY[0x277CBE640];
    do
    {
      v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:{1.0, v17, v18}];
      [currentRunLoop runMode:v9 beforeDate:v10];
    }

    while (![(DIDiskArb *)self callbackReached]);
  }

  MEMORY[0x24C1ECEE0]([(DIDiskArb *)self daSession], _idleCallback, self);
  v11 = *__error();
  if (DIForwardLogs())
  {
    v12 = getDIOSLog();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v20 = 36;
    v21 = 2080;
    v22 = "[DIDiskArb waitForDAIdleWithError:]";
    v13 = _os_log_send_and_compose_impl();

    if (v13)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v13);
    }
  }

  else
  {
    v14 = getDIOSLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v20 = 36;
      v21 = 2080;
      v22 = "[DIDiskArb waitForDAIdleWithError:]";
      _os_log_impl(&dword_248DE0000, v14, OS_LOG_TYPE_DEFAULT, "%.*s: Disk arbitration idle callback received", buf, 0x12u);
    }
  }

  *__error() = v11;

  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)addDisappearedCallbackWithMountPoint:(id)point shadowMountPoints:(id)points delegate:(id)delegate
{
  v50 = *MEMORY[0x277D85DE8];
  pointCopy = point;
  pointsCopy = points;
  delegateCopy = delegate;
  if (pointCopy)
  {
    [(DIDiskArb *)self setInputMountedOnURL:pointCopy];
    v35 = pointsCopy;
    [(DIDiskArb *)self setShadowMountedOnURLs:pointsCopy];
    v34 = delegateCopy;
    [(DIDiskArb *)self setDelegate:delegateCopy];
    v11 = *__error();
    if (DIForwardLogs())
    {
      v42 = 0;
      v12 = getDIOSLog();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      path = [pointCopy path];
      *buf = 68158211;
      v45 = 77;
      v46 = 2080;
      v47 = "[DIDiskArb addDisappearedCallbackWithMountPoint:shadowMountPoints:delegate:]";
      v48 = 2113;
      v49 = path;
      LODWORD(v32) = 28;
      v30 = buf;
      v14 = _os_log_send_and_compose_impl();

      if (v14)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v14);
        free(v14);
      }
    }

    else
    {
      v15 = getDIOSLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        path2 = [pointCopy path];
        *buf = 68158211;
        v45 = 77;
        v46 = 2080;
        v47 = "[DIDiskArb addDisappearedCallbackWithMountPoint:shadowMountPoints:delegate:]";
        v48 = 2113;
        v49 = path2;
        _os_log_impl(&dword_248DE0000, v15, OS_LOG_TYPE_DEFAULT, "%.*s: Registering DiskDisappearedCallback for %{private}@", buf, 0x1Cu);
      }
    }

    v37 = pointCopy;
    *__error() = v11;
  }

  else
  {
    if (![pointsCopy count])
    {
      goto LABEL_25;
    }

    v37 = 0;
    [(DIDiskArb *)self setInputMountedOnURL:0];
    v35 = pointsCopy;
    [(DIDiskArb *)self setShadowMountedOnURLs:pointsCopy];
    v34 = delegateCopy;
    [(DIDiskArb *)self setDelegate:delegateCopy];
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  selfCopy = self;
  v17 = [(DIDiskArb *)self shadowMountedOnURLs:v30];
  v18 = [v17 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v39;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v39 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v38 + 1) + 8 * i);
        v23 = *__error();
        if (DIForwardLogs())
        {
          v42 = 0;
          v24 = getDIOSLog();
          os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
          path3 = [v22 path];
          *buf = 68158211;
          v45 = 77;
          v46 = 2080;
          v47 = "[DIDiskArb addDisappearedCallbackWithMountPoint:shadowMountPoints:delegate:]";
          v48 = 2113;
          v49 = path3;
          LODWORD(v33) = 28;
          v31 = buf;
          v26 = _os_log_send_and_compose_impl();

          if (v26)
          {
            fprintf(*MEMORY[0x277D85DF8], "%s\n", v26);
            free(v26);
          }
        }

        else
        {
          v27 = getDIOSLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            path4 = [v22 path];
            *buf = 68158211;
            v45 = 77;
            v46 = 2080;
            v47 = "[DIDiskArb addDisappearedCallbackWithMountPoint:shadowMountPoints:delegate:]";
            v48 = 2113;
            v49 = path4;
            _os_log_impl(&dword_248DE0000, v27, OS_LOG_TYPE_DEFAULT, "%.*s: Registering DiskDisappearedCallback for %{private}@ (shadow's mount point)", buf, 0x1Cu);
          }
        }

        *__error() = v23;
      }

      v19 = [v17 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v19);
  }

  DARegisterDiskDisappearedCallback([(DIDiskArb *)selfCopy daSession], 0, _diskDisappearedCallback, selfCopy);
  pointCopy = v37;
  delegateCopy = v34;
  pointsCopy = v35;
LABEL_25:

  v29 = *MEMORY[0x277D85DE8];
}

- (BOOL)ejectWithBSDName:(id)name error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = *__error();
  if (DIForwardLogs())
  {
    v8 = getDIOSLog();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    *buf = 68158210;
    v27 = 36;
    v28 = 2080;
    v29 = "[DIDiskArb ejectWithBSDName:error:]";
    v30 = 2112;
    v31 = nameCopy;
    LODWORD(v25) = 28;
    v24 = buf;
    v9 = _os_log_send_and_compose_impl();

    if (v9)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = getDIOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      v27 = 36;
      v28 = 2080;
      v29 = "[DIDiskArb ejectWithBSDName:error:]";
      v30 = 2112;
      v31 = nameCopy;
      _os_log_impl(&dword_248DE0000, v10, OS_LOG_TYPE_DEFAULT, "%.*s: Ejecting %@", buf, 0x1Cu);
    }
  }

  *__error() = v7;
  v11 = DADiskCreateFromBSDName(0, -[DIDiskArb daSession](self, "daSession"), [nameCopy fileSystemRepresentation]);
  if (v11)
  {
    [(DIDiskArb *)self setCallbackReached:0];
    [(DIDiskArb *)self setOperationError:0];
    DADiskEject(v11, 0, _daOperationCallback, self);
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    if (![(DIDiskArb *)self callbackReached])
    {
      v13 = *MEMORY[0x277CBE640];
      do
      {
        v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:{1.0, v24, v25}];
        [currentRunLoop runMode:v13 beforeDate:v14];
      }

      while (![(DIDiskArb *)self callbackReached]);
    }

    operationError = [(DIDiskArb *)self operationError];

    if (operationError)
    {
      operationError2 = [(DIDiskArb *)self operationError];
      v17 = [DIError failWithInError:operationError2 outError:error];
    }

    else
    {
      v18 = *__error();
      if (DIForwardLogs())
      {
        v19 = getDIOSLog();
        os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
        *buf = 68158210;
        v27 = 36;
        v28 = 2080;
        v29 = "[DIDiskArb ejectWithBSDName:error:]";
        v30 = 2112;
        v31 = nameCopy;
        v20 = _os_log_send_and_compose_impl();

        if (v20)
        {
          fprintf(*MEMORY[0x277D85DF8], "%s\n", v20);
          free(v20);
        }
      }

      else
      {
        v21 = getDIOSLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68158210;
          v27 = 36;
          v28 = 2080;
          v29 = "[DIDiskArb ejectWithBSDName:error:]";
          v30 = 2112;
          v31 = nameCopy;
          _os_log_impl(&dword_248DE0000, v21, OS_LOG_TYPE_DEFAULT, "%.*s: %@ ejected successfully", buf, 0x1Cu);
        }
      }

      *__error() = v18;
      v17 = 1;
    }
  }

  else
  {
    v17 = [DIError failWithEnumValue:156 verboseInfo:@"Failed to create DADisk during eject" error:error];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)mountWithDeviceName:(id)name args:(id)args filesystem:(id)filesystem mountURL:(id)l error:(id *)error
{
  v75 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  argsCopy = args;
  lCopy = l;
  v14 = DADiskCreateFromBSDName(0, -[DIDiskArb daSession](self, "daSession"), [nameCopy UTF8String]);
  if (!v14)
  {
    v15 = @"Failed to create DADisk during mount";
    v16 = 156;
    goto LABEL_5;
  }

  [(DIDiskArb *)self setCallbackReached:0];
  [(DIDiskArb *)self setOperationError:0];
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  *arguments = 0u;
  v44 = 0u;
  if ([argsCopy count] > 0x3F)
  {
    v15 = @"Too many mount arguments";
    v16 = 154;
LABEL_5:
    v17 = [DIError failWithEnumValue:v16 verboseInfo:v15 error:error];
    goto LABEL_31;
  }

  if ([argsCopy count])
  {
    v18 = 0;
    do
    {
      v19 = [argsCopy objectAtIndexedSubscript:v18];
      arguments[v18] = v19;

      ++v18;
    }

    while (v18 < [argsCopy count]);
  }

  DADiskMountWithArguments(v14, lCopy, 0, _daOperationCallback, self, arguments);
  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  if (![(DIDiskArb *)self callbackReached])
  {
    v21 = *MEMORY[0x277CBE640];
    do
    {
      v22 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
      [currentRunLoop runMode:v21 beforeDate:v22];
    }

    while (![(DIDiskArb *)self callbackReached]);
  }

  operationError = [(DIDiskArb *)self operationError];

  v17 = operationError == 0;
  v24 = *__error();
  v25 = DIForwardLogs();
  if (operationError)
  {
    if (v25)
    {
      v36 = lCopy;
      v26 = getDIOSLog();
      os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
      [(DIDiskArb *)self operationError];
      *buf = 68158210;
      *&buf[4] = 64;
      v39 = 2080;
      v40 = "[DIDiskArb mountWithDeviceName:args:filesystem:mountURL:error:]";
      v42 = v41 = 2112;
      v27 = _os_log_send_and_compose_impl();

      if (v27)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v27);
        free(v27);
      }

      lCopy = v36;
    }

    else
    {
      v31 = getDIOSLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [(DIDiskArb *)self operationError];
        v32 = v37 = v24;
        *buf = 0x4004100302;
        v39 = 2080;
        v40 = "[DIDiskArb mountWithDeviceName:args:filesystem:mountURL:error:]";
        v41 = 2112;
        v42 = v32;
        _os_log_impl(&dword_248DE0000, v31, OS_LOG_TYPE_ERROR, "%.*s: Mount error: %@", buf, 0x1Cu);

        v24 = v37;
      }
    }

    *__error() = v24;
    if (error)
    {
      *error = [(DIDiskArb *)self operationError];
    }
  }

  else
  {
    if (v25)
    {
      v28 = v24;
      v29 = getDIOSLog();
      os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
      *buf = 68158210;
      *&buf[4] = 64;
      v39 = 2080;
      v40 = "[DIDiskArb mountWithDeviceName:args:filesystem:mountURL:error:]";
      v41 = 2114;
      v42 = nameCopy;
      v30 = _os_log_send_and_compose_impl();

      if (v30)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v30);
        free(v30);
      }

      v24 = v28;
    }

    else
    {
      v33 = getDIOSLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68158210;
        *&buf[4] = 64;
        v39 = 2080;
        v40 = "[DIDiskArb mountWithDeviceName:args:filesystem:mountURL:error:]";
        v41 = 2114;
        v42 = nameCopy;
        _os_log_impl(&dword_248DE0000, v33, OS_LOG_TYPE_DEFAULT, "%.*s: %{public}@ mounted successfully", buf, 0x1Cu);
      }
    }

    *__error() = v24;
  }

LABEL_31:
  v34 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)unmountWithMountPoint:(id)point error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  pointCopy = point;
  v7 = *__error();
  if (DIForwardLogs())
  {
    v8 = getDIOSLog();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    *buf = 68158211;
    v28 = 41;
    v29 = 2080;
    v30 = "[DIDiskArb unmountWithMountPoint:error:]";
    v31 = 2113;
    v32 = pointCopy;
    LODWORD(v26) = 28;
    v25 = buf;
    v9 = _os_log_send_and_compose_impl();

    if (v9)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = getDIOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158211;
      v28 = 41;
      v29 = 2080;
      v30 = "[DIDiskArb unmountWithMountPoint:error:]";
      v31 = 2113;
      v32 = pointCopy;
      _os_log_impl(&dword_248DE0000, v10, OS_LOG_TYPE_DEFAULT, "%.*s: Unmounting %{private}@", buf, 0x1Cu);
    }
  }

  *__error() = v7;
  v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:pointCopy];
  v12 = DADiskCreateFromVolumePath(0, [(DIDiskArb *)self daSession], v11);
  if (v12)
  {
    [(DIDiskArb *)self setCallbackReached:0];
    [(DIDiskArb *)self setOperationError:0];
    DADiskUnmount(v12, 0, _daOperationCallback, self);
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    if (![(DIDiskArb *)self callbackReached])
    {
      v14 = *MEMORY[0x277CBE640];
      do
      {
        v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:{1.0, v25, v26}];
        [currentRunLoop runMode:v14 beforeDate:v15];
      }

      while (![(DIDiskArb *)self callbackReached]);
    }

    operationError = [(DIDiskArb *)self operationError];

    if (operationError)
    {
      operationError2 = [(DIDiskArb *)self operationError];
      v18 = [DIError failWithInError:operationError2 outError:error];
    }

    else
    {
      v19 = *__error();
      if (DIForwardLogs())
      {
        v20 = getDIOSLog();
        os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        *buf = 68158211;
        v28 = 41;
        v29 = 2080;
        v30 = "[DIDiskArb unmountWithMountPoint:error:]";
        v31 = 2113;
        v32 = pointCopy;
        v21 = _os_log_send_and_compose_impl();

        if (v21)
        {
          fprintf(*MEMORY[0x277D85DF8], "%s\n", v21);
          free(v21);
        }
      }

      else
      {
        v22 = getDIOSLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68158211;
          v28 = 41;
          v29 = 2080;
          v30 = "[DIDiskArb unmountWithMountPoint:error:]";
          v31 = 2113;
          v32 = pointCopy;
          _os_log_impl(&dword_248DE0000, v22, OS_LOG_TYPE_DEFAULT, "%.*s: %{private}@ unmounted successfully", buf, 0x1Cu);
        }
      }

      *__error() = v19;
      v18 = 1;
    }
  }

  else
  {
    v18 = [DIError failWithEnumValue:156 verboseInfo:@"Failed to create DADisk during unmount" error:error];
  }

  v23 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)copyDescriptionWithBSDName:(id)name
{
  nameCopy = name;
  daSession = [(DIDiskArb *)self daSession];
  fileSystemRepresentation = [nameCopy fileSystemRepresentation];

  v7 = DADiskCreateFromBSDName(0, daSession, fileSystemRepresentation);
  v8 = v7;
  if (v7)
  {
    v9 = DADiskCopyDescription(v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (DIDisappearedMountPointDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end