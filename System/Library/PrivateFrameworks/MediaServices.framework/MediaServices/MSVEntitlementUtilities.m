@interface MSVEntitlementUtilities
+ (BOOL)_checkEntitlement:(id)a3 inGroup:(id)a4 shouldLogForMissingEntitlement:(BOOL)a5;
+ (id)_checkArrayEntitlement:(id)a3 group:(id)a4 task:(__SecTask *)a5;
+ (id)_checkBooleanEntitlement:(id)a3 task:(__SecTask *)a4;
+ (void)_logForMissingEntitlementWithResult:(id)a3;
@end

@implementation MSVEntitlementUtilities

+ (void)_logForMissingEntitlementWithResult:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 error];
  if (v5)
  {
  }

  else if ([v4 isEntitled])
  {
    goto LABEL_7;
  }

  v6 = [MEMORY[0x1E696AE30] processInfo];
  v7 = os_log_create("com.apple.amp.MediaServices", "Entitlements");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [v6 processName];
    v9 = [v6 processIdentifier];
    v10 = [v4 group];
    v11 = [v4 entitlement];
    v12 = [v4 isEntitled];
    v13 = [v4 error];
    v15 = 138544898;
    v16 = a1;
    v17 = 2114;
    v18 = v8;
    v19 = 1024;
    v20 = v9;
    v21 = 2114;
    v22 = v10;
    v23 = 2114;
    v24 = v11;
    v25 = 1024;
    v26 = v12;
    v27 = 2114;
    v28 = v13;
    _os_log_impl(&dword_1AC81F000, v7, OS_LOG_TYPE_ERROR, "%{public}@ - Process %{public}@ PID[%d] - Group: %{public}@ - Entitlement: %{public}@ - Entitled: %{BOOL}u - Error: %{public}@", &v15, 0x40u);
  }

LABEL_7:
  v14 = *MEMORY[0x1E69E9840];
}

+ (id)_checkBooleanEntitlement:(id)a3 task:(__SecTask *)a4
{
  v5 = a3;
  v6 = [[_EntitlementCheckResult alloc] initWithEntitlement:v5 group:0];
  error = 0;
  v7 = SecTaskCopyValueForEntitlement(a4, v5, &error);

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

+ (id)_checkArrayEntitlement:(id)a3 group:(id)a4 task:(__SecTask *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [[_EntitlementCheckResult alloc] initWithEntitlement:v7 group:v8];
  error = 0;
  v10 = SecTaskCopyValueForEntitlement(a5, v8, &error);

  if (v10)
  {
    v11 = CFGetTypeID(v10);
    if (v11 == CFArrayGetTypeID())
    {
      -[_EntitlementCheckResult setEntitled:](v9, "setEntitled:", [v10 containsObject:v7]);
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

+ (BOOL)_checkEntitlement:(id)a3 inGroup:(id)a4 shouldLogForMissingEntitlement:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = SecTaskCreateFromSelf(0);
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = v10;
  if (v9)
  {
    [a1 _checkArrayEntitlement:v8 group:v9 task:v10];
  }

  else
  {
    [a1 _checkBooleanEntitlement:v8 task:v10];
  }
  v12 = ;
  CFRelease(v11);
  if (!v12)
  {
LABEL_6:
    v12 = [[_EntitlementCheckResult alloc] initWithEntitlement:v8 group:v9];
  }

  if (v5)
  {
    [a1 _logForMissingEntitlementWithResult:v12];
  }

  v13 = [(_EntitlementCheckResult *)v12 isEntitled];

  return v13;
}

@end