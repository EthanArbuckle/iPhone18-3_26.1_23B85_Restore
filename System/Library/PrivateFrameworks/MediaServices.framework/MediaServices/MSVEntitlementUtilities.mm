@interface MSVEntitlementUtilities
+ (BOOL)_checkEntitlement:(id)entitlement inGroup:(id)group shouldLogForMissingEntitlement:(BOOL)missingEntitlement;
+ (id)_checkArrayEntitlement:(id)entitlement group:(id)group task:(__SecTask *)task;
+ (id)_checkBooleanEntitlement:(id)entitlement task:(__SecTask *)task;
+ (void)_logForMissingEntitlementWithResult:(id)result;
@end

@implementation MSVEntitlementUtilities

+ (void)_logForMissingEntitlementWithResult:(id)result
{
  v29 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  error = [resultCopy error];
  if (error)
  {
  }

  else if ([resultCopy isEntitled])
  {
    goto LABEL_7;
  }

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  v7 = os_log_create("com.apple.amp.MediaServices", "Entitlements");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    processName = [processInfo processName];
    processIdentifier = [processInfo processIdentifier];
    group = [resultCopy group];
    entitlement = [resultCopy entitlement];
    isEntitled = [resultCopy isEntitled];
    error2 = [resultCopy error];
    v15 = 138544898;
    selfCopy = self;
    v17 = 2114;
    v18 = processName;
    v19 = 1024;
    v20 = processIdentifier;
    v21 = 2114;
    v22 = group;
    v23 = 2114;
    v24 = entitlement;
    v25 = 1024;
    v26 = isEntitled;
    v27 = 2114;
    v28 = error2;
    _os_log_impl(&dword_1AC81F000, v7, OS_LOG_TYPE_ERROR, "%{public}@ - Process %{public}@ PID[%d] - Group: %{public}@ - Entitlement: %{public}@ - Entitled: %{BOOL}u - Error: %{public}@", &v15, 0x40u);
  }

LABEL_7:
  v14 = *MEMORY[0x1E69E9840];
}

+ (id)_checkBooleanEntitlement:(id)entitlement task:(__SecTask *)task
{
  entitlementCopy = entitlement;
  v6 = [[_EntitlementCheckResult alloc] initWithEntitlement:entitlementCopy group:0];
  error = 0;
  v7 = SecTaskCopyValueForEntitlement(task, entitlementCopy, &error);

  if (v7)
  {
    v8 = CFGetTypeID(v7);
    if (v8 == CFBooleanGetTypeID())
    {
      [(_EntitlementCheckResult *)v6 setEntitled:CFBooleanGetValue(v7) != 0];
    }

    CFRelease(v7);
  }

  v9 = error;
  if (error)
  {
    [(_EntitlementCheckResult *)v6 setError:error];

    CFRelease(error);
  }

  return v6;
}

+ (id)_checkArrayEntitlement:(id)entitlement group:(id)group task:(__SecTask *)task
{
  entitlementCopy = entitlement;
  groupCopy = group;
  v9 = [[_EntitlementCheckResult alloc] initWithEntitlement:entitlementCopy group:groupCopy];
  error = 0;
  v10 = SecTaskCopyValueForEntitlement(task, groupCopy, &error);

  if (v10)
  {
    v11 = CFGetTypeID(v10);
    if (v11 == CFArrayGetTypeID())
    {
      -[_EntitlementCheckResult setEntitled:](v9, "setEntitled:", [v10 containsObject:entitlementCopy]);
    }

    CFRelease(v10);
  }

  v12 = error;
  if (error)
  {
    [(_EntitlementCheckResult *)v9 setError:error];

    CFRelease(error);
  }

  return v9;
}

+ (BOOL)_checkEntitlement:(id)entitlement inGroup:(id)group shouldLogForMissingEntitlement:(BOOL)missingEntitlement
{
  missingEntitlementCopy = missingEntitlement;
  entitlementCopy = entitlement;
  groupCopy = group;
  v10 = SecTaskCreateFromSelf(0);
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = v10;
  if (groupCopy)
  {
    [self _checkArrayEntitlement:entitlementCopy group:groupCopy task:v10];
  }

  else
  {
    [self _checkBooleanEntitlement:entitlementCopy task:v10];
  }
  v12 = ;
  CFRelease(v11);
  if (!v12)
  {
LABEL_6:
    v12 = [[_EntitlementCheckResult alloc] initWithEntitlement:entitlementCopy group:groupCopy];
  }

  if (missingEntitlementCopy)
  {
    [self _logForMissingEntitlementWithResult:v12];
  }

  isEntitled = [(_EntitlementCheckResult *)v12 isEntitled];

  return isEntitled;
}

@end