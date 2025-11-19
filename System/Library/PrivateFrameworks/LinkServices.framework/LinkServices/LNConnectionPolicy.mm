@interface LNConnectionPolicy
+ (BOOL)_typeExistsWithMangledTypeName:(id)a3;
+ (BOOL)shouldExecuteActionOnApplicationWithActionMetadata:(id)a3 signals:(id)a4 reason:(id *)a5;
+ (BOOL)shouldExecuteActionOnApplicationWithBundleIdentifier:(id)a3 allowSuspended:(BOOL)a4;
+ (BOOL)shouldHandleInProcessWithMangledTypeName:(id)a3 bundleIdentifier:(id)a4;
+ (id)policyWithActionMetadata:(id)a3 effectiveBundleIdentifier:(id)a4 appBundleIdentifier:(id)a5 processInstanceIdentifier:(id)a6;
+ (id)policyWithActionMetadata:(id)a3 signals:(id)a4;
+ (id)policyWithBundleIdentifier:(id)a3;
+ (id)policyWithEntityMetadata:(id)a3 effectiveBundleIdentifier:(id)a4 appBundleIdentifier:(id)a5 processInstanceIdentifier:(id)a6;
+ (id)policyWithEntityMetadata:(id)a3 signals:(id)a4;
+ (id)policyWithEntityQueryMetadata:(id)a3 signals:(id)a4;
+ (id)policyWithEnumMetadata:(id)a3 effectiveBundleIdentifier:(id)a4 appBundleIdentifier:(id)a5 processInstanceIdentifier:(id)a6;
+ (id)policyWithEnumMetadata:(id)a3 signals:(id)a4;
+ (id)policyWithQueryMetadata:(id)a3 effectiveBundleIdentifier:(id)a4 appBundleIdentifier:(id)a5 processInstanceIdentifier:(id)a6;
+ (void)resolveEffectiveBundleIdentifiers:(id)a3 allowedTargets:(id)a4 appBundleIdentifier:(id *)a5 extensionBundleIdentifier:(id *)a6 daemonBundleIdentifier:(id *)a7 frameworkBundleIdentifier:(id *)a8 signals:(id)a9;
@end

@implementation LNConnectionPolicy

+ (void)resolveEffectiveBundleIdentifiers:(id)a3 allowedTargets:(id)a4 appBundleIdentifier:(id *)a5 extensionBundleIdentifier:(id *)a6 daemonBundleIdentifier:(id *)a7 frameworkBundleIdentifier:(id *)a8 signals:(id)a9
{
  sub_197648238(0, &qword_1EAF3F220, 0x1E69AC7B0);
  v14 = sub_19774F120();
  if (a4)
  {
    sub_197648238(0, &qword_1EAF3F5C8, 0x1E69ACA58);
    a4 = sub_19774F120();
  }

  swift_getObjCClassMetadata();
  v15 = a9;
  static LNConnectionPolicy.resolve(_:allowedTargets:appBundleIdentifier:extensionBundleIdentifier:daemonBundleIdentifier:frameworkBundleIdentifier:signals:)(v14, a4, a5, a6, a7, a8, a9);
}

+ (BOOL)_typeExistsWithMangledTypeName:(id)a3
{
  sub_19774EF50();
  v3 = static LNConnectionPolicy._typeExists(mangledTypeName:)();

  return v3;
}

+ (BOOL)shouldHandleInProcessWithMangledTypeName:(id)a3 bundleIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"LNConnectionPolicy.m" lineNumber:564 description:{@"Invalid parameter not satisfying: %@", @"mangledTypeName"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:a1 file:@"LNConnectionPolicy.m" lineNumber:565 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

LABEL_3:
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__LNConnectionPolicy_shouldHandleInProcessWithMangledTypeName_bundleIdentifier___block_invoke;
  v16[3] = &unk_1E74B1980;
  v17 = v9;
  v10 = v9;
  v11 = [LNEntitlementsValidator validateEntitlement:@"com.apple.private.appintents-handle-in-process" forCurrentTaskWithValidator:v16];

  if (v11)
  {
    v12 = [a1 _typeExistsWithMangledTypeName:v7];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __80__LNConnectionPolicy_shouldHandleInProcessWithMangledTypeName_bundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v5 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v5 isEqualToString:*(a1 + 32)];
      goto LABEL_6;
    }

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v4 = [v3 containsObject:*(a1 + 32)];
LABEL_6:
  v6 = v4;
LABEL_8:

  return v6;
}

+ (BOOL)shouldExecuteActionOnApplicationWithBundleIdentifier:(id)a3 allowSuspended:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x1E69C7610] predicateMatchingBundleIdentifier:v5];
    v7 = [MEMORY[0x1E69C7630] descriptor];
    v22 = 0;
    v8 = [MEMORY[0x1E69C7618] statesForPredicate:v6 withDescriptor:v7 error:&v22];
    v9 = v22;
    if (v9)
    {
      v10 = getLNLogCategoryPolicy();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v24 = v5;
        v25 = 2112;
        v26 = v9;
        v11 = "Failed to determine process state for application bundle; will use extension if available. bundle=%@; %@";
        v12 = v10;
        v13 = 22;
LABEL_13:
        _os_log_impl(&dword_19763D000, v12, OS_LOG_TYPE_INFO, v11, buf, v13);
      }

LABEL_14:
      v14 = 0;
LABEL_15:

      goto LABEL_16;
    }

    if (![v8 count])
    {
      v10 = getLNLogCategoryPolicy();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_14;
      }

      *buf = 138412290;
      v24 = v5;
      v11 = "Failed to find process state for application bundle; will use extension if available. bundle=%@";
      goto LABEL_12;
    }

    if ([v8 count] >= 2)
    {
      v10 = getLNLogCategoryPolicy();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_14;
      }

      *buf = 138412290;
      v24 = v5;
      v11 = "Found multiple process states for application bundle; will use extension if available. bundle=%@";
LABEL_12:
      v12 = v10;
      v13 = 12;
      goto LABEL_13;
    }

    v10 = [v8 firstObject];
    v17 = [v10 taskState];
    v18 = v17;
    if (v4 && v17 == 3)
    {
      v19 = getLNLogCategoryPolicy();
      v14 = 1;
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
LABEL_29:

        goto LABEL_15;
      }

      *buf = 138412290;
      v24 = v5;
      v20 = "Found process state running suspended for application bundle; will use application if available. bundle=%@";
    }

    else
    {
      v19 = getLNLogCategoryPolicy();
      v21 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
      if (v18 != 4)
      {
        if (v21)
        {
          *buf = 138412290;
          v24 = v5;
          _os_log_impl(&dword_19763D000, v19, OS_LOG_TYPE_INFO, "Found process state other than running scheduled or suspended for application bundle; will use extension if available. bundle=%@", buf, 0xCu);
        }

        v14 = 0;
        goto LABEL_29;
      }

      if (!v21)
      {
        v14 = 1;
        goto LABEL_29;
      }

      *buf = 138412290;
      v24 = v5;
      v20 = "Found process state running scheduled for application bundle; will use application if available. bundle=%@";
      v14 = 1;
    }

    _os_log_impl(&dword_19763D000, v19, OS_LOG_TYPE_INFO, v20, buf, 0xCu);
    goto LABEL_29;
  }

  v14 = 0;
LABEL_16:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (BOOL)shouldExecuteActionOnApplicationWithActionMetadata:(id)a3 signals:(id)a4 reason:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8 && ([v8 shouldExecuteActionOnApplicationBasedOnMetadata] & 1) == 0)
  {
    v16 = getLNLogCategoryPolicy();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19763D000, v16, OS_LOG_TYPE_DEFAULT, "Policy signals dictate that this app intent should not run in the app based on the provided metadata", buf, 2u);
    }
  }

  else
  {
    if ([v7 openAppWhenRun])
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = [v7 identifier];
      *a5 = LABEL_17:;

      v17 = 1;
      goto LABEL_18;
    }

    v12 = [v7 systemProtocols];
    v13 = [MEMORY[0x1E69ACA48] audioStartingProtocol];
    v14 = [v12 containsObject:v13];

    if (v14)
    {
      v15 = MEMORY[0x1E696AEC0];
      v11 = [v7 identifier];
      goto LABEL_17;
    }

    v18 = [v7 systemProtocols];
    v19 = [MEMORY[0x1E69ACA48] sessionStartingProtocol];
    v20 = [v18 containsObject:v19];

    if (v20)
    {
      v21 = MEMORY[0x1E696AEC0];
      v11 = [v7 identifier];
      goto LABEL_17;
    }

    v22 = [v7 systemProtocols];
    v23 = [MEMORY[0x1E69ACA48] foregroundContinuableProtocol];
    v24 = [v22 containsObject:v23];

    if (v24)
    {
      v25 = MEMORY[0x1E696AEC0];
      v11 = [v7 identifier];
      goto LABEL_17;
    }

    v26 = [v7 systemProtocols];
    v27 = [MEMORY[0x1E69ACA48] pushToTalkTransmissionProtocol];
    v28 = [v26 containsObject:v27];

    if (v28)
    {
      v29 = MEMORY[0x1E696AEC0];
      v11 = [v7 identifier];
      goto LABEL_17;
    }
  }

  v17 = 0;
LABEL_18:

  return v17;
}

+ (id)policyWithEnumMetadata:(id)a3 effectiveBundleIdentifier:(id)a4 appBundleIdentifier:(id)a5 processInstanceIdentifier:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [v12 bundleIdentifier];
  v14 = [v9 mangledTypeNameForBundleIdentifier:v13];

  v15 = [v9 effectiveBundleIdentifiers];
  if ([v15 count] == 1)
  {
    v16 = [v9 effectiveBundleIdentifiers];
    v17 = [v16 firstObject];
    v18 = [v17 type];

    if (v18 != 3)
    {
      goto LABEL_5;
    }

    v15 = [v9 effectiveBundleIdentifiers];
    v19 = [v15 firstObject];
    v20 = [v19 bundleIdentifier];
    v21 = [v9 mangledTypeNameForBundleIdentifier:v20];

    v14 = v21;
  }

LABEL_5:
  v22 = [LNAppEnumConnectionPolicy alloc];
  v23 = [v9 identifier];
  v24 = [(LNAppEnumConnectionPolicy *)v22 initWithAppEnumIdentifier:v23 appEnumMangledTypeName:v14 effectiveBundleIdentifier:v12 appBundleIdentifier:v11 processInstanceIdentifier:v10];

  return v24;
}

+ (id)policyWithQueryMetadata:(id)a3 effectiveBundleIdentifier:(id)a4 appBundleIdentifier:(id)a5 processInstanceIdentifier:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [v12 bundleIdentifier];
  v14 = [v9 mangledTypeNameForBundleIdentifier:v13];

  v15 = [v9 effectiveBundleIdentifiers];
  if ([v15 count] == 1)
  {
    v16 = [v9 effectiveBundleIdentifiers];
    v17 = [v16 firstObject];
    v18 = [v17 type];

    if (v18 != 3)
    {
      goto LABEL_5;
    }

    v15 = [v9 effectiveBundleIdentifiers];
    v19 = [v15 firstObject];
    v20 = [v19 bundleIdentifier];
    v21 = [v9 mangledTypeNameForBundleIdentifier:v20];

    v14 = v21;
  }

LABEL_5:
  v22 = [LNEntityQueryConnectionPolicy alloc];
  v23 = [v9 identifier];
  v24 = [(LNEntityQueryConnectionPolicy *)v22 initWithEntityQueryIdentifier:v23 entityQueryMangledTypeName:v14 effectiveBundleIdentifier:v12 appBundleIdentifier:v11 processInstanceIdentifier:v10];

  return v24;
}

+ (id)policyWithEntityMetadata:(id)a3 effectiveBundleIdentifier:(id)a4 appBundleIdentifier:(id)a5 processInstanceIdentifier:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [v12 bundleIdentifier];
  v14 = [v9 mangledTypeNameForBundleIdentifier:v13];

  v15 = [v9 effectiveBundleIdentifiers];
  if ([v15 count] == 1)
  {
    v16 = [v9 effectiveBundleIdentifiers];
    v17 = [v16 firstObject];
    v18 = [v17 type];

    if (v18 != 3)
    {
      goto LABEL_5;
    }

    v15 = [v9 effectiveBundleIdentifiers];
    v19 = [v15 firstObject];
    v20 = [v19 bundleIdentifier];
    v21 = [v9 mangledTypeNameForBundleIdentifier:v20];

    v14 = v21;
  }

LABEL_5:
  v22 = [LNAppEntityConnectionPolicy alloc];
  v23 = [v9 identifier];
  v24 = [(LNAppEntityConnectionPolicy *)v22 initWithAppEntityIdentifier:v23 appEntityMangledTypeName:v14 effectiveBundleIdentifier:v12 appBundleIdentifier:v11 processInstanceIdentifier:v10];

  return v24;
}

+ (id)policyWithActionMetadata:(id)a3 effectiveBundleIdentifier:(id)a4 appBundleIdentifier:(id)a5 processInstanceIdentifier:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[LNAppIntentConnectionPolicy alloc] initWithAppIntentMetadata:v12 effectiveBundleIdentifier:v11 appBundleIdentifier:v10 processInstanceIdentifier:v9];

  return v13;
}

+ (id)policyWithBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[LNBundleConnectionPolicy alloc] initWithBundleIdentifier:v3 appBundleIdentifier:0 processInstanceIdentifier:0];

  return v4;
}

+ (id)policyWithEnumMetadata:(id)a3 signals:(id)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 effectiveBundleIdentifiers];
  v9 = [v8 array];
  v10 = [v6 allowedTargets];
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  [a1 resolveEffectiveBundleIdentifiers:v9 allowedTargets:v10 appBundleIdentifier:&v59 extensionBundleIdentifier:&v58 daemonBundleIdentifier:&v57 frameworkBundleIdentifier:&v56 signals:v7];
  v11 = v59;
  v12 = v58;
  v13 = v57;
  v14 = v56;

  if (!v14)
  {
    if (v11 && !v12 && !v13)
    {
      v21 = getLNLogCategoryPolicy();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
LABEL_11:

        v18 = [v11 bundleIdentifier];
        v25 = a1;
        v26 = v6;
        v27 = v11;
LABEL_49:
        v20 = [v25 policyWithEnumMetadata:v26 effectiveBundleIdentifier:v27 appBundleIdentifier:v18 processInstanceIdentifier:0];
        goto LABEL_50;
      }

      v22 = [v6 identifier];
      v23 = [v11 bundleIdentifier];
      *buf = 138543618;
      v61 = v22;
      v62 = 2114;
      v63 = v23;
LABEL_10:
      _os_log_impl(&dword_19763D000, v21, OS_LOG_TYPE_INFO, v24, buf, 0x16u);

      goto LABEL_11;
    }

    if (v12 && !v11 && !v13)
    {
      v28 = getLNLogCategoryPolicy();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = [v6 identifier];
        v30 = [v12 bundleIdentifier];
        *buf = 138543618;
        v61 = v29;
        v62 = 2114;
        v63 = v30;
      }

      v31 = 0;
      goto LABEL_18;
    }

    if (v13 && !v11 && !v12)
    {
      v32 = getLNLogCategoryPolicy();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = [v6 identifier];
        v34 = [v13 bundleIdentifier];
        *buf = 138543618;
        v61 = v33;
        v62 = 2114;
        v63 = v34;
      }

      v35 = 0;
LABEL_48:
      v18 = [v35 bundleIdentifier];
      v25 = a1;
      v26 = v6;
      v27 = v13;
      goto LABEL_49;
    }

    v36 = [v7 preferredBundleIdentifier];
    if (!v36)
    {
LABEL_41:
      v48 = [v11 bundleIdentifier];
      v49 = [a1 shouldExecuteActionOnApplicationWithBundleIdentifier:v48 allowSuspended:1];

      v21 = getLNLogCategoryPolicy();
      v50 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
      if (v49)
      {
        if (!v50)
        {
          goto LABEL_11;
        }

        v22 = [v11 bundleIdentifier];
        v23 = [v6 identifier];
        *buf = 138543618;
        v61 = v22;
        v62 = 2114;
        v63 = v23;
        goto LABEL_10;
      }

      if (v13)
      {
        if (v50)
        {
          v51 = [v6 identifier];
          *buf = 138543618;
          v61 = v13;
          v62 = 2114;
          v63 = v51;
        }

        v35 = v11;
        goto LABEL_48;
      }

      if (!v50)
      {
LABEL_55:

        v31 = v11;
LABEL_18:
        v18 = [v31 bundleIdentifier];
        v25 = a1;
        v26 = v6;
        v27 = v12;
        goto LABEL_49;
      }

LABEL_54:
      v54 = [v6 identifier];
      *buf = 138543618;
      v61 = v12;
      v62 = 2114;
      v63 = v54;

      goto LABEL_55;
    }

    v37 = v36;
    v38 = [v12 bundleIdentifier];
    v39 = [v7 preferredBundleIdentifier];
    v40 = v38;
    v41 = v39;
    v42 = v41;
    if (v40 == v41)
    {
    }

    else
    {
      if (!v40 || !v41)
      {

LABEL_40:
        goto LABEL_41;
      }

      v55 = [v40 isEqualToString:v41];

      if ((v55 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    v43 = MEMORY[0x1E6963620];
    v44 = [v11 bundleIdentifier];
    v45 = [v43 bundleLinkedOnOrAfter2024:v44];

    v46 = getLNLogCategoryPolicy();
    v37 = v46;
    if (v45)
    {
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v47 = [v7 preferredBundleIdentifier];
        *buf = 138543362;
        v61 = v47;
      }

      v21 = getLNLogCategoryPolicy();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }

    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19763D000, v37, OS_LOG_TYPE_DEFAULT, "Client requested running using the preferred bundle identifier, but it is linked prior to 2024 so ignoring", buf, 2u);
    }

    goto LABEL_40;
  }

  v15 = getLNLogCategoryPolicy();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v6 identifier];
    v17 = [v14 bundleIdentifier];
    *buf = 138543618;
    v61 = v16;
    v62 = 2114;
    v63 = v17;
  }

  v18 = [v7 preferredBundleIdentifier];
  v19 = [v7 processInstanceIdentifier];
  v20 = [a1 policyWithEnumMetadata:v6 effectiveBundleIdentifier:v14 appBundleIdentifier:v18 processInstanceIdentifier:v19];

LABEL_50:
  v52 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (id)policyWithEntityQueryMetadata:(id)a3 signals:(id)a4
{
  v69 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = getLNLogCategoryPolicy();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 identifier];
    v10 = v9;
    v11 = @"<not provided>";
    if (v7)
    {
      v11 = v7;
    }

    *buf = 138543618;
    v66 = v9;
    v67 = 2114;
    v68 = v11;
    _os_log_impl(&dword_19763D000, v8, OS_LOG_TYPE_INFO, "Requesting policy for query: %{public}@ using signals: %{public}@", buf, 0x16u);
  }

  v12 = [v6 effectiveBundleIdentifiers];
  v13 = [v12 array];
  v14 = [v6 allowedTargets];
  v63 = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  [a1 resolveEffectiveBundleIdentifiers:v13 allowedTargets:v14 appBundleIdentifier:&v64 extensionBundleIdentifier:&v63 daemonBundleIdentifier:&v62 frameworkBundleIdentifier:&v61 signals:v7];
  v15 = v64;
  v16 = v63;
  v17 = v62;
  v18 = v61;

  if (v18)
  {
    v19 = getLNLogCategoryPolicy();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [v6 identifier];
      v21 = [v18 bundleIdentifier];
      *buf = 138543618;
      v66 = v20;
      v67 = 2114;
      v68 = v21;
    }

    v22 = [(__CFString *)v7 preferredBundleIdentifier];
    v23 = [(__CFString *)v7 processInstanceIdentifier];
    v24 = [a1 policyWithQueryMetadata:v6 effectiveBundleIdentifier:v18 appBundleIdentifier:v22 processInstanceIdentifier:v23];

    goto LABEL_17;
  }

  if (v15 && !v16 && !v17)
  {
    v25 = getLNLogCategoryPolicy();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
LABEL_15:

      v22 = [v15 bundleIdentifier];
      v29 = a1;
      v30 = v6;
      v31 = v15;
LABEL_16:
      v24 = [v29 policyWithQueryMetadata:v30 effectiveBundleIdentifier:v31 appBundleIdentifier:v22 processInstanceIdentifier:0];
LABEL_17:

      goto LABEL_18;
    }

    v26 = [v6 identifier];
    v27 = [v15 bundleIdentifier];
    *buf = 138543618;
    v66 = v26;
    v67 = 2114;
    v68 = v27;
LABEL_14:
    _os_log_impl(&dword_19763D000, v25, OS_LOG_TYPE_INFO, v28, buf, 0x16u);

    goto LABEL_15;
  }

  if (!v16 || v15 || v17)
  {
    if (v17 && !v15 && !v16)
    {
      v40 = getLNLogCategoryPolicy();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = [v6 identifier];
        v42 = [v17 bundleIdentifier];
        *buf = 138543618;
        v66 = v41;
        v67 = 2114;
        v68 = v42;
      }

      v37 = a1;
      v38 = v6;
      v39 = v17;
      goto LABEL_33;
    }

    v43 = [(__CFString *)v7 preferredBundleIdentifier];
    if (!v43)
    {
LABEL_50:
      v55 = [v15 bundleIdentifier];
      v56 = [a1 shouldExecuteActionOnApplicationWithBundleIdentifier:v55 allowSuspended:1];

      v25 = getLNLogCategoryPolicy();
      v57 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
      if (v56)
      {
        if (!v57)
        {
          goto LABEL_15;
        }

        v26 = [v15 bundleIdentifier];
        v27 = [v6 identifier];
        *buf = 138543618;
        v66 = v26;
        v67 = 2114;
        v68 = v27;
        goto LABEL_14;
      }

      if (v17)
      {
        if (v57)
        {
          v58 = [v6 identifier];
          *buf = 138543618;
          v66 = v17;
          v67 = 2114;
          v68 = v58;
        }

        v22 = [v15 bundleIdentifier];
        v29 = a1;
        v30 = v6;
        v31 = v17;
        goto LABEL_16;
      }

      if (!v57)
      {
LABEL_59:

        v22 = [v15 bundleIdentifier];
        v29 = a1;
        v30 = v6;
        v31 = v16;
        goto LABEL_16;
      }

LABEL_58:
      v59 = [v6 identifier];
      *buf = 138543618;
      v66 = v16;
      v67 = 2114;
      v68 = v59;

      goto LABEL_59;
    }

    v44 = v43;
    v45 = [v16 bundleIdentifier];
    v46 = [(__CFString *)v7 preferredBundleIdentifier];
    v47 = v45;
    v48 = v46;
    v49 = v48;
    if (v47 == v48)
    {
    }

    else
    {
      if (!v47 || !v48)
      {

LABEL_49:
        goto LABEL_50;
      }

      v60 = [v47 isEqualToString:v48];

      if ((v60 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    v50 = MEMORY[0x1E6963620];
    v51 = [v15 bundleIdentifier];
    v52 = [v50 bundleLinkedOnOrAfter2024:v51];

    v53 = getLNLogCategoryPolicy();
    v44 = v53;
    if (v52)
    {
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        v54 = [(__CFString *)v7 preferredBundleIdentifier];
        *buf = 138543362;
        v66 = v54;
      }

      v25 = getLNLogCategoryPolicy();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        goto LABEL_59;
      }

      goto LABEL_58;
    }

    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19763D000, v44, OS_LOG_TYPE_DEFAULT, "Client requested running using the preferred bundle identifier, but it is linked prior to 2024 so ignoring", buf, 2u);
    }

    goto LABEL_49;
  }

  v34 = getLNLogCategoryPolicy();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = [v6 identifier];
    v36 = [v16 bundleIdentifier];
    *buf = 138543618;
    v66 = v35;
    v67 = 2114;
    v68 = v36;
  }

  v37 = a1;
  v38 = v6;
  v39 = v16;
LABEL_33:
  v24 = [v37 policyWithQueryMetadata:v38 effectiveBundleIdentifier:v39 appBundleIdentifier:0 processInstanceIdentifier:0];
LABEL_18:

  v32 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)policyWithEntityMetadata:(id)a3 signals:(id)a4
{
  v68 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = getLNLogCategoryPolicy();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 identifier];
    v10 = v9;
    v11 = @"<not provided>";
    if (v7)
    {
      v11 = v7;
    }

    *buf = 138543618;
    v65 = v9;
    v66 = 2114;
    v67 = v11;
    _os_log_impl(&dword_19763D000, v8, OS_LOG_TYPE_INFO, "Requesting policy for entity: %{public}@ using signals: %{public}@", buf, 0x16u);
  }

  v12 = [v6 effectiveBundleIdentifiers];
  v13 = [v12 array];
  v14 = [v6 allowedTargets];
  v62 = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  [a1 resolveEffectiveBundleIdentifiers:v13 allowedTargets:v14 appBundleIdentifier:&v63 extensionBundleIdentifier:&v62 daemonBundleIdentifier:&v61 frameworkBundleIdentifier:&v60 signals:v7];
  v15 = v63;
  v16 = v62;
  v17 = v61;
  v18 = v60;

  if (!v18)
  {
    if (v15 && !v16 && !v17)
    {
      v25 = getLNLogCategoryPolicy();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
LABEL_15:

        v22 = [v15 bundleIdentifier];
        v29 = a1;
        v30 = v6;
        v31 = v15;
LABEL_53:
        v24 = [v29 policyWithEntityMetadata:v30 effectiveBundleIdentifier:v31 appBundleIdentifier:v22 processInstanceIdentifier:0];
        goto LABEL_54;
      }

      v26 = [v6 identifier];
      v27 = [v15 bundleIdentifier];
      *buf = 138543618;
      v65 = v26;
      v66 = 2114;
      v67 = v27;
LABEL_14:
      _os_log_impl(&dword_19763D000, v25, OS_LOG_TYPE_INFO, v28, buf, 0x16u);

      goto LABEL_15;
    }

    if (v16 && !v15 && !v17)
    {
      v32 = getLNLogCategoryPolicy();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = [v6 identifier];
        v34 = [v16 bundleIdentifier];
        *buf = 138543618;
        v65 = v33;
        v66 = 2114;
        v67 = v34;
      }

      v35 = 0;
      goto LABEL_22;
    }

    if (v17 && !v15 && !v16)
    {
      v36 = getLNLogCategoryPolicy();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = [v6 identifier];
        v38 = [v17 bundleIdentifier];
        *buf = 138543618;
        v65 = v37;
        v66 = 2114;
        v67 = v38;
      }

      v39 = 0;
LABEL_52:
      v22 = [v39 bundleIdentifier];
      v29 = a1;
      v30 = v6;
      v31 = v17;
      goto LABEL_53;
    }

    v40 = [(__CFString *)v7 preferredBundleIdentifier];
    if (!v40)
    {
LABEL_45:
      v52 = [v15 bundleIdentifier];
      v53 = [a1 shouldExecuteActionOnApplicationWithBundleIdentifier:v52 allowSuspended:1];

      v25 = getLNLogCategoryPolicy();
      v54 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
      if (v53)
      {
        if (!v54)
        {
          goto LABEL_15;
        }

        v26 = [v15 bundleIdentifier];
        v27 = [v6 identifier];
        *buf = 138543618;
        v65 = v26;
        v66 = 2114;
        v67 = v27;
        goto LABEL_14;
      }

      if (v17)
      {
        if (v54)
        {
          v55 = [v6 identifier];
          *buf = 138543618;
          v65 = v17;
          v66 = 2114;
          v67 = v55;
        }

        v39 = v15;
        goto LABEL_52;
      }

      if (!v54)
      {
LABEL_59:

        v35 = v15;
LABEL_22:
        v22 = [v35 bundleIdentifier];
        v29 = a1;
        v30 = v6;
        v31 = v16;
        goto LABEL_53;
      }

LABEL_58:
      v58 = [v6 identifier];
      *buf = 138543618;
      v65 = v16;
      v66 = 2114;
      v67 = v58;

      goto LABEL_59;
    }

    v41 = v40;
    v42 = [v16 bundleIdentifier];
    v43 = [(__CFString *)v7 preferredBundleIdentifier];
    v44 = v42;
    v45 = v43;
    v46 = v45;
    if (v44 == v45)
    {
    }

    else
    {
      if (!v44 || !v45)
      {

LABEL_44:
        goto LABEL_45;
      }

      v59 = [v44 isEqualToString:v45];

      if ((v59 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    v47 = MEMORY[0x1E6963620];
    v48 = [v15 bundleIdentifier];
    v49 = [v47 bundleLinkedOnOrAfter2024:v48];

    v50 = getLNLogCategoryPolicy();
    v41 = v50;
    if (v49)
    {
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        v51 = [(__CFString *)v7 preferredBundleIdentifier];
        *buf = 138543362;
        v65 = v51;
      }

      v25 = getLNLogCategoryPolicy();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        goto LABEL_59;
      }

      goto LABEL_58;
    }

    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19763D000, v41, OS_LOG_TYPE_DEFAULT, "Client requested running using the preferred bundle identifier, but it is linked prior to 2024 so ignoring", buf, 2u);
    }

    goto LABEL_44;
  }

  v19 = getLNLogCategoryPolicy();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [v6 identifier];
    v21 = [v18 bundleIdentifier];
    *buf = 138543618;
    v65 = v20;
    v66 = 2114;
    v67 = v21;
  }

  v22 = [(__CFString *)v7 preferredBundleIdentifier];
  v23 = [(__CFString *)v7 processInstanceIdentifier];
  v24 = [a1 policyWithEntityMetadata:v6 effectiveBundleIdentifier:v18 appBundleIdentifier:v22 processInstanceIdentifier:v23];

LABEL_54:
  v56 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)policyWithActionMetadata:(id)a3 signals:(id)a4
{
  v78 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = getLNLogCategoryPolicy();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 identifier];
    v10 = v9;
    v11 = @"<not provided>";
    if (v7)
    {
      v11 = v7;
    }

    *buf = 138543618;
    v75 = v9;
    v76 = 2114;
    v77 = v11;
    _os_log_impl(&dword_19763D000, v8, OS_LOG_TYPE_INFO, "Requesting policy for intent: %{public}@ using signals: %{public}@", buf, 0x16u);
  }

  v12 = [v6 effectiveBundleIdentifiers];
  v13 = [v12 array];
  v14 = [v6 allowedTargets];
  v72 = 0;
  v73 = 0;
  v70 = 0;
  v71 = 0;
  [a1 resolveEffectiveBundleIdentifiers:v13 allowedTargets:v14 appBundleIdentifier:&v73 extensionBundleIdentifier:&v72 daemonBundleIdentifier:&v71 frameworkBundleIdentifier:&v70 signals:v7];
  v15 = v73;
  v16 = v72;
  v17 = v71;
  v18 = v70;

  if (v18)
  {
    v19 = getLNLogCategoryPolicy();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [v6 identifier];
      v21 = [v18 bundleIdentifier];
      *buf = 138543618;
      v75 = v20;
      v76 = 2114;
      v77 = v21;
    }

    v22 = [(__CFString *)v7 preferredBundleIdentifier];
    v23 = [(__CFString *)v7 processInstanceIdentifier];
    v24 = a1;
    v25 = v6;
    v26 = v18;
    v27 = v22;
    v28 = v23;
    goto LABEL_9;
  }

  if (!v15 || v16 || v17)
  {
    if (v16 && !v15 && !v17)
    {
      v36 = getLNLogCategoryPolicy();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = [v6 identifier];
        v38 = [v16 bundleIdentifier];
        *buf = 138543618;
        v75 = v37;
        v76 = 2114;
        v77 = v38;
      }

      v22 = [0 bundleIdentifier];
      v33 = a1;
      v34 = v6;
      v35 = v16;
      goto LABEL_28;
    }

    if (v17 && !v15 && !v16)
    {
      v39 = getLNLogCategoryPolicy();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = [v6 identifier];
        v41 = [v17 bundleIdentifier];
        *buf = 138543618;
        v75 = v40;
        v76 = 2114;
        v77 = v41;
      }

      v22 = [0 bundleIdentifier];
      v33 = a1;
      v34 = v6;
      v35 = v17;
      goto LABEL_28;
    }

    v69 = 0;
    v44 = [a1 shouldExecuteActionOnApplicationWithActionMetadata:v6 signals:v7 reason:&v69];
    v22 = v69;
    if (v44)
    {
      v45 = getLNLogCategoryPolicy();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = [v15 bundleIdentifier];
        *buf = 138543618;
        v75 = v46;
        v76 = 2114;
        v77 = v22;
      }

LABEL_54:

      v23 = [v15 bundleIdentifier];
      v24 = a1;
      v25 = v6;
      v26 = v15;
LABEL_55:
      v27 = v23;
      v28 = 0;
LABEL_9:
      v29 = [v24 policyWithActionMetadata:v25 effectiveBundleIdentifier:v26 appBundleIdentifier:v27 processInstanceIdentifier:v28];

      goto LABEL_29;
    }

    v47 = [(__CFString *)v7 preferredBundleIdentifier];
    if (!v47)
    {
LABEL_51:
      v59 = [v15 bundleIdentifier];
      v60 = [a1 shouldExecuteActionOnApplicationWithBundleIdentifier:v59 allowSuspended:1];

      v45 = getLNLogCategoryPolicy();
      v61 = os_log_type_enabled(v45, OS_LOG_TYPE_INFO);
      if (v60)
      {
        if (v61)
        {
          v68 = [v15 bundleIdentifier];
          v62 = [v6 identifier];
          *buf = 138543618;
          v75 = v68;
          v76 = 2114;
          v77 = v62;
          v63 = v62;
        }

        goto LABEL_54;
      }

      if (v17)
      {
        if (v61)
        {
          v64 = [v6 identifier];
          *buf = 138543618;
          v75 = v17;
          v76 = 2114;
          v77 = v64;
        }

        v23 = [v15 bundleIdentifier];
        v24 = a1;
        v25 = v6;
        v26 = v17;
        goto LABEL_55;
      }

      if (!v61)
      {
LABEL_62:

        v23 = [v15 bundleIdentifier];
        v24 = a1;
        v25 = v6;
        v26 = v16;
        goto LABEL_55;
      }

LABEL_61:
      v65 = [v6 identifier];
      *buf = 138543618;
      v75 = v16;
      v76 = 2114;
      v77 = v65;

      goto LABEL_62;
    }

    v67 = v47;
    v48 = [v16 bundleIdentifier];
    v49 = [(__CFString *)v7 preferredBundleIdentifier];
    v50 = v48;
    v51 = v49;
    v52 = v50;
    v53 = v51;
    if (v52 == v51)
    {
    }

    else
    {
      if (!v52 || !v51)
      {

        v57 = v67;
LABEL_50:

        goto LABEL_51;
      }

      v66 = [v52 isEqualToString:v51];

      if ((v66 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    v54 = MEMORY[0x1E6963620];
    v55 = [v15 bundleIdentifier];
    LODWORD(v54) = [v54 bundleLinkedOnOrAfter2024:v55];

    v56 = getLNLogCategoryPolicy();
    v57 = v56;
    if (v54)
    {
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        v58 = [(__CFString *)v7 preferredBundleIdentifier];
        *buf = 138543362;
        v75 = v58;
      }

      v45 = getLNLogCategoryPolicy();
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19763D000, v57, OS_LOG_TYPE_DEFAULT, "Client requested running using the preferred bundle identifier, but it is linked prior to 2024 so ignoring", buf, 2u);
    }

    goto LABEL_50;
  }

  v30 = getLNLogCategoryPolicy();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = [v6 identifier];
    v32 = [v15 bundleIdentifier];
    *buf = 138543618;
    v75 = v31;
    v76 = 2114;
    v77 = v32;
  }

  v22 = [v15 bundleIdentifier];
  v33 = a1;
  v34 = v6;
  v35 = v15;
LABEL_28:
  v29 = [v33 policyWithActionMetadata:v34 effectiveBundleIdentifier:v35 appBundleIdentifier:v22 processInstanceIdentifier:0];
LABEL_29:

  v42 = *MEMORY[0x1E69E9840];

  return v29;
}

@end