@interface MBEngine
+ (id)stringForEngineMode:(int)mode;
+ (id)stringForEngineType:(int)type;
+ (id)stringForRestoreType:(int)type;
- (BOOL)backsUpPrimaryAccount;
- (BOOL)cancelWithError:(id)error;
- (BOOL)cancelWithReason:(int64_t)reason;
- (BOOL)isBackgroundRestore;
- (BOOL)isDriveEngine;
- (BOOL)isForegroundRestore;
- (MBEngine)initWithSettingsContext:(id)context debugContext:(id)debugContext domainManager:(id)manager;
- (NSString)engineModeString;
- (NSString)restoreTypeString;
- (unint64_t)enginePolicy;
@end

@implementation MBEngine

+ (id)stringForEngineType:(int)type
{
  if ((type - 1) > 3)
  {
    return 0;
  }

  else
  {
    return off_1003C0E90[type - 1];
  }
}

+ (id)stringForEngineMode:(int)mode
{
  if ((mode - 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_1003C0EB0[mode - 1];
  }
}

+ (id)stringForRestoreType:(int)type
{
  v3 = @"Background";
  if (type != 2)
  {
    v3 = 0;
  }

  if (type == 1)
  {
    return @"Foreground";
  }

  else
  {
    return v3;
  }
}

- (MBEngine)initWithSettingsContext:(id)context debugContext:(id)debugContext domainManager:(id)manager
{
  contextCopy = context;
  debugContextCopy = debugContext;
  managerCopy = manager;
  v23.receiver = self;
  v23.super_class = MBEngine;
  v13 = [(MBEngine *)&v23 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_settingsContext, context);
    objc_storeStrong(&v14->_debugContext, debugContext);
    objc_storeStrong(&v14->_domainManager, manager);
    v15 = voucher_copy();
    clientVoucher = v14->_clientVoucher;
    v14->_clientVoucher = v15;

    v22 = 0;
    v17 = [MBPersona personalPersonaWithError:&v22];
    v18 = v22;
    personalPersona = v14->_personalPersona;
    v14->_personalPersona = v17;

    if (!v14->_personalPersona)
    {
      v21 = +[NSAssertionHandler currentHandler];
      [v21 handleFailureInMethod:a2 object:v14 file:@"MBEngine.m" lineNumber:112 description:{@"Unable to obtain personal persona: %@", v18}];
    }
  }

  return v14;
}

- (BOOL)isDriveEngine
{
  engineType = [(MBEngine *)self engineType];
  if (engineType != 1)
  {
    LOBYTE(engineType) = [(MBEngine *)self engineType]== 4;
  }

  return engineType;
}

- (NSString)engineModeString
{
  engineMode = [(MBEngine *)self engineMode];

  return [MBEngine stringForEngineMode:engineMode];
}

- (NSString)restoreTypeString
{
  restoreType = [(MBEngine *)self restoreType];

  return [MBEngine stringForRestoreType:restoreType];
}

- (BOOL)isForegroundRestore
{
  isRestoreEngine = [(MBEngine *)self isRestoreEngine];
  if (isRestoreEngine)
  {
    LOBYTE(isRestoreEngine) = [(MBEngine *)self restoreType]== 1;
  }

  return isRestoreEngine;
}

- (BOOL)isBackgroundRestore
{
  isRestoreEngine = [(MBEngine *)self isRestoreEngine];
  if (isRestoreEngine)
  {
    LOBYTE(isRestoreEngine) = [(MBEngine *)self restoreType]== 2;
  }

  return isRestoreEngine;
}

- (BOOL)cancelWithError:(id)error
{
  errorCopy = error;
  v5 = atomic_load(&self->_canceled);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v16 = 2114;
      v17 = errorCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Canceling %{public}@: %{public}@", buf, 0x16u);
      selfCopy2 = self;
      v13 = errorCopy;
      _MBLog();
    }

    cancelError = [(MBEngine *)self cancelError];

    if (!cancelError)
    {
      if (!errorCopy)
      {
        engineModeString = [(MBEngine *)self engineModeString];
        errorCopy = [MBError errorWithCode:202 format:@"%@ cancelled", engineModeString];
      }

      [(MBEngine *)self setCancelError:errorCopy, selfCopy2, v13];
    }

    v6 = atomic_exchange(&self->_canceled, 1u);
    cancelError2 = [(MBEngine *)self cancelError];
    if (!cancelError2)
    {
      __assert_rtn("[MBEngine cancelWithError:]", "MBEngine.m", 189, "self.cancelError");
    }
  }

  return v6 & 1;
}

- (BOOL)cancelWithReason:(int64_t)reason
{
  if (reason)
  {
    if (reason != 1)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v4 = @"%@ cancelled (XPC connection invalidated)";
  }

  else
  {
    v4 = @"%@ cancelled";
  }

  engineModeString = [(MBEngine *)self engineModeString];
  v6 = [MBError errorWithCode:202 format:v4, engineModeString];

LABEL_7:
  v7 = [(MBEngine *)self cancelWithError:v6];

  return v7;
}

- (BOOL)backsUpPrimaryAccount
{
  if ([(MBEngine *)self isDriveEngine])
  {
    return 1;
  }

  return [(MBEngine *)self isServiceEngine];
}

- (unint64_t)enginePolicy
{
  isCloudKitEngine = [(MBEngine *)self isCloudKitEngine];
  if ([(MBEngine *)self isDriveEngine])
  {
    isCloudKitEngine |= 2uLL;
  }

  if ([(MBEngine *)self isDeviceTransferEngine])
  {
    isCloudKitEngine |= 4uLL;
  }

  if ([(MBEngine *)self encrypted])
  {
    isCloudKitEngine |= 0x10uLL;
  }

  if ([(MBEngine *)self isServiceEngine])
  {
    isCloudKitEngine |= 8uLL;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(MBEngine *)self shouldCommitIfPossible])
  {
    isCloudKitEngine |= 0x40uLL;
  }

  if ([(MBEngine *)self backupPolicy]== 1)
  {
    isCloudKitEngine |= 0x20uLL;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(MBEngine *)self isRestoringToSameDevice])
  {
    isCloudKitEngine |= 0x80uLL;
  }

  return isCloudKitEngine;
}

@end