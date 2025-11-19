@interface IXSOwnedDataPromise
- (BOOL)_onQueue_createStagingBaseDirWithError:(id *)a3;
- (BOOL)_onQueue_initWithSeedWithError:(id *)a3;
- (BOOL)awakeFromSerializationWithLookupBlock:(id)a3 error:(id *)a4;
- (BOOL)cancelForReason:(id)a3 client:(unint64_t)a4 error:(id *)a5;
- (BOOL)issueSandboxExtensionWithError:(id *)a3;
- (BOOL)validateStagedPathWithError:(id *)a3;
- (IXSOwnedDataPromise)initWithCoder:(id)a3;
- (IXSOwnedDataPromise)initWithSeed:(id)a3 error:(id *)a4;
- (MILocationProtocol)location;
- (NSString)relativeStagedPath;
- (NSString)targetLastPathComponent;
- (NSURL)stagedPath;
- (NSURL)stagingBaseDir;
- (id)description;
- (void)_internal_setStagedPath:(id)a3;
- (void)_remote_getStagedPath:(id)a3;
- (void)_remote_getTargetLastPathComponent:(id)a3;
- (void)_remote_setStagedPath:(id)a3;
- (void)_remote_setTargetLastPathComponent:(id)a3 withCompletion:(id)a4;
- (void)decommission;
- (void)encodeWithCoder:(id)a3;
- (void)reset;
- (void)setRelativeStagedPath:(id)a3;
- (void)setStagedPath:(id)a3;
- (void)setStagedPathMayNotExistWhenAwakening:(BOOL)a3;
- (void)setTargetLastPathComponent:(id)a3;
@end

@implementation IXSOwnedDataPromise

- (BOOL)_onQueue_createStagingBaseDirWithError:(id *)a3
{
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  v6 = +[IXGlobalConfiguration sharedInstance];
  v7 = [(IXSDataPromise *)self clientSeed];
  v8 = [v7 location];
  v9 = [(IXSDataPromise *)self uniqueIdentifier];
  v10 = [v9 UUIDString];
  v32 = 0;
  v11 = [v6 promiseStagingRootForInstallLocation:v8 usingUniqueName:v10 error:&v32];
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
      v16 = [(IXSDataPromise *)self seed];
      [v16 setStagingBaseDir:v14];

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

  if (a3)
  {
    v27 = v22;
    v19 = 0;
    *a3 = v22;
  }

  else
  {
    v19 = 0;
  }

  v12 = v22;
LABEL_20:

  return v19;
}

- (BOOL)_onQueue_initWithSeedWithError:(id *)a3
{
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  return [(IXSOwnedDataPromise *)self _onQueue_createStagingBaseDirWithError:a3];
}

- (IXSOwnedDataPromise)initWithSeed:(id)a3 error:(id *)a4
{
  v6 = a3;
  v26.receiver = self;
  v26.super_class = IXSOwnedDataPromise;
  v7 = [(IXSDataPromise *)&v26 initWithSeed:v6 error:a4];
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
  v9 = [(IXSDataPromise *)v7 accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030BC8;
  block[3] = &unk_1001019C0;
  v13 = v8;
  v14 = &v16;
  v15 = &v22;
  dispatch_sync(v9, block);

  if (*(v23 + 24) != 1)
  {

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v22, 8);
LABEL_7:
    v10 = v8;
    goto LABEL_8;
  }

  if (a4)
  {
    *a4 = v17[5];
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  v10 = 0;
LABEL_8:

  return v10;
}

- (IXSOwnedDataPromise)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = IXSOwnedDataPromise;
  v5 = [(IXSDataPromise *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagedPath"];
    if (v6)
    {
      v7 = [(IXSDataPromise *)v5 accessQueue];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100030DE0;
      v13[3] = &unk_100100ED8;
      v14 = v5;
      v15 = v6;
      dispatch_sync(v7, v13);

      stagingLocation = v14;
    }

    else
    {
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relativeStagedPath"];
      relativeStagedPath = v5->_relativeStagedPath;
      v5->_relativeStagedPath = v9;

      v5->_stagedPathMayNotExistWhenAwakening = [v4 decodeBoolForKey:@"stagedPathMayNotExistWhenAwakening"];
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagingLocation"];
      stagingLocation = v5->_stagingLocation;
      v5->_stagingLocation = v11;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  v8.receiver = self;
  v8.super_class = IXSOwnedDataPromise;
  [(IXSDataPromise *)&v8 encodeWithCoder:v4];
  v6 = [(IXSOwnedDataPromise *)self relativeStagedPath];
  [v4 encodeObject:v6 forKey:@"relativeStagedPath"];

  [v4 encodeBool:-[IXSOwnedDataPromise stagedPathMayNotExistWhenAwakening](self forKey:{"stagedPathMayNotExistWhenAwakening"), @"stagedPathMayNotExistWhenAwakening"}];
  v7 = [(IXSOwnedDataPromise *)self stagingLocation];
  [v4 encodeObject:v7 forKey:@"stagingLocation"];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(IXSDataPromise *)self name];
  v6 = IXStringForClientID([(IXSDataPromise *)self creatorIdentifier]);
  v7 = [(IXSDataPromise *)self uniqueIdentifier];
  v8 = [(IXSOwnedDataPromise *)self location];
  v9 = [NSString stringWithFormat:@"<%@(%p) Name:%@ Creator:%@ UUID:%@ Location:%@>", v4, self, v5, v6, v7, v8];

  return v9;
}

- (void)reset
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  [(IXSOwnedDataPromise *)self _onQueue_purgeStagingBaseDirKeepingBaseDir:1];
  v4.receiver = self;
  v4.super_class = IXSOwnedDataPromise;
  [(IXSDataPromise *)&v4 reset];
}

- (BOOL)cancelForReason:(id)a3 client:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v9);

  [(IXSOwnedDataPromise *)self _onQueue_purgeStagingBaseDirKeepingBaseDir:0];
  v11.receiver = self;
  v11.super_class = IXSOwnedDataPromise;
  LOBYTE(a5) = [(IXSDataPromise *)&v11 cancelForReason:v8 client:a4 error:a5];

  return a5;
}

- (BOOL)validateStagedPathWithError:(id *)a3
{
  v5 = [(IXSOwnedDataPromise *)self stagedPath];

  if (v5)
  {
    v6 = +[IXFileManager defaultManager];
    v7 = [(IXSOwnedDataPromise *)self stagedPath];
    v8 = [v6 itemDoesNotExistAtURL:v7];

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

    v10 = [(IXSOwnedDataPromise *)self stagedPath];
    v11 = [v10 path];
    v13 = sub_1000405FC("[IXSOwnedDataPromise validateStagedPathWithError:]", 215, @"IXErrorDomain", 1uLL, 0, 0, @"The item that this promise is representing does not exist at staged path %@.", v12, v11);

    if (!a3)
    {
      goto LABEL_6;
    }

LABEL_10:
    v17 = v13;
    v14 = 0;
    *a3 = v13;
    goto LABEL_12;
  }

  v15 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_10009C9BC();
  }

  v13 = sub_1000405FC("[IXSOwnedDataPromise validateStagedPathWithError:]", 210, @"IXErrorDomain", 1uLL, 0, 0, @"The staged path property was not set set.", v16, v19);
  if (a3)
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
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  [(IXSOwnedDataPromise *)self _onQueue_purgeStagingBaseDirKeepingBaseDir:0];
  v4.receiver = self;
  v4.super_class = IXSOwnedDataPromise;
  [(IXSDataPromise *)&v4 decommission];
}

- (MILocationProtocol)location
{
  v2 = [(IXSDataPromise *)self seed];
  v3 = [v2 location];

  return v3;
}

- (NSURL)stagingBaseDir
{
  v2 = [(IXSDataPromise *)self seed];
  v3 = [v2 stagingBaseDir];

  return v3;
}

- (NSString)relativeStagedPath
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(NSString *)self->_relativeStagedPath copy];

  return v4;
}

- (void)setRelativeStagedPath:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 copy];
  relativeStagedPath = self->_relativeStagedPath;
  self->_relativeStagedPath = v6;
}

- (NSString)targetLastPathComponent
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(NSString *)self->_targetLastPathComponent copy];

  return v4;
}

- (void)setTargetLastPathComponent:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 copy];
  targetLastPathComponent = self->_targetLastPathComponent;
  self->_targetLastPathComponent = v6;
}

- (NSURL)stagedPath
{
  v3 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(IXSOwnedDataPromise *)self relativeStagedPath];

  if (v4)
  {
    v5 = [(IXSOwnedDataPromise *)self stagingBaseDir];
    v6 = [v5 URLByDeletingLastPathComponent];

    v7 = [(IXSOwnedDataPromise *)self relativeStagedPath];
    v8 = [v6 URLByAppendingPathComponent:v7 isDirectory:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_internal_setStagedPath:(id)a3
{
  v11 = a3;
  v4 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v4);

  if (v11)
  {
    v5 = [(IXSOwnedDataPromise *)self stagingBaseDir];
    v6 = [v5 URLByDeletingLastPathComponent];
    v7 = [v6 path];

    v8 = [v11 path];
    v9 = [v8 stringByReplacingOccurrencesOfString:v7 withString:&stru_100105BA0 options:8 range:{0, objc_msgSend(v7, "length")}];
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

- (void)setStagedPath:(id)a3
{
  v9 = a3;
  v4 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(IXSOwnedDataPromise *)self stagedPath];
  v6 = [v5 path];
  v7 = [v9 path];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    [(IXSOwnedDataPromise *)self _internal_setStagedPath:v9];
    [(IXSDataPromise *)self saveState];
  }
}

- (void)setStagedPathMayNotExistWhenAwakening:(BOOL)a3
{
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  self->_stagedPathMayNotExistWhenAwakening = a3;

  [(IXSDataPromise *)self saveState];
}

- (BOOL)issueSandboxExtensionWithError:(id *)a3
{
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(IXSDataPromise *)self seed];
  v7 = [v6 stagingBaseDir];

  v8 = +[IXFileManager defaultManager];
  v18 = 0;
  v9 = [v8 issueSandboxExtensionForURL:v7 withExtensionClass:APP_SANDBOX_READ_WRITE error:&v18];
  v10 = v18;

  if (v9)
  {
    v11 = [(IXSDataPromise *)self seed];
    [v11 setSandboxExtensionToken:v9];
  }

  else
  {
    v12 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10009CA38(v7);
    }

    v13 = [v7 path];
    v15 = sub_1000405FC("[IXSOwnedDataPromise issueSandboxExtensionWithError:]", 375, @"IXErrorDomain", 1uLL, v10, 0, @"Failed to provide access to %@", v14, v13);

    if (a3)
    {
      v16 = v15;
      *a3 = v15;
    }

    v10 = v15;
  }

  return v9 != 0;
}

- (void)_remote_setStagedPath:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v6 = [(IXSDataPromise *)self accessQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100031C50;
  v8[3] = &unk_100100ED8;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_sync(v6, v8);
}

- (void)_remote_getStagedPath:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v6 = [(IXSDataPromise *)self uniqueIdentifier];
  v7 = [v6 UUIDString];
  v8 = sub_10003B2E0(v7, 8);

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
  v9 = [(IXSDataPromise *)self accessQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100031F80;
  v10[3] = &unk_100101268;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(v9, v10);

  v4[2](v4, v12[5], 0);
  _Block_object_dispose(&v11, 8);
}

- (void)_remote_setTargetLastPathComponent:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v8);

  if ([v6 containsString:@"/"])
  {
    v9 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10009CBDC();
    }

    v11 = sub_1000405FC("[IXSOwnedDataPromise(IXSOwnedDataPromiseIPCMethods) _remote_setTargetLastPathComponent:withCompletion:]", 429, @"IXErrorDomain", 0x29uLL, 0, 0, @"Failed to set target last path component to %@ because it contains slash(es)", v10, v6);
    v7[2](v7, v11);
  }

  else
  {
    v12 = [(IXSDataPromise *)self accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100032164;
    block[3] = &unk_100100ED8;
    block[4] = self;
    v14 = v6;
    dispatch_sync(v12, block);

    v7[2](v7, 0);
  }
}

- (void)_remote_getTargetLastPathComponent:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_not_V2(v5);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100030BB0;
  v12 = sub_100030BC0;
  v13 = 0;
  v6 = [(IXSDataPromise *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000322A8;
  v7[3] = &unk_100101268;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v6, v7);

  v4[2](v4, v9[5], 0);
  _Block_object_dispose(&v8, 8);
}

- (BOOL)awakeFromSerializationWithLookupBlock:(id)a3 error:(id *)a4
{
  v6 = [(IXSDataPromise *)self accessQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(IXSOwnedDataPromise *)self awakeningError];

  if (!v7)
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

    v11 = [(IXSOwnedDataPromise *)self stagingLocation];
    v12 = v11;
    if (v11)
    {
      v27 = 0;
      v13 = [v11 resolveWithError:&v27];
      v8 = v27;
      if (!v13)
      {
        v15 = v12;
        goto LABEL_25;
      }

      v14 = [(IXSDataPromise *)self seed];
      [v14 setStagingBaseDir:v13];
    }

    else
    {
      v8 = 0;
    }

    v15 = [(IXSOwnedDataPromise *)self stagedPath];
    v16 = [(IXSOwnedDataPromise *)self targetLastPathComponent];
    if (v16)
    {
      v17 = [v15 URLByAppendingPathComponent:v16 isDirectory:1];

      v15 = v17;
    }

    v18 = +[IXFileManager defaultManager];
    v19 = [v18 itemExistsAtURL:v15];

    if (v19)
    {

      goto LABEL_11;
    }

    v20 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10009CC64(self, v15, v20);
    }

    v21 = [(IXSDataPromise *)self name];
    v22 = [(IXSDataPromise *)self uniqueIdentifier];
    v26 = [v15 path];
    v24 = sub_1000405FC("[IXSOwnedDataPromise(IXSOwnedDataPromiseIPCMethods) awakeFromSerializationWithLookupBlock:error:]", 502, @"IXErrorDomain", 3uLL, 0, 0, @"IXSOwnedDataPromise (%@) with UUID %@ was complete but found nothing at %@", v23, v21);

    v8 = v24;
LABEL_25:

    [(IXSOwnedDataPromise *)self setAwakeningError:v8];
    [(IXSOwnedDataPromise *)self cancelForReason:v8 client:15 error:0];
    if (a4)
    {
      v25 = v8;
      v9 = 0;
      *a4 = v8;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (!a4)
  {
    v8 = 0;
LABEL_9:
    v9 = 0;
    goto LABEL_12;
  }

  [(IXSOwnedDataPromise *)self awakeningError];
  v8 = 0;
  *a4 = v9 = 0;
LABEL_12:

  return v9;
}

@end