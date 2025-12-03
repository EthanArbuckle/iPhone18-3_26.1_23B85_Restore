@interface LNConnectionPolicy
+ (BOOL)_typeExistsWithMangledTypeName:(id)name;
+ (BOOL)shouldExecuteActionOnApplicationWithActionMetadata:(id)metadata signals:(id)signals reason:(id *)reason;
+ (BOOL)shouldExecuteActionOnApplicationWithBundleIdentifier:(id)identifier allowSuspended:(BOOL)suspended;
+ (BOOL)shouldHandleInProcessWithMangledTypeName:(id)name bundleIdentifier:(id)identifier;
+ (id)policyWithActionMetadata:(id)metadata effectiveBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier processInstanceIdentifier:(id)instanceIdentifier;
+ (id)policyWithActionMetadata:(id)metadata signals:(id)signals;
+ (id)policyWithBundleIdentifier:(id)identifier;
+ (id)policyWithEntityMetadata:(id)metadata effectiveBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier processInstanceIdentifier:(id)instanceIdentifier;
+ (id)policyWithEntityMetadata:(id)metadata signals:(id)signals;
+ (id)policyWithEntityQueryMetadata:(id)metadata signals:(id)signals;
+ (id)policyWithEnumMetadata:(id)metadata effectiveBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier processInstanceIdentifier:(id)instanceIdentifier;
+ (id)policyWithEnumMetadata:(id)metadata signals:(id)signals;
+ (id)policyWithQueryMetadata:(id)metadata effectiveBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier processInstanceIdentifier:(id)instanceIdentifier;
+ (void)resolveEffectiveBundleIdentifiers:(id)identifiers allowedTargets:(id)targets appBundleIdentifier:(id *)identifier extensionBundleIdentifier:(id *)bundleIdentifier daemonBundleIdentifier:(id *)daemonBundleIdentifier frameworkBundleIdentifier:(id *)frameworkBundleIdentifier signals:(id)signals;
@end

@implementation LNConnectionPolicy

+ (void)resolveEffectiveBundleIdentifiers:(id)identifiers allowedTargets:(id)targets appBundleIdentifier:(id *)identifier extensionBundleIdentifier:(id *)bundleIdentifier daemonBundleIdentifier:(id *)daemonBundleIdentifier frameworkBundleIdentifier:(id *)frameworkBundleIdentifier signals:(id)signals
{
  sub_197648238(0, &qword_1EAF3F220, 0x1E69AC7B0);
  v14 = sub_19774F120();
  if (targets)
  {
    sub_197648238(0, &qword_1EAF3F5C8, 0x1E69ACA58);
    targets = sub_19774F120();
  }

  swift_getObjCClassMetadata();
  signalsCopy = signals;
  static LNConnectionPolicy.resolve(_:allowedTargets:appBundleIdentifier:extensionBundleIdentifier:daemonBundleIdentifier:frameworkBundleIdentifier:signals:)(v14, targets, identifier, bundleIdentifier, daemonBundleIdentifier, frameworkBundleIdentifier, signals);
}

+ (BOOL)_typeExistsWithMangledTypeName:(id)name
{
  sub_19774EF50();
  v3 = static LNConnectionPolicy._typeExists(mangledTypeName:)();

  return v3;
}

+ (BOOL)shouldHandleInProcessWithMangledTypeName:(id)name bundleIdentifier:(id)identifier
{
  nameCopy = name;
  identifierCopy = identifier;
  v9 = identifierCopy;
  if (nameCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNConnectionPolicy.m" lineNumber:564 description:{@"Invalid parameter not satisfying: %@", @"mangledTypeName"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNConnectionPolicy.m" lineNumber:565 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];

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
    v12 = [self _typeExistsWithMangledTypeName:nameCopy];
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

+ (BOOL)shouldExecuteActionOnApplicationWithBundleIdentifier:(id)identifier allowSuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  v27 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v6 = [MEMORY[0x1E69C7610] predicateMatchingBundleIdentifier:identifierCopy];
    descriptor = [MEMORY[0x1E69C7630] descriptor];
    v22 = 0;
    v8 = [MEMORY[0x1E69C7618] statesForPredicate:v6 withDescriptor:descriptor error:&v22];
    v9 = v22;
    if (v9)
    {
      firstObject = getLNLogCategoryPolicy();
      if (os_log_type_enabled(firstObject, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v24 = identifierCopy;
        v25 = 2112;
        v26 = v9;
        v11 = "Failed to determine process state for application bundle; will use extension if available. bundle=%@; %@";
        v12 = firstObject;
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
      firstObject = getLNLogCategoryPolicy();
      if (!os_log_type_enabled(firstObject, OS_LOG_TYPE_INFO))
      {
        goto LABEL_14;
      }

      *buf = 138412290;
      v24 = identifierCopy;
      v11 = "Failed to find process state for application bundle; will use extension if available. bundle=%@";
      goto LABEL_12;
    }

    if ([v8 count] >= 2)
    {
      firstObject = getLNLogCategoryPolicy();
      if (!os_log_type_enabled(firstObject, OS_LOG_TYPE_INFO))
      {
        goto LABEL_14;
      }

      *buf = 138412290;
      v24 = identifierCopy;
      v11 = "Found multiple process states for application bundle; will use extension if available. bundle=%@";
LABEL_12:
      v12 = firstObject;
      v13 = 12;
      goto LABEL_13;
    }

    firstObject = [v8 firstObject];
    taskState = [firstObject taskState];
    v18 = taskState;
    if (suspendedCopy && taskState == 3)
    {
      v19 = getLNLogCategoryPolicy();
      v14 = 1;
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
LABEL_29:

        goto LABEL_15;
      }

      *buf = 138412290;
      v24 = identifierCopy;
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
          v24 = identifierCopy;
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
      v24 = identifierCopy;
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

+ (BOOL)shouldExecuteActionOnApplicationWithActionMetadata:(id)metadata signals:(id)signals reason:(id *)reason
{
  metadataCopy = metadata;
  signalsCopy = signals;
  v9 = signalsCopy;
  if (signalsCopy && ([signalsCopy shouldExecuteActionOnApplicationBasedOnMetadata] & 1) == 0)
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
    if ([metadataCopy openAppWhenRun])
    {
      v10 = MEMORY[0x1E696AEC0];
      identifier = [metadataCopy identifier];
      *reason = LABEL_17:;

      v17 = 1;
      goto LABEL_18;
    }

    systemProtocols = [metadataCopy systemProtocols];
    audioStartingProtocol = [MEMORY[0x1E69ACA48] audioStartingProtocol];
    v14 = [systemProtocols containsObject:audioStartingProtocol];

    if (v14)
    {
      v15 = MEMORY[0x1E696AEC0];
      identifier = [metadataCopy identifier];
      goto LABEL_17;
    }

    systemProtocols2 = [metadataCopy systemProtocols];
    sessionStartingProtocol = [MEMORY[0x1E69ACA48] sessionStartingProtocol];
    v20 = [systemProtocols2 containsObject:sessionStartingProtocol];

    if (v20)
    {
      v21 = MEMORY[0x1E696AEC0];
      identifier = [metadataCopy identifier];
      goto LABEL_17;
    }

    systemProtocols3 = [metadataCopy systemProtocols];
    foregroundContinuableProtocol = [MEMORY[0x1E69ACA48] foregroundContinuableProtocol];
    v24 = [systemProtocols3 containsObject:foregroundContinuableProtocol];

    if (v24)
    {
      v25 = MEMORY[0x1E696AEC0];
      identifier = [metadataCopy identifier];
      goto LABEL_17;
    }

    systemProtocols4 = [metadataCopy systemProtocols];
    pushToTalkTransmissionProtocol = [MEMORY[0x1E69ACA48] pushToTalkTransmissionProtocol];
    v28 = [systemProtocols4 containsObject:pushToTalkTransmissionProtocol];

    if (v28)
    {
      v29 = MEMORY[0x1E696AEC0];
      identifier = [metadataCopy identifier];
      goto LABEL_17;
    }
  }

  v17 = 0;
LABEL_18:

  return v17;
}

+ (id)policyWithEnumMetadata:(id)metadata effectiveBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier processInstanceIdentifier:(id)instanceIdentifier
{
  metadataCopy = metadata;
  instanceIdentifierCopy = instanceIdentifier;
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  bundleIdentifier = [identifierCopy bundleIdentifier];
  v14 = [metadataCopy mangledTypeNameForBundleIdentifier:bundleIdentifier];

  effectiveBundleIdentifiers = [metadataCopy effectiveBundleIdentifiers];
  if ([effectiveBundleIdentifiers count] == 1)
  {
    effectiveBundleIdentifiers2 = [metadataCopy effectiveBundleIdentifiers];
    firstObject = [effectiveBundleIdentifiers2 firstObject];
    type = [firstObject type];

    if (type != 3)
    {
      goto LABEL_5;
    }

    effectiveBundleIdentifiers = [metadataCopy effectiveBundleIdentifiers];
    firstObject2 = [effectiveBundleIdentifiers firstObject];
    bundleIdentifier2 = [firstObject2 bundleIdentifier];
    v21 = [metadataCopy mangledTypeNameForBundleIdentifier:bundleIdentifier2];

    v14 = v21;
  }

LABEL_5:
  v22 = [LNAppEnumConnectionPolicy alloc];
  identifier = [metadataCopy identifier];
  v24 = [(LNAppEnumConnectionPolicy *)v22 initWithAppEnumIdentifier:identifier appEnumMangledTypeName:v14 effectiveBundleIdentifier:identifierCopy appBundleIdentifier:bundleIdentifierCopy processInstanceIdentifier:instanceIdentifierCopy];

  return v24;
}

+ (id)policyWithQueryMetadata:(id)metadata effectiveBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier processInstanceIdentifier:(id)instanceIdentifier
{
  metadataCopy = metadata;
  instanceIdentifierCopy = instanceIdentifier;
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  bundleIdentifier = [identifierCopy bundleIdentifier];
  v14 = [metadataCopy mangledTypeNameForBundleIdentifier:bundleIdentifier];

  effectiveBundleIdentifiers = [metadataCopy effectiveBundleIdentifiers];
  if ([effectiveBundleIdentifiers count] == 1)
  {
    effectiveBundleIdentifiers2 = [metadataCopy effectiveBundleIdentifiers];
    firstObject = [effectiveBundleIdentifiers2 firstObject];
    type = [firstObject type];

    if (type != 3)
    {
      goto LABEL_5;
    }

    effectiveBundleIdentifiers = [metadataCopy effectiveBundleIdentifiers];
    firstObject2 = [effectiveBundleIdentifiers firstObject];
    bundleIdentifier2 = [firstObject2 bundleIdentifier];
    v21 = [metadataCopy mangledTypeNameForBundleIdentifier:bundleIdentifier2];

    v14 = v21;
  }

LABEL_5:
  v22 = [LNEntityQueryConnectionPolicy alloc];
  identifier = [metadataCopy identifier];
  v24 = [(LNEntityQueryConnectionPolicy *)v22 initWithEntityQueryIdentifier:identifier entityQueryMangledTypeName:v14 effectiveBundleIdentifier:identifierCopy appBundleIdentifier:bundleIdentifierCopy processInstanceIdentifier:instanceIdentifierCopy];

  return v24;
}

+ (id)policyWithEntityMetadata:(id)metadata effectiveBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier processInstanceIdentifier:(id)instanceIdentifier
{
  metadataCopy = metadata;
  instanceIdentifierCopy = instanceIdentifier;
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  bundleIdentifier = [identifierCopy bundleIdentifier];
  v14 = [metadataCopy mangledTypeNameForBundleIdentifier:bundleIdentifier];

  effectiveBundleIdentifiers = [metadataCopy effectiveBundleIdentifiers];
  if ([effectiveBundleIdentifiers count] == 1)
  {
    effectiveBundleIdentifiers2 = [metadataCopy effectiveBundleIdentifiers];
    firstObject = [effectiveBundleIdentifiers2 firstObject];
    type = [firstObject type];

    if (type != 3)
    {
      goto LABEL_5;
    }

    effectiveBundleIdentifiers = [metadataCopy effectiveBundleIdentifiers];
    firstObject2 = [effectiveBundleIdentifiers firstObject];
    bundleIdentifier2 = [firstObject2 bundleIdentifier];
    v21 = [metadataCopy mangledTypeNameForBundleIdentifier:bundleIdentifier2];

    v14 = v21;
  }

LABEL_5:
  v22 = [LNAppEntityConnectionPolicy alloc];
  identifier = [metadataCopy identifier];
  v24 = [(LNAppEntityConnectionPolicy *)v22 initWithAppEntityIdentifier:identifier appEntityMangledTypeName:v14 effectiveBundleIdentifier:identifierCopy appBundleIdentifier:bundleIdentifierCopy processInstanceIdentifier:instanceIdentifierCopy];

  return v24;
}

+ (id)policyWithActionMetadata:(id)metadata effectiveBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier processInstanceIdentifier:(id)instanceIdentifier
{
  instanceIdentifierCopy = instanceIdentifier;
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  metadataCopy = metadata;
  v13 = [[LNAppIntentConnectionPolicy alloc] initWithAppIntentMetadata:metadataCopy effectiveBundleIdentifier:identifierCopy appBundleIdentifier:bundleIdentifierCopy processInstanceIdentifier:instanceIdentifierCopy];

  return v13;
}

+ (id)policyWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[LNBundleConnectionPolicy alloc] initWithBundleIdentifier:identifierCopy appBundleIdentifier:0 processInstanceIdentifier:0];

  return v4;
}

+ (id)policyWithEnumMetadata:(id)metadata signals:(id)signals
{
  v64 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  signalsCopy = signals;
  effectiveBundleIdentifiers = [metadataCopy effectiveBundleIdentifiers];
  array = [effectiveBundleIdentifiers array];
  allowedTargets = [metadataCopy allowedTargets];
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  [self resolveEffectiveBundleIdentifiers:array allowedTargets:allowedTargets appBundleIdentifier:&v59 extensionBundleIdentifier:&v58 daemonBundleIdentifier:&v57 frameworkBundleIdentifier:&v56 signals:signalsCopy];
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

        bundleIdentifier = [v11 bundleIdentifier];
        selfCopy3 = self;
        v26 = metadataCopy;
        v27 = v11;
LABEL_49:
        v20 = [selfCopy3 policyWithEnumMetadata:v26 effectiveBundleIdentifier:v27 appBundleIdentifier:bundleIdentifier processInstanceIdentifier:0];
        goto LABEL_50;
      }

      identifier = [metadataCopy identifier];
      bundleIdentifier2 = [v11 bundleIdentifier];
      *buf = 138543618;
      v61 = identifier;
      v62 = 2114;
      v63 = bundleIdentifier2;
LABEL_10:
      _os_log_impl(&dword_19763D000, v21, OS_LOG_TYPE_INFO, v24, buf, 0x16u);

      goto LABEL_11;
    }

    if (v12 && !v11 && !v13)
    {
      v28 = getLNLogCategoryPolicy();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        identifier2 = [metadataCopy identifier];
        bundleIdentifier3 = [v12 bundleIdentifier];
        *buf = 138543618;
        v61 = identifier2;
        v62 = 2114;
        v63 = bundleIdentifier3;
      }

      v31 = 0;
      goto LABEL_18;
    }

    if (v13 && !v11 && !v12)
    {
      v32 = getLNLogCategoryPolicy();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        identifier3 = [metadataCopy identifier];
        bundleIdentifier4 = [v13 bundleIdentifier];
        *buf = 138543618;
        v61 = identifier3;
        v62 = 2114;
        v63 = bundleIdentifier4;
      }

      v35 = 0;
LABEL_48:
      bundleIdentifier = [v35 bundleIdentifier];
      selfCopy3 = self;
      v26 = metadataCopy;
      v27 = v13;
      goto LABEL_49;
    }

    preferredBundleIdentifier = [signalsCopy preferredBundleIdentifier];
    if (!preferredBundleIdentifier)
    {
LABEL_41:
      bundleIdentifier5 = [v11 bundleIdentifier];
      v49 = [self shouldExecuteActionOnApplicationWithBundleIdentifier:bundleIdentifier5 allowSuspended:1];

      v21 = getLNLogCategoryPolicy();
      v50 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
      if (v49)
      {
        if (!v50)
        {
          goto LABEL_11;
        }

        identifier = [v11 bundleIdentifier];
        bundleIdentifier2 = [metadataCopy identifier];
        *buf = 138543618;
        v61 = identifier;
        v62 = 2114;
        v63 = bundleIdentifier2;
        goto LABEL_10;
      }

      if (v13)
      {
        if (v50)
        {
          identifier4 = [metadataCopy identifier];
          *buf = 138543618;
          v61 = v13;
          v62 = 2114;
          v63 = identifier4;
        }

        v35 = v11;
        goto LABEL_48;
      }

      if (!v50)
      {
LABEL_55:

        v31 = v11;
LABEL_18:
        bundleIdentifier = [v31 bundleIdentifier];
        selfCopy3 = self;
        v26 = metadataCopy;
        v27 = v12;
        goto LABEL_49;
      }

LABEL_54:
      identifier5 = [metadataCopy identifier];
      *buf = 138543618;
      v61 = v12;
      v62 = 2114;
      v63 = identifier5;

      goto LABEL_55;
    }

    v37 = preferredBundleIdentifier;
    bundleIdentifier6 = [v12 bundleIdentifier];
    preferredBundleIdentifier2 = [signalsCopy preferredBundleIdentifier];
    v40 = bundleIdentifier6;
    v41 = preferredBundleIdentifier2;
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
    bundleIdentifier7 = [v11 bundleIdentifier];
    v45 = [v43 bundleLinkedOnOrAfter2024:bundleIdentifier7];

    v46 = getLNLogCategoryPolicy();
    v37 = v46;
    if (v45)
    {
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        preferredBundleIdentifier3 = [signalsCopy preferredBundleIdentifier];
        *buf = 138543362;
        v61 = preferredBundleIdentifier3;
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
    identifier6 = [metadataCopy identifier];
    bundleIdentifier8 = [v14 bundleIdentifier];
    *buf = 138543618;
    v61 = identifier6;
    v62 = 2114;
    v63 = bundleIdentifier8;
  }

  bundleIdentifier = [signalsCopy preferredBundleIdentifier];
  processInstanceIdentifier = [signalsCopy processInstanceIdentifier];
  v20 = [self policyWithEnumMetadata:metadataCopy effectiveBundleIdentifier:v14 appBundleIdentifier:bundleIdentifier processInstanceIdentifier:processInstanceIdentifier];

LABEL_50:
  v52 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (id)policyWithEntityQueryMetadata:(id)metadata signals:(id)signals
{
  v69 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  signalsCopy = signals;
  v8 = getLNLogCategoryPolicy();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    identifier = [metadataCopy identifier];
    v10 = identifier;
    v11 = @"<not provided>";
    if (signalsCopy)
    {
      v11 = signalsCopy;
    }

    *buf = 138543618;
    v66 = identifier;
    v67 = 2114;
    v68 = v11;
    _os_log_impl(&dword_19763D000, v8, OS_LOG_TYPE_INFO, "Requesting policy for query: %{public}@ using signals: %{public}@", buf, 0x16u);
  }

  effectiveBundleIdentifiers = [metadataCopy effectiveBundleIdentifiers];
  array = [effectiveBundleIdentifiers array];
  allowedTargets = [metadataCopy allowedTargets];
  v63 = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  [self resolveEffectiveBundleIdentifiers:array allowedTargets:allowedTargets appBundleIdentifier:&v64 extensionBundleIdentifier:&v63 daemonBundleIdentifier:&v62 frameworkBundleIdentifier:&v61 signals:signalsCopy];
  v15 = v64;
  v16 = v63;
  v17 = v62;
  v18 = v61;

  if (v18)
  {
    v19 = getLNLogCategoryPolicy();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      identifier2 = [metadataCopy identifier];
      bundleIdentifier = [v18 bundleIdentifier];
      *buf = 138543618;
      v66 = identifier2;
      v67 = 2114;
      v68 = bundleIdentifier;
    }

    preferredBundleIdentifier = [(__CFString *)signalsCopy preferredBundleIdentifier];
    processInstanceIdentifier = [(__CFString *)signalsCopy processInstanceIdentifier];
    v24 = [self policyWithQueryMetadata:metadataCopy effectiveBundleIdentifier:v18 appBundleIdentifier:preferredBundleIdentifier processInstanceIdentifier:processInstanceIdentifier];

    goto LABEL_17;
  }

  if (v15 && !v16 && !v17)
  {
    v25 = getLNLogCategoryPolicy();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
LABEL_15:

      preferredBundleIdentifier = [v15 bundleIdentifier];
      selfCopy4 = self;
      v30 = metadataCopy;
      v31 = v15;
LABEL_16:
      v24 = [selfCopy4 policyWithQueryMetadata:v30 effectiveBundleIdentifier:v31 appBundleIdentifier:preferredBundleIdentifier processInstanceIdentifier:0];
LABEL_17:

      goto LABEL_18;
    }

    identifier3 = [metadataCopy identifier];
    bundleIdentifier2 = [v15 bundleIdentifier];
    *buf = 138543618;
    v66 = identifier3;
    v67 = 2114;
    v68 = bundleIdentifier2;
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
        identifier4 = [metadataCopy identifier];
        bundleIdentifier3 = [v17 bundleIdentifier];
        *buf = 138543618;
        v66 = identifier4;
        v67 = 2114;
        v68 = bundleIdentifier3;
      }

      selfCopy5 = self;
      v38 = metadataCopy;
      v39 = v17;
      goto LABEL_33;
    }

    preferredBundleIdentifier2 = [(__CFString *)signalsCopy preferredBundleIdentifier];
    if (!preferredBundleIdentifier2)
    {
LABEL_50:
      bundleIdentifier4 = [v15 bundleIdentifier];
      v56 = [self shouldExecuteActionOnApplicationWithBundleIdentifier:bundleIdentifier4 allowSuspended:1];

      v25 = getLNLogCategoryPolicy();
      v57 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
      if (v56)
      {
        if (!v57)
        {
          goto LABEL_15;
        }

        identifier3 = [v15 bundleIdentifier];
        bundleIdentifier2 = [metadataCopy identifier];
        *buf = 138543618;
        v66 = identifier3;
        v67 = 2114;
        v68 = bundleIdentifier2;
        goto LABEL_14;
      }

      if (v17)
      {
        if (v57)
        {
          identifier5 = [metadataCopy identifier];
          *buf = 138543618;
          v66 = v17;
          v67 = 2114;
          v68 = identifier5;
        }

        preferredBundleIdentifier = [v15 bundleIdentifier];
        selfCopy4 = self;
        v30 = metadataCopy;
        v31 = v17;
        goto LABEL_16;
      }

      if (!v57)
      {
LABEL_59:

        preferredBundleIdentifier = [v15 bundleIdentifier];
        selfCopy4 = self;
        v30 = metadataCopy;
        v31 = v16;
        goto LABEL_16;
      }

LABEL_58:
      identifier6 = [metadataCopy identifier];
      *buf = 138543618;
      v66 = v16;
      v67 = 2114;
      v68 = identifier6;

      goto LABEL_59;
    }

    v44 = preferredBundleIdentifier2;
    bundleIdentifier5 = [v16 bundleIdentifier];
    preferredBundleIdentifier3 = [(__CFString *)signalsCopy preferredBundleIdentifier];
    v47 = bundleIdentifier5;
    v48 = preferredBundleIdentifier3;
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
    bundleIdentifier6 = [v15 bundleIdentifier];
    v52 = [v50 bundleLinkedOnOrAfter2024:bundleIdentifier6];

    v53 = getLNLogCategoryPolicy();
    v44 = v53;
    if (v52)
    {
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        preferredBundleIdentifier4 = [(__CFString *)signalsCopy preferredBundleIdentifier];
        *buf = 138543362;
        v66 = preferredBundleIdentifier4;
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
    identifier7 = [metadataCopy identifier];
    bundleIdentifier7 = [v16 bundleIdentifier];
    *buf = 138543618;
    v66 = identifier7;
    v67 = 2114;
    v68 = bundleIdentifier7;
  }

  selfCopy5 = self;
  v38 = metadataCopy;
  v39 = v16;
LABEL_33:
  v24 = [selfCopy5 policyWithQueryMetadata:v38 effectiveBundleIdentifier:v39 appBundleIdentifier:0 processInstanceIdentifier:0];
LABEL_18:

  v32 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)policyWithEntityMetadata:(id)metadata signals:(id)signals
{
  v68 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  signalsCopy = signals;
  v8 = getLNLogCategoryPolicy();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    identifier = [metadataCopy identifier];
    v10 = identifier;
    v11 = @"<not provided>";
    if (signalsCopy)
    {
      v11 = signalsCopy;
    }

    *buf = 138543618;
    v65 = identifier;
    v66 = 2114;
    v67 = v11;
    _os_log_impl(&dword_19763D000, v8, OS_LOG_TYPE_INFO, "Requesting policy for entity: %{public}@ using signals: %{public}@", buf, 0x16u);
  }

  effectiveBundleIdentifiers = [metadataCopy effectiveBundleIdentifiers];
  array = [effectiveBundleIdentifiers array];
  allowedTargets = [metadataCopy allowedTargets];
  v62 = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  [self resolveEffectiveBundleIdentifiers:array allowedTargets:allowedTargets appBundleIdentifier:&v63 extensionBundleIdentifier:&v62 daemonBundleIdentifier:&v61 frameworkBundleIdentifier:&v60 signals:signalsCopy];
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

        bundleIdentifier = [v15 bundleIdentifier];
        selfCopy3 = self;
        v30 = metadataCopy;
        v31 = v15;
LABEL_53:
        v24 = [selfCopy3 policyWithEntityMetadata:v30 effectiveBundleIdentifier:v31 appBundleIdentifier:bundleIdentifier processInstanceIdentifier:0];
        goto LABEL_54;
      }

      identifier2 = [metadataCopy identifier];
      bundleIdentifier2 = [v15 bundleIdentifier];
      *buf = 138543618;
      v65 = identifier2;
      v66 = 2114;
      v67 = bundleIdentifier2;
LABEL_14:
      _os_log_impl(&dword_19763D000, v25, OS_LOG_TYPE_INFO, v28, buf, 0x16u);

      goto LABEL_15;
    }

    if (v16 && !v15 && !v17)
    {
      v32 = getLNLogCategoryPolicy();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        identifier3 = [metadataCopy identifier];
        bundleIdentifier3 = [v16 bundleIdentifier];
        *buf = 138543618;
        v65 = identifier3;
        v66 = 2114;
        v67 = bundleIdentifier3;
      }

      v35 = 0;
      goto LABEL_22;
    }

    if (v17 && !v15 && !v16)
    {
      v36 = getLNLogCategoryPolicy();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        identifier4 = [metadataCopy identifier];
        bundleIdentifier4 = [v17 bundleIdentifier];
        *buf = 138543618;
        v65 = identifier4;
        v66 = 2114;
        v67 = bundleIdentifier4;
      }

      v39 = 0;
LABEL_52:
      bundleIdentifier = [v39 bundleIdentifier];
      selfCopy3 = self;
      v30 = metadataCopy;
      v31 = v17;
      goto LABEL_53;
    }

    preferredBundleIdentifier = [(__CFString *)signalsCopy preferredBundleIdentifier];
    if (!preferredBundleIdentifier)
    {
LABEL_45:
      bundleIdentifier5 = [v15 bundleIdentifier];
      v53 = [self shouldExecuteActionOnApplicationWithBundleIdentifier:bundleIdentifier5 allowSuspended:1];

      v25 = getLNLogCategoryPolicy();
      v54 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
      if (v53)
      {
        if (!v54)
        {
          goto LABEL_15;
        }

        identifier2 = [v15 bundleIdentifier];
        bundleIdentifier2 = [metadataCopy identifier];
        *buf = 138543618;
        v65 = identifier2;
        v66 = 2114;
        v67 = bundleIdentifier2;
        goto LABEL_14;
      }

      if (v17)
      {
        if (v54)
        {
          identifier5 = [metadataCopy identifier];
          *buf = 138543618;
          v65 = v17;
          v66 = 2114;
          v67 = identifier5;
        }

        v39 = v15;
        goto LABEL_52;
      }

      if (!v54)
      {
LABEL_59:

        v35 = v15;
LABEL_22:
        bundleIdentifier = [v35 bundleIdentifier];
        selfCopy3 = self;
        v30 = metadataCopy;
        v31 = v16;
        goto LABEL_53;
      }

LABEL_58:
      identifier6 = [metadataCopy identifier];
      *buf = 138543618;
      v65 = v16;
      v66 = 2114;
      v67 = identifier6;

      goto LABEL_59;
    }

    v41 = preferredBundleIdentifier;
    bundleIdentifier6 = [v16 bundleIdentifier];
    preferredBundleIdentifier2 = [(__CFString *)signalsCopy preferredBundleIdentifier];
    v44 = bundleIdentifier6;
    v45 = preferredBundleIdentifier2;
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
    bundleIdentifier7 = [v15 bundleIdentifier];
    v49 = [v47 bundleLinkedOnOrAfter2024:bundleIdentifier7];

    v50 = getLNLogCategoryPolicy();
    v41 = v50;
    if (v49)
    {
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        preferredBundleIdentifier3 = [(__CFString *)signalsCopy preferredBundleIdentifier];
        *buf = 138543362;
        v65 = preferredBundleIdentifier3;
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
    identifier7 = [metadataCopy identifier];
    bundleIdentifier8 = [v18 bundleIdentifier];
    *buf = 138543618;
    v65 = identifier7;
    v66 = 2114;
    v67 = bundleIdentifier8;
  }

  bundleIdentifier = [(__CFString *)signalsCopy preferredBundleIdentifier];
  processInstanceIdentifier = [(__CFString *)signalsCopy processInstanceIdentifier];
  v24 = [self policyWithEntityMetadata:metadataCopy effectiveBundleIdentifier:v18 appBundleIdentifier:bundleIdentifier processInstanceIdentifier:processInstanceIdentifier];

LABEL_54:
  v56 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)policyWithActionMetadata:(id)metadata signals:(id)signals
{
  v78 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  signalsCopy = signals;
  v8 = getLNLogCategoryPolicy();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    identifier = [metadataCopy identifier];
    v10 = identifier;
    v11 = @"<not provided>";
    if (signalsCopy)
    {
      v11 = signalsCopy;
    }

    *buf = 138543618;
    v75 = identifier;
    v76 = 2114;
    v77 = v11;
    _os_log_impl(&dword_19763D000, v8, OS_LOG_TYPE_INFO, "Requesting policy for intent: %{public}@ using signals: %{public}@", buf, 0x16u);
  }

  effectiveBundleIdentifiers = [metadataCopy effectiveBundleIdentifiers];
  array = [effectiveBundleIdentifiers array];
  allowedTargets = [metadataCopy allowedTargets];
  v72 = 0;
  v73 = 0;
  v70 = 0;
  v71 = 0;
  [self resolveEffectiveBundleIdentifiers:array allowedTargets:allowedTargets appBundleIdentifier:&v73 extensionBundleIdentifier:&v72 daemonBundleIdentifier:&v71 frameworkBundleIdentifier:&v70 signals:signalsCopy];
  v15 = v73;
  v16 = v72;
  v17 = v71;
  v18 = v70;

  if (v18)
  {
    v19 = getLNLogCategoryPolicy();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      identifier2 = [metadataCopy identifier];
      bundleIdentifier = [v18 bundleIdentifier];
      *buf = 138543618;
      v75 = identifier2;
      v76 = 2114;
      v77 = bundleIdentifier;
    }

    preferredBundleIdentifier = [(__CFString *)signalsCopy preferredBundleIdentifier];
    processInstanceIdentifier = [(__CFString *)signalsCopy processInstanceIdentifier];
    selfCopy6 = self;
    v25 = metadataCopy;
    v26 = v18;
    v27 = preferredBundleIdentifier;
    v28 = processInstanceIdentifier;
    goto LABEL_9;
  }

  if (!v15 || v16 || v17)
  {
    if (v16 && !v15 && !v17)
    {
      v36 = getLNLogCategoryPolicy();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        identifier3 = [metadataCopy identifier];
        bundleIdentifier2 = [v16 bundleIdentifier];
        *buf = 138543618;
        v75 = identifier3;
        v76 = 2114;
        v77 = bundleIdentifier2;
      }

      preferredBundleIdentifier = [0 bundleIdentifier];
      selfCopy7 = self;
      v34 = metadataCopy;
      v35 = v16;
      goto LABEL_28;
    }

    if (v17 && !v15 && !v16)
    {
      v39 = getLNLogCategoryPolicy();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        identifier4 = [metadataCopy identifier];
        bundleIdentifier3 = [v17 bundleIdentifier];
        *buf = 138543618;
        v75 = identifier4;
        v76 = 2114;
        v77 = bundleIdentifier3;
      }

      preferredBundleIdentifier = [0 bundleIdentifier];
      selfCopy7 = self;
      v34 = metadataCopy;
      v35 = v17;
      goto LABEL_28;
    }

    v69 = 0;
    v44 = [self shouldExecuteActionOnApplicationWithActionMetadata:metadataCopy signals:signalsCopy reason:&v69];
    preferredBundleIdentifier = v69;
    if (v44)
    {
      v45 = getLNLogCategoryPolicy();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        bundleIdentifier4 = [v15 bundleIdentifier];
        *buf = 138543618;
        v75 = bundleIdentifier4;
        v76 = 2114;
        v77 = preferredBundleIdentifier;
      }

LABEL_54:

      processInstanceIdentifier = [v15 bundleIdentifier];
      selfCopy6 = self;
      v25 = metadataCopy;
      v26 = v15;
LABEL_55:
      v27 = processInstanceIdentifier;
      v28 = 0;
LABEL_9:
      v29 = [selfCopy6 policyWithActionMetadata:v25 effectiveBundleIdentifier:v26 appBundleIdentifier:v27 processInstanceIdentifier:v28];

      goto LABEL_29;
    }

    preferredBundleIdentifier2 = [(__CFString *)signalsCopy preferredBundleIdentifier];
    if (!preferredBundleIdentifier2)
    {
LABEL_51:
      bundleIdentifier5 = [v15 bundleIdentifier];
      v60 = [self shouldExecuteActionOnApplicationWithBundleIdentifier:bundleIdentifier5 allowSuspended:1];

      v45 = getLNLogCategoryPolicy();
      v61 = os_log_type_enabled(v45, OS_LOG_TYPE_INFO);
      if (v60)
      {
        if (v61)
        {
          bundleIdentifier6 = [v15 bundleIdentifier];
          identifier5 = [metadataCopy identifier];
          *buf = 138543618;
          v75 = bundleIdentifier6;
          v76 = 2114;
          v77 = identifier5;
          v63 = identifier5;
        }

        goto LABEL_54;
      }

      if (v17)
      {
        if (v61)
        {
          identifier6 = [metadataCopy identifier];
          *buf = 138543618;
          v75 = v17;
          v76 = 2114;
          v77 = identifier6;
        }

        processInstanceIdentifier = [v15 bundleIdentifier];
        selfCopy6 = self;
        v25 = metadataCopy;
        v26 = v17;
        goto LABEL_55;
      }

      if (!v61)
      {
LABEL_62:

        processInstanceIdentifier = [v15 bundleIdentifier];
        selfCopy6 = self;
        v25 = metadataCopy;
        v26 = v16;
        goto LABEL_55;
      }

LABEL_61:
      identifier7 = [metadataCopy identifier];
      *buf = 138543618;
      v75 = v16;
      v76 = 2114;
      v77 = identifier7;

      goto LABEL_62;
    }

    v67 = preferredBundleIdentifier2;
    bundleIdentifier7 = [v16 bundleIdentifier];
    preferredBundleIdentifier3 = [(__CFString *)signalsCopy preferredBundleIdentifier];
    v50 = bundleIdentifier7;
    v51 = preferredBundleIdentifier3;
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
    bundleIdentifier8 = [v15 bundleIdentifier];
    LODWORD(v54) = [v54 bundleLinkedOnOrAfter2024:bundleIdentifier8];

    v56 = getLNLogCategoryPolicy();
    v57 = v56;
    if (v54)
    {
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        preferredBundleIdentifier4 = [(__CFString *)signalsCopy preferredBundleIdentifier];
        *buf = 138543362;
        v75 = preferredBundleIdentifier4;
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
    identifier8 = [metadataCopy identifier];
    bundleIdentifier9 = [v15 bundleIdentifier];
    *buf = 138543618;
    v75 = identifier8;
    v76 = 2114;
    v77 = bundleIdentifier9;
  }

  preferredBundleIdentifier = [v15 bundleIdentifier];
  selfCopy7 = self;
  v34 = metadataCopy;
  v35 = v15;
LABEL_28:
  v29 = [selfCopy7 policyWithActionMetadata:v34 effectiveBundleIdentifier:v35 appBundleIdentifier:preferredBundleIdentifier processInstanceIdentifier:0];
LABEL_29:

  v42 = *MEMORY[0x1E69E9840];

  return v29;
}

@end