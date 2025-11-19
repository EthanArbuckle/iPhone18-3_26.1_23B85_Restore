@interface DMCCodeUtilities
+ (BOOL)_checkValidityOfStaticCode:(__SecCode *)a3 path:(id)a4;
+ (BOOL)_verifyCodeIdentity:(id)a3 composedIdentifier:(id)a4;
+ (BOOL)_verifyCodeIdentity:(id)a3 other:(id)a4;
+ (BOOL)verifySignatureForAuditToken:(id *)a3 codeIdentity:(id)a4;
+ (BOOL)verifySignatureForAuditToken:(id *)a3 composedIdentifier:(id)a4;
+ (BOOL)verifySignatureForPath:(id)a3 codeIdentity:(id)a4;
+ (BOOL)verifySignatureForPath:(id)a3 composedIdentifier:(id)a4;
+ (__SecCode)_staticCodeFromPath:(id)a3;
+ (id)_codeIdentityForSigningInfo:(id)a3 path:(id)a4;
+ (id)_codeIdentityFromSecTask:(__SecTask *)a3 path:(id)a4;
+ (id)_codeSigningIDFromSecTask:(__SecTask *)a3;
+ (id)_signingInfoForStaticCode:(__SecCode *)a3 path:(id)a4;
+ (id)_teamIDFromSecTask:(__SecTask *)a3;
+ (id)codeIdentityForAuditToken:(id *)a3;
+ (id)codeIdentityForPath:(id)a3;
@end

@implementation DMCCodeUtilities

+ (id)codeIdentityForPath:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 _staticCodeFromPath:v4];
  if (v5)
  {
    v6 = v5;
    v7 = [a1 _signingInfoForStaticCode:v5 path:v4];
    CFRelease(v6);
    if (v7)
    {
      v8 = [a1 _codeIdentityForSigningInfo:v7 path:v4];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v13 = *DMCLogObjects();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v16 = 138543362;
          v17 = v4;
          _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_ERROR, "Could not create code identity for path: %{public}@", &v16, 0xCu);
        }
      }
    }

    else
    {
      v12 = *DMCLogObjects();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v16 = 138543362;
        v17 = v4;
        _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_ERROR, "Could not create signing info for path: %{public}@", &v16, 0xCu);
      }

      v9 = 0;
    }
  }

  else
  {
    v11 = *DMCLogObjects();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = 138543362;
      v17 = v4;
      _os_log_impl(&dword_1B1630000, v11, OS_LOG_TYPE_ERROR, "Could not create static code ref for path: %{public}@", &v16, 0xCu);
    }

    v9 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)codeIdentityForAuditToken:(id *)a3
{
  v5 = *MEMORY[0x1E695E480];
  v6 = *&a3->var0[4];
  *v17.val = *a3->var0;
  *&v17.val[4] = v6;
  v7 = SecTaskCreateWithAuditToken(v5, &v17);
  if (v7)
  {
    v8 = v7;
    v9 = *&a3->var0[4];
    *v17.val = *a3->var0;
    *&v17.val[4] = v9;
    v10 = [a1 _pathFromAuditToken:&v17];
    if (v10)
    {
      v11 = [a1 _codeIdentityFromSecTask:v8 path:v10];
      CFRelease(v8);
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v15 = *DMCLogObjects();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v17.val[0]) = 0;
          _os_log_impl(&dword_1B1630000, v15, OS_LOG_TYPE_ERROR, "Could not create code identity using audit token", &v17, 2u);
        }
      }
    }

    else
    {
      v14 = *DMCLogObjects();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v17.val[0]) = 0;
        _os_log_impl(&dword_1B1630000, v14, OS_LOG_TYPE_ERROR, "Failed to get path from audit token", &v17, 2u);
      }

      v11 = 0;
    }
  }

  else
  {
    v13 = *DMCLogObjects();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17.val[0]) = 0;
      _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_ERROR, "Failed to create SecTask from audit token", &v17, 2u);
    }

    v11 = 0;
  }

  return v11;
}

+ (BOOL)verifySignatureForPath:(id)a3 composedIdentifier:(id)a4
{
  v6 = a4;
  v7 = [a1 codeIdentityForPath:a3];
  if (v7)
  {
    v8 = [a1 _verifyCodeIdentity:v7 composedIdentifier:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)verifySignatureForPath:(id)a3 codeIdentity:(id)a4
{
  v6 = a4;
  v7 = [a1 codeIdentityForPath:a3];
  if (v7)
  {
    v8 = [a1 _verifyCodeIdentity:v7 other:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)verifySignatureForAuditToken:(id *)a3 composedIdentifier:(id)a4
{
  v6 = a4;
  v7 = *&a3->var0[4];
  v11[0] = *a3->var0;
  v11[1] = v7;
  v8 = [a1 codeIdentityForAuditToken:v11];
  if (v8)
  {
    v9 = [a1 _verifyCodeIdentity:v8 composedIdentifier:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)verifySignatureForAuditToken:(id *)a3 codeIdentity:(id)a4
{
  v6 = a4;
  v7 = *&a3->var0[4];
  v11[0] = *a3->var0;
  v11[1] = v7;
  v8 = [a1 codeIdentityForAuditToken:v11];
  if (v8)
  {
    v9 = [a1 _verifyCodeIdentity:v8 other:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (__SecCode)_staticCodeFromPath:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
  staticCode = 0;
  v5 = SecStaticCodeCreateWithPath(v4, 0, &staticCode);
  v6 = staticCode;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = staticCode == 0;
  }

  if (v7)
  {
    v8 = v5;
    v9 = *DMCLogObjects();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = MEMORY[0x1E696AD98];
      v11 = v9;
      v12 = [v10 numberWithInt:v8];
      *buf = 138543618;
      v17 = v3;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_1B1630000, v11, OS_LOG_TYPE_ERROR, "Failed to create SecStaticCodeRef from path: %{public}@, error: %@", buf, 0x16u);
    }

    if (staticCode)
    {
      CFRelease(staticCode);
    }

    v6 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (BOOL)_checkValidityOfStaticCode:(__SecCode *)a3 path:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = SecStaticCodeCheckValidity(a3, 0, 0);
  if (v6 == -66996)
  {
    v12 = *DMCLogObjects();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v28 = v5;
      _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_DEBUG, "Need to validate path using MIS: %{public}@", buf, 0xCu);
    }

    v13 = *MEMORY[0x1E695E4D0];
    v14 = *MEMORY[0x1E69E5840];
    v25[0] = *MEMORY[0x1E69E5830];
    v25[1] = v14;
    v26[0] = v13;
    v26[1] = v13;
    v25[2] = *MEMORY[0x1E69E5818];
    v26[2] = *MEMORY[0x1E695E4C0];
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
    v16 = MISValidateSignature();
    if (v16)
    {
      v17 = v16;
      v18 = *DMCLogObjects();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = MEMORY[0x1E696AD98];
        v20 = v18;
        v21 = [v19 numberWithInt:v17];
        *buf = 138412290;
        v28 = v21;
        _os_log_impl(&dword_1B1630000, v20, OS_LOG_TYPE_ERROR, "Failed to validate path via MISValidateSignature error: %@", buf, 0xCu);
      }

      goto LABEL_11;
    }

LABEL_13:
    v22 = 1;
    goto LABEL_14;
  }

  v7 = v6;
  if (!v6)
  {
    goto LABEL_13;
  }

  v8 = *DMCLogObjects();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = MEMORY[0x1E696AD98];
    v10 = v8;
    v11 = [v9 numberWithInt:v7];
    *buf = 138412290;
    v28 = v11;
    _os_log_impl(&dword_1B1630000, v10, OS_LOG_TYPE_ERROR, "Failed to validate SecStaticCodeRef error: %@", buf, 0xCu);
  }

LABEL_11:
  v22 = 0;
LABEL_14:

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

+ (id)_signingInfoForStaticCode:(__SecCode *)a3 path:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  if (![a1 _checkValidityOfStaticCode:a3 path:a4])
  {
    goto LABEL_8;
  }

  information = 0;
  v5 = SecCodeCopySigningInformation(a3, 2u, &information);
  if (v5 || (v6 = information) == 0)
  {
    v7 = *DMCLogObjects();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = MEMORY[0x1E696AD98];
      v9 = v7;
      v10 = [v8 numberWithInt:v5];
      *buf = 138412290;
      v15 = v10;
      _os_log_impl(&dword_1B1630000, v9, OS_LOG_TYPE_ERROR, "Failed to copy signing info error: %@", buf, 0xCu);
    }

    v6 = information;
    if (information)
    {
      CFRelease(information);
LABEL_8:
      v6 = 0;
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)_codeIdentityForSigningInfo:(id)a3 path:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E697B080]];
  if (v7)
  {
    v8 = [v5 objectForKeyedSubscript:*MEMORY[0x1E697B070]];
    if (v8)
    {
      v9 = [[DMCCodeIdentity alloc] initWithCodeSigningID:v8 teamID:v7 path:v6];
    }

    else
    {
      v11 = *DMCLogObjects();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_impl(&dword_1B1630000, v11, OS_LOG_TYPE_ERROR, "Could not look up code signing identifier using signing info", v13, 2u);
      }

      v9 = 0;
    }
  }

  else
  {
    v10 = *DMCLogObjects();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v10, OS_LOG_TYPE_ERROR, "Could not look up team identifier using signing info", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

+ (id)_codeIdentityFromSecTask:(__SecTask *)a3 path:(id)a4
{
  v6 = a4;
  v7 = [a1 _teamIDFromSecTask:a3];
  if (v7)
  {
    v8 = [a1 _codeSigningIDFromSecTask:a3];
    if (v8)
    {
      v9 = [[DMCCodeIdentity alloc] initWithCodeSigningID:v8 teamID:v7 path:v6];
    }

    else
    {
      v11 = *DMCLogObjects();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_impl(&dword_1B1630000, v11, OS_LOG_TYPE_ERROR, "Could not look up code signing identifier using sec task", v13, 2u);
      }

      v9 = 0;
    }
  }

  else
  {
    v10 = *DMCLogObjects();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v10, OS_LOG_TYPE_ERROR, "Could not look up team identifier using signing info", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

+ (id)_teamIDFromSecTask:(__SecTask *)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = SecTaskCopyTeamIdentifier();
  if (v3)
  {
    v4 = *DMCLogObjects();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v9 = v3;
      _os_log_impl(&dword_1B1630000, v4, OS_LOG_TYPE_DEBUG, "Looked up team ID %{public}@ using SecTask", buf, 0xCu);
    }
  }

  else
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_DEBUG, "Empty team ID using SecTask", buf, 2u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)_codeSigningIDFromSecTask:(__SecTask *)a3
{
  v16 = *MEMORY[0x1E69E9840];
  error = 0;
  v3 = SecTaskCopySigningIdentifier(a3, &error);
  v4 = error;
  if (v3)
  {
    if (error)
    {
      CFRelease(error);
    }

    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v15 = v3;
      _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_DEBUG, "Looked up code signing ID %{public}@ using SecTask", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v6 = *DMCLogObjects();
  if (v4)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 138543362;
    v15 = error;
    v7 = "Failed to look up code signing ID using SecTask with error: %{public}@";
    v8 = v6;
    v9 = OS_LOG_TYPE_ERROR;
    v10 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v7 = "Empty code signing ID using SecTask";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEBUG;
    v10 = 2;
  }

  _os_log_impl(&dword_1B1630000, v8, v9, v7, buf, v10);
LABEL_12:
  if (error)
  {
    CFRelease(error);
  }

LABEL_14:
  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (BOOL)_verifyCodeIdentity:(id)a3 composedIdentifier:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 teamID];

  if (!v7)
  {
    v15 = *DMCLogObjects();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v22 = 138543362;
      v23 = v6;
      v16 = "Missing team-id when verifying composed identifier: %{public}@";
      v17 = v15;
      v18 = 12;
LABEL_12:
      _os_log_impl(&dword_1B1630000, v17, OS_LOG_TYPE_ERROR, v16, &v22, v18);
    }

LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  v8 = [v5 codeSigningID];
  v9 = [v6 bundleID];
  if (([v8 isEqualToString:v9] & 1) == 0)
  {

LABEL_10:
    v19 = *DMCLogObjects();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = 138543618;
      v23 = v5;
      v24 = 2114;
      v25 = v6;
      v16 = "Cannot verify identifiers: %{public}@ - %{public}@";
      v17 = v19;
      v18 = 22;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v10 = [v5 teamID];
  v11 = [v6 teamID];
  v12 = [v10 isEqualToString:v11];

  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = *DMCLogObjects();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_DEBUG, "Verified code signing identifier and composed identifier", &v22, 2u);
  }

  v14 = 1;
LABEL_14:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (BOOL)_verifyCodeIdentity:(id)a3 other:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 verifyAgainst:v6];
  v8 = *DMCLogObjects();
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v15) = 0;
      v9 = "Verified code signing identifiers";
      v10 = v8;
      v11 = OS_LOG_TYPE_DEBUG;
      v12 = 2;
LABEL_6:
      _os_log_impl(&dword_1B1630000, v10, v11, v9, &v15, v12);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v15 = 138543618;
    v16 = v5;
    v17 = 2114;
    v18 = v6;
    v9 = "Cannot verify code signing identifiers: %{public}@ - %{public}@";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_6;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

@end