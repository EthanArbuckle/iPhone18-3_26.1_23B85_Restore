@interface MBManagedPolicy
+ (MBManagedPolicy)sharedPolicy;
- (BOOL)_checkBehaviorOption:(id)option description:(id)description allowedOut:(BOOL *)out error:(id *)error;
- (BOOL)_checkIfAnyBackupOrRestoreIsAllowed:(id)allowed error:(id *)error;
- (BOOL)checkIfCloudAccountModificationIsAllowed:(id *)allowed;
- (BOOL)checkIfCloudBackupIsAllowed:(id *)allowed;
- (BOOL)checkIfDiagnosticTelemetryIsAllowed:(id *)allowed;
- (BOOL)checkIfDriveBackupIsAllowed:(id *)allowed;
- (BOOL)checkIfDriveRestoreIsAllowed:(id *)allowed;
- (BOOL)checkIfEnablingCloudBackupIsAllowed:(id *)allowed;
- (id)_init;
@end

@implementation MBManagedPolicy

+ (MBManagedPolicy)sharedPolicy
{
  if (sharedPolicy_onceToken != -1)
  {
    +[MBManagedPolicy sharedPolicy];
  }

  v3 = sharedPolicy_sharedInstance;

  return v3;
}

uint64_t __31__MBManagedPolicy_sharedPolicy__block_invoke()
{
  sharedPolicy_sharedInstance = [[MBManagedPolicy alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = MBManagedPolicy;
  v2 = [(MBManagedPolicy *)&v8 init];
  if (v2)
  {
    v3 = +[MBBehaviorOptions sharedOptions];
    behaviorOptions = v2->_behaviorOptions;
    v2->_behaviorOptions = v3;

    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    profileConnection = v2->_profileConnection;
    v2->_profileConnection = mEMORY[0x1E69ADFB8];
  }

  return v2;
}

- (BOOL)checkIfDriveBackupIsAllowed:(id *)allowed
{
  v8 = 1;
  allowDriveBackup = [(MBBehaviorOptions *)self->_behaviorOptions allowDriveBackup];
  v6 = [(MBManagedPolicy *)self _checkBehaviorOption:allowDriveBackup description:@"Drive backup" allowedOut:&v8 error:allowed];

  if (v6)
  {
    [(MBManagedPolicy *)self _checkIfAnyBackupOrRestoreIsAllowed:@"Drive backup" error:allowed];
  }

  return v8;
}

- (BOOL)checkIfDriveRestoreIsAllowed:(id *)allowed
{
  v8 = 1;
  allowDriveRestore = [(MBBehaviorOptions *)self->_behaviorOptions allowDriveRestore];
  v6 = [(MBManagedPolicy *)self _checkBehaviorOption:allowDriveRestore description:@"Drive restore" allowedOut:&v8 error:allowed];

  if (v6)
  {
    [(MBManagedPolicy *)self _checkIfAnyBackupOrRestoreIsAllowed:@"Drive restore" error:allowed];
  }

  return v8;
}

- (BOOL)checkIfCloudBackupIsAllowed:(id *)allowed
{
  v24 = *MEMORY[0x1E69E9840];
  v21 = 1;
  allowCloudBackup = [(MBBehaviorOptions *)self->_behaviorOptions allowCloudBackup];
  v6 = [(MBManagedPolicy *)self _checkBehaviorOption:allowCloudBackup description:@"Cloud backup" allowedOut:&v21 error:allowed];

  if (v6)
  {
    if ([(MBManagedPolicy *)self _checkIfAnyBackupOrRestoreIsAllowed:@"Cloud backup" error:allowed])
    {
      if ([(MCProfileConnection *)self->_profileConnection effectiveBoolValueForSetting:*MEMORY[0x1E69ADE20]]!= 2)
      {
        v18 = 1;
        goto LABEL_11;
      }

      v7 = [MBError errorWithCode:22 format:@"Cloud backup is disabled by MDM"];
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v7 description];
        *buf = 138412290;
        v23 = v9;
        _os_log_impl(&dword_1DEB5D000, v8, OS_LOG_TYPE_DEFAULT, "=managed-policy= %@", buf, 0xCu);

        v10 = [v7 description];
        _MBLog(@"Df", "=managed-policy= %@", v11, v12, v13, v14, v15, v16, v10);
      }

      if (allowed)
      {
        v17 = v7;
        *allowed = v7;
      }
    }

    v18 = 0;
  }

  else
  {
    v18 = v21;
  }

LABEL_11:
  v19 = *MEMORY[0x1E69E9840];
  return v18 & 1;
}

- (BOOL)checkIfEnablingCloudBackupIsAllowed:(id *)allowed
{
  v24 = *MEMORY[0x1E69E9840];
  v21 = 1;
  allowEnablingCloudBackup = [(MBBehaviorOptions *)self->_behaviorOptions allowEnablingCloudBackup];
  v6 = [(MBManagedPolicy *)self _checkBehaviorOption:allowEnablingCloudBackup description:@"Enabling cloud backup" allowedOut:&v21 error:allowed];

  if (v6)
  {
    if ([(MCProfileConnection *)self->_profileConnection isSettingLockedDownByRestrictions:*MEMORY[0x1E69ADE20]])
    {
      v7 = [MBError errorWithCode:22 format:@"Cloud backup enabling is disabled by MDM"];
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v7 description];
        *buf = 138412290;
        v23 = v9;
        _os_log_impl(&dword_1DEB5D000, v8, OS_LOG_TYPE_DEFAULT, "=managed-policy= %@", buf, 0xCu);

        v10 = [v7 description];
        _MBLog(@"Df", "=managed-policy= %@", v11, v12, v13, v14, v15, v16, v10);
      }

      if (allowed)
      {
        v17 = v7;
        *allowed = v7;
      }

      v18 = 0;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = v21;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18 & 1;
}

- (BOOL)checkIfCloudAccountModificationIsAllowed:(id *)allowed
{
  v24 = *MEMORY[0x1E69E9840];
  v21 = 1;
  allowCloudAccountModification = [(MBBehaviorOptions *)self->_behaviorOptions allowCloudAccountModification];
  v6 = [(MBManagedPolicy *)self _checkBehaviorOption:allowCloudAccountModification description:@"Cloud account modification" allowedOut:&v21 error:allowed];

  if (v6)
  {
    if ([(MCProfileConnection *)self->_profileConnection effectiveBoolValueForSetting:*MEMORY[0x1E69ADD70]]== 2)
    {
      v7 = [MBError errorWithCode:22 format:@"Cloud account modification is disabled by MDM"];
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v7 description];
        *buf = 138412290;
        v23 = v9;
        _os_log_impl(&dword_1DEB5D000, v8, OS_LOG_TYPE_DEFAULT, "=managed-policy= %@", buf, 0xCu);

        v10 = [v7 description];
        _MBLog(@"Df", "=managed-policy= %@", v11, v12, v13, v14, v15, v16, v10);
      }

      if (allowed)
      {
        v17 = v7;
        *allowed = v7;
      }

      v18 = 0;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = v21;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18 & 1;
}

- (BOOL)checkIfDiagnosticTelemetryIsAllowed:(id *)allowed
{
  v20 = *MEMORY[0x1E69E9840];
  isDiagnosticSubmissionAllowed = [(MCProfileConnection *)self->_profileConnection isDiagnosticSubmissionAllowed];
  if ((isDiagnosticSubmissionAllowed & 1) == 0)
  {
    v5 = [MBError errorWithCode:22 format:@"Diagnostic reporting is disabled by MDM"];
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 description];
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&dword_1DEB5D000, v6, OS_LOG_TYPE_DEFAULT, "=managed-policy= %@", buf, 0xCu);

      v8 = [v5 description];
      _MBLog(@"Df", "=managed-policy= %@", v9, v10, v11, v12, v13, v14, v8);
    }

    if (allowed)
    {
      v15 = v5;
      *allowed = v5;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return isDiagnosticSubmissionAllowed;
}

- (BOOL)_checkIfAnyBackupOrRestoreIsAllowed:(id)allowed error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  allowedCopy = allowed;
  if (!allowedCopy)
  {
    [MBManagedPolicy _checkIfAnyBackupOrRestoreIsAllowed:error:];
  }

  v7 = allowedCopy;
  if ([(MCProfileConnection *)self->_profileConnection isEphemeralMultiUser])
  {
    v8 = [MBError errorWithCode:22 format:@"%@ is disabled for this device in EDU mode", v7];
  }

  else
  {
    v8 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [MEMORY[0x1E69AD428] isRapidReturnToService])
  {
    v9 = [MBError errorWithCode:22 format:@"%@ is disabled for this device in RRTS mode", v7];

    v8 = v9;
  }

  if (v8)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v8 description];
      *buf = 138412290;
      v23 = v11;
      _os_log_impl(&dword_1DEB5D000, v10, OS_LOG_TYPE_INFO, "=managed-policy= %@", buf, 0xCu);

      v12 = [v8 description];
      _MBLog(@"I ", "=managed-policy= %@", v13, v14, v15, v16, v17, v18, v12);
    }

    if (error)
    {
      v19 = v8;
      *error = v8;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v8 == 0;
}

- (BOOL)_checkBehaviorOption:(id)option description:(id)description allowedOut:(BOOL *)out error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  optionCopy = option;
  descriptionCopy = description;
  if (!descriptionCopy)
  {
    [MBManagedPolicy _checkBehaviorOption:description:allowedOut:error:];
  }

  if (!out)
  {
    [MBManagedPolicy _checkBehaviorOption:description:allowedOut:error:];
  }

  v11 = descriptionCopy;
  if (optionCopy)
  {
    if ([optionCopy BOOLValue])
    {
      *out = 1;
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v32 = v11;
        _os_log_impl(&dword_1DEB5D000, v12, OS_LOG_TYPE_INFO, "=managed-policy= %@ force allowed by behavior option", buf, 0xCu);
        _MBLog(@"I ", "=managed-policy= %@ force allowed by behavior option", v13, v14, v15, v16, v17, v18, v11);
      }
    }

    else
    {
      *out = 0;
      v12 = [MBError errorWithCode:555 format:@"%@ force disallowed by behavior option", v11];
      v19 = MBGetDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [v12 description];
        *buf = 138412290;
        v32 = v20;
        _os_log_impl(&dword_1DEB5D000, v19, OS_LOG_TYPE_INFO, "=managed-policy= %@", buf, 0xCu);

        v21 = [v12 description];
        _MBLog(@"I ", "=managed-policy= %@", v22, v23, v24, v25, v26, v27, v21);
      }

      if (error)
      {
        v28 = v12;
        *error = v12;
      }
    }
  }

  v29 = *MEMORY[0x1E69E9840];
  return optionCopy == 0;
}

@end