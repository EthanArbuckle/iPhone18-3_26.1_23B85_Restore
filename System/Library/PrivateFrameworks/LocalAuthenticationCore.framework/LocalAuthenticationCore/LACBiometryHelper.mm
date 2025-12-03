@interface LACBiometryHelper
+ (id)faceIdInstance;
+ (id)sharedInstance;
+ (id)touchIdInstance;
- (BOOL)_isEnrolled:(id)enrolled adminOnly:(BOOL)only hardwareMustBeAvailable:(BOOL)available error:(id *)error;
- (BOOL)_shouldRetryAvailableDevices;
- (BOOL)deviceHasBiometryWithError:(id *)error;
- (BOOL)isBiometryOnForApplePay:(id)pay;
- (BOOL)isBiometryOnForUnlock:(id)unlock;
- (BOOL)isIdentificationEnabled:(id)enabled;
- (BOOL)isLockedOutForUser:(id)user adminOnly:(BOOL)only request:(id)request error:(id *)error;
- (BOOL)isPeriocularMatchingEnabledForUser:(id)user;
- (BOOL)userPresent:(BOOL *)present error:(id *)error;
- (LACBiometryDelegate)delegate;
- (LACBiometryHelper)initWithBiometryType:(int64_t)type;
- (NSDictionary)adminIdentities;
- (id)_biolockoutStateForUser:(id)user request:(id)request error:(id *)error;
- (id)_dumpEnvironmentForUser:(id)user;
- (id)_errorDisconnected:(BOOL)disconnected notEnrolled:(BOOL)enrolled;
- (id)_identitiesForUser:(id)user adminOnly:(BOOL)only;
- (id)_lockoutErrorForExtendedState:(int64_t)state userId:(id)id;
- (id)_protectedConfigurationForUser:(id)user;
- (id)biometryDatabaseHashForUser:(id)user error:(id *)error;
- (id)biometryLostErrorForUser:(id)user request:(id)request;
- (id)catacombUUID:(id)d;
- (id)dumpStatus;
- (id)lockoutErrorForState:(int64_t)state userId:(id)id;
- (void)_handleAccessoriesChangedNotification;
- (void)_handleEnrollmentChangedNotification;
- (void)_handleLockoutStateChangedNotification;
- (void)_refreshIdentitiesDueToAccessoryChange:(BOOL)change;
- (void)_setup;
- (void)_setupDeviceWithDescriptor:(id)descriptor;
- (void)_setupWithFault:(id)fault;
- (void)_shouldRetryAvailableDevices;
- (void)dealloc;
- (void)resetBiometry;
@end

@implementation LACBiometryHelper

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[LACBiometryHelper sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_3;

  return v3;
}

uint64_t __35__LACBiometryHelper_sharedInstance__block_invoke()
{
  if (+[LACMobileGestalt deviceHasFaceID])
  {
    +[LACBiometryHelper faceIdInstance];
  }

  else
  {
    +[LACBiometryHelper touchIdInstance];
  }
  sharedInstance_sharedInstance_3 = ;

  return MEMORY[0x1EEE66BB8]();
}

+ (id)touchIdInstance
{
  if (touchIdInstance_onceToken != -1)
  {
    +[LACBiometryHelper touchIdInstance];
  }

  v3 = touchIdInstance_touchIdInstance;

  return v3;
}

uint64_t __36__LACBiometryHelper_touchIdInstance__block_invoke()
{
  touchIdInstance_touchIdInstance = [[LACBiometryHelper alloc] initWithBiometryType:1];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)faceIdInstance
{
  if (faceIdInstance_onceToken != -1)
  {
    +[LACBiometryHelper faceIdInstance];
  }

  v3 = faceIdInstance_faceIdInstance;

  return v3;
}

uint64_t __35__LACBiometryHelper_faceIdInstance__block_invoke()
{
  faceIdInstance_faceIdInstance = [[LACBiometryHelper alloc] initWithBiometryType:2];

  return MEMORY[0x1EEE66BB8]();
}

- (LACBiometryHelper)initWithBiometryType:(int64_t)type
{
  v9.receiver = self;
  v9.super_class = LACBiometryHelper;
  v4 = [(LACBiometryHelper *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_deviceType = type;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v5->_observers;
    v5->_observers = weakObjectsHashTable;

    [(LACBiometryHelper *)v5 _setup];
  }

  return v5;
}

- (void)_setup
{
  v32 = *MEMORY[0x1E69E9840];
  if (+[LACMobileGestalt isSharedIPad])
  {
    v18 = [LACError errorWithCode:-6 debugDescription:@"Biometry not supported in Shared iPad mode"];
    [(LACBiometryHelper *)self _setupWithPermanentError:v18];
    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v4 = getBKDeviceManagerClass_softClass;
    v26 = getBKDeviceManagerClass_softClass;
    if (!getBKDeviceManagerClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v29 = __getBKDeviceManagerClass_block_invoke;
      v30 = &unk_1E7A955D8;
      v31 = &v23;
      BiometricKitLibraryCore();
      Class = objc_getClass("BKDeviceManager");
      *(v31[1] + 24) = Class;
      getBKDeviceManagerClass_softClass = *(v31[1] + 24);
      v4 = v24[3];
    }

    v6 = v4;
    _Block_object_dispose(&v23, 8);
    if (v4)
    {
      availableDevices = [v4 availableDevices];
      if (availableDevices)
      {
        v8 = LACLogBiometry();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = availableDevices;
          _os_log_impl(&dword_1B0233000, v8, OS_LOG_TYPE_DEFAULT, "Available devices: %@", &buf, 0xCu);
        }

        if ([availableDevices count] || !-[LACBiometryHelper _shouldRetryAvailableDevices](self, "_shouldRetryAvailableDevices"))
        {
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v10 = availableDevices;
          v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v11)
          {
            v12 = *v20;
            while (2)
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v20 != v12)
                {
                  objc_enumerationMutation(v10);
                }

                v14 = *(*(&v19 + 1) + 8 * i);
                type = [v14 type];
                if (type == [(LACBiometryHelper *)self deviceType])
                {
                  [(LACBiometryHelper *)self _setupDeviceWithDescriptor:v14];

                  goto LABEL_26;
                }
              }

              v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }

          v16 = [LACError errorWithCode:-6 debugDescription:@"Biometry is not available on this device."];
          [(LACBiometryHelper *)self _setupWithPermanentError:v16];
        }

        else
        {
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected failure to enumerate device of type %d", -[LACBiometryHelper deviceType](self, "deviceType")];
          [(LACBiometryHelper *)self _setupWithFault:v9];
        }
      }

      else
      {
        [(LACBiometryHelper *)self _setupWithFault:@"Failed to enumerate biometric devices"];
      }

LABEL_26:
    }

    else
    {
      [(LACBiometryHelper *)self _setupWithFault:@"Failed to acquire device manager class"];
    }

    v17 = *MEMORY[0x1E69E9840];
  }
}

- (BOOL)_shouldRetryAvailableDevices
{
  deviceType = [(LACBiometryHelper *)self deviceType];
  if (deviceType == 2)
  {

    return +[LACMobileGestalt deviceHasFaceID];
  }

  else if (deviceType == 1)
  {

    return +[LACMobileGestalt deviceHasTouchID];
  }

  else
  {
    v5 = LACLogBiometry();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(LACBiometryHelper *)self _shouldRetryAvailableDevices];
    }

    return 0;
  }
}

- (void)_setupWithFault:(id)fault
{
  faultCopy = fault;
  v5 = [LACError errorWithCode:-1000 debugDescription:faultCopy];
  fault = self->_fault;
  self->_fault = v5;

  v7 = LACLogBiometry();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [LACBiometryHelper _setupWithFault:];
  }
}

- (void)_setupDeviceWithDescriptor:(id)descriptor
{
  v33 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v5 = getBKDeviceClass_softClass;
  v28 = getBKDeviceClass_softClass;
  if (!getBKDeviceClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v30 = __getBKDeviceClass_block_invoke;
    v31 = &unk_1E7A955D8;
    v32 = &v25;
    BiometricKitLibraryCore();
    Class = objc_getClass("BKDevice");
    *(v32[1] + 24) = Class;
    getBKDeviceClass_softClass = *(v32[1] + 24);
    v5 = v26[3];
  }

  v7 = v5;
  _Block_object_dispose(&v25, 8);
  if (v5)
  {
    v24 = 0;
    v8 = [v5 deviceWithDescriptor:descriptorCopy error:&v24];
    v9 = v24;
    device = self->_device;
    self->_device = v8;

    v11 = self->_device;
    if (v11)
    {
      descriptor = [(BKDevice *)v11 descriptor];
      type = [descriptor type];

      if (type == 1)
      {
        v14 = &LACBiometryTypeTouchID;
LABEL_11:
        self->_biometryType = *v14;
        v16 = objc_opt_new();
        databaseHashesByUserId = self->_databaseHashesByUserId;
        self->_databaseHashesByUserId = v16;

        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterAddObserver(DarwinNotifyCenter, self, BiometricKitNotificationCallback, @"com.apple.BiometricKit.enrollmentChanged", 0, 0);
        v19 = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterAddObserver(v19, self, BiometricKitNotificationCallback, @"com.apple.BiometricKit.generalLockoutStateChanged", 0, 0);
        descriptor2 = LACLogBiometry();
        if (os_log_type_enabled(descriptor2, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(descriptorCopy, "type")}];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v20;
          _os_log_impl(&dword_1B0233000, descriptor2, OS_LOG_TYPE_DEFAULT, "Device created successfully with type: %@", &buf, 0xCu);
        }

        goto LABEL_14;
      }

      if (type == 2)
      {
        v14 = &LACBiometryTypeFaceID;
        goto LABEL_11;
      }

      v21 = MEMORY[0x1E696AEC0];
      descriptor2 = [(BKDevice *)self->_device descriptor];
      v22 = [v21 stringWithFormat:@"Unknown device type: %d", -[NSObject type](descriptor2, "type")];
      [(LACBiometryHelper *)self _setupWithFault:v22];
    }

    else
    {
      descriptor2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create device with %@: %@", descriptorCopy, v9];
      [(LACBiometryHelper *)self _setupWithFault:descriptor2];
    }

LABEL_14:

    goto LABEL_15;
  }

  [(LACBiometryHelper *)self _setupWithFault:@"Failed to acquire device class"];
LABEL_15:

  v23 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  if (self->_device)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.BiometricKit.enrollmentChanged", 0);
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v4, self, @"com.apple.BiometricKit.generalLockoutStateChanged", 0);
  }

  v5.receiver = self;
  v5.super_class = LACBiometryHelper;
  [(LACBiometryHelper *)&v5 dealloc];
}

- (BOOL)deviceHasBiometryWithError:(id *)error
{
  permanentError = [(LACBiometryHelper *)self permanentError];

  if (permanentError)
  {
    permanentError2 = [(LACBiometryHelper *)self permanentError];
    if (!error)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  fault = [(LACBiometryHelper *)self fault];

  if (!fault)
  {
    permanentError2 = 0;
    if (!error)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  fault = self->_fault;
  self->_fault = 0;

  [(LACBiometryHelper *)self _setup];
  permanentError2 = [(LACBiometryHelper *)self fault];
  if (error)
  {
LABEL_6:
    permanentError2 = permanentError2;
    *error = permanentError2;
  }

LABEL_7:
  v9 = permanentError2 == 0;

  return v9;
}

- (NSDictionary)adminIdentities
{
  if ([(NSDictionary *)self->_identities count])
  {
    v3 = objc_opt_new();
    identities = self->_identities;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36__LACBiometryHelper_adminIdentities__block_invoke;
    v9[3] = &unk_1E7A962F0;
    v10 = v3;
    v5 = v3;
    [(NSDictionary *)identities enumerateKeysAndObjectsUsingBlock:v9];
    if ([v5 count])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __36__LACBiometryHelper_adminIdentities__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = +[LACADMUserProvider sharedInstance];
  v7 = [v6 findUserByID:objc_msgSend(v9 searchParent:{"unsignedIntegerValue"), 0}];
  v8 = [v7 isAdministrator];

  if (v8)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v9];
  }
}

- (BOOL)_isEnrolled:(id)enrolled adminOnly:(BOOL)only hardwareMustBeAvailable:(BOOL)available error:(id *)error
{
  enrolledCopy = enrolled;
  v22 = 0;
  v10 = [(LACBiometryHelper *)self deviceHasBiometryWithError:&v22];
  v11 = v22;
  if (v10)
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __73__LACBiometryHelper__isEnrolled_adminOnly_hardwareMustBeAvailable_error___block_invoke;
    v18 = &unk_1E7A96318;
    selfCopy = self;
    v20 = enrolledCopy;
    onlyCopy = only;
    v12 = (__73__LACBiometryHelper__isEnrolled_adminOnly_hardwareMustBeAvailable_error___block_invoke)(&v15);
    if (!v11)
    {
      v11 = [(LACBiometryHelper *)self _errorDisconnected:0 notEnrolled:v12 ^ 1u, v15, v16];
    }
  }

  if (error)
  {
    v13 = v11;
    *error = v11;
  }

  return v11 == 0;
}

BOOL __73__LACBiometryHelper__isEnrolled_adminOnly_hardwareMustBeAvailable_error___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _identitiesForUser:*(a1 + 40) adminOnly:*(a1 + 48)];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 count] != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_errorDisconnected:(BOOL)disconnected notEnrolled:(BOOL)enrolled
{
  if (enrolled)
  {
    v5 = [LACError errorWithCode:-7 debugDescription:@"No identities are enrolled."];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)lockoutErrorForState:(int64_t)state userId:(id)id
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__LACBiometryHelper_lockoutErrorForState_userId___block_invoke;
  v9[3] = &__block_descriptor_40_e5_q8__0l;
  v9[4] = state;
  v6 = __49__LACBiometryHelper_lockoutErrorForState_userId___block_invoke(v9);
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [LACError errorWithCode:-8 subcode:-1 debugDescription:@"Unknown lockout state"];
  }

  else
  {
    [(LACBiometryHelper *)self _lockoutErrorForExtendedState:v6 userId:id];
  }
  v7 = ;

  return v7;
}

uint64_t __49__LACBiometryHelper_lockoutErrorForState_userId___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32) - 1;
  if (v1 > 7)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return qword_1B0340300[v1];
  }
}

- (id)_biolockoutStateForUser:(id)user request:(id)request error:(id *)error
{
  userCopy = user;
  requestCopy = request;
  if (![(LACBiometryHelper *)self deviceHasBiometryWithError:error])
  {
    goto LABEL_11;
  }

  biolockoutStateCache = self->_biolockoutStateCache;
  if (!biolockoutStateCache)
  {
    objc_initWeak(&location, self);
    v11 = [LACCacheSync alloc];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __59__LACBiometryHelper__biolockoutStateForUser_request_error___block_invoke;
    v20[3] = &unk_1E7A96360;
    objc_copyWeak(&v21, &location);
    v20[4] = self;
    v12 = [(LACCacheSync *)v11 initWithTimeout:v20 block:0.5];
    v13 = self->_biolockoutStateCache;
    self->_biolockoutStateCache = v12;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
    biolockoutStateCache = self->_biolockoutStateCache;
  }

  v14 = [(LACCacheSync *)biolockoutStateCache valueWithParameter:userCopy error:error];
  if (v14)
  {
    v15 = v14;
    integerValue = [v14 integerValue];
    if (![requestCopy isPurposeUnlock])
    {
      integerValue &= 0xFFFFFFFFFFFFFF6FLL;
    }

    if ([requestCopy isPurposeApplePay])
    {
      v17 = integerValue;
    }

    else
    {
      v17 = integerValue & 0xFFFFFFFFFFFFFFDFLL;
    }

    v18 = [MEMORY[0x1E696AD98] numberWithInteger:v17];
  }

  else
  {
LABEL_11:
    v18 = 0;
  }

  return v18;
}

id __59__LACBiometryHelper__biolockoutStateForUser_request_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10 = 0;
    v7 = [*(*(a1 + 32) + 40) extendedBioLockoutState:&v10 forUser:objc_msgSend(*(a1 + 32) error:{"_uidFromUserId:", v5), a3}];
    v8 = 0;
    if (v7)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_lockoutErrorForExtendedState:(int64_t)state userId:(id)id
{
  v21 = *MEMORY[0x1E69E9840];
  idCopy = id;
  if (state)
  {
    if (state)
    {
      v11 = @"Biometry is not available before first unlock.";
      v8 = &LACErrorSubcodeBeforeFirstUnlock;
    }

    else if ((state & 2) != 0)
    {
      v11 = @"Biometry is not available in passcode lockout.";
      v8 = &LACErrorSubcodePasscodeLockout;
    }

    else if ((state & 8) != 0)
    {
      v11 = @"Identification lockout";
      v8 = &LACErrorSubcodeIdentificationLockout;
    }

    else if ((state & 4) != 0)
    {
      v11 = @"Biometry is locked out.";
      v8 = &LACErrorSubcodeBioLockout;
    }

    else if ((state & 0x90) != 0)
    {
      v7 = [(LACBiometryHelper *)self isBiometryOnForUnlock:idCopy];
      v8 = &LACErrorSubcodeDisabledForUnlock;
      v9 = &LACErrorSubcodeTokenDropped;
      if ((state & 0x80) == 0)
      {
        v9 = &LACErrorSubcodeTokenExpired;
      }

      v10 = @"Token for device unlock has been dropped.";
      if ((state & 0x80) == 0)
      {
        v10 = @"Token for device unlock has expired.";
      }

      if (v7)
      {
        v8 = v9;
        v11 = v10;
      }

      else
      {
        v11 = @"Biometry is disabled for unlock.";
      }
    }

    else
    {
      v8 = &LACErrorSubcodeDisabledForApplePay;
      v12 = &LACErrorSubcodeFaceIDInterlocked;
      if ((state & 0x40) == 0)
      {
        v12 = &LACErrorSubcodeUnknown;
      }

      v13 = @"Face ID interlocked";
      if ((state & 0x40) == 0)
      {
        v13 = @"Unknown lockout state";
      }

      if ((state & 0x20) != 0)
      {
        v11 = @"Biometry is disabled for ApplePay";
      }

      else
      {
        v8 = v12;
        v11 = v13;
      }
    }
  }

  else
  {
    v11 = 0;
    v8 = &LACErrorSubcodeNone;
  }

  if (*v8)
  {
    v14 = [LACError errorWithCode:-8 subcode:*v8 debugDescription:v11];
    v15 = LACLogBiometry();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v18[0] = 67109378;
      v18[1] = state;
      v19 = 2114;
      v20 = v14;
      _os_log_impl(&dword_1B0233000, v15, OS_LOG_TYPE_INFO, "lockoutErrorForExtendedState:%d returned %{public}@", v18, 0x12u);
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)biometryLostErrorForUser:(id)user request:(id)request
{
  v10 = 0;
  v4 = [(LACBiometryHelper *)self isLockedOutForUser:user request:request error:&v10];
  v5 = v10;
  v6 = v5;
  if (v4)
  {
    v7 = v5;
  }

  else
  {
    v7 = [LACError errorWithCode:-4 subcode:18 debugDescription:@"Biometry lost."];
  }

  v8 = v7;

  return v8;
}

- (BOOL)isLockedOutForUser:(id)user adminOnly:(BOOL)only request:(id)request error:(id *)error
{
  v52 = *MEMORY[0x1E69E9840];
  userCopy = user;
  requestCopy = request;
  v12 = LACLogBiometry();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [LACBiometryHelper isLockedOutForUser:adminOnly:request:error:];
  }

  if ([(LACBiometryHelper *)self deviceHasBiometryWithError:error])
  {
    v43 = 0;
    v44[0] = &v43;
    v44[1] = 0x3032000000;
    v44[2] = __Block_byref_object_copy__3;
    v44[3] = __Block_byref_object_dispose__3;
    v45 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__3;
    v41 = __Block_byref_object_dispose__3;
    v42 = 0;
    if (userCopy)
    {
      obj = 0;
      v13 = [(LACBiometryHelper *)self _biolockoutStateForUser:userCopy request:requestCopy error:&obj];
      objc_storeStrong(&v45, obj);
      allKeys = v38[5];
      v38[5] = v13;
    }

    else
    {
      identities = self->_identities;
      if (!identities)
      {
        [(LACBiometryHelper *)self _refreshIdentitiesDueToAccessoryChange:0];
        identities = self->_identities;
      }

      allKeys = [(NSDictionary *)identities allKeys];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __64__LACBiometryHelper_isLockedOutForUser_adminOnly_request_error___block_invoke;
      v31[3] = &unk_1E7A96388;
      onlyCopy = only;
      v31[4] = self;
      v32 = requestCopy;
      v33 = &v43;
      v34 = &v37;
      [allKeys enumerateObjectsUsingBlock:v31];
    }

    v17 = v38[5];
    if (v17)
    {
      v18 = -[LACBiometryHelper _lockoutErrorForExtendedState:userId:](self, "_lockoutErrorForExtendedState:userId:", [v17 integerValue], userCopy);
      v19 = *(v44[0] + 40);
      *(v44[0] + 40) = v18;
    }

    else
    {
      v19 = LACLogBiometry();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(LACBiometryHelper *)v44 isLockedOutForUser:v19 adminOnly:v20 request:v21 error:v22, v23, v24, v25];
      }
    }

    if (error)
    {
      *error = *(v44[0] + 40);
    }

    if (*(v44[0] + 40))
    {
      v26 = LACLogBiometry();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = *(v44[0] + 40);
        purpose = [requestCopy purpose];
        *buf = 138543874;
        v47 = userCopy;
        v48 = 2114;
        v49 = v27;
        v50 = 1024;
        v51 = purpose;
        _os_log_impl(&dword_1B0233000, v26, OS_LOG_TYPE_DEFAULT, "User %{public}@ is locked out: %{public}@, purpose:%d", buf, 0x1Cu);
      }

      v15 = *(v44[0] + 40) != 0;
    }

    else
    {
      v15 = 0;
    }

    _Block_object_dispose(&v37, 8);

    _Block_object_dispose(&v43, 8);
  }

  else
  {
    v15 = 1;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v15;
}

void __64__LACBiometryHelper_isLockedOutForUser_adminOnly_request_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = a2;
  if (*(a1 + 64) != 1 || (+[LACADMUserProvider sharedInstance](LACADMUserProvider, "sharedInstance"), v7 = objc_claimAutoreleasedReturnValue(), [v7 findUserByID:objc_msgSend(v6 searchParent:{"unsignedIntegerValue"), 0}], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isAdministrator"), v8, v7, v9))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(*(a1 + 48) + 8);
    obj = *(v12 + 40);
    v13 = [v10 _biolockoutStateForUser:v6 request:v11 error:&obj];
    objc_storeStrong((v12 + 40), obj);
    if (v13)
    {
      if (([v13 intValue] & 4) == 0 && (objc_msgSend(v13, "intValue") & 8) == 0)
      {
        v14 = *(*(a1 + 56) + 8);
LABEL_8:
        objc_storeStrong((v14 + 40), v13);
        *a4 = [v13 integerValue] == 0;
        goto LABEL_9;
      }

      v14 = *(*(a1 + 56) + 8);
      if (!*(v14 + 40))
      {
        goto LABEL_8;
      }
    }

LABEL_9:
  }
}

- (id)biometryDatabaseHashForUser:(id)user error:(id *)error
{
  userCopy = user;
  if (![(LACBiometryHelper *)self deviceHasBiometryWithError:error])
  {
    v10 = 0;
    goto LABEL_9;
  }

  v7 = [(LACBiometryHelper *)self _uidFromUserId:userCopy];
  databaseHashesByUserId = self->_databaseHashesByUserId;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
  v10 = [(NSMutableDictionary *)databaseHashesByUserId objectForKeyedSubscript:v9];

  if (v10)
  {
    if (!error)
    {
      goto LABEL_9;
    }

LABEL_8:
    *error = 0;
    goto LABEL_9;
  }

  v10 = [(BKDevice *)self->_device identitiesDatabaseHashForUser:[(LACBiometryHelper *)self _uidFromUserId:userCopy] error:error];
  if (v10)
  {
    v11 = self->_databaseHashesByUserId;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
    [(NSMutableDictionary *)v11 setObject:v10 forKey:v12];

    if (error)
    {
      goto LABEL_8;
    }
  }

LABEL_9:

  return v10;
}

- (id)catacombUUID:(id)d
{
  v13[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = 0;
  if ([(LACBiometryHelper *)self deviceHasBiometryWithError:0])
  {
    device = self->_device;
    v12 = 0;
    v7 = [(BKDevice *)device identitiesDatabaseUUIDForUser:[(LACBiometryHelper *)self _uidFromUserId:dCopy] error:&v12];
    v8 = v12;
    if (v7)
    {
      v13[0] = 0;
      v13[1] = 0;
      [v7 getUUIDBytes:v13];
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:v13 length:16];
    }

    else
    {
      v9 = LACLogBiometry();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [LACBiometryHelper catacombUUID:];
      }

      v5 = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)userPresent:(BOOL *)present error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  if (![(LACBiometryHelper *)self deviceHasBiometryWithError:error])
  {
    v17 = 0;
    goto LABEL_17;
  }

  device = self->_device;
  v22 = 0;
  v8 = [(BKDevice *)device createPresenceDetectOperationWithError:&v22];
  v9 = v22;
  if (!v8)
  {
LABEL_7:
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_19:
    v13 = 0;
    if (!error)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  [v8 setPriority:50];
  v21 = v9;
  v10 = [v8 startWithError:&v21];
  v11 = v21;

  if (v10)
  {
    v20 = v11;
    v12 = [v8 userPresentWithError:&v20];
    v9 = v20;

    [v8 cancel];
    if (v12)
    {
      *present = [v12 BOOLValue];
    }

    goto LABEL_7;
  }

  v9 = v11;
  if (!v11)
  {
    goto LABEL_19;
  }

LABEL_8:
  v13 = [LACError errorWithCode:-1000 underlyingError:v9 debugDescription:@"Failed to determine user presence status."];

  if (error)
  {
LABEL_9:
    v14 = v13;
    *error = v13;
  }

LABEL_10:
  v15 = LACLogBiometry();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v13;
    if (!v13)
    {
      v16 = [MEMORY[0x1E696AD98] numberWithBool:*present];
    }

    *buf = 138543362;
    v24 = v16;
    _os_log_impl(&dword_1B0233000, v15, OS_LOG_TYPE_DEFAULT, "User present: %{public}@", buf, 0xCu);
    if (!v13)
    {
    }
  }

  v17 = v13 == 0;
LABEL_17:
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)_protectedConfigurationForUser:(id)user
{
  userCopy = user;
  v5 = 0;
  if ([(LACBiometryHelper *)self deviceHasBiometryWithError:0])
  {
    device = self->_device;
    v10 = 0;
    v5 = [(BKDevice *)device effectiveProtectedConfigurationForUser:[(LACBiometryHelper *)self _uidFromUserId:userCopy] error:&v10];
    v7 = v10;
    if (!v5)
    {
      v8 = LACLogBiometry();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [LACBiometryHelper _protectedConfigurationForUser:];
      }
    }
  }

  return v5;
}

- (BOOL)isBiometryOnForApplePay:(id)pay
{
  v3 = [(LACBiometryHelper *)self _protectedConfigurationForUser:pay];
  applePayEnabled = [v3 applePayEnabled];
  bOOLValue = [applePayEnabled BOOLValue];

  return bOOLValue;
}

- (BOOL)isBiometryOnForUnlock:(id)unlock
{
  v3 = [(LACBiometryHelper *)self _protectedConfigurationForUser:unlock];
  unlockEnabled = [v3 unlockEnabled];
  bOOLValue = [unlockEnabled BOOLValue];

  return bOOLValue;
}

- (BOOL)isIdentificationEnabled:(id)enabled
{
  v3 = [(LACBiometryHelper *)self _protectedConfigurationForUser:enabled];
  identificationEnabled = [v3 identificationEnabled];
  bOOLValue = [identificationEnabled BOOLValue];

  return bOOLValue;
}

- (BOOL)isPeriocularMatchingEnabledForUser:(id)user
{
  v3 = [(LACBiometryHelper *)self _protectedConfigurationForUser:user];
  periocularFaceIDMatchEnabled = [v3 periocularFaceIDMatchEnabled];
  bOOLValue = [periocularFaceIDMatchEnabled BOOLValue];

  return bOOLValue;
}

- (id)_identitiesForUser:(id)user adminOnly:(BOOL)only
{
  userCopy = user;
  v7 = LACLogBiometry();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [LACBiometryHelper _identitiesForUser:adminOnly:];
  }

  if (!self->_identities || ![(LACBiometryHelper *)self _shouldCacheIdentities])
  {
    [(LACBiometryHelper *)self _refreshIdentitiesDueToAccessoryChange:0];
  }

  v8 = objc_opt_new();
  identities = self->_identities;
  if (userCopy)
  {
    v10 = [(NSDictionary *)identities objectForKeyedSubscript:userCopy];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = MEMORY[0x1E695E0F0];
    }

    [v8 setObject:v12 forKeyedSubscript:userCopy];
  }

  else
  {
    v11 = v8;
    v8 = [(NSDictionary *)identities mutableCopy];
  }

  array = [MEMORY[0x1E695DF70] array];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50__LACBiometryHelper__identitiesForUser_adminOnly___block_invoke;
  v16[3] = &unk_1E7A963B0;
  onlyCopy = only;
  v14 = array;
  v17 = v14;
  [v8 enumerateKeysAndObjectsUsingBlock:v16];

  return v14;
}

void __50__LACBiometryHelper__identitiesForUser_adminOnly___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (*(a1 + 40) != 1 || (+[LACADMUserProvider sharedInstance](LACADMUserProvider, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), [v6 findUserByID:objc_msgSend(v9 searchParent:{"unsignedIntegerValue"), 0}], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isAdministrator"), v7, v6, v8))
  {
    [*(a1 + 32) addObjectsFromArray:v5];
  }
}

- (void)_refreshIdentitiesDueToAccessoryChange:(BOOL)change
{
  v49 = *MEMORY[0x1E69E9840];
  device = self->_device;
  if (device)
  {
    changeCopy = change;
    v43 = 0;
    v6 = [(BKDevice *)device identitiesWithError:&v43];
    v7 = v43;
    v8 = v7;
    identities = self->_identities;
    if (!v6)
    {
      self->_identities = 0;

      p_super = LACLogBiometry();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [LACBiometryHelper _refreshIdentitiesDueToAccessoryChange:];
      }

      goto LABEL_26;
    }

    location = &self->_identities;
    v34 = changeCopy;
    v37 = v7;
    v36 = identities;
    v10 = objc_opt_new();
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v38 = v6;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v40;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v40 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v39 + 1) + 8 * i);
          v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v16, "userID")}];
          v18 = [v10 objectForKeyedSubscript:v17];
          v19 = v18;
          if (v18)
          {
            v20 = v18;
          }

          else
          {
            v20 = objc_opt_new();
          }

          v21 = v20;

          [v21 addObject:v16];
          v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v16, "userID")}];
          [v10 setObject:v21 forKey:v22];
        }

        v13 = [v11 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v13);
    }

    objc_storeStrong(location, v10);
    p_super = &v36->super;
    if (-[LACBiometryHelper _shouldCacheIdentities](self, "_shouldCacheIdentities") || ([*location isEqualToDictionary:v36] & 1) == 0)
    {
      v24 = LACLogBiometry();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *location;
        *buf = 138543618;
        v45 = v36;
        v46 = 2114;
        v47 = v25;
        _os_log_impl(&dword_1B0233000, v24, OS_LOG_TYPE_DEFAULT, "Identities updated from %{public}@ to %{public}@", buf, 0x16u);
      }
    }

    delegate = [(LACBiometryHelper *)self delegate];
    currentMatchingOperationUserId = [delegate currentMatchingOperationUserId];

    v6 = v38;
    if (currentMatchingOperationUserId)
    {
      if ([currentMatchingOperationUserId intValue] == -1)
      {
        if ([v10 count])
        {
          goto LABEL_23;
        }
      }

      else
      {
        v28 = [(NSDictionary *)v36 objectForKeyedSubscript:currentMatchingOperationUserId];
        if (!v28)
        {
          goto LABEL_23;
        }

        v29 = v28;
        v30 = [v10 objectForKeyedSubscript:currentMatchingOperationUserId];

        if (v30)
        {
          goto LABEL_23;
        }
      }

      delegate2 = [(LACBiometryHelper *)self delegate];
      v32 = [(LACBiometryHelper *)self _errorDisconnected:v34 notEnrolled:1];
      [delegate2 unEnrolledWithError:v32];
    }

LABEL_23:
    [(LACBiometryHelper *)self _clearHashes];

    v8 = v37;
LABEL_26:
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)_handleEnrollmentChangedNotification
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = MEMORY[0x1E695DEC8];
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v5 = [v3 arrayWithArray:allObjects];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 biometryEnrolledStateDidChangeForHelper:self];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_handleLockoutStateChangedNotification
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = MEMORY[0x1E695DEC8];
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v5 = [v3 arrayWithArray:allObjects];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 biometryLockoutStateDidChangeForHelper:self];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_handleAccessoriesChangedNotification
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = MEMORY[0x1E695DEC8];
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v5 = [v3 arrayWithArray:allObjects];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 biometryAccessoriesDidChangeForHelper:self];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)resetBiometry
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1B0233000, v0, v1, "dropAllUnlockTokens failed: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (id)dumpStatus
{
  v27[1] = *MEMORY[0x1E69E9840];
  v26 = @"biometryType";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[LACBiometryHelper biometryType](self, "biometryType")}];
  v27[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];

  v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v4];
  v24 = 0;
  v6 = [(LACBiometryHelper *)self isAnyUserEnrolledWithError:&v24];
  v7 = v24;
  if (v6)
  {
    v18 = v7;
    v19 = v4;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    allKeys = [(NSDictionary *)self->_identities allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [(LACBiometryHelper *)self _dumpEnvironmentForUser:v13];
          v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"user %@", v13];
          [v5 setObject:v14 forKey:v15];
        }

        v10 = [allKeys countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
    }

    v7 = v18;
    v4 = v19;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_dumpEnvironmentForUser:(id)user
{
  v28[8] = *MEMORY[0x1E69E9840];
  userCopy = user;
  v27[0] = @"catacombUUID";
  v22 = [(LACBiometryHelper *)self catacombUUID:userCopy];
  v5 = [v22 description];
  v6 = v5;
  v7 = @"nil";
  if (v5)
  {
    v7 = v5;
  }

  v28[0] = v7;
  v27[1] = @"biometryDbHash";
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __45__LACBiometryHelper__dumpEnvironmentForUser___block_invoke;
  v25[3] = &unk_1E7A963D8;
  v25[4] = self;
  v8 = userCopy;
  v26 = v8;
  v21 = __45__LACBiometryHelper__dumpEnvironmentForUser___block_invoke(v25);
  v28[1] = v21;
  v27[2] = @"identities";
  v9 = MEMORY[0x1E696AD98];
  v10 = [(NSDictionary *)self->_identities objectForKeyedSubscript:v8];
  v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
  v28[2] = v11;
  v27[3] = @"lockoutState";
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __45__LACBiometryHelper__dumpEnvironmentForUser___block_invoke_2;
  v23[3] = &unk_1E7A96400;
  v23[4] = self;
  v24 = v8;
  v12 = v8;
  v13 = __45__LACBiometryHelper__dumpEnvironmentForUser___block_invoke_2(v23);
  v28[3] = v13;
  v27[4] = @"unlock";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[LACBiometryHelper isBiometryOnForUnlock:](self, "isBiometryOnForUnlock:", v12)}];
  v28[4] = v14;
  v27[5] = @"ApplePay";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[LACBiometryHelper isBiometryOnForApplePay:](self, "isBiometryOnForApplePay:", v12)}];
  v28[5] = v15;
  v27[6] = @"periocular";
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[LACBiometryHelper isPeriocularMatchingEnabledForUser:](self, "isPeriocularMatchingEnabledForUser:", v12)}];
  v28[6] = v16;
  v27[7] = @"identification";
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[LACBiometryHelper isIdentificationEnabled:](self, "isIdentificationEnabled:", v12)}];
  v28[7] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:8];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

id __45__LACBiometryHelper__dumpEnvironmentForUser___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v10 = 0;
  v3 = [v2 biometryDatabaseHashForUser:v1 error:&v10];
  v4 = v10;
  v5 = [v3 description];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v4 description];
  }

  v8 = v7;

  return v8;
}

id __45__LACBiometryHelper__dumpEnvironmentForUser___block_invoke_2(uint64_t a1)
{
  v9 = 0;
  v1 = *(*(a1 + 32) + 40);
  v2 = [*(a1 + 32) _uidFromUserId:*(a1 + 40)];
  v8 = 0;
  v3 = [v1 extendedBioLockoutState:&v9 forUser:v2 error:&v8];
  v4 = v8;
  v5 = v4;
  if (v3)
  {
    [MEMORY[0x1E696AD98] numberWithInteger:v9];
  }

  else
  {
    [v4 description];
  }
  v6 = ;

  return v6;
}

- (LACBiometryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_shouldRetryAvailableDevices
{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = 67109120;
  v4[1] = [self deviceType];
  _os_log_fault_impl(&dword_1B0233000, a2, OS_LOG_TYPE_FAULT, "Unexpected biometry type: %d", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_setupWithFault:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(&dword_1B0233000, v0, OS_LOG_TYPE_FAULT, "%{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)isLockedOutForUser:adminOnly:request:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  v4 = 2114;
  v5 = v0;
  _os_log_debug_impl(&dword_1B0233000, v1, OS_LOG_TYPE_DEBUG, "isLockedOutForUser() - UID: %{public}@, request: %{public}@.", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)isLockedOutForUser:(uint64_t)a3 adminOnly:(uint64_t)a4 request:(uint64_t)a5 error:(uint64_t)a6 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(*a1 + 40));
  OUTLINED_FUNCTION_1(&dword_1B0233000, a2, a3, "bioLockoutState failed: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)catacombUUID:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1B0233000, v0, v1, "Failed to determine catacomb UUID: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_protectedConfigurationForUser:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  v4 = 2114;
  v5 = v0;
  _os_log_error_impl(&dword_1B0233000, v1, OS_LOG_TYPE_ERROR, "Failed to get protected configuration for user %{public}@: %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_identitiesForUser:adminOnly:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  v4 = 1026;
  v5 = v0;
  _os_log_debug_impl(&dword_1B0233000, v1, OS_LOG_TYPE_DEBUG, "_identitiesForUser() - UID: %{public}@ adminOnly: %{public}d", v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_refreshIdentitiesDueToAccessoryChange:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1B0233000, v0, v1, "Failed to read identities: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end