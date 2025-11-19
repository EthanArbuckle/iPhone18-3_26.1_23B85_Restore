@interface MBManagedPolicy
+ (MBManagedPolicy)sharedPolicy;
- (BOOL)_checkBehaviorOption:(id)a3 description:(id)a4 allowedOut:(BOOL *)a5 error:(id *)a6;
- (BOOL)_checkIfAnyBackupOrRestoreIsAllowed:(id)a3 error:(id *)a4;
- (BOOL)checkIfCloudAccountModificationIsAllowed:(id *)a3;
- (BOOL)checkIfCloudBackupIsAllowed:(id *)a3;
- (BOOL)checkIfDiagnosticTelemetryIsAllowed:(id *)a3;
- (BOOL)checkIfDriveBackupIsAllowed:(id *)a3;
- (BOOL)checkIfDriveRestoreIsAllowed:(id *)a3;
- (BOOL)checkIfEnablingCloudBackupIsAllowed:(id *)a3;
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

    v5 = [MEMORY[0x1E69ADFB8] sharedConnection];
    profileConnection = v2->_profileConnection;
    v2->_profileConnection = v5;
  }

  return v2;
}

- (BOOL)checkIfDriveBackupIsAllowed:(id *)a3
{
  v8 = 1;
  v5 = [(MBBehaviorOptions *)self->_behaviorOptions allowDriveBackup];
  v6 = [(MBManagedPolicy *)self _checkBehaviorOption:v5 description:@"Drive backup" allowedOut:&v8 error:a3];

  if (v6)
  {
    [(MBManagedPolicy *)self _checkIfAnyBackupOrRestoreIsAllowed:@"Drive backup" error:a3];
  }

  return v8;
}

- (BOOL)checkIfDriveRestoreIsAllowed:(id *)a3
{
  v8 = 1;
  v5 = [(MBBehaviorOptions *)self->_behaviorOptions allowDriveRestore];
  v6 = [(MBManagedPolicy *)self _checkBehaviorOption:v5 description:@"Drive restore" allowedOut:&v8 error:a3];

  if (v6)
  {
    [(MBManagedPolicy *)self _checkIfAnyBackupOrRestoreIsAllowed:@"Drive restore" error:a3];
  }

  return v8;
}

- (BOOL)checkIfCloudBackupIsAllowed:(id *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v21 = 1;
  v5 = [(MBBehaviorOptions *)self->_behaviorOptions allowCloudBackup];
  v6 = [(MBManagedPolicy *)self _checkBehaviorOption:v5 description:@"Cloud backup" allowedOut:&v21 error:a3];

  if (v6)
  {
    if ([(MBManagedPolicy *)self _checkIfAnyBackupOrRestoreIsAllowed:@"Cloud backup" error:a3])
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

      if (a3)
      {
        v17 = v7;
        *a3 = v7;
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

- (BOOL)checkIfEnablingCloudBackupIsAllowed:(id *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v21 = 1;
  v5 = [(MBBehaviorOptions *)self->_behaviorOptions allowEnablingCloudBackup];
  v6 = [(MBManagedPolicy *)self _checkBehaviorOption:v5 description:@"Enabling cloud backup" allowedOut:&v21 error:a3];

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

      if (a3)
      {
        v17 = v7;
        *a3 = v7;
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

- (BOOL)checkIfCloudAccountModificationIsAllowed:(id *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v21 = 1;
  v5 = [(MBBehaviorOptions *)self->_behaviorOptions allowCloudAccountModification];
  v6 = [(MBManagedPolicy *)self _checkBehaviorOption:v5 description:@"Cloud account modification" allowedOut:&v21 error:a3];

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

      if (a3)
      {
        v17 = v7;
        *a3 = v7;
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

- (BOOL)checkIfDiagnosticTelemetryIsAllowed:(id *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [(MCProfileConnection *)self->_profileConnection isDiagnosticSubmissionAllowed];
  if ((v4 & 1) == 0)
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

    if (a3)
    {
      v15 = v5;
      *a3 = v5;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)_checkIfAnyBackupOrRestoreIsAllowed:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    [MBManagedPolicy _checkIfAnyBackupOrRestoreIsAllowed:error:];
  }

  v7 = v6;
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

    if (a4)
    {
      v19 = v8;
      *a4 = v8;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v8 == 0;
}

- (BOOL)_checkBehaviorOption:(id)a3 description:(id)a4 allowedOut:(BOOL *)a5 error:(id *)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    [MBManagedPolicy _checkBehaviorOption:description:allowedOut:error:];
  }

  if (!a5)
  {
    [MBManagedPolicy _checkBehaviorOption:description:allowedOut:error:];
  }

  v11 = v10;
  if (v9)
  {
    if ([v9 BOOLValue])
    {
      *a5 = 1;
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
      *a5 = 0;
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

      if (a6)
      {
        v28 = v12;
        *a6 = v12;
      }
    }
  }

  v29 = *MEMORY[0x1E69E9840];
  return v9 == 0;
}

@end