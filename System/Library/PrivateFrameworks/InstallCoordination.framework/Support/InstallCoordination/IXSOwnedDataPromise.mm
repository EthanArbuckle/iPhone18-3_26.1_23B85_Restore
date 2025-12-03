@interface IXSOwnedDataPromise
- (BOOL)_onQueue_createStagingBaseDirWithError:(id *)error;
- (BOOL)_onQueue_initWithSeedWithError:(id *)error;
- (BOOL)awakeFromSerializationWithLookupBlock:(id)block error:(id *)error;
- (BOOL)cancelForReason:(id)reason client:(unint64_t)client error:(id *)error;
- (BOOL)issueSandboxExtensionWithError:(id *)error;
- (BOOL)validateStagedPathWithError:(id *)error;
- (IXSOwnedDataPromise)initWithCoder:(id)coder;
- (IXSOwnedDataPromise)initWithSeed:(id)seed error:(id *)error;
- (MILocationProtocol)location;
- (NSString)relativeStagedPath;
- (NSString)targetLastPathComponent;
- (NSURL)stagedPath;
- (NSURL)stagingBaseDir;
- (id)description;
- (void)_internal_setStagedPath:(id)path;
- (void)_remote_getStagedPath:(id)path;
- (void)_remote_getTargetLastPathComponent:(id)component;
- (void)_remote_setStagedPath:(id)path;
- (void)_remote_setTargetLastPathComponent:(id)component withCompletion:(id)completion;
- (void)decommission;
- (void)encodeWithCoder:(id)coder;
- (void)reset;
- (void)setRelativeStagedPath:(id)path;
- (void)setStagedPath:(id)path;
- (void)setStagedPathMayNotExistWhenAwakening:(BOOL)awakening;
- (void)setTargetLastPathComponent:(id)component;
@end

@implementation IXSOwnedDataPromise

- (BOOL)_onQueue_createStagingBaseDirWithError:(id *)error
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v6 = +[IXGlobalConfiguration sharedInstance];
  clientSeed = [(IXSDataPromise *)self clientSeed];
  location = [clientSeed location];
  uniqueIdentifier = [(IXSDataPromise *)self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v32 = 0;
  v11 = [v6 promiseStagingRootForInstallLocation:location usingUniqueName:uUIDString error:&v32];
  v12 = v32;

  if (v11)
  {
    [(IXSOwnedDataPromise *)self setStagingLocation:v11];
    v13 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v34 = "[IXSOwnedDataPromise _onQueue_createStagingBaseDirWithError:]";
      v35 = 2112;
      v36 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s: Created %@", buf, 0x16u);
    }

    v31 = v12;
    v14 = [v11 resolveWithError:&v31];
    v15 = v31;

    if (v14)
    {
      seed = [(IXSDataPromise *)self seed];
      [seed setStagingBaseDir:v14];

      v17 = +[IXFileManager defaultManager];
      v30 = v15;
      v18 = [v17 setPermissionsOfItemAtURL:v14 toMode:493 error:&v30];
      v12 = v30;

      if (v18)
      {
        v19 = 1;
        goto LABEL_20;
      }

      v25 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10009C790();
      }

      v22 = sub_1000405FC("[IXSOwnedDataPromise _onQueue_createStagingBaseDirWithError:]", 79, @"IXErrorDomain", 1uLL, v12, 0, @"Failed to set mode on promise staging directory", v26, v29);
    }

    else
    {
      v23 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10009C804();
      }

      v22 = sub_1000405FC("[IXSOwnedDataPromise _onQueue_createStagingBaseDirWithError:]", 70, @"IXErrorDomain", 1uLL, v15, 0, @"Failed to resolve promise staging URL from location %@: %@", v24, v11);
      v14 = 0;
      v12 = v15;
    }
  }

  else
  {
    v20 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10009C898();
    }

    v22 = sub_1000405FC("[IXSOwnedDataPromise _onQueue_createStagingBaseDirWithError:]", 52, @"IXErrorDomain", 1uLL, v12, 0, @"Failed to create promise staging root directory", v21, v29);
    v14 = 0;
  }

  if (error)
  {
    v27 = v22;
    v19 = 0;
    *error = v22;
  }

  else
  {
    v19 = 0;
  }

  v12 = v22;
LABEL_20:

  return v19;
}

- (BOOL)_onQueue_initWithSeedWithError:(id *)error
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  return [(IXSOwnedDataPromise *)self _onQueue_createStagingBaseDirWithError:error];
}

- (IXSOwnedDataPromise)initWithSeed:(id)seed error:(id *)error
{
  seedCopy = seed;
  v26.receiver = self;
  v26.super_class = IXSOwnedDataPromise;
  v7 = [(IXSDataPromise *)&v26 initWithSeed:seedCopy error:error];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_7;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100030BB0;
  v20 = sub_100030BC0;
  v21 = 0;
  accessQueue = [(IXSDataPromise *)v7 accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030BC8;
  block[3] = &unk_1001019C0;
  v13 = v8;
  v14 = &v16;
  v15 = &v22;
  dispatch_sync(accessQueue, block);

  if (*(v23 + 24) != 1)
  {

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v22, 8);
LABEL_7:
    v10 = v8;
    goto LABEL_8;
  }

  if (error)
  {
    *error = v17[5];
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  v10 = 0;
LABEL_8:

  return v10;
}

- (IXSOwnedDataPromise)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = IXSOwnedDataPromise;
  v5 = [(IXSDataPromise *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagedPath"];
    if (v6)
    {
      accessQueue = [(IXSDataPromise *)v5 accessQueue];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100030DE0;
      v13[3] = &unk_100100ED8;
      v14 = v5;
      v15 = v6;
      dispatch_sync(accessQueue, v13);

      stagingLocation = v14;
    }

    else
    {
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relativeStagedPath"];
      relativeStagedPath = v5->_relativeStagedPath;
      v5->_relativeStagedPath = v9;

      v5->_stagedPathMayNotExistWhenAwakening = [coderCopy decodeBoolForKey:@"stagedPathMayNotExistWhenAwakening"];
      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagingLocation"];
      stagingLocation = v5->_stagingLocation;
      v5->_stagingLocation = v11;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v8.receiver = self;
  v8.super_class = IXSOwnedDataPromise;
  [(IXSDataPromise *)&v8 encodeWithCoder:coderCopy];
  relativeStagedPath = [(IXSOwnedDataPromise *)self relativeStagedPath];
  [coderCopy encodeObject:relativeStagedPath forKey:@"relativeStagedPath"];

  [coderCopy encodeBool:-[IXSOwnedDataPromise stagedPathMayNotExistWhenAwakening](self forKey:{"stagedPathMayNotExistWhenAwakening"), @"stagedPathMayNotExistWhenAwakening"}];
  stagingLocation = [(IXSOwnedDataPromise *)self stagingLocation];
  [coderCopy encodeObject:stagingLocation forKey:@"stagingLocation"];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  name = [(IXSDataPromise *)self name];
  v6 = IXStringForClientID([(IXSDataPromise *)self creatorIdentifier]);
  uniqueIdentifier = [(IXSDataPromise *)self uniqueIdentifier];
  location = [(IXSOwnedDataPromise *)self location];
  v9 = [NSString stringWithFormat:@"<%@(%p) Name:%@ Creator:%@ UUID:%@ Location:%@>", v4, self, name, v6, uniqueIdentifier, location];

  return v9;
}

- (void)reset
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  [(IXSOwnedDataPromise *)self _onQueue_purgeStagingBaseDirKeepingBaseDir:1];
  v4.receiver = self;
  v4.super_class = IXSOwnedDataPromise;
  [(IXSDataPromise *)&v4 reset];
}

- (BOOL)cancelForReason:(id)reason client:(unint64_t)client error:(id *)error
{
  reasonCopy = reason;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  [(IXSOwnedDataPromise *)self _onQueue_purgeStagingBaseDirKeepingBaseDir:0];
  v11.receiver = self;
  v11.super_class = IXSOwnedDataPromise;
  LOBYTE(error) = [(IXSDataPromise *)&v11 cancelForReason:reasonCopy client:client error:error];

  return error;
}

- (BOOL)validateStagedPathWithError:(id *)error
{
  stagedPath = [(IXSOwnedDataPromise *)self stagedPath];

  if (stagedPath)
  {
    v6 = +[IXFileManager defaultManager];
    stagedPath2 = [(IXSOwnedDataPromise *)self stagedPath];
    v8 = [v6 itemDoesNotExistAtURL:stagedPath2];

    if (!v8)
    {
      v13 = 0;
      v14 = 1;
      goto LABEL_12;
    }

    v9 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10009C90C(self);
    }

    stagedPath3 = [(IXSOwnedDataPromise *)self stagedPath];
    path = [stagedPath3 path];
    v13 = sub_1000405FC("[IXSOwnedDataPromise validateStagedPathWithError:]", 215, @"IXErrorDomain", 1uLL, 0, 0, @"The item that this promise is representing does not exist at staged path %@.", v12, path);

    if (!error)
    {
      goto LABEL_6;
    }

LABEL_10:
    v17 = v13;
    v14 = 0;
    *error = v13;
    goto LABEL_12;
  }

  v15 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_10009C9BC();
  }

  v13 = sub_1000405FC("[IXSOwnedDataPromise validateStagedPathWithError:]", 210, @"IXErrorDomain", 1uLL, 0, 0, @"The staged path property was not set set.", v16, v19);
  if (error)
  {
    goto LABEL_10;
  }

LABEL_6:
  v14 = 0;
LABEL_12:

  return v14;
}

- (void)decommission
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  [(IXSOwnedDataPromise *)self _onQueue_purgeStagingBaseDirKeepingBaseDir:0];
  v4.receiver = self;
  v4.super_class = IXSOwnedDataPromise;
  [(IXSDataPromise *)&v4 decommission];
}

- (MILocationProtocol)location
{
  seed = [(IXSDataPromise *)self seed];
  location = [seed location];

  return location;
}

- (NSURL)stagingBaseDir
{
  seed = [(IXSDataPromise *)self seed];
  stagingBaseDir = [seed stagingBaseDir];

  return stagingBaseDir;
}

- (NSString)relativeStagedPath
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v4 = [(NSString *)self->_relativeStagedPath copy];

  return v4;
}

- (void)setRelativeStagedPath:(id)path
{
  pathCopy = path;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v6 = [pathCopy copy];
  relativeStagedPath = self->_relativeStagedPath;
  self->_relativeStagedPath = v6;
}

- (NSString)targetLastPathComponent
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v4 = [(NSString *)self->_targetLastPathComponent copy];

  return v4;
}

- (void)setTargetLastPathComponent:(id)component
{
  componentCopy = component;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  v6 = [componentCopy copy];
  targetLastPathComponent = self->_targetLastPathComponent;
  self->_targetLastPathComponent = v6;
}

- (NSURL)stagedPath
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  relativeStagedPath = [(IXSOwnedDataPromise *)self relativeStagedPath];

  if (relativeStagedPath)
  {
    stagingBaseDir = [(IXSOwnedDataPromise *)self stagingBaseDir];
    uRLByDeletingLastPathComponent = [stagingBaseDir URLByDeletingLastPathComponent];

    relativeStagedPath2 = [(IXSOwnedDataPromise *)self relativeStagedPath];
    v8 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:relativeStagedPath2 isDirectory:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_internal_setStagedPath:(id)path
{
  pathCopy = path;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  if (pathCopy)
  {
    stagingBaseDir = [(IXSOwnedDataPromise *)self stagingBaseDir];
    uRLByDeletingLastPathComponent = [stagingBaseDir URLByDeletingLastPathComponent];
    path = [uRLByDeletingLastPathComponent path];

    path2 = [pathCopy path];
    v9 = [path2 stringByReplacingOccurrencesOfString:path withString:&stru_100105BA0 options:8 range:{0, objc_msgSend(path, "length")}];
    v10 = [v9 mutableCopy];

    if ([v10 hasPrefix:@"/"])
    {
      [v10 replaceCharactersInRange:0 withString:{1, &stru_100105BA0}];
    }

    [(IXSOwnedDataPromise *)self setRelativeStagedPath:v10];
  }

  else
  {
    [(IXSOwnedDataPromise *)self setRelativeStagedPath:0];
  }
}

- (void)setStagedPath:(id)path
{
  pathCopy = path;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  stagedPath = [(IXSOwnedDataPromise *)self stagedPath];
  path = [stagedPath path];
  path2 = [pathCopy path];
  v8 = [path isEqual:path2];

  if ((v8 & 1) == 0)
  {
    [(IXSOwnedDataPromise *)self _internal_setStagedPath:pathCopy];
    [(IXSDataPromise *)self saveState];
  }
}

- (void)setStagedPathMayNotExistWhenAwakening:(BOOL)awakening
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  self->_stagedPathMayNotExistWhenAwakening = awakening;

  [(IXSDataPromise *)self saveState];
}

- (BOOL)issueSandboxExtensionWithError:(id *)error
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  seed = [(IXSDataPromise *)self seed];
  stagingBaseDir = [seed stagingBaseDir];

  v8 = +[IXFileManager defaultManager];
  v18 = 0;
  v9 = [v8 issueSandboxExtensionForURL:stagingBaseDir withExtensionClass:APP_SANDBOX_READ_WRITE error:&v18];
  v10 = v18;

  if (v9)
  {
    seed2 = [(IXSDataPromise *)self seed];
    [seed2 setSandboxExtensionToken:v9];
  }

  else
  {
    v12 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10009CA38(stagingBaseDir);
    }

    path = [stagingBaseDir path];
    v15 = sub_1000405FC("[IXSOwnedDataPromise issueSandboxExtensionWithError:]", 375, @"IXErrorDomain", 1uLL, v10, 0, @"Failed to provide access to %@", v14, path);

    if (error)
    {
      v16 = v15;
      *error = v15;
    }

    v10 = v15;
  }

  return v9 != 0;
}

- (void)_remote_setStagedPath:(id)path
{
  pathCopy = path;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100031C50;
  v8[3] = &unk_100100ED8;
  v9 = pathCopy;
  selfCopy = self;
  v7 = pathCopy;
  dispatch_sync(accessQueue2, v8);
}

- (void)_remote_getStagedPath:(id)path
{
  pathCopy = path;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  uniqueIdentifier = [(IXSDataPromise *)self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v8 = sub_10003B2E0(uUIDString, 8);

  if (v8)
  {
    exit(1);
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100030BB0;
  v15 = sub_100030BC0;
  v16 = 0;
  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100031F80;
  v10[3] = &unk_100101268;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(accessQueue2, v10);

  pathCopy[2](pathCopy, v12[5], 0);
  _Block_object_dispose(&v11, 8);
}

- (void)_remote_setTargetLastPathComponent:(id)component withCompletion:(id)completion
{
  componentCopy = component;
  completionCopy = completion;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  if ([componentCopy containsString:@"/"])
  {
    v9 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10009CBDC();
    }

    v11 = sub_1000405FC("[IXSOwnedDataPromise(IXSOwnedDataPromiseIPCMethods) _remote_setTargetLastPathComponent:withCompletion:]", 429, @"IXErrorDomain", 0x29uLL, 0, 0, @"Failed to set target last path component to %@ because it contains slash(es)", v10, componentCopy);
    completionCopy[2](completionCopy, v11);
  }

  else
  {
    accessQueue2 = [(IXSDataPromise *)self accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100032164;
    block[3] = &unk_100100ED8;
    block[4] = self;
    v14 = componentCopy;
    dispatch_sync(accessQueue2, block);

    completionCopy[2](completionCopy, 0);
  }
}

- (void)_remote_getTargetLastPathComponent:(id)component
{
  componentCopy = component;
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(accessQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100030BB0;
  v12 = sub_100030BC0;
  v13 = 0;
  accessQueue2 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000322A8;
  v7[3] = &unk_100101268;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(accessQueue2, v7);

  componentCopy[2](componentCopy, v9[5], 0);
  _Block_object_dispose(&v8, 8);
}

- (BOOL)awakeFromSerializationWithLookupBlock:(id)block error:(id *)error
{
  accessQueue = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

  awakeningError = [(IXSOwnedDataPromise *)self awakeningError];

  if (!awakeningError)
  {
    if (![(IXSDataPromise *)self isTracked])
    {
      v8 = 0;
LABEL_11:
      v9 = 1;
      goto LABEL_12;
    }

    [(IXSDataPromise *)self didAwake];
    v9 = 1;
    [(IXSDataPromise *)self setDidAwake:1];
    if (![(IXSDataPromise *)self isComplete]|| [(IXSOwnedDataPromise *)self stagedPathMayNotExistWhenAwakening])
    {
      v8 = 0;
      goto LABEL_12;
    }

    stagingLocation = [(IXSOwnedDataPromise *)self stagingLocation];
    v12 = stagingLocation;
    if (stagingLocation)
    {
      v27 = 0;
      v13 = [stagingLocation resolveWithError:&v27];
      v8 = v27;
      if (!v13)
      {
        stagedPath = v12;
        goto LABEL_25;
      }

      seed = [(IXSDataPromise *)self seed];
      [seed setStagingBaseDir:v13];
    }

    else
    {
      v8 = 0;
    }

    stagedPath = [(IXSOwnedDataPromise *)self stagedPath];
    targetLastPathComponent = [(IXSOwnedDataPromise *)self targetLastPathComponent];
    if (targetLastPathComponent)
    {
      v17 = [stagedPath URLByAppendingPathComponent:targetLastPathComponent isDirectory:1];

      stagedPath = v17;
    }

    v18 = +[IXFileManager defaultManager];
    v19 = [v18 itemExistsAtURL:stagedPath];

    if (v19)
    {

      goto LABEL_11;
    }

    v20 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10009CC64(self, stagedPath, v20);
    }

    name = [(IXSDataPromise *)self name];
    uniqueIdentifier = [(IXSDataPromise *)self uniqueIdentifier];
    path = [stagedPath path];
    v24 = sub_1000405FC("[IXSOwnedDataPromise(IXSOwnedDataPromiseIPCMethods) awakeFromSerializationWithLookupBlock:error:]", 502, @"IXErrorDomain", 3uLL, 0, 0, @"IXSOwnedDataPromise (%@) with UUID %@ was complete but found nothing at %@", v23, name);

    v8 = v24;
LABEL_25:

    [(IXSOwnedDataPromise *)self setAwakeningError:v8];
    [(IXSOwnedDataPromise *)self cancelForReason:v8 client:15 error:0];
    if (error)
    {
      v25 = v8;
      v9 = 0;
      *error = v8;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (!error)
  {
    v8 = 0;
LABEL_9:
    v9 = 0;
    goto LABEL_12;
  }

  [(IXSOwnedDataPromise *)self awakeningError];
  v8 = 0;
  *error = v9 = 0;
LABEL_12:

  return v9;
}

@end