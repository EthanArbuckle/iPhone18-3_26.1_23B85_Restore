@interface DMCBundleLookupUtilities
+ (id)bundleIDFromAuditToken:(id *)a3;
+ (id)teamIDFromAuditToken:(id *)a3;
@end

@implementation DMCBundleLookupUtilities

+ (id)bundleIDFromAuditToken:(id *)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v4 = *&a3->var0[4];
  *buf.val = *a3->var0;
  *&buf.val[4] = v4;
  if (!CPCopyBundleIdentifierAndTeamFromAuditToken())
  {
    v10 = *MEMORY[0x1E695E480];
    v11 = *&a3->var0[4];
    *buf.val = *a3->var0;
    *&buf.val[4] = v11;
    v12 = SecTaskCreateWithAuditToken(v10, &buf);
    if (!v12)
    {
      v19 = *DMCLogObjects();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      LOWORD(buf.val[0]) = 0;
      v6 = "Failed to create SecTask from audit token";
      v7 = v19;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 2;
      goto LABEL_4;
    }

    v13 = v12;
    cf = 0;
    v14 = SecTaskCopySigningIdentifier(v12, &cf);
    v25 = v14;
    v15 = *DMCLogObjects();
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        buf.val[0] = 138543362;
        *&buf.val[1] = v25;
        v16 = "Looked up bundle ID %{public}@ using SecTask";
        v17 = v15;
        v18 = OS_LOG_TYPE_DEBUG;
LABEL_13:
        _os_log_impl(&dword_1B1630000, v17, v18, v16, &buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      buf.val[0] = 138543362;
      *&buf.val[1] = cf;
      v16 = "Failed to look up bundle ID using SecTask with error: %{public}@";
      v17 = v15;
      v18 = OS_LOG_TYPE_ERROR;
      goto LABEL_13;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    CFRelease(v13);
    goto LABEL_17;
  }

  v5 = *DMCLogObjects();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    buf.val[0] = 138543362;
    *&buf.val[1] = v25;
    v6 = "Looked up bundle ID %{public}@ from audit token using entitlement";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEBUG;
    v9 = 12;
LABEL_4:
    _os_log_impl(&dword_1B1630000, v7, v8, v6, &buf, v9);
  }

LABEL_17:
  v20 = v25;
  if (!v25)
  {
    v21 = *DMCLogObjects();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.val[0]) = 0;
      _os_log_impl(&dword_1B1630000, v21, OS_LOG_TYPE_ERROR, "Could not look up bundle identifier using audit token", &buf, 2u);
    }
  }

  v22 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (id)teamIDFromAuditToken:(id *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v4 = *&a3->var0[4];
  *buf.val = *a3->var0;
  *&buf.val[4] = v4;
  if (!CPCopyBundleIdentifierAndTeamFromAuditToken())
  {
    v10 = *MEMORY[0x1E695E480];
    v11 = *&a3->var0[4];
    *buf.val = *a3->var0;
    *&buf.val[4] = v11;
    v12 = SecTaskCreateWithAuditToken(v10, &buf);
    if (!v12)
    {
      v18 = *DMCLogObjects();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      LOWORD(buf.val[0]) = 0;
      v6 = "Failed to create SecTask from audit token";
      v7 = v18;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 2;
      goto LABEL_4;
    }

    v13 = v12;
    v22 = SecTaskCopyTeamIdentifier();
    v14 = *DMCLogObjects();
    if (v22)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        buf.val[0] = 138543362;
        *&buf.val[1] = v22;
        v15 = "Looked up team ID %{public}@ using SecTask";
        v16 = v14;
        v17 = OS_LOG_TYPE_DEBUG;
LABEL_13:
        _os_log_impl(&dword_1B1630000, v16, v17, v15, &buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      buf.val[0] = 138543362;
      *&buf.val[1] = 0;
      v15 = "Failed to look up team ID using SecTask with error: %{public}@";
      v16 = v14;
      v17 = OS_LOG_TYPE_ERROR;
      goto LABEL_13;
    }

    CFRelease(v13);
    goto LABEL_15;
  }

  v5 = *DMCLogObjects();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    buf.val[0] = 138543362;
    *&buf.val[1] = 0;
    v6 = "Looked up team ID %{public}@ from audit token using entitlement";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEBUG;
    v9 = 12;
LABEL_4:
    _os_log_impl(&dword_1B1630000, v7, v8, v6, &buf, v9);
  }

LABEL_15:
  if (!v22)
  {
    v19 = *DMCLogObjects();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.val[0]) = 0;
      _os_log_impl(&dword_1B1630000, v19, OS_LOG_TYPE_ERROR, "Could not look up team identifier using audit token", &buf, 2u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];

  return v22;
}

@end