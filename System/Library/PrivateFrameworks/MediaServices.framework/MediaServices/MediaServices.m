id MSVBundleIDForAuditToken(_OWORD *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  v3 = a1[1];
  *token.val = *a1;
  *&token.val[4] = v3;
  v4 = SecTaskCreateWithAuditToken(v2, &token);
  if (v4)
  {
    v5 = a1[1];
    *token.val = *a1;
    *&token.val[4] = v5;
    v6 = audit_token_to_pid(&token);
  }

  else
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *MSVBundleIDForAuditToken(audit_token_t)"];
    [v20 handleFailureInFunction:v21 file:@"MSVSystemUtilities.m" lineNumber:61 description:@"Failed to get SecTask from audit_token"];

    v22 = a1[1];
    *token.val = *a1;
    *&token.val[4] = v22;
    v6 = audit_token_to_pid(&token);
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString *_MSVBundleIDForSecTask(SecTaskRef, pid_t, BOOL)"}];
    [v23 handleFailureInFunction:v24 file:@"MSVSystemUtilities.m" lineNumber:1030 description:{@"Invalid parameter not satisfying: %@", @"task"}];
  }

  v7 = SecTaskCopyValueForEntitlement(v4, @"application-identifier", 0);
  v8 = os_log_create("com.apple.amp.MediaServices", "Entitlements");
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      token.val[0] = 138543618;
      *&token.val[1] = @"application-identifier";
      LOWORD(token.val[3]) = 2114;
      *(&token.val[3] + 2) = v7;
      _os_log_impl(&dword_1AC81F000, v9, OS_LOG_TYPE_DEFAULT, "Retrieved %{public}@ from SecTask: applicationID=%{public}@", &token, 0x16u);
    }

    v10 = v7;
    if ([v10 length] >= 0xB && objc_msgSend(v10, "characterAtIndex:", 10) == 46)
    {
      v11 = 0;
      do
      {
        v12 = [v10 characterAtIndex:v11];
        v14 = (v12 - 65) < 0x1A || (v12 - 48) < 0xA;
        if (v11 > 8)
        {
          break;
        }

        ++v11;
      }

      while (v14);
      if (v14)
      {
        v15 = [v10 substringWithRange:{11, objc_msgSend(v10, "length") - 11}];

        v10 = v15;
      }

      v16 = os_log_create("com.apple.amp.MediaServices", "Entitlements");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        token.val[0] = 138543874;
        *&token.val[1] = @"application-identifier";
        LOWORD(token.val[3]) = 1024;
        *(&token.val[3] + 2) = v14;
        HIWORD(token.val[4]) = 2114;
        *&token.val[5] = v10;
        _os_log_impl(&dword_1AC81F000, v16, OS_LOG_TYPE_DEFAULT, "Processed teamID from %{public}@: teamIDIsValid=%{BOOL}u bundleID=%{public}@", &token, 0x1Cu);
      }
    }

    v17 = v10;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      token.val[0] = 138543874;
      *&token.val[1] = @"application-identifier";
      LOWORD(token.val[3]) = 2114;
      *(&token.val[3] + 2) = @"application-identifier";
      HIWORD(token.val[5]) = 2048;
      *&token.val[6] = v6;
      _os_log_impl(&dword_1AC81F000, v9, OS_LOG_TYPE_FAULT, "Failed to retrieve %{public}@ from SecTask. This typically indicates that the process is missing the %{public}@ entitlement. It must match the process' bundle identifier. This is a client-issue. Check the crash report for the Coalition process. PID: %lld", &token, 0x20u);
    }

    v17 = 0;
  }

  CFRelease(v4);
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

BOOL msv_dispatch_sync_on_queue(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v4;
  if (v5 == MEMORY[0x1E69E96A0] && pthread_main_np() == 1)
  {
    v6[2](v6);
    v7 = 1;
  }

  else
  {
    key = &key;
    dispatch_queue_set_specific(v5, &key, 1, 0);
    v8 = key;
    specific = dispatch_get_specific(key);
    dispatch_queue_set_specific(v5, v8, 0, 0);
    v7 = specific == 1;
    if (specific == 1)
    {
      v6[2](v6);
    }

    else
    {
      dispatch_sync(v5, v6);
    }
  }

  return v7;
}

_DWORD *__MSVLogAddStateHandler_block_invoke(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 16);
  v4 = MSVNanoIDCreateWithCharacters(@"eilotrmapdnsIcufkMShjTRxgC4013bDNvwyUL2O856PB79AFKEWVzGJHYX", 9);
  if (v3 == 3)
  {
    v5 = os_log_create("com.apple.amp.MediaServices", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v19 = 138543618;
      v20 = v6;
      v21 = 2114;
      v22 = v4;
      _os_log_impl(&dword_1AC81F000, v5, OS_LOG_TYPE_DEFAULT, "MSVStateHandler callout [begin] name=%{public}@ id=%{public}@", &v19, 0x16u);
    }

    v7 = (*(*(a1 + 40) + 16))();
    v8 = os_log_create("com.apple.amp.MediaServices", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v19 = 138543618;
      v20 = v9;
      v21 = 2114;
      v22 = v4;
      _os_log_impl(&dword_1AC81F000, v8, OS_LOG_TYPE_DEFAULT, "MSVStateHandler callout [end] name=%{public}@ id=%{public}@", &v19, 0x16u);
    }

    if (v7)
    {
      goto LABEL_7;
    }

LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  v7 = (*(*(a1 + 40) + 16))();
  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_7:
  v10 = malloc_type_calloc(1uLL, [v7 length] + 200, 0x1000040BEF03554uLL);
  v11 = v10;
  if (v10)
  {
    *v10 = 1;
    v10[1] = [v7 length];
    v12 = [*(a1 + 32) dataUsingEncoding:4];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 bytes];
      v15 = [v13 length];
      if (v15 >= 0x3F)
      {
        v16 = 63;
      }

      else
      {
        v16 = v15;
      }

      memcpy(v11 + 34, v14, v16);
    }

    memcpy(v11 + 50, [v7 bytes], objc_msgSend(v7, "length"));
  }

LABEL_16:

  v17 = *MEMORY[0x1E69E9840];
  return v11;
}

id MSVNanoIDCreateWithCharacters(void *a1, int64_t a2)
{
  v3 = a1;
  if (_MSVNanoIDSharedArc4State_onceToken != -1)
  {
    dispatch_once(&_MSVNanoIDSharedArc4State_onceToken, &__block_literal_global_5193);
  }

  if (__MSVNanoIDTestingArc4State)
  {
    v4 = __MSVNanoIDTestingArc4State;
  }

  else
  {
    v4 = _MSVNanoIDSharedArc4State__state;
  }

  v5 = v3;
  v6 = malloc_type_malloc(a2, 0x7E28DA05uLL);
  v7 = v6;
  LODWORD(v9) = *v4;
  v8 = *(v4 + 4);
  if (a2)
  {
    v10 = *(v4 + 8);
    v11 = v6;
    v12 = a2;
    do
    {
      v9 = (v9 + 1);
      v13 = *(v10 + v9);
      LOBYTE(v8) = v13 + v8;
      *(v10 + v9) = *(v10 + v8);
      *(v10 + v8) = v13;
      *v11++ = *(v10 + (*(v10 + v9) + v13));
      --v12;
    }

    while (v12);
    v8 = v8;
  }

  *v4 = v9;
  *(v4 + 4) = v8;
  v14 = [v5 length];
  v15 = [v5 cStringUsingEncoding:4];
  if (a2 >= 1)
  {
    v16 = v7;
    v17 = a2;
    do
    {
      *v16 = *(v15 + *v16 % v14);
      ++v16;
      --v17;
    }

    while (v17);
  }

  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v7 length:a2 encoding:4 freeWhenDone:1];

  return v18;
}

uint64_t MSVHasherSharedSeed()
{
  if (MSVHasherSharedSeed_onceToken != -1)
  {
    dispatch_once(&MSVHasherSharedSeed_onceToken, &__block_literal_global);
  }

  return MSVHasherSharedSeed___seed_0;
}

void __MSVHasherSharedSeed_block_invoke()
{
  if (MSVHasherSharedSeed___seed_0)
  {
    v0 = MSVHasherSharedSeed___seed_1 == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    do
    {
      MSVHasherSharedSeed___seed_0 = arc4random();
      v1 = arc4random();
      MSVHasherSharedSeed___seed_1 = v1;
      if (MSVHasherSharedSeed___seed_0)
      {
        v2 = v1 == 0;
      }

      else
      {
        v2 = 1;
      }
    }

    while (v2);
  }
}

id MSVTCCIdentityForCurrentProcess()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = [v0 bundleIdentifier];
    v3 = MSVTCCIdentityForBundleID(v2);
LABEL_5:
    v5 = v3;

    goto LABEL_6;
  }

  v4 = [v0 executablePath];

  if (v4)
  {
    v2 = [v0 executablePath];
    [v2 UTF8String];
    v3 = tcc_identity_create();
    goto LABEL_5;
  }

  v5 = 0;
LABEL_6:

  return v5;
}

id MSVTCCIdentityForBundleID(void *a1)
{
  if (a1)
  {
    [a1 UTF8String];
    a1 = tcc_identity_create();
    v1 = vars8;
  }

  return a1;
}

void sub_1AC821864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MSVPropertyListDataClasses_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  MSVPropertyListDataClasses___msvPropertyListDataClasses = [v0 initWithObjects:{v1, v2, v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];

  return MEMORY[0x1EEE66BB8]();
}

id MSVPropertyListDataClasses()
{
  if (MSVPropertyListDataClasses___once != -1)
  {
    dispatch_once(&MSVPropertyListDataClasses___once, &__block_literal_global_3707);
  }

  v1 = MSVPropertyListDataClasses___msvPropertyListDataClasses;

  return v1;
}

id MSVGetDeviceProductType()
{
  if (MSVGetDeviceProductType___once != -1)
  {
    dispatch_once(&MSVGetDeviceProductType___once, &__block_literal_global_138);
  }

  v1 = MSVGetDeviceProductType___deviceProductType;

  return v1;
}

uint64_t __MSVGetDeviceProductType_block_invoke()
{
  MSVGetDeviceProductType___deviceProductType = MGCopyAnswer();

  return MEMORY[0x1EEE66BB8]();
}

id MSVArchivedDataWithRootObject(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSData * _Nullable MSVArchivedDataWithRootObject(__strong id _Nonnull)"];
    [v5 handleFailureInFunction:v6 file:@"MSVSecureCodingUtilities.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"object"}];
  }

  v9 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v1 requiringSecureCoding:1 error:&v9];
  v3 = v9;
  if (v3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSData * _Nullable MSVArchivedDataWithRootObject(__strong id _Nonnull)"];
    [v7 handleFailureInFunction:v8 file:@"MSVSecureCodingUtilities.m" lineNumber:59 description:{@"Archiving root object:%@ resulted in error:%@", v1, v3}];
  }

  return v2;
}

BOOL msv_dispatch_async_on_queue(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v4;
  if (v5 == MEMORY[0x1E69E96A0] && pthread_main_np() == 1)
  {
    v6[2](v6);
    v7 = 1;
  }

  else
  {
    key = &key;
    dispatch_queue_set_specific(v5, &key, 1, 0);
    v8 = key;
    specific = dispatch_get_specific(key);
    dispatch_queue_set_specific(v5, v8, 0, 0);
    v7 = specific == 1;
    if (specific == 1)
    {
      v6[2](v6);
    }

    else
    {
      dispatch_async(v5, v6);
    }
  }

  return v7;
}

uint64_t MSVDeviceSupportsVocalAttenuation()
{
  if (MSVDeviceSupportsVocalAttenuation___once != -1)
  {
    dispatch_once(&MSVDeviceSupportsVocalAttenuation___once, &__block_literal_global_100);
  }

  return MSVDeviceSupportsVocalAttenuation_supportsVocalAttenuation;
}

void __MSVDeviceSupportsVocalAttenuation_block_invoke()
{
  v10 = MSVGetDeviceProductType();
  v0 = [MEMORY[0x1E696AB08] letterCharacterSet];
  v1 = [v10 stringByTrimmingCharactersInSet:v0];

  v2 = [v1 componentsSeparatedByString:{@", "}];
  v3 = [v2 firstObject];
  v4 = [v3 integerValue];

  if (MSVDeviceIsiPhone___once != -1)
  {
    dispatch_once(&MSVDeviceIsiPhone___once, &__block_literal_global_93);
  }

  if (MSVDeviceIsiPhone___deviceIsPhone == 1)
  {
    v5 = [v2 lastObject];
    v6 = [v5 integerValue];

    v8 = v4 == 12 && v6 == 8 || v4 <= 11;
    goto LABEL_14;
  }

  if (MSVDeviceIsiPad___once != -1)
  {
    dispatch_once(&MSVDeviceIsiPad___once, &__block_literal_global_1898);
  }

  if (MSVDeviceIsiPad___deviceIsiPad == 1)
  {
    v8 = v4 <= 11;
LABEL_14:
    v9 = !v8;
    MSVDeviceSupportsVocalAttenuation_supportsVocalAttenuation = v9;
  }
}

uint64_t __MSVDeviceIsiPhone_block_invoke()
{
  result = MGGetSInt32Answer();
  MSVDeviceIsiPhone___deviceIsPhone = result == 1;
  return result;
}

id MSVUnarchivedObjectOfClasses(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id  _Nullable MSVUnarchivedObjectOfClasses(NSSet<Class> *__strong _Nonnull, NSData *__strong _Nonnull)"}];
    [v9 handleFailureInFunction:v10 file:@"MSVSecureCodingUtilities.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"classes"}];

    if (v5)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id  _Nullable MSVUnarchivedObjectOfClasses(NSSet<Class> *__strong _Nonnull, NSData *__strong _Nonnull)"}];
  [v11 handleFailureInFunction:v12 file:@"MSVSecureCodingUtilities.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"data"}];

LABEL_3:
  v15 = 0;
  v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v3 fromData:v5 error:&v15];
  v7 = v15;
  if (v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id  _Nullable MSVUnarchivedObjectOfClasses(NSSet<Class> *__strong _Nonnull, NSData *__strong _Nonnull)"}];
    [v13 handleFailureInFunction:v14 file:@"MSVSecureCodingUtilities.m" lineNumber:49 description:{@"Unarchiving object of classes:%@ resulted in error:%@", v3, v7}];
  }

  return v6;
}

id _MSVXPCTransactionsGet()
{
  if (_MSVXPCTransactionsGet_onceToken != -1)
  {
    dispatch_once(&_MSVXPCTransactionsGet_onceToken, &__block_literal_global_2894);
  }

  v1 = _MSVXPCTransactionsGet___MSVXPCTransactions;

  return v1;
}

char *_MSV_XXH_XXH64_update(char *result, char *__src, size_t __n)
{
  if (__src)
  {
    v3 = __n;
    v4 = __src;
    v5 = result;
    *result += __n;
    v6 = *(result + 18);
    if (v6 + __n <= 0x1F)
    {
      result = memcpy(&result[v6 + 40], __src, __n);
      LODWORD(v7) = *(v5 + 18) + v3;
LABEL_12:
      *(v5 + 18) = v7;
      return result;
    }

    v8 = &__src[__n];
    if (v6)
    {
      result = memcpy(&result[v6 + 40], __src, (32 - v6));
      v9 = __ROR8__(*(v5 + 2) - 0x3D4D51C2D82B14B1 * *(v5 + 6), 33);
      *(v5 + 1) = 0x9E3779B185EBCA87 * __ROR8__(*(v5 + 1) - 0x3D4D51C2D82B14B1 * *(v5 + 5), 33);
      *(v5 + 2) = 0x9E3779B185EBCA87 * v9;
      v10 = 0x9E3779B185EBCA87 * __ROR8__(*(v5 + 4) - 0x3D4D51C2D82B14B1 * *(v5 + 8), 33);
      *(v5 + 3) = 0x9E3779B185EBCA87 * __ROR8__(*(v5 + 3) - 0x3D4D51C2D82B14B1 * *(v5 + 7), 33);
      *(v5 + 4) = v10;
      v4 += (32 - *(v5 + 18));
      *(v5 + 18) = 0;
    }

    if (v4 + 32 <= v8)
    {
      v11 = *(v5 + 1);
      v12 = *(v5 + 2);
      v14 = *(v5 + 3);
      v13 = *(v5 + 4);
      do
      {
        v11 = 0x9E3779B185EBCA87 * __ROR8__(v11 - 0x3D4D51C2D82B14B1 * *v4, 33);
        v12 = 0x9E3779B185EBCA87 * __ROR8__(v12 - 0x3D4D51C2D82B14B1 * *(v4 + 1), 33);
        v14 = 0x9E3779B185EBCA87 * __ROR8__(v14 - 0x3D4D51C2D82B14B1 * *(v4 + 2), 33);
        v13 = 0x9E3779B185EBCA87 * __ROR8__(v13 - 0x3D4D51C2D82B14B1 * *(v4 + 3), 33);
        v4 += 32;
      }

      while (v4 <= v8 - 32);
      *(v5 + 1) = v11;
      *(v5 + 2) = v12;
      *(v5 + 3) = v14;
      *(v5 + 4) = v13;
    }

    if (v4 < v8)
    {
      v7 = v8 - v4;
      result = memcpy(v5 + 40, v4, v7);
      goto LABEL_12;
    }
  }

  return result;
}

unint64_t _MSV_XXH_XXH64_digest(void *a1)
{
  if (*a1 < 0x20uLL)
  {
    v1 = a1[3] + 0x27D4EB2F165667C5;
  }

  else
  {
    v1 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((__ROR8__(a1[2], 57) + __ROR8__(a1[1], 63) + __ROR8__(a1[3], 52) + __ROR8__(a1[4], 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[1], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[2], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[3], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[4], 33))) - 0x7A1435883D4D519DLL;
  }

  v2 = v1 + *a1;
  v3 = a1 + 5;
  v4 = *a1 & 0x1FLL;
  if (v4 >= 8)
  {
    do
    {
      v5 = *v3++;
      v2 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v5, 33)) ^ v2, 37);
      v4 -= 8;
    }

    while (v4 > 7);
  }

  if (v4 >= 4)
  {
    v6 = *v3;
    v3 = (v3 + 4);
    v2 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * v6) ^ v2, 41);
    v4 -= 4;
  }

  for (; v4; --v4)
  {
    v7 = *v3;
    v3 = (v3 + 1);
    v2 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v7) ^ v2, 53);
  }

  v8 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v2 ^ (v2 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v2 ^ (v2 >> 33))) >> 29));
  return v8 ^ HIDWORD(v8);
}

uint64_t MSVCurrentProcessIsNonUIPlaybackService()
{
  if (MSVCurrentProcessIsNonUIPlaybackService_onceToken != -1)
  {
    dispatch_once(&MSVCurrentProcessIsNonUIPlaybackService_onceToken, &__block_literal_global_148);
  }

  return MSVCurrentProcessIsNonUIPlaybackService_isNonUIPlaybackService;
}

uint64_t __MSVCurrentProcessIsNonUIPlaybackService_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v2 = [v0 bundleIdentifier];

  if (v2)
  {
    MSVCurrentProcessIsNonUIPlaybackService_isNonUIPlaybackService = [&unk_1F215CA58 containsObject:v2];
  }

  return MEMORY[0x1EEE66BB8]();
}

uint64_t MSVDeviceSupportsSideLoadedMediaContent()
{
  if (MSVDeviceIsiPhone___once != -1)
  {
    dispatch_once(&MSVDeviceIsiPhone___once, &__block_literal_global_93);
  }

  if (MSVDeviceIsiPhone___deviceIsPhone)
  {
    goto LABEL_7;
  }

  if (MSVDeviceIsiPod___once != -1)
  {
    dispatch_once(&MSVDeviceIsiPod___once, &__block_literal_global_95);
  }

  if (MSVDeviceIsiPod___deviceIsPod)
  {
LABEL_7:
    v0 = 1;
  }

  else
  {
    if (MSVDeviceIsiPad___once != -1)
    {
      dispatch_once(&MSVDeviceIsiPad___once, &__block_literal_global_1898);
    }

    v0 = MSVDeviceIsiPad___deviceIsiPad;
  }

  return v0 & 1;
}

id MSVTCCIdentityForAuditToken(__int128 *a1)
{
  v2 = tcc_server_create();
  v3 = a1[1];
  v10 = *a1;
  v4 = tcc_credential_create_for_process_with_audit_token();
  v5 = tcc_message_options_create();
  tcc_message_options_set_reply_handler_policy();
  v6 = 0;
  *&v10 = 0;
  *(&v10 + 1) = &v10;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1860;
  v13 = __Block_byref_object_dispose__1861;
  v14 = 0;
  if (v4 && v2)
  {
    v9 = v2;
    tcc_server_message_get_identity_for_credential();

    v6 = *(*(&v10 + 1) + 40);
  }

  v7 = v6;
  _Block_object_dispose(&v10, 8);

  return v7;
}

void sub_1AC822FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __MSVTCCIdentityForAuditToken_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    v7 = os_log_create("com.apple.amp.MediaServices", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = a3;
      _os_log_impl(&dword_1AC81F000, v7, OS_LOG_TYPE_ERROR, "MSVTCCIdentityForAuditToken failed. error=%@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t OpenSQLiteConnection(void *a1, sqlite3 **a2, int a3)
{
  v5 = a1;
  if (!a2)
  {
    __assert_rtn("OpenSQLiteConnection", "MSVSQLDatabase.m", 1135, "outConnectionHandle");
  }

  v6 = v5;
  ppDb = 0;
  v7 = sqlite3_open_v2([v5 UTF8String], &ppDb, a3, 0);
  if (v7)
  {
    sqlite3_close(ppDb);
  }

  else
  {
    *a2 = ppDb;
  }

  return v7;
}

BOOL msv_dispatch_on_main_queue(void *a1)
{
  v1 = a1;
  v2 = pthread_main_np();
  if (v2 == 1)
  {
    v1[2](v1);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v1);
  }

  return v2 == 1;
}

id MSVMobileHomeDirectory()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = @"/";
  v4[1] = @"private";
  v4[2] = @"var";
  v4[3] = @"mobile";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];
  v1 = [MEMORY[0x1E696AEC0] pathWithComponents:v0];

  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

uint64_t MSVLogAddStateHandler(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v9 = a3;
  v4 = v9;
  v5 = v8;
  v6 = os_state_add_handler();

  return v6;
}

double MSVGetKernelBootTime()
{
  if (MSVGetKernelBootTime_onceToken != -1)
  {
    dispatch_once(&MSVGetKernelBootTime_onceToken, &__block_literal_global_168);
  }

  return *&MSVGetKernelBootTime___kernelBootTime;
}

uint64_t __MSVGetKernelBootTime_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v5 = 0;
  v3 = 16;
  *v6 = 0x1500000001;
  result = sysctl(v6, 2u, &v4, &v3, 0, 0);
  if (result != -1 && v4 != 0)
  {
    *&MSVGetKernelBootTime___kernelBootTime = v5 / 1000000.0 + v4;
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

id MSVLogDateFormatter()
{
  if (MSVLogDateFormatter_onceToken != -1)
  {
    dispatch_once(&MSVLogDateFormatter_onceToken, &__block_literal_global_47);
  }

  v1 = MSVLogDateFormatter___formatter;

  return v1;
}

uint64_t __MSVLogDateFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = MSVLogDateFormatter___formatter;
  MSVLogDateFormatter___formatter = v0;

  v2 = MSVLogDateFormatter___formatter;

  return [v2 setDateFormat:@"YYYY-MM-dd HH:mm:ss.SSSXX"];
}

double MSVGetProcessLaunchTime()
{
  if (MSVGetProcessLaunchTime_onceToken != -1)
  {
    dispatch_once(&MSVGetProcessLaunchTime_onceToken, &__block_literal_global_170);
  }

  return *&MSVGetProcessLaunchTime___processLaunchTime;
}

void __MSVGetProcessLaunchTime_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  *v3 = 0xE00000001;
  v4 = 1;
  v5 = getpid();
  v2 = 0;
  if (!sysctl(v3, 4u, 0, &v2, 0, 0))
  {
    v0 = malloc_type_calloc(1uLL, 0x288uLL, 0x10B2040B74D5165uLL);
    if (!sysctl(v3, 4u, v0, &v2, 0, 0))
    {
      *&MSVGetProcessLaunchTime___processLaunchTime = v0[2] / 1000000.0 + *v0;
    }

    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

BOOL msv_dispatch_sync_on_main_queue(void *a1)
{
  v1 = a1;
  v2 = pthread_main_np();
  if (v2 == 1)
  {
    v1[2](v1);
  }

  else
  {
    dispatch_sync(MEMORY[0x1E69E96A0], v1);
  }

  return v2 == 1;
}

id MSVUnarchivedObjectOfClass(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id  _Nullable MSVUnarchivedObjectOfClass(__unsafe_unretained Class _Nonnull, NSData *__strong _Nonnull)"}];
    [v8 handleFailureInFunction:v9 file:@"MSVSecureCodingUtilities.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"cls"}];

    if (v4)
    {
      goto LABEL_3;
    }
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id  _Nullable MSVUnarchivedObjectOfClass(__unsafe_unretained Class _Nonnull, NSData *__strong _Nonnull)"}];
  [v10 handleFailureInFunction:v11 file:@"MSVSecureCodingUtilities.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"data"}];

LABEL_3:
  v14 = 0;
  v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:a1 fromData:v4 error:&v14];
  v6 = v14;
  if (v6)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id  _Nullable MSVUnarchivedObjectOfClass(__unsafe_unretained Class _Nonnull, NSData *__strong _Nonnull)"}];
    [v12 handleFailureInFunction:v13 file:@"MSVSecureCodingUtilities.m" lineNumber:38 description:{@"Unarchiving object of class:%@ resulted in error:%@", a1, v6}];
  }

  return v5;
}

id sub_1AC825118(void *a1)
{
  v1 = a1;
  NSError.msv_treeDescription.getter();

  v2 = sub_1AC87A454();

  return v2;
}

uint64_t NSError.msv_treeDescription.getter()
{
  if (MEMORY[0x1E69D3930])
  {
    v1 = MEMORY[0x1E69D3938] == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = &selRef_treeDescription;
  if (v1)
  {
    v2 = &selRef_description;
  }

  v3 = [v0 *v2];
  v4 = sub_1AC87A464();

  return v4;
}

id sub_1AC825200(void *a1)
{
  v1 = a1;
  NSString.msv_symbol.getter();

  v2 = sub_1AC87A454();

  return v2;
}

uint64_t NSString.msv_symbol.getter()
{
  if (!MEMORY[0x1E69D38F8] || (sub_1AC87A464(), v0 = sub_1AC87A444(), , (v0 & 0x100000000) != 0))
  {

    return sub_1AC87A464();
  }

  else
  {
    if ((v0 & 0xFFFFFF80) == 0 && v0 > 0xFF)
    {
      __break(1u);
    }

    return sub_1AC87A474();
  }
}

double MSVHasherCreate@<D0>(uint64_t a1@<X8>)
{
  v2 = MSVHasherSharedSeed();
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *a1 = 1000;
  *(a1 + 8) = v2 ^ 0x736F6D6570736575;
  *(a1 + 16) = v4 ^ 0x646F72616E646F6DLL;
  *(a1 + 24) = v2 ^ 0x6C7967656E657261;
  *(a1 + 32) = v4 ^ 0x7465646279746573;
  return result;
}

id MSVHasherDigestDataBlocksFromURL(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x1E696AE38]);
  v9 = [[MSVBlockGuard alloc] initWithDeallocHandler:&__block_literal_global_3];
  if ([v5 isFileURL])
  {
    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [v5 path];
    v12 = [v10 attributesOfItemAtPath:v11 error:0];

    [v8 setTotalUnitCount:{objc_msgSend(v12, "fileSize")}];
  }

  else
  {
    [v8 setTotalUnitCount:-1];
  }

  v13 = [MEMORY[0x1E695DF48] inputStreamWithURL:v5];
  v14 = [[MSVStreamReader alloc] initWithInputStream:v13 queue:0];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __MSVHasherDigestDataBlocksFromURL_block_invoke_2;
  v41[3] = &unk_1E7982678;
  v15 = v8;
  v42 = v15;
  v43 = v6;
  v16 = v6;
  [(MSVStreamReader *)v14 setDidReadDataBlock:v41];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __MSVHasherDigestDataBlocksFromURL_block_invoke_3;
  v37[3] = &unk_1E7981750;
  v17 = v15;
  v38 = v17;
  v18 = v9;
  v39 = v18;
  v19 = v7;
  v40 = v19;
  [(MSVStreamReader *)v14 setDidFinishReadingBlock:v37];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __MSVHasherDigestDataBlocksFromURL_block_invoke_4;
  v33[3] = &unk_1E7982278;
  v20 = v17;
  v34 = v20;
  v21 = v18;
  v35 = v21;
  v22 = v19;
  v36 = v22;
  [(MSVStreamReader *)v14 setDidEncounterErrorBlock:v33];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __MSVHasherDigestDataBlocksFromURL_block_invoke_5;
  v29[3] = &unk_1E7981750;
  v30 = v14;
  v31 = v21;
  v32 = v22;
  v23 = v22;
  v24 = v21;
  v25 = v14;
  [v20 setCancellationHandler:v29];
  [(MSVStreamReader *)v25 start];
  v26 = v32;
  v27 = v20;

  return v20;
}

void __MSVHasherDigestDataBlocksFromURL_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(v4, "length") + objc_msgSend(v3, "completedUnitCount")}];
  (*(*(a1 + 40) + 16))();
}

uint64_t __MSVHasherDigestDataBlocksFromURL_block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setCompletedUnitCount:1];
  result = [*(a1 + 40) disarm];
  if (result)
  {
    v3 = *(*(a1 + 48) + 16);

    return v3();
  }

  return result;
}

void __MSVHasherDigestDataBlocksFromURL_block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  [*(a1 + 32) setCompletedUnitCount:1];
  if ([*(a1 + 40) disarm])
  {
    v3 = *(a1 + 48);
    v4 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MSVHasherError" code:2 underlyingError:v5 debugDescription:@"Unexpected IO error while reading data"];
    (*(v3 + 16))(v3, v4);
  }
}

void __MSVHasherDigestDataBlocksFromURL_block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) stop];
  if ([*(a1 + 40) disarm])
  {
    v2 = *(a1 + 48);
    v3 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MSVHasherError" code:1 debugDescription:@"NSProgress cancel method was called"];
    (*(v2 + 16))(v2, v3);
  }
}

void __MSVHasherDigestDataBlocksFromURL_block_invoke()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSProgress * _Nonnull MSVHasherDigestDataBlocksFromURL(NSURL *__strong _Nonnull, void (^__strong _Nonnull)(NSData *__strong), void (^__strong _Nonnull)(NSError * _Nullable __strong))_block_invoke"}];
  [v1 handleFailureInFunction:v0 file:@"MSVHasher.m" lineNumber:48 description:@"MSVHasherDigestURL completion was not called."];
}

void sub_1AC8265F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ImageAnalyzerImageColor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1AC826D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10, std::exception a11)
{
  __cxa_free_exception(v12);
  if (a2 == 1)
  {
    __cxa_get_exception_ptr(a1);
    a11.__vftable = (MEMORY[0x1E69E55E8] + 16);
    __cxa_begin_catch(a1);
    a10.__vftable = (MEMORY[0x1E69E55E8] + 16);
    CPPExceptionToNSErrorOut(&a10, v11);
    std::exception::~exception(&a10);
    std::exception::~exception(&a11);
    __cxa_end_catch();
    JUMPOUT(0x1AC826D2CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t ImageAnalyzer::image_analyzer_error::image_analyzer_error(uint64_t a1, int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  std::runtime_error::runtime_error(a1, "")->__vftable = &unk_1F214D000;
  v20 = &a9;
  v21 = &a9;
  v12 = vsnprintf(0, 0, a3, &a9);
  v13 = v12;
  v14 = v12 + 1;
  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v14 >= 0x17)
  {
    operator new();
  }

  *(&v19.__r_.__value_.__s + 23) = v12 + 1;
  if (v12 != -1)
  {
    bzero(&v19, v14);
  }

  v19.__r_.__value_.__s.__data_[v14] = 0;
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v19;
  }

  else
  {
    v15 = v19.__r_.__value_.__r.__words[0];
  }

  vsnprintf(v15, v13, a3, v20);
  std::runtime_error::runtime_error(&v17, &v19);
  v17.__vftable = &unk_1F214D000;
  v18 = a2;
  std::runtime_error::operator=(a1, &v17);
  *(a1 + 16) = v18;
  std::runtime_error::~runtime_error(&v17);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  return a1;
}

void CPPExceptionToNSErrorOut(const std::exception *a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696A578];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:std::exception::what(a1)];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    *a2 = [v3 errorWithDomain:*MEMORY[0x1E696A798] code:0 userInfo:v5];
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1AC8270EC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E79816F8, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void ImageAnalyzer::image_analyzer_error::~image_analyzer_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1B26EBB30);
}

void sub_1AC8277C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::exception a26, char a27)
{
  __cxa_free_exception(v27);
  v31 = *(v28 - 224);
  if (v31)
  {
    free(v31);
  }

  final_act<ImageAnalyzer::GenerateColorMaps(CGImage *)::$_1>::~final_act(v28 - 192);
  final_act<ImageAnalyzer::GenerateColorMaps(CGImage *)::$_0>::~final_act(v28 - 176);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    a26.__vftable = (MEMORY[0x1E69E55E8] + 16);
    CPPExceptionToNSErrorOut(&a26, a10);
    std::exception::~exception(&a26);
    __cxa_end_catch();
    JUMPOUT(0x1AC8275E4);
  }

  ImageAnalyzer::~ImageAnalyzer(&a27);
  _Unwind_Resume(a1);
}

void sub_1AC8281B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&a22);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double *HSV2RGB(double a1, double a2, double a3, double *result, double *a5, double *a6)
{
  if (a2 > 1.0)
  {
    a2 = 1.0;
  }

  if (a2 >= 0.0)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0.0;
  }

  if (a3 <= 1.0)
  {
    v7 = a3;
  }

  else
  {
    v7 = 1.0;
  }

  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  if (v6 == 0.0)
  {
    *result = v7;
    *a5 = v7;
    goto LABEL_13;
  }

  if (a1 > 1.0)
  {
    a1 = 1.0;
  }

  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  v8 = a1 * 6.0;
  v9 = v8;
  v10 = v6 * v7 * (v8 - v8);
  v11 = v7 - v6 * v7;
  v12 = v11 + v10;
  if (v11 + v10 > 1.0)
  {
    v12 = 1.0;
  }

  v13 = v7 - v10;
  if (v13 > 1.0)
  {
    v13 = 1.0;
  }

  v14 = v11;
  if (v9)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  if (v14 <= 1.0)
  {
    v16 = v14;
  }

  else
  {
    v16 = 1.0;
  }

  v17 = v7;
  if (v9 > 3)
  {
    if (v9 != 5)
    {
      v17 = v15;
      if (v9 != 4)
      {
        goto LABEL_34;
      }
    }
  }

  else if (v9)
  {
    v17 = v15;
    if (v9 != 1)
    {
LABEL_34:
      v17 = v16;
    }
  }

  *result = v17;
  v18 = v7;
  if ((v9 - 1) >= 2)
  {
    v19 = v9 == 3 || v9 == 0;
    v18 = v15;
    if (!v19)
    {
      v18 = v16;
    }
  }

  *a5 = v18;
  if ((v9 - 3) >= 2)
  {
    v20 = v9 == 5 || v9 == 2;
    v7 = v15;
    if (!v20)
    {
      v7 = v16;
    }
  }

LABEL_13:
  *a6 = v7;
  return result;
}

double ITColor::CreateFromHSVDoubles(ITColor *this, double a2, double a3, double a4)
{
  v7 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  HSV2RGB(a2, a3, a4, &v7, &v6, &v5);
  return v7;
}

double ITColor::GetHSVColor(ITColor *this)
{
  __asm { FMOV            V2.2D, #1.0 }

  v6 = vbslq_s8(vcgeq_f64(*&this->var0, _Q2), _Q2, *&this->var0);
  v7 = vbicq_s8(v6, vcltzq_f64(v6));
  if (this->var2 < 1.0)
  {
    var2 = this->var2;
  }

  else
  {
    var2 = 1.0;
  }

  result = 0.0;
  if (var2 >= 0.0)
  {
    v10 = var2;
  }

  else
  {
    v10 = 0.0;
  }

  if (*&v7.i64[1] <= *v7.i64)
  {
    v11 = *v7.i64;
  }

  else
  {
    v11 = *&v7.i64[1];
  }

  if (*&v7.i64[1] >= *v7.i64)
  {
    v12 = *v7.i64;
  }

  else
  {
    v12 = *&v7.i64[1];
  }

  if (v10 <= *v7.i64)
  {
    v13 = *v7.i64;
  }

  else
  {
    v13 = v10;
  }

  if (v10 >= *v7.i64)
  {
    v14 = *v7.i64;
  }

  else
  {
    v14 = v10;
  }

  if (*&v7.i64[1] <= v10)
  {
    v11 = v13;
  }

  if (*&v7.i64[1] >= v10)
  {
    v12 = v14;
  }

  if (v11 != 0.0)
  {
    v15 = v11 - v12;
    if (v15 / v11 > 1.0 || v15 / v11 != 0.0)
    {
      if (v15 == 0.0)
      {
        v16 = 0.0;
        v17 = 0.0;
      }

      else
      {
        result = (v11 - *v7.i64) / v15;
        v16 = (v11 - *&v7.i64[1]) / v15;
        v17 = (v11 - v10) / v15;
      }

      if (*v7.i64 == v11)
      {
        v18 = v17 - v16;
      }

      else if (*&v7.i64[1] == v11)
      {
        v18 = result + 2.0 - v17;
      }

      else
      {
        v18 = v16 + 4.0 - result;
      }

      result = v18 / 6.0;
      if (result < 0.0)
      {
        result = result + 1.0;
      }

      if (result > 1.0)
      {
        return 1.0;
      }
    }
  }

  return result;
}

void ITColor::GetLuminance(ITColor *this, __n128 a2, double a3)
{
  v3 = 0;
  v9 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  do
  {
    v4 = v7.n128_f64[v3];
    if (v4 <= 0.0392800011)
    {
      v5 = v4 / 12.9200001;
    }

    else
    {
      v5 = pow((v4 + 0.0549999997) / 1.05499995, 2.4);
    }

    v7.n128_f64[v3++] = v5;
  }

  while (v3 != 3);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1AC829380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AC829894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ___Z19CGColorSpaceGetSRGBv_block_invoke()
{
  v0 = ColorSyncProfileCreateWithName(*MEMORY[0x1E695BBF0]);
  if (v0)
  {
    v1 = v0;
    v2 = ColorSyncProfileCopyData(v0, 0);
    if (v2)
    {
      v3 = v2;
      CGColorSpaceGetSRGB(void)::sSpace = CGColorSpaceCreateWithICCData(v2);
      CFRelease(v3);
    }

    CFRelease(v1);
  }
}

void ImageAnalyzer::~ImageAnalyzer(ImageAnalyzer *this)
{
  v2 = *this;
  if (v2)
  {
    free(v2);
    *this = 0;
  }

  v3 = *(this + 1);
  if (v3)
  {
    free(v3);
    *(this + 1) = 0;
  }

  v4 = *(this + 43);
  if (v4)
  {
    *(this + 44) = v4;
    operator delete(v4);
  }

  v5 = *(this + 40);
  if (v5)
  {
    *(this + 41) = v5;
    operator delete(v5);
  }
}

void ImageAnalyzer::QuantizeColorMaps(ImageAnalyzer *this)
{
  v2 = malloc_type_calloc(0x190uLL, 8uLL, 0x100004000313F17uLL);
  *(this + 1) = v2;
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    ImageAnalyzer::image_analyzer_error::image_analyzer_error(exception, 1, "ImageAnalyzer::QuantizeColorMaps() - failed to allocate mColorCounts.", v35, v36, v37, v38, v39, SLOBYTE(v45.var0));
    goto LABEL_36;
  }

  v3 = malloc_type_calloc(0x190uLL, 1uLL, 0x100004077774924uLL);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    ImageAnalyzer::image_analyzer_error::image_analyzer_error(exception, 1, "ImageAnalyzer::QuantizeColorMaps() - failed to allocate completedIndexes.", v40, v41, v42, v43, v44, SLOBYTE(v45.var0));
LABEL_36:
  }

  v4 = v3;
  v5 = 0;
  v6 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  do
  {
    if ((v4[v6] & 1) == 0)
    {
      v7 = *this + 40 * v6;
      v8 = *(v7 + 16);
      *&v56.var0 = *v7;
      *&v56.var2 = v8;
      v57 = *(v7 + 32);
      if (*(v7 + 32) >= 127.0)
      {
        v9 = *(v7 + 16);
        v49[0] = *v7;
        v49[1] = v9;
        v50 = *(v7 + 32);
        v10 = ImageAnalyzer::WeightForPointOnEdge((v6 - 20 * (v6 / 0x14u)), v6 / 0x14u);
        v51 = v6;
        v52 = v10;
        v54 = v5;
        std::vector<sortQuantizeColorEntry>::push_back[abi:ne200100](&v53, v49);
        *(*(this + 1) + 8 * v6) = v10;
        v4[v6] = 1;
        v11 = v6;
        if (v6 <= 0x18E)
        {
          while (1)
          {
            if ((v4[++v11] & 1) == 0)
            {
              v12 = *this + 40 * v11;
              if (*(v12 + 32) < 127.0)
              {
                goto LABEL_19;
              }

              v45 = v56;
              v46 = v57;
              v13 = *(v12 + 16);
              *&v60.var0 = *v12;
              *&v60.var2 = v13;
              v61 = *(v12 + 32);
              if (isCloseToColor(&v45, &v60.var0, 0, 0.0799999982))
              {
                break;
              }
            }

LABEL_20:
            if (v11 == 399)
            {
              goto LABEL_21;
            }
          }

          v14 = *(v12 + 16);
          *&v45.var0 = *v12;
          *&v45.var2 = v14;
          v46 = *(v12 + 32);
          v15 = ImageAnalyzer::WeightForPointOnEdge((v11 - 20 * (v11 / 0x14u)), v11 / 0x14u);
          v47 = v11;
          v48 = v15;
          v16 = v53;
          if (v54 == v53)
          {
LABEL_17:
            std::vector<sortQuantizeColorEntry>::push_back[abi:ne200100](&v53, &v45);
          }

          else
          {
            v17 = v15;
            v18 = 0;
            if ((0x6DB6DB6DB6DB6DB7 * ((v54 - v53) >> 3)) <= 1)
            {
              v19 = 1;
            }

            else
            {
              v19 = 0x6DB6DB6DB6DB6DB7 * ((v54 - v53) >> 3);
            }

            v20 = v53;
            while (1)
            {
              v21 = *(v12 + 16);
              *&v60.var0 = *v12;
              *&v60.var2 = v21;
              v61 = *(v12 + 32);
              v22 = *(v20 + 16);
              v58[0] = *v20;
              v58[1] = v22;
              v59 = *(v20 + 32);
              if (isCloseToColor(&v60, v58, 0, 0.0799999982))
              {
                break;
              }

              ++v18;
              v20 += 56;
              if (v19 == v18)
              {
                goto LABEL_17;
              }
            }

            *(v16 + 56 * v18 + 48) = v17 + *(v16 + 56 * v18 + 48);
          }

LABEL_19:
          v4[v11] = 1;
          goto LABEL_20;
        }

LABEL_21:
        v5 = v53;
        if (v54 != v53)
        {
          v23 = 0x6DB6DB6DB6DB6DB7 * ((v54 - v53) >> 3);
          *&v45.var0 = CompareQuantizeSortcolor;
          std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*,false>(v53, v54, &v45, 126 - 2 * __clz(v23), 1);
          v24 = *(v5 + 40);
          v25 = *(v5 + 48);
          if (v23 >= 2)
          {
            v26 = v23 - 1;
            v27 = (v5 + 104);
            do
            {
              v28 = *(v27 - 1);
              v29 = *v27;
              if ((v4[v28] & 1) == 0)
              {
                v4[v28] = 1;
              }

              v25 = v25 + v29;
              v30 = *this + 40 * v24;
              v31 = *v30;
              v32 = *(v30 + 16);
              v33 = *this + 40 * v28;
              *(v33 + 32) = *(v30 + 32);
              *v33 = v31;
              *(v33 + 16) = v32;
              v27 += 7;
              --v26;
            }

            while (v26);
          }

          *(*(this + 1) + 8 * v24) = v25;
        }
      }
    }

    ++v6;
  }

  while (v6 != 400);
  if (v5)
  {
    operator delete(v5);
  }

  free(v4);
}

void ImageAnalyzer::PickBackgroundColor(__n128 *this)
{
  v2 = this[23].n128_f64[1];
  v3 = ImageAnalyzer::DominantColors(this);
  var0 = v3->var0;
  if (*&v3->var1 != *&v3->var0)
  {
    p_var0 = &v3->var0;
    v6 = *(*&var0 + 16);
    this[2] = **&var0;
    this[3] = v6;
    ITColor::GetLuminance(v3, this[2], this[3].n128_f64[0]);
    v9 = v8;
    v10 = v8 + 0.0500000007;
    v11.f64[0] = 0.180000007;
    if (v9 <= 0.180000007)
    {
      v12 = 0.230000008;
    }

    else
    {
      v12 = v10;
    }

    if (v9 <= 0.180000007)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0.230000008;
    }

    v14 = v12 / v13;
    if (v12 / v13 < 1.29999995)
    {
      v15 = (p_var0[1] - *p_var0) >> 5;
      v16 = 3;
      if (v15 < 3)
      {
        v16 = (p_var0[1] - *p_var0) >> 5;
      }

      if (v15 >= 2)
      {
        v41 = v11;
        v17 = 0;
        v18 = this[21].n128_u64[1];
        v19 = 8 * v16;
        v20 = 8;
        do
        {
          v21 = v18[v20 / 8];
          if (v21 <= 0.0)
          {
            break;
          }

          v22 = *v18 / v21;
          if (v22 <= 0.9 || v22 >= 1.112)
          {
            break;
          }

          v23 = (*p_var0 + v17);
          v25 = v23[2];
          v24 = v23 + 2;
          ITColor::GetLuminance(v7, v25, v24[1].n128_f64[0]);
          v27 = v26 + 0.0500000007;
          v28 = v26 <= v41.f64[0];
          if (v26 <= v41.f64[0])
          {
            v29 = 0.230000008;
          }

          else
          {
            v29 = v26 + 0.0500000007;
          }

          if (!v28)
          {
            v27 = 0.230000008;
          }

          v30 = v29 / v27;
          if (v30 > v14)
          {
            v31 = v24[1];
            this[2] = *v24;
            this[3] = v31;
            v14 = v30;
          }

          v20 += 8;
          v17 += 32;
        }

        while (v19 != v20);
        ITColor::GetLuminance(v7, this[2], this[3].n128_f64[0]);
        v9 = v32;
        v10 = v32 + 0.0500000007;
        v11 = v41;
      }
    }

    if (v9 <= v11.f64[0])
    {
      v33 = 0.230000008;
    }

    else
    {
      v33 = v10;
    }

    if (v9 > v11.f64[0])
    {
      v10 = 0.230000008;
    }

    if (v33 / v10 < 1.29999995)
    {
      v42 = v11;
      HSVColor = ITColor::GetHSVColor(&this[2]);
      v36.i64[1] = v35;
      v37.f64[0] = fmin(v2, v9);
      v38 = vbslq_s8(vdupq_lane_s64(vmvnq_s8(vcgtq_f64(v42, v37)).i64[0], 0), v36, vmulq_f64(v36, xmmword_1AC881BE0));
      v44 = 0.0;
      v45 = 0.0;
      v43 = 0.0;
      HSV2RGB(HSVColor, *v38.i64, *&v38.i64[1], &v45, &v44, &v43);
      v39 = v44;
      v40 = v43;
      this[2].n128_f64[0] = v45;
      this[2].n128_f64[1] = v39;
      this[3].n128_f64[0] = v40;
      this[3].n128_u64[1] = 0x3FF0000000000000;
    }
  }
}

void ImageAnalyzer::PickTextColors(ImageAnalyzer *this)
{
  v2 = ImageAnalyzer::DominantColors(this);
  v3 = *&v2->var0;
  v4 = *&v2->var1 - *&v2->var0;
  v5 = v4 >> 5;
  v100 = v4 >> 5;
  if ((v4 >> 5) <= 1)
  {
    v31 = 0;
    v32 = 0;
    v33 = *(this + 2);
    v34 = *(this + 5);
    goto LABEL_51;
  }

  v103 = *(this + 2);
  v101 = *(this + 6);
  ITColor::GetLuminance(v2, v103, v101);
  v7 = v6;
  ITColor::GetLuminance(v8, v3[2], v3[3].n128_f64[0]);
  v10 = 0;
  LOBYTE(v11) = 0;
  if (v9 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  if (v9 > v7)
  {
    v9 = v7;
  }

  v13 = (v12 + 0.0500000007) / (v9 + 0.0500000007);
  v14 = (v4 >> 5);
  v15 = &v3[1].n128_f64[1];
  v16 = 1;
  v17 = 1;
  v18 = v13;
  do
  {
    v19 = *(v15 - 3);
    v20 = *(v15 - 1);
    if (v11)
    {
      goto LABEL_9;
    }

    v21 = *v15;
    v106 = *(v15 - 3);
    ITColor::GetLuminance(v2, v19, v20);
    if (v22 >= 0.180000007 != v7 >= 0.180000007)
    {
      if (v22 <= v7)
      {
        v23 = v7;
      }

      else
      {
        v23 = v22;
      }

      if (v22 > v7)
      {
        v22 = v7;
      }

      if ((v23 + 0.0500000007) / (v22 + 0.0500000007) >= 4.5999999)
      {
        *&v115.var0 = v103.n128_u64[0];
        *&v108.var0 = v106;
        v115.var3 = *(this + 7);
        v108.var2 = v20;
        v108.var3 = v21;
        v115.var2 = v101;
        *&v115.var1 = v103.n128_u64[1];
        ImageAnalyzer::EnhanceContrastWithColor(v108, v115, 0.449999988);
        *(this + 8) = v27;
        *(this + 9) = v28;
        v19 = v106;
        *(this + 10) = v29;
        *(this + 11) = v30;
        LODWORD(v5) = v10 + 1;
LABEL_9:
        v11 = 1;
        goto LABEL_18;
      }
    }

    v11 = 0;
    v19 = v106;
LABEL_18:
    ITColor::GetLuminance(v2, v19, v20);
    if (v24 <= v7)
    {
      v25 = v7;
    }

    else
    {
      v25 = v24;
    }

    if (v24 > v7)
    {
      v24 = v7;
    }

    v26 = (v25 + 0.0500000007) / (v24 + 0.0500000007);
    if (v26 <= v18)
    {
      v26 = v13;
    }

    else if (v26 <= v13)
    {
      v18 = v26;
      v26 = v13;
      v17 = v10;
    }

    else
    {
      v18 = v13;
      v17 = v16;
      v16 = v10;
    }

    ++v10;
    v15 += 4;
    v13 = v26;
  }

  while (v14 != v10);
  if (v5 >= v100)
  {
    LOBYTE(v38) = 0;
    v39 = v101;
    v34 = v103.n128_f64[1];
  }

  else
  {
    v35 = *(this + 7);
    v36 = v5 + 1;
    v37 = &v3[2 * v5 + 1];
    v38 = 1;
    v39 = v101;
    v34 = v103.n128_f64[1];
    while (1)
    {
      v40 = *(v37 - 16);
      v41 = *(v37 - 8);
      v42 = *v37;
      v43 = *(v37 + 8);
      v109.var0 = v40;
      v109.var1 = v41;
      v109.var2 = *v37;
      v109.var3 = v43;
      *&v116.var0 = v103;
      v116.var2 = v101;
      v116.var3 = v35;
      v2 = contrastsEnoughWithColor(v109, v116);
      if (v2)
      {
        break;
      }

      v38 = v36++ < v14;
      v37 += 32;
      if (v36 - v14 == 1)
      {
        LOBYTE(v38) = 0;
        goto LABEL_40;
      }
    }

    v110.var0 = v40;
    v110.var1 = v41;
    v110.var2 = v42;
    v110.var3 = v43;
    *&v117.var0 = v103;
    v117.var2 = v101;
    v117.var3 = v35;
    ImageAnalyzer::EnhanceContrastWithColor(v110, v117, 0.449999988);
    *(this + 12) = v44;
    *(this + 13) = v45;
    *(this + 14) = v46;
    *(this + 15) = v47;
    if (v11 & v38)
    {
      v31 = 1;
      v32 = 1;
      goto LABEL_50;
    }
  }

LABEL_40:
  if (v11)
  {
LABEL_43:
    v32 = 1;
    if (!v38)
    {
      goto LABEL_46;
    }

    goto LABEL_48;
  }

  v48 = *(this + 7);
  *&v118.var0 = v103.n128_u64[0];
  v118.var1 = v34;
  v118.var2 = v39;
  v118.var3 = v48;
  ImageAnalyzer::EnhanceContrastWithColor(*v3[2 * v16].n128_u64, v118, 0.200000003);
  var0 = v111.var0;
  var1 = v111.var1;
  var2 = v111.var2;
  var3 = v111.var3;
  *&v119.var0 = v103.n128_u64[0];
  v119.var1 = v34;
  v119.var2 = v39;
  v119.var3 = v48;
  v2 = contrastsEnoughWithColor(v111, v119);
  if (v2)
  {
    v112.var0 = var0;
    v112.var1 = var1;
    v112.var2 = var2;
    v112.var3 = var3;
    *&v120.var0 = v103.n128_u64[0];
    v120.var1 = v34;
    v120.var2 = v39;
    v120.var3 = v48;
    ImageAnalyzer::EnhanceContrastWithColor(v112, v120, 0.449999988);
    *(this + 8) = v53;
    *(this + 9) = v54;
    *(this + 10) = v55;
    *(this + 11) = v56;
    goto LABEL_43;
  }

  v32 = 0;
  if (v38)
  {
LABEL_48:
    v31 = 1;
    goto LABEL_50;
  }

LABEL_46:
  v57 = *(this + 7);
  *&v121.var0 = v103.n128_u64[0];
  v121.var1 = v34;
  v121.var2 = v39;
  v121.var3 = v57;
  ImageAnalyzer::EnhanceContrastWithColor(*v3[2 * v17].n128_u64, v121, 0.200000003);
  v58 = v113.var0;
  v59 = v113.var1;
  v60 = v113.var2;
  v61 = v113.var3;
  *&v122.var0 = v103.n128_u64[0];
  v122.var1 = v34;
  v122.var2 = v39;
  v122.var3 = v57;
  v2 = contrastsEnoughWithColor(v113, v122);
  if (v2)
  {
    v114.var0 = v58;
    v114.var1 = v59;
    v114.var2 = v60;
    v114.var3 = v61;
    *&v123.var0 = v103.n128_u64[0];
    v123.var1 = v34;
    v123.var2 = v39;
    v123.var3 = v57;
    ImageAnalyzer::EnhanceContrastWithColor(v114, v123, 0.449999988);
    *(this + 12) = v62;
    *(this + 13) = v63;
    *(this + 14) = v64;
    *(this + 15) = v65;
    goto LABEL_48;
  }

  v31 = 0;
LABEL_50:
  v33 = v103;
LABEL_51:
  v102 = *(this + 3);
  v104 = v33.n128_f64[0];
  ITColor::GetLuminance(v2, v33, *(this + 6));
  v107 = v66;
  v67 = (this + 64);
  v68 = *(this + 10);
  ITColor::GetLuminance(v69, *(this + 4), v68);
  v71 = v70;
  v72 = (this + 96);
  v73 = *(this + 14);
  ITColor::GetLuminance(v74, *(this + 6), v73);
  if (*&v107 < 0.180000007)
  {
    if (v71 >= 0.180000007)
    {
      v81 = v32;
    }

    else
    {
      v81 = 0;
    }

    if (v76 >= 0.180000007)
    {
      v82 = v31;
    }

    else
    {
      v82 = 0;
    }

    if (v81)
    {
      if (v82)
      {
        goto LABEL_83;
      }

      v83 = *&v102;
      if (v100)
      {
        v84 = v104;
        goto LABEL_77;
      }
    }

    else
    {
      if (v100)
      {
        v83 = *&v102;
        v84 = v104;
        v68 = *&v102 * 0.0500000007 + 0.949999999;
        *(this + 8) = v104 * 0.0500000007 + 0.949999999;
        *(this + 9) = v34 * 0.0500000007 + 0.949999999;
        *(this + 10) = v68;
        *(this + 11) = *(&v102 + 1) * 0.0500000007 + 0.949999999;
        if (v82)
        {
          goto LABEL_83;
        }

LABEL_77:
        v85 = v84 * 0.100000001 + 0.899999999;
        v86 = v34 * 0.100000001 + 0.899999999;
        v73 = v83 * 0.100000001 + 0.899999999;
        v87 = *(&v102 + 1) * 0.100000001 + 0.899999999;
        goto LABEL_82;
      }

      *(this + 8) = 0x3FF0000000000000;
      *(this + 9) = 0x3FF0000000000000;
      *(this + 10) = 0x3FF0000000000000;
      *(this + 11) = 0x3FF0000000000000;
      v68 = 1.0;
      if (v82)
      {
        goto LABEL_83;
      }
    }

    v85 = 1.0;
    v86 = 1.0;
    v73 = 1.0;
    v87 = 1.0;
    goto LABEL_82;
  }

  if (v71 < 0.180000007)
  {
    v77 = v32;
  }

  else
  {
    v77 = 0;
  }

  if (v76 < 0.180000007)
  {
    v78 = v31;
  }

  else
  {
    v78 = 0;
  }

  if (v77)
  {
    v79 = *&v102;
    if ((v78 & 1) == 0)
    {
      if (v100)
      {
        v80 = v104;
        goto LABEL_74;
      }

LABEL_79:
      v87 = 1.0;
      v85 = 0.0;
      v86 = 0.0;
      v73 = 0.0;
LABEL_82:
      *(this + 12) = v85;
      *(this + 13) = v86;
      *(this + 14) = v73;
      *(this + 15) = v87;
    }
  }

  else
  {
    v79 = *&v102;
    if (v100)
    {
      v80 = v104;
      v68 = *&v102 * 0.0500000007 + 0.0;
      *(this + 8) = v104 * 0.0500000007 + 0.0;
      *(this + 9) = v34 * 0.0500000007 + 0.0;
      *(this + 10) = v68;
      *(this + 11) = *(&v102 + 1) * 0.0500000007 + 0.949999999;
      if ((v78 & 1) == 0)
      {
LABEL_74:
        v85 = v80 * 0.100000001 + 0.0;
        v86 = v34 * 0.100000001 + 0.0;
        v73 = v79 * 0.100000001 + 0.0;
        v87 = *(&v102 + 1) * 0.100000001 + 0.899999999;
        goto LABEL_82;
      }
    }

    else
    {
      *(this + 8) = 0;
      *(this + 9) = 0;
      *(this + 10) = 0;
      *(this + 11) = 0x3FF0000000000000;
      v68 = 0.0;
      if ((v78 & 1) == 0)
      {
        goto LABEL_79;
      }
    }
  }

LABEL_83:
  ITColor::GetLuminance(v75, *v67, v68);
  v105 = v88;
  ITColor::GetLuminance(v89, *v72, v73);
  v90.f64[1] = v105;
  v91 = vdupq_lane_s64(v107, 0);
  v92 = vcgtq_f64(v90, v91);
  v93 = vbslq_s8(v92, v90, v91);
  v94 = vbslq_s8(v92, v91, v90);
  v95 = vdupq_n_s64(0x3FA99999A0000000uLL);
  v96 = vdivq_f64(vaddq_f64(v93, v95), vaddq_f64(v94, v95));
  if (vmovn_s64(vcgtq_f64(v96, vdupq_laneq_s64(v96, 1))).u32[0])
  {
    v98 = *v67;
    v97 = *(this + 5);
    v99 = *(this + 7);
    *v67 = *v72;
    *(this + 5) = v99;
    *v72 = v98;
    *(this + 7) = v97;
  }
}

void ImageAnalyzer::DoPostImageAnalysis(ImageAnalyzer *this, ITColor *a2, ITColor *a3)
{
  v3 = (this + 32);
  v4 = *(this + 2);
  v5 = vdupq_n_s64(0x3FE9999998000000uLL);
  v7 = *(this + 3);
  v6 = *(this + 4);
  v8 = vdupq_n_s64(0x3FC99999A0000000uLL);
  v9 = *(this + 5);
  v10 = *(this + 6);
  v11 = vmlaq_f64(vmulq_f64(v9, v5), v8, v7);
  *(this + 8) = vmlaq_f64(vmulq_f64(v6, v5), v8, v4);
  *(this + 9) = v11;
  v34 = *(this + 7);
  v35 = v11.f64[0];
  v36 = vmlaq_f64(vmulq_f64(v34, v5), v8, v7);
  *(this + 10) = vmlaq_f64(vmulq_f64(v10, v5), v8, v4);
  *(this + 11) = v36;
  ImageAnalyzer::CalculateOneShadowColor(this + 1, a2, a3, v6, v9.f64[0]);
  v3[10].n128_u64[0] = v12;
  v3[10].n128_u64[1] = v13;
  v3[11].n128_u64[0] = v14;
  v3[11].n128_u64[1] = v15;
  ImageAnalyzer::CalculateOneShadowColor(v3, v16, v17, v3[4], v34.f64[0]);
  v3[14].n128_u64[0] = v18;
  v3[14].n128_u64[1] = v19;
  v3[15].n128_u64[0] = v20;
  v3[15].n128_u64[1] = v21;
  ImageAnalyzer::CalculateOneShadowColor(v3, v22, v23, v3[6], v35);
  v3[12].n128_u64[0] = v24;
  v3[12].n128_u64[1] = v25;
  v3[13].n128_u64[0] = v26;
  v3[13].n128_u64[1] = v27;
  ImageAnalyzer::CalculateOneShadowColor(v3, v28, v29, v3[8], v36.f64[0]);
  v3[16].n128_u64[0] = v30;
  v3[16].n128_u64[1] = v31;
  v3[17].n128_u64[0] = v32;
  v3[17].n128_u64[1] = v33;
}

void ImageAnalyzer::CalculateOneShadowColor(ITColor *this, ITColor *a2, ITColor *a3, __n128 a4, double a5)
{
  ITColor::GetLuminance(this, a4, a5);
  v7 = v6;
  ITColor::GetLuminance(v8, *&this->var0, this->var2);
  v11 = v10;
  if (v7 >= v10)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = 1.0;
  }

  ITColor::GetLuminance(v9, vdupq_lane_s64(*&v12, 0), v12);
  v14 = vabdd_f64(v13, v11);
  v15 = 1.0 - ((v14 + v14) * -0.599999994 + 1.0);
  if (v15 < 1.0 && v15 > 0.0)
  {
    v16 = 1.0 - v15 + this->var3 * v15;
  }
}

ITColor *ImageAnalyzer::DominantColors(ITColor *this)
{
  v1 = this;
  if (*&this[10].var1 == *&this[10].var0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 1.0;
    __asm { FMOV            V0.2D, #1.0 }

    v79 = *(&_Q0 + 1);
    do
    {
      v12 = *(*&v1->var1 + 8 * v5);
      if (v12 >= v6 && *(*&v1->var0 + 40 * v5 + 32) >= 127.0)
      {
        v13 = *&v1->var0 + 40 * v5;
        v14.n128_f64[0] = ITColor::CreateFromHSVDoubles(this, *v13, *(v13 + 8), *(v13 + 16));
        v14.n128_u64[1] = v16;
        v82 = v14;
        v14.n128_u64[1] = v79;
        v14.n128_f64[0] = v15;
        v81 = v14;
        v17 = *(v13 + 24);
        v18 = v3;
        v19 = v3 - v4;
        if (v3 == v4)
        {
LABEL_13:
          if (v3 >= v2)
          {
            v37 = (v3 - v18) >> 6;
            v38 = v37 + 1;
            if ((v37 + 1) >> 58)
            {
              std::vector<sortQuantizeColorEntry>::__throw_length_error[abi:ne200100]();
            }

            v39 = v2 - v18;
            if (v39 >> 5 > v38)
            {
              v38 = v39 >> 5;
            }

            if (v39 >= 0x7FFFFFFFFFFFFFC0)
            {
              v40 = 0x3FFFFFFFFFFFFFFLL;
            }

            else
            {
              v40 = v38;
            }

            if (v40)
            {
              if (!(v40 >> 58))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v41 = v37 << 6;
            *v41 = v12;
            v2 = 0;
            *(v41 + 16) = v82;
            *(v41 + 32) = v81;
            *(v41 + 48) = v17;
            v3 = (v37 << 6) + 64;
            v42 = (v41 - v19);
            this = memcpy((v41 - v19), v4, v19);
            if (v4)
            {
              operator delete(v4);
            }

            v4 = v42;
          }

          else
          {
            *v3 = v12;
            *(v3 + 16) = v82;
            *(v3 + 32) = v81;
            *(v3 + 48) = v17;
            v3 += 64;
          }
        }

        else
        {
          v78 = v17;
          v80 = v2;
          if ((v19 >> 6) <= 1)
          {
            v20 = 1;
          }

          else
          {
            v20 = v19 >> 6;
          }

          ITColor::GetLuminance(this, v82, v15);
          v22 = v21;
          v23 = 0;
          v24 = 1;
          while (1)
          {
            *v83 = v4[v24];
            *&v83[16] = v4[v24 + 1];
            *&v85.var0 = v82;
            *&v85.var2 = v81;
            HSVColor = ITColor::GetHSVColor(&v85);
            v27 = v26;
            v29 = v28;
            v85 = *v83;
            v30 = ITColor::GetHSVColor(&v85);
            v32 = v31;
            v34 = v33;
            ITColor::GetLuminance(v35, *v83, *&v83[16]);
            v85.var0 = HSVColor;
            v85.var1 = v27;
            v85.var2 = v29;
            v85.var3 = v22;
            v86 = 0x3FF0000000000000;
            v84[0] = v30;
            v84[1] = v32;
            v84[2] = v34;
            v84[3] = v36;
            v84[4] = *&v83[24];
            this = isCloseToColor(&v85, v84, 1, 0.0700000003);
            if (this)
            {
              break;
            }

            ++v23;
            v24 += 4;
            if (v20 == v23)
            {
              v18 = v4;
              v6 = 1.0;
              v17 = v78;
              v2 = v80;
              goto LABEL_13;
            }
          }

          v4[4 * v23].n128_f64[0] = v12 + v4[4 * v23].n128_f64[0];
          v6 = 1.0;
          v2 = v80;
        }
      }

      ++v5;
    }

    while (v5 != 400);
    v43 = v3 - v4;
    if (v3 != v4)
    {
      v44 = v43 >> 6;
      *&v85.var0 = CompareSortColor;
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,false>(v4, v3, &v85, 126 - 2 * __clz(v43 >> 6), 1);
      if (v44 > (*&v1[10].var2 - *&v1[10].var0) >> 5)
      {
        if (!(v44 >> 59))
        {
          var1 = v1[10].var1;
          std::__allocate_at_least[abi:ne200100]<std::allocator<ITColor>>(v44);
        }

        std::vector<sortQuantizeColorEntry>::__throw_length_error[abi:ne200100]();
      }

      if (v44 > (*&v1[11].var1 - *&v1[10].var3) >> 3)
      {
        if (!(v44 >> 61))
        {
          var0 = v1[11].var0;
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v44);
        }

        std::vector<sortQuantizeColorEntry>::__throw_length_error[abi:ne200100]();
      }

      if (v44 <= 1)
      {
        v47 = 1;
      }

      else
      {
        v47 = v44;
      }

      v48 = v4 + 1;
      do
      {
        v49 = v1[10].var1;
        var2 = v1[10].var2;
        if (*&v49 >= *&var2)
        {
          v53 = v1[10].var0;
          v54 = (*&v49 - *&v53) >> 5;
          v55 = v54 + 1;
          if ((v54 + 1) >> 59)
          {
            std::vector<sortQuantizeColorEntry>::__throw_length_error[abi:ne200100]();
          }

          v56 = *&var2 - *&v53;
          if (v56 >> 4 > v55)
          {
            v55 = v56 >> 4;
          }

          if (v56 >= 0x7FFFFFFFFFFFFFE0)
          {
            v57 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v57 = v55;
          }

          if (v57)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ITColor>>(v57);
          }

          v58 = (32 * v54);
          v59 = v48[1];
          *v58 = *v48;
          v58[1] = v59;
          v52 = 32 * v54 + 32;
          v60 = v1[10].var0;
          v61 = *&v1[10].var1 - *&v60;
          *&v62 = 32 * v54 - v61;
          memcpy(v58 - v61, *&v60, v61);
          v63 = v1[10].var0;
          v1[10].var0 = v62;
          *&v1[10].var1 = v52;
          v1[10].var2 = 0.0;
          if (v63 != 0.0)
          {
            operator delete(*&v63);
          }
        }

        else
        {
          v51 = v48[1];
          **&v49 = *v48;
          *(*&v49 + 16) = v51;
          v52 = *&v49 + 32;
        }

        *&v1[10].var1 = v52;
        v65 = v1[11].var0;
        v64 = v1[11].var1;
        if (*&v65 >= *&v64)
        {
          var3 = v1[10].var3;
          v68 = *&v65 - *&var3;
          v69 = (*&v65 - *&var3) >> 3;
          v70 = v69 + 1;
          if ((v69 + 1) >> 61)
          {
            std::vector<sortQuantizeColorEntry>::__throw_length_error[abi:ne200100]();
          }

          v71 = *&v64 - *&var3;
          if (v71 >> 2 > v70)
          {
            v70 = v71 >> 2;
          }

          if (v71 >= 0x7FFFFFFFFFFFFFF8)
          {
            v72 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v72 = v70;
          }

          if (v72)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v72);
          }

          v73 = (*&v65 - *&var3) >> 3;
          v74 = (8 * v69);
          v75 = (8 * v69 - 8 * v73);
          *v74 = v48[-1].n128_u64[0];
          v66 = v74 + 1;
          memcpy(v75, *&var3, v68);
          v76 = v1[10].var3;
          *&v1[10].var3 = v75;
          *&v1[11].var0 = v66;
          v1[11].var1 = 0.0;
          if (v76 != 0.0)
          {
            operator delete(*&v76);
          }
        }

        else
        {
          **&v65 = v48[-1].n128_u64[0];
          v66 = (*&v65 + 8);
        }

        *&v1[11].var0 = v66;
        v48 += 4;
        --v47;
      }

      while (v47);
    }

    if (v4)
    {
      operator delete(v4);
    }
  }

  return v1 + 10;
}

void sub_1AC82B870(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void ImageAnalyzer::EnhanceContrastWithColor(ITColor a1, ITColor a2, double a3)
{
  var2 = a2.var2;
  var0 = a2.var0;
  var1 = a2.var1;
  v17 = a1;
  HSVColor = ITColor::GetHSVColor(&v17);
  v7 = v6;
  v9 = v8;
  v10.n128_f64[0] = var0;
  v10.n128_f64[1] = var1;
  ITColor::GetLuminance(v11, v10, var2);
  v13 = 1.0 - (1.0 - v9) * a3;
  if (v14 >= 0.180000007)
  {
    v13 = v9 * a3;
  }

  ITColor::CreateFromHSVDoubles(v12, HSVColor, v7, v13);
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,false>(__n128 *a1, __n128 *a2, unsigned int (**a3)(__n128 *, __n128 *), uint64_t a4, char a5)
{
LABEL_1:
  v9 = a2 - 4;
  v10 = a2 - 8;
  v745 = a2 - 12;
  v11 = a1;
  v747 = a2;
  while (1)
  {
    a1 = v11;
    v12 = (a2 - v11) >> 6;
    v13 = v12 - 2;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return;
    }

    if (v12 == 2)
    {
      v531 = *a3;
      v532 = *v9;
      v533 = v9[1];
      v534 = v9[3];
      v762 = v9[2];
      v763 = v534;
      v760 = v532;
      v761 = v533;
      v535 = *v11;
      v536 = v11[1];
      v537 = v11[3];
      v758 = v11[2];
      v759 = v537;
      v756 = v535;
      v757 = v536;
      if (!v531(&v760, &v756))
      {
        return;
      }

LABEL_111:
      v552 = *v11;
      v553 = v11[1];
      v554 = v11[3];
      v762 = v11[2];
      v763 = v554;
      v760 = v552;
      v761 = v553;
      v555 = *v9;
      v556 = v9[1];
      v557 = v9[3];
      v11[2] = v9[2];
      v11[3] = v557;
      *v11 = v555;
      v11[1] = v556;
      v558 = v760;
      v559 = v761;
      v560 = v762;
      v561 = v763;
      goto LABEL_112;
    }

LABEL_9:
    if (v12 <= 23)
    {
      v562 = v11 + 4;
      v564 = v11 == a2 || v562 == a2;
      if (a5)
      {
        if (!v564)
        {
          v565 = 0;
          do
          {
            v566 = v11;
            v11 = v562;
            v567 = *a3;
            v568 = *v11;
            v569 = v11[1];
            v570 = v11[3];
            v762 = v11[2];
            v763 = v570;
            v760 = v568;
            v761 = v569;
            v571 = *v566;
            v572 = v566[1];
            v573 = v566[3];
            v758 = v566[2];
            v759 = v573;
            v756 = v571;
            v757 = v572;
            if (v567(&v760, &v756))
            {
              v574 = *v11;
              v575 = v11[1];
              v576 = v11[3];
              v762 = v11[2];
              v763 = v576;
              v760 = v574;
              v761 = v575;
              v577 = v565;
              while (1)
              {
                v578 = (a1 + v577);
                v579 = *(a1 + v577 + 16);
                v578[4] = *(a1 + v577);
                v578[5] = v579;
                v580 = *(a1 + v577 + 48);
                v578[6] = *(a1 + v577 + 32);
                v578[7] = v580;
                if (!v577)
                {
                  break;
                }

                v581 = *a3;
                v756 = v760;
                v757 = v761;
                v758 = v762;
                v759 = v763;
                v582 = v578[-4];
                v583 = v578[-3];
                v584 = v578[-1];
                v754 = v578[-2];
                v755 = v584;
                v752 = v582;
                v753 = v583;
                v577 -= 64;
                if (((v581)(&v756, &v752) & 1) == 0)
                {
                  v585 = (a1 + v577 + 64);
                  goto LABEL_129;
                }
              }

              v585 = a1;
LABEL_129:
              v586 = v760;
              v587 = v761;
              v588 = v763;
              v585[2] = v762;
              v585[3] = v588;
              *v585 = v586;
              v585[1] = v587;
              a2 = v747;
            }

            v562 = v11 + 4;
            v565 += 64;
          }

          while (&v11[4] != a2);
        }
      }

      else if (!v564)
      {
        do
        {
          v705 = a1;
          a1 = v562;
          v706 = *a3;
          v707 = *a1;
          v708 = a1[1];
          v709 = a1[3];
          v762 = a1[2];
          v763 = v709;
          v760 = v707;
          v761 = v708;
          v710 = *v705;
          v711 = v705[1];
          v712 = v705[3];
          v758 = v705[2];
          v759 = v712;
          v756 = v710;
          v757 = v711;
          if (v706(&v760, &v756))
          {
            v713 = *a1;
            v714 = a1[1];
            v715 = a1[3];
            v762 = a1[2];
            v763 = v715;
            v760 = v713;
            v761 = v714;
            v716 = a1;
            do
            {
              v717 = v716 - 4;
              v718 = v716[-3];
              *v716 = v716[-4];
              v716[1] = v718;
              v719 = v716[-1];
              v716[2] = v716[-2];
              v716[3] = v719;
              v720 = *a3;
              v756 = v760;
              v757 = v761;
              v758 = v762;
              v759 = v763;
              v721 = v716[-8];
              v722 = v716[-7];
              v723 = v716[-5];
              v754 = v716[-6];
              v755 = v723;
              v752 = v721;
              v753 = v722;
              v724 = v720(&v756, &v752);
              v716 = v717;
            }

            while ((v724 & 1) != 0);
            v725 = v760;
            v726 = v761;
            v727 = v763;
            v717[2] = v762;
            v717[3] = v727;
            *v717 = v725;
            v717[1] = v726;
          }

          v562 = a1 + 4;
        }

        while (&a1[4] != a2);
      }

      return;
    }

    if (!a4)
    {
      if (v11 != a2)
      {
        v589 = v13 >> 1;
        v590 = v13 >> 1;
        do
        {
          v591 = v590;
          if (v589 >= v590)
          {
            v592 = (2 * v590) | 1;
            v593 = &a1[4 * v592];
            if (2 * v590 + 2 < v12)
            {
              v594 = *a3;
              v595 = *v593;
              v596 = v593[1];
              v597 = v593[3];
              v762 = v593[2];
              v763 = v597;
              v760 = v595;
              v761 = v596;
              v598 = v593[4];
              v599 = v593[5];
              v600 = v593[7];
              v758 = v593[6];
              v759 = v600;
              v756 = v598;
              v757 = v599;
              if (v594(&v760, &v756))
              {
                v593 += 4;
                v592 = 2 * v591 + 2;
              }
            }

            v601 = &a1[4 * v591];
            v602 = *a3;
            v603 = *v593;
            v604 = v593[1];
            v605 = v593[3];
            v762 = v593[2];
            v763 = v605;
            v760 = v603;
            v761 = v604;
            v606 = *v601;
            v607 = v601[1];
            v608 = v601[3];
            v758 = v601[2];
            v759 = v608;
            v756 = v606;
            v757 = v607;
            a2 = v747;
            if (((v602)(&v760, &v756) & 1) == 0)
            {
              v609 = *v601;
              v610 = v601[1];
              v611 = v601[3];
              v762 = v601[2];
              v763 = v611;
              v760 = v609;
              v761 = v610;
              do
              {
                v612 = v593;
                v613 = *v593;
                v614 = v593[1];
                v615 = v593[3];
                v601[2] = v593[2];
                v601[3] = v615;
                *v601 = v613;
                v601[1] = v614;
                if (v589 < v592)
                {
                  break;
                }

                v616 = (2 * v592) | 1;
                v593 = &a1[4 * v616];
                v617 = 2 * v592 + 2;
                if (v617 < v12)
                {
                  v618 = *a3;
                  v619 = *v593;
                  v620 = v593[1];
                  v621 = v593[3];
                  v758 = v593[2];
                  v759 = v621;
                  v756 = v619;
                  v757 = v620;
                  v622 = v593[4];
                  v623 = v593[5];
                  v624 = v593[7];
                  v754 = v593[6];
                  v755 = v624;
                  v752 = v622;
                  v753 = v623;
                  if (v618(&v756, &v752))
                  {
                    v593 += 4;
                    v616 = v617;
                  }
                }

                v625 = *a3;
                v626 = *v593;
                v627 = v593[1];
                v628 = v593[3];
                v758 = v593[2];
                v759 = v628;
                v756 = v626;
                v757 = v627;
                v752 = v760;
                v753 = v761;
                v754 = v762;
                v755 = v763;
                v601 = v612;
                v592 = v616;
              }

              while (!v625(&v756, &v752));
              v629 = v760;
              v630 = v761;
              v631 = v763;
              v612[2] = v762;
              v612[3] = v631;
              *v612 = v629;
              v612[1] = v630;
              a2 = v747;
            }
          }

          v590 = v591 - 1;
        }

        while (v591);
        do
        {
          v632 = a2;
          v633 = 0;
          v750 = a1[2];
          v751 = a1[3];
          v748 = *a1;
          v749 = a1[1];
          v634 = a1;
          do
          {
            v635 = &v634[4 * v633];
            v636 = v635 + 4;
            v637 = (2 * v633) | 1;
            v638 = 2 * v633 + 2;
            if (v638 < v12)
            {
              v639 = *a3;
              v640 = *v636;
              v641 = v635[5];
              v642 = v635[7];
              v762 = v635[6];
              v763 = v642;
              v760 = v640;
              v761 = v641;
              v643 = v635 + 8;
              v644 = v635[8];
              v645 = v635[9];
              v646 = v635[11];
              v758 = v635[10];
              v759 = v646;
              v756 = v644;
              v757 = v645;
              if (v639(&v760, &v756))
              {
                v636 = v643;
                v637 = v638;
              }
            }

            v647 = *v636;
            v648 = v636[1];
            v649 = v636[3];
            v634[2] = v636[2];
            v634[3] = v649;
            *v634 = v647;
            v634[1] = v648;
            v634 = v636;
            v633 = v637;
          }

          while (v637 <= (v12 - 2) / 2);
          a2 = v632 - 4;
          if (v636 == &v632[-4])
          {
            v636[2] = v750;
            v636[3] = v751;
            *v636 = v748;
            v636[1] = v749;
          }

          else
          {
            v650 = *a2;
            v651 = v632[-3];
            v652 = v632[-1];
            v636[2] = v632[-2];
            v636[3] = v652;
            *v636 = v650;
            v636[1] = v651;
            v632[-2] = v750;
            v632[-1] = v751;
            *a2 = v748;
            v632[-3] = v749;
            v653 = (v636 - a1 + 64) >> 6;
            v654 = v653 < 2;
            v655 = v653 - 2;
            if (!v654)
            {
              v656 = v655 >> 1;
              v657 = &a1[4 * (v655 >> 1)];
              v658 = *a3;
              v659 = *v657;
              v660 = v657[1];
              v661 = v657[3];
              v762 = v657[2];
              v763 = v661;
              v760 = v659;
              v761 = v660;
              v662 = *v636;
              v663 = v636[1];
              v664 = v636[3];
              v758 = v636[2];
              v759 = v664;
              v756 = v662;
              v757 = v663;
              if (v658(&v760, &v756))
              {
                v665 = *v636;
                v666 = v636[1];
                v667 = v636[3];
                v762 = v636[2];
                v763 = v667;
                v760 = v665;
                v761 = v666;
                do
                {
                  v668 = v657;
                  v669 = *v657;
                  v670 = v657[1];
                  v671 = v657[3];
                  v636[2] = v657[2];
                  v636[3] = v671;
                  *v636 = v669;
                  v636[1] = v670;
                  if (!v656)
                  {
                    break;
                  }

                  v672 = *a3;
                  v656 = (v656 - 1) >> 1;
                  v657 = &a1[4 * v656];
                  v673 = *v657;
                  v674 = v657[1];
                  v675 = v657[3];
                  v758 = v657[2];
                  v759 = v675;
                  v756 = v673;
                  v757 = v674;
                  v752 = v760;
                  v753 = v761;
                  v754 = v762;
                  v755 = v763;
                  v636 = v668;
                }

                while (((v672)(&v756, &v752) & 1) != 0);
                v676 = v760;
                v677 = v761;
                v678 = v763;
                v668[2] = v762;
                v668[3] = v678;
                *v668 = v676;
                v668[1] = v677;
              }
            }
          }

          v654 = v12-- <= 2;
        }

        while (!v654);
      }

      return;
    }

    v14 = &v11[4 * (v12 >> 1)];
    v15 = *a3;
    if (v12 >= 0x81)
    {
      v16 = *v14;
      v17 = v14[1];
      v18 = v14[3];
      v762 = v14[2];
      v763 = v18;
      v760 = v16;
      v761 = v17;
      v19 = *v11;
      v20 = v11[1];
      v21 = v11[3];
      v758 = v11[2];
      v759 = v21;
      v756 = v19;
      v757 = v20;
      v22 = v15(&v760, &v756);
      v23 = *a3;
      if (v22)
      {
        v24 = *v9;
        v25 = v9[1];
        v26 = v9[3];
        v762 = v9[2];
        v763 = v26;
        v760 = v24;
        v761 = v25;
        v27 = *v14;
        v28 = v14[1];
        v29 = v14[3];
        v758 = v14[2];
        v759 = v29;
        v756 = v27;
        v757 = v28;
        if (v23(&v760, &v756))
        {
          v30 = *v11;
          v31 = v11[1];
          v32 = v11[3];
          v762 = v11[2];
          v763 = v32;
          v760 = v30;
          v761 = v31;
          v33 = *v9;
          v34 = v9[1];
          v35 = v9[3];
          v11[2] = v9[2];
          v11[3] = v35;
          *v11 = v33;
          v11[1] = v34;
          goto LABEL_26;
        }

        v118 = *v11;
        v119 = v11[1];
        v120 = v11[3];
        v762 = v11[2];
        v763 = v120;
        v760 = v118;
        v761 = v119;
        v121 = *v14;
        v122 = v14[1];
        v123 = v14[3];
        v11[2] = v14[2];
        v11[3] = v123;
        *v11 = v121;
        v11[1] = v122;
        v124 = v760;
        v125 = v761;
        v126 = v763;
        v14[2] = v762;
        v14[3] = v126;
        *v14 = v124;
        v14[1] = v125;
        v127 = *a3;
        v128 = *v9;
        v129 = v9[1];
        v130 = v9[3];
        v762 = v9[2];
        v763 = v130;
        v760 = v128;
        v761 = v129;
        v131 = *v14;
        v132 = v14[1];
        v133 = v14[3];
        v758 = v14[2];
        v759 = v133;
        v756 = v131;
        v757 = v132;
        if (v127(&v760, &v756))
        {
          v134 = *v14;
          v135 = v14[1];
          v136 = v14[3];
          v762 = v14[2];
          v763 = v136;
          v760 = v134;
          v761 = v135;
          v137 = *v9;
          v138 = v9[1];
          v139 = v9[3];
          v14[2] = v9[2];
          v14[3] = v139;
          *v14 = v137;
          v14[1] = v138;
LABEL_26:
          v140 = v760;
          v141 = v761;
          v142 = v763;
          v9[2] = v762;
          v9[3] = v142;
          *v9 = v140;
          v9[1] = v141;
        }
      }

      else
      {
        v56 = *v9;
        v57 = v9[1];
        v58 = v9[3];
        v762 = v9[2];
        v763 = v58;
        v760 = v56;
        v761 = v57;
        v59 = *v14;
        v60 = v14[1];
        v61 = v14[3];
        v758 = v14[2];
        v759 = v61;
        v756 = v59;
        v757 = v60;
        if (v23(&v760, &v756))
        {
          v62 = *v14;
          v63 = v14[1];
          v64 = v14[3];
          v762 = v14[2];
          v763 = v64;
          v760 = v62;
          v761 = v63;
          v65 = *v9;
          v66 = v9[1];
          v67 = v9[3];
          v14[2] = v9[2];
          v14[3] = v67;
          *v14 = v65;
          v14[1] = v66;
          v68 = v760;
          v69 = v761;
          v70 = v763;
          v9[2] = v762;
          v9[3] = v70;
          *v9 = v68;
          v9[1] = v69;
          v71 = *a3;
          v72 = *v14;
          v73 = v14[1];
          v74 = v14[3];
          v762 = v14[2];
          v763 = v74;
          v760 = v72;
          v761 = v73;
          v75 = *v11;
          v76 = v11[1];
          v77 = v11[3];
          v758 = v11[2];
          v759 = v77;
          v756 = v75;
          v757 = v76;
          if (v71(&v760, &v756))
          {
            v78 = *v11;
            v79 = v11[1];
            v80 = v11[3];
            v762 = v11[2];
            v763 = v80;
            v760 = v78;
            v761 = v79;
            v81 = *v14;
            v82 = v14[1];
            v83 = v14[3];
            v11[2] = v14[2];
            v11[3] = v83;
            *v11 = v81;
            v11[1] = v82;
            v84 = v760;
            v85 = v761;
            v86 = v763;
            v14[2] = v762;
            v14[3] = v86;
            *v14 = v84;
            v14[1] = v85;
          }
        }
      }

      v143 = v14 - 4;
      v144 = *a3;
      v145 = v14[-4];
      v146 = v14[-3];
      v147 = v14[-1];
      v762 = v14[-2];
      v763 = v147;
      v760 = v145;
      v761 = v146;
      v148 = v11[5];
      v756 = v11[4];
      v757 = v148;
      v149 = v11[7];
      v758 = v11[6];
      v759 = v149;
      v150 = v144(&v760, &v756);
      v151 = *a3;
      if (v150)
      {
        v152 = *v10;
        v153 = v10[1];
        v154 = v10[3];
        v762 = v10[2];
        v763 = v154;
        v760 = v152;
        v761 = v153;
        v155 = *v143;
        v156 = v14[-3];
        v157 = v14[-1];
        v758 = v14[-2];
        v759 = v157;
        v756 = v155;
        v757 = v156;
        if (v151(&v760, &v756))
        {
          v158 = v11[4];
          v159 = v11[5];
          v760 = v158;
          v761 = v159;
          v160 = v11[6];
          v161 = v11[7];
          v762 = v160;
          v763 = v161;
          v163 = v10[2];
          v162 = v10[3];
          v164 = v10[1];
          v11[4] = *v10;
          v11[5] = v164;
          v11[6] = v163;
          v11[7] = v162;
          goto LABEL_38;
        }

        v219 = v11[5];
        v760 = v11[4];
        v218 = v760;
        v761 = v219;
        v221 = v11[7];
        v762 = v11[6];
        v220 = v762;
        v763 = v221;
        v223 = v14[-2];
        v222 = v14[-1];
        v224 = v14[-3];
        v11[4] = *v143;
        v11[5] = v224;
        v11[6] = v223;
        v11[7] = v222;
        v14[-2] = v220;
        v14[-1] = v221;
        *v143 = v218;
        v14[-3] = v219;
        v225 = *a3;
        v226 = *v10;
        v227 = v10[1];
        v228 = v10[3];
        v762 = v10[2];
        v763 = v228;
        v760 = v226;
        v761 = v227;
        v229 = *v143;
        v230 = v14[-3];
        v231 = v14[-1];
        v758 = v14[-2];
        v759 = v231;
        v756 = v229;
        v757 = v230;
        if (v225(&v760, &v756))
        {
          v232 = *v143;
          v233 = v14[-3];
          v234 = v14[-1];
          v762 = v14[-2];
          v763 = v234;
          v760 = v232;
          v761 = v233;
          v235 = *v10;
          v236 = v10[1];
          v237 = v10[3];
          v14[-2] = v10[2];
          v14[-1] = v237;
          *v143 = v235;
          v14[-3] = v236;
          v158 = v760;
          v159 = v761;
          v160 = v762;
          v161 = v763;
LABEL_38:
          v10[2] = v160;
          v10[3] = v161;
          *v10 = v158;
          v10[1] = v159;
        }
      }

      else
      {
        v165 = *v10;
        v166 = v10[1];
        v167 = v10[3];
        v762 = v10[2];
        v763 = v167;
        v760 = v165;
        v761 = v166;
        v168 = *v143;
        v169 = v14[-3];
        v170 = v14[-1];
        v758 = v14[-2];
        v759 = v170;
        v756 = v168;
        v757 = v169;
        if (v151(&v760, &v756))
        {
          v171 = *v143;
          v172 = v14[-3];
          v173 = v14[-1];
          v762 = v14[-2];
          v763 = v173;
          v760 = v171;
          v761 = v172;
          v174 = *v10;
          v175 = v10[1];
          v176 = v10[3];
          v14[-2] = v10[2];
          v14[-1] = v176;
          *v143 = v174;
          v14[-3] = v175;
          v177 = v760;
          v178 = v761;
          v179 = v763;
          v10[2] = v762;
          v10[3] = v179;
          *v10 = v177;
          v10[1] = v178;
          v180 = *a3;
          v181 = *v143;
          v182 = v14[-3];
          v183 = v14[-1];
          v762 = v14[-2];
          v763 = v183;
          v760 = v181;
          v761 = v182;
          v184 = v11[5];
          v756 = v11[4];
          v757 = v184;
          v185 = v11[7];
          v758 = v11[6];
          v759 = v185;
          if (v180(&v760, &v756))
          {
            v187 = v11[5];
            v760 = v11[4];
            v186 = v760;
            v761 = v187;
            v189 = v11[7];
            v762 = v11[6];
            v188 = v762;
            v763 = v189;
            v191 = v14[-2];
            v190 = v14[-1];
            v192 = v14[-3];
            v11[4] = *v143;
            v11[5] = v192;
            v11[6] = v191;
            v11[7] = v190;
            v14[-2] = v188;
            v14[-1] = v189;
            *v143 = v186;
            v14[-3] = v187;
          }
        }
      }

      v238 = *a3;
      v239 = v14[4];
      v240 = v14[5];
      v241 = v14[7];
      v762 = v14[6];
      v763 = v241;
      v760 = v239;
      v761 = v240;
      v242 = v11[9];
      v756 = v11[8];
      v757 = v242;
      v243 = v11[11];
      v758 = v11[10];
      v759 = v243;
      v244 = v238(&v760, &v756);
      v245 = *a3;
      if (v244)
      {
        v246 = *v745;
        v247 = v745[1];
        v248 = v745[3];
        v762 = v745[2];
        v763 = v248;
        v760 = v246;
        v761 = v247;
        v249 = v14[4];
        v250 = v14[5];
        v251 = v14[7];
        v758 = v14[6];
        v759 = v251;
        v756 = v249;
        v757 = v250;
        if (v245(&v760, &v756))
        {
          v252 = v11[8];
          v253 = v11[9];
          v760 = v252;
          v761 = v253;
          v254 = v11[10];
          v255 = v11[11];
          v762 = v254;
          v763 = v255;
          v257 = v745[2];
          v256 = v745[3];
          v258 = v745[1];
          v11[8] = *v745;
          v11[9] = v258;
          v11[10] = v257;
          v11[11] = v256;
          goto LABEL_47;
        }

        v288 = v11[9];
        v760 = v11[8];
        v287 = v760;
        v761 = v288;
        v290 = v11[11];
        v762 = v11[10];
        v289 = v762;
        v763 = v290;
        v292 = v14[6];
        v291 = v14[7];
        v293 = v14[5];
        v11[8] = v14[4];
        v11[9] = v293;
        v11[10] = v292;
        v11[11] = v291;
        v14[6] = v289;
        v14[7] = v290;
        v14[4] = v287;
        v14[5] = v288;
        v294 = *a3;
        v295 = *v745;
        v296 = v745[1];
        v297 = v745[3];
        v762 = v745[2];
        v763 = v297;
        v760 = v295;
        v761 = v296;
        v298 = v14[4];
        v299 = v14[5];
        v300 = v14[7];
        v758 = v14[6];
        v759 = v300;
        v756 = v298;
        v757 = v299;
        if (v294(&v760, &v756))
        {
          v301 = v14[4];
          v302 = v14[5];
          v303 = v14[7];
          v762 = v14[6];
          v763 = v303;
          v760 = v301;
          v761 = v302;
          v304 = *v745;
          v305 = v745[1];
          v306 = v745[3];
          v14[6] = v745[2];
          v14[7] = v306;
          v14[4] = v304;
          v14[5] = v305;
          v252 = v760;
          v253 = v761;
          v254 = v762;
          v255 = v763;
LABEL_47:
          v745[2] = v254;
          v745[3] = v255;
          *v745 = v252;
          v745[1] = v253;
        }
      }

      else
      {
        v259 = *v745;
        v260 = v745[1];
        v261 = v745[3];
        v762 = v745[2];
        v763 = v261;
        v760 = v259;
        v761 = v260;
        v262 = v14[4];
        v263 = v14[5];
        v264 = v14[7];
        v758 = v14[6];
        v759 = v264;
        v756 = v262;
        v757 = v263;
        if (v245(&v760, &v756))
        {
          v265 = v14[4];
          v266 = v14[5];
          v267 = v14[7];
          v762 = v14[6];
          v763 = v267;
          v760 = v265;
          v761 = v266;
          v268 = *v745;
          v269 = v745[1];
          v270 = v745[3];
          v14[6] = v745[2];
          v14[7] = v270;
          v14[4] = v268;
          v14[5] = v269;
          v271 = v760;
          v272 = v761;
          v273 = v763;
          v745[2] = v762;
          v745[3] = v273;
          *v745 = v271;
          v745[1] = v272;
          v274 = *a3;
          v275 = v14[4];
          v276 = v14[5];
          v277 = v14[7];
          v762 = v14[6];
          v763 = v277;
          v760 = v275;
          v761 = v276;
          v278 = v11[9];
          v756 = v11[8];
          v757 = v278;
          v279 = v11[11];
          v758 = v11[10];
          v759 = v279;
          if (v274(&v760, &v756))
          {
            v281 = v11[9];
            v760 = v11[8];
            v280 = v760;
            v761 = v281;
            v283 = v11[11];
            v762 = v11[10];
            v282 = v762;
            v763 = v283;
            v285 = v14[6];
            v284 = v14[7];
            v286 = v14[5];
            v11[8] = v14[4];
            v11[9] = v286;
            v11[10] = v285;
            v11[11] = v284;
            v14[6] = v282;
            v14[7] = v283;
            v14[4] = v280;
            v14[5] = v281;
          }
        }
      }

      v307 = *a3;
      v308 = *v14;
      v309 = v14[1];
      v310 = v14[3];
      v762 = v14[2];
      v763 = v310;
      v760 = v308;
      v761 = v309;
      v311 = *v143;
      v312 = v14[-3];
      v313 = v14[-1];
      v758 = v14[-2];
      v759 = v313;
      v756 = v311;
      v757 = v312;
      v314 = v307(&v760, &v756);
      v315 = *a3;
      if (v314)
      {
        v316 = v14[4];
        v317 = v14[5];
        v318 = v14[7];
        v762 = v14[6];
        v763 = v318;
        v760 = v316;
        v761 = v317;
        v319 = *v14;
        v320 = v14[1];
        v321 = v14[3];
        v758 = v14[2];
        v759 = v321;
        v756 = v319;
        v757 = v320;
        if (v315(&v760, &v756))
        {
          v322 = *v143;
          v323 = v14[-3];
          v324 = v14[-1];
          v762 = v14[-2];
          v763 = v324;
          v760 = v322;
          v761 = v323;
          v325 = v14[5];
          *v143 = v14[4];
          v14[-3] = v325;
          v326 = v14[7];
          v14[-2] = v14[6];
          v14[-1] = v326;
          goto LABEL_56;
        }

        v356 = *v143;
        v357 = v14[-3];
        v358 = v14[-1];
        v762 = v14[-2];
        v763 = v358;
        v760 = v356;
        v761 = v357;
        v359 = v14[1];
        *v143 = *v14;
        v14[-3] = v359;
        v360 = v14[3];
        v14[-2] = v14[2];
        v14[-1] = v360;
        v361 = v763;
        v362 = v760;
        v363 = v761;
        v14[2] = v762;
        v14[3] = v361;
        *v14 = v362;
        v14[1] = v363;
        v364 = *a3;
        v365 = v14[4];
        v366 = v14[5];
        v367 = v14[7];
        v762 = v14[6];
        v763 = v367;
        v760 = v365;
        v761 = v366;
        v368 = *v14;
        v369 = v14[1];
        v370 = v14[3];
        v758 = v14[2];
        v759 = v370;
        v756 = v368;
        v757 = v369;
        if (v364(&v760, &v756))
        {
          v371 = *v14;
          v372 = v14[1];
          v373 = v14[3];
          v762 = v14[2];
          v763 = v373;
          v760 = v371;
          v761 = v372;
          v374 = v14[5];
          *v14 = v14[4];
          v14[1] = v374;
          v375 = v14[7];
          v14[2] = v14[6];
          v14[3] = v375;
LABEL_56:
          v376 = v763;
          v377 = v760;
          v378 = v761;
          v14[6] = v762;
          v14[7] = v376;
          v14[4] = v377;
          v14[5] = v378;
        }
      }

      else
      {
        v327 = v14[4];
        v328 = v14[5];
        v329 = v14[7];
        v762 = v14[6];
        v763 = v329;
        v760 = v327;
        v761 = v328;
        v330 = *v14;
        v331 = v14[1];
        v332 = v14[3];
        v758 = v14[2];
        v759 = v332;
        v756 = v330;
        v757 = v331;
        if (v315(&v760, &v756))
        {
          v333 = *v14;
          v334 = v14[1];
          v335 = v14[3];
          v762 = v14[2];
          v763 = v335;
          v760 = v333;
          v761 = v334;
          v336 = v14[5];
          *v14 = v14[4];
          v14[1] = v336;
          v337 = v14[7];
          v14[2] = v14[6];
          v14[3] = v337;
          v338 = v763;
          v339 = v760;
          v340 = v761;
          v14[6] = v762;
          v14[7] = v338;
          v14[4] = v339;
          v14[5] = v340;
          v341 = *a3;
          v342 = *v14;
          v343 = v14[1];
          v344 = v14[3];
          v762 = v14[2];
          v763 = v344;
          v760 = v342;
          v761 = v343;
          v345 = *v143;
          v346 = v14[-3];
          v347 = v14[-1];
          v758 = v14[-2];
          v759 = v347;
          v756 = v345;
          v757 = v346;
          if (v341(&v760, &v756))
          {
            v348 = *v143;
            v349 = v14[-3];
            v350 = v14[-1];
            v762 = v14[-2];
            v763 = v350;
            v760 = v348;
            v761 = v349;
            v351 = v14[1];
            *v143 = *v14;
            v14[-3] = v351;
            v352 = v14[3];
            v14[-2] = v14[2];
            v14[-1] = v352;
            v353 = v763;
            v354 = v760;
            v355 = v761;
            v14[2] = v762;
            v14[3] = v353;
            *v14 = v354;
            v14[1] = v355;
          }
        }
      }

      v379 = *v11;
      v380 = v11[1];
      v381 = v11[3];
      v762 = v11[2];
      v763 = v381;
      v760 = v379;
      v761 = v380;
      v382 = *v14;
      v383 = v14[1];
      v384 = v14[3];
      v11[2] = v14[2];
      v11[3] = v384;
      *v11 = v382;
      v11[1] = v383;
      v385 = v760;
      v386 = v761;
      v387 = v763;
      v14[2] = v762;
      v14[3] = v387;
      *v14 = v385;
      v14[1] = v386;
      goto LABEL_58;
    }

    v36 = *v11;
    v37 = v11[1];
    v38 = v11[3];
    v762 = v11[2];
    v763 = v38;
    v760 = v36;
    v761 = v37;
    v39 = *v14;
    v40 = v14[1];
    v41 = v14[3];
    v758 = v14[2];
    v759 = v41;
    v756 = v39;
    v757 = v40;
    v42 = v15(&v760, &v756);
    v43 = *a3;
    if ((v42 & 1) == 0)
    {
      v87 = *v9;
      v88 = v9[1];
      v89 = v9[3];
      v762 = v9[2];
      v763 = v89;
      v760 = v87;
      v761 = v88;
      v90 = *v11;
      v91 = v11[1];
      v92 = v11[3];
      v758 = v11[2];
      v759 = v92;
      v756 = v90;
      v757 = v91;
      if (v43(&v760, &v756))
      {
        v93 = *v11;
        v94 = v11[1];
        v95 = v11[3];
        v762 = v11[2];
        v763 = v95;
        v760 = v93;
        v761 = v94;
        v96 = *v9;
        v97 = v9[1];
        v98 = v9[3];
        v11[2] = v9[2];
        v11[3] = v98;
        *v11 = v96;
        v11[1] = v97;
        v99 = v760;
        v100 = v761;
        v101 = v763;
        v9[2] = v762;
        v9[3] = v101;
        *v9 = v99;
        v9[1] = v100;
        v102 = *a3;
        v103 = *v11;
        v104 = v11[1];
        v105 = v11[3];
        v762 = v11[2];
        v763 = v105;
        v760 = v103;
        v761 = v104;
        v106 = *v14;
        v107 = v14[1];
        v108 = v14[3];
        v758 = v14[2];
        v759 = v108;
        v756 = v106;
        v757 = v107;
        if (v102(&v760, &v756))
        {
          v109 = *v14;
          v110 = v14[1];
          v111 = v14[3];
          v762 = v14[2];
          v763 = v111;
          v760 = v109;
          v761 = v110;
          v112 = *v11;
          v113 = v11[1];
          v114 = v11[3];
          v14[2] = v11[2];
          v14[3] = v114;
          *v14 = v112;
          v14[1] = v113;
          v115 = v760;
          v116 = v761;
          v117 = v763;
          v11[2] = v762;
          v11[3] = v117;
          *v11 = v115;
          v11[1] = v116;
        }
      }

      goto LABEL_58;
    }

    v44 = *v9;
    v45 = v9[1];
    v46 = v9[3];
    v762 = v9[2];
    v763 = v46;
    v760 = v44;
    v761 = v45;
    v47 = *v11;
    v48 = v11[1];
    v49 = v11[3];
    v758 = v11[2];
    v759 = v49;
    v756 = v47;
    v757 = v48;
    if (v43(&v760, &v756))
    {
      v50 = *v14;
      v51 = v14[1];
      v52 = v14[3];
      v762 = v14[2];
      v763 = v52;
      v760 = v50;
      v761 = v51;
      v53 = *v9;
      v54 = v9[1];
      v55 = v9[3];
      v14[2] = v9[2];
      v14[3] = v55;
      *v14 = v53;
      v14[1] = v54;
    }

    else
    {
      v193 = *v14;
      v194 = v14[1];
      v195 = v14[3];
      v762 = v14[2];
      v763 = v195;
      v760 = v193;
      v761 = v194;
      v196 = *v11;
      v197 = v11[1];
      v198 = v11[3];
      v14[2] = v11[2];
      v14[3] = v198;
      *v14 = v196;
      v14[1] = v197;
      v199 = v760;
      v200 = v761;
      v201 = v763;
      v11[2] = v762;
      v11[3] = v201;
      *v11 = v199;
      v11[1] = v200;
      v202 = *a3;
      v203 = *v9;
      v204 = v9[1];
      v205 = v9[3];
      v762 = v9[2];
      v763 = v205;
      v760 = v203;
      v761 = v204;
      v206 = *v11;
      v207 = v11[1];
      v208 = v11[3];
      v758 = v11[2];
      v759 = v208;
      v756 = v206;
      v757 = v207;
      if (!v202(&v760, &v756))
      {
        goto LABEL_58;
      }

      v209 = *v11;
      v210 = v11[1];
      v211 = v11[3];
      v762 = v11[2];
      v763 = v211;
      v760 = v209;
      v761 = v210;
      v212 = *v9;
      v213 = v9[1];
      v214 = v9[3];
      v11[2] = v9[2];
      v11[3] = v214;
      *v11 = v212;
      v11[1] = v213;
    }

    v215 = v760;
    v216 = v761;
    v217 = v763;
    v9[2] = v762;
    v9[3] = v217;
    *v9 = v215;
    v9[1] = v216;
LABEL_58:
    --a4;
    if (a5)
    {
      goto LABEL_60;
    }

    v388 = *a3;
    v389 = v11[-4];
    v390 = v11[-3];
    v391 = v11[-1];
    v762 = v11[-2];
    v763 = v391;
    v760 = v389;
    v761 = v390;
    v392 = *v11;
    v393 = v11[1];
    v394 = v11[3];
    v758 = v11[2];
    v759 = v394;
    v756 = v392;
    v757 = v393;
    if ((v388)(&v760, &v756))
    {
LABEL_60:
      v395 = v9;
      v396 = v10;
      v397 = a4;
      v398 = *v11;
      v399 = v11[1];
      v400 = v11[3];
      v758 = v11[2];
      v759 = v400;
      v756 = v398;
      v757 = v399;
      do
      {
        v401 = v11;
        v402 = *a3;
        v11 += 4;
        v403 = v401[5];
        v760 = v401[4];
        v761 = v403;
        v404 = v401[7];
        v762 = v401[6];
        v763 = v404;
        v752 = v756;
        v753 = v757;
        v754 = v758;
        v755 = v759;
      }

      while (((v402)(&v760, &v752) & 1) != 0);
      v405 = v747;
      if (v401 == a1)
      {
        v412 = v747;
        while (v11 < v412)
        {
          v413 = *a3;
          v406 = v412 - 4;
          v414 = v412[-4];
          v415 = v412[-3];
          v416 = v412[-1];
          v762 = v412[-2];
          v763 = v416;
          v760 = v414;
          v761 = v415;
          v752 = v756;
          v753 = v757;
          v754 = v758;
          v755 = v759;
          v417 = v413(&v760, &v752);
          v412 = v406;
          if (v417)
          {
            goto LABEL_70;
          }
        }

        v406 = v412;
      }

      else
      {
        do
        {
          v406 = v405 - 4;
          v407 = *a3;
          v408 = v405[-4];
          v409 = v405[-3];
          v410 = v405[-1];
          v762 = v405[-2];
          v763 = v410;
          v760 = v408;
          v761 = v409;
          v752 = v756;
          v753 = v757;
          v754 = v758;
          v755 = v759;
          v411 = v407(&v760, &v752);
          v405 = v406;
        }

        while (!v411);
      }

LABEL_70:
      if (v11 < v406)
      {
        v418 = v11;
        v419 = v406;
        do
        {
          v421 = v418[1];
          v760 = *v418;
          v420 = v760;
          v761 = v421;
          v423 = v418[3];
          v762 = v418[2];
          v422 = v762;
          v763 = v423;
          v425 = v419[2];
          v424 = v419[3];
          v426 = v419[1];
          *v418 = *v419;
          v418[1] = v426;
          v418[2] = v425;
          v418[3] = v424;
          v419[2] = v422;
          v419[3] = v423;
          *v419 = v420;
          v419[1] = v421;
          do
          {
            v401 = v418;
            v427 = *a3;
            v418 += 4;
            v428 = v401[5];
            v760 = v401[4];
            v761 = v428;
            v429 = v401[7];
            v762 = v401[6];
            v763 = v429;
            v752 = v756;
            v753 = v757;
            v754 = v758;
            v755 = v759;
          }

          while (((v427)(&v760, &v752) & 1) != 0);
          do
          {
            v430 = v419[-4];
            v431 = v419[-3];
            v432 = v419[-2];
            v433 = v419[-1];
            v419 -= 4;
            v434 = *a3;
            v762 = v432;
            v763 = v433;
            v760 = v430;
            v761 = v431;
            v752 = v756;
            v753 = v757;
            v754 = v758;
            v755 = v759;
          }

          while (!v434(&v760, &v752));
        }

        while (v418 < v419);
      }

      if (v401 != a1)
      {
        v435 = *v401;
        v436 = v401[1];
        v437 = v401[3];
        a1[2] = v401[2];
        a1[3] = v437;
        *a1 = v435;
        a1[1] = v436;
      }

      v438 = v756;
      v439 = v757;
      v440 = v759;
      v401[2] = v758;
      v401[3] = v440;
      *v401 = v438;
      v401[1] = v439;
      v441 = v11 >= v406;
      a4 = v397;
      v10 = v396;
      v9 = v395;
      a2 = v747;
      if (!v441)
      {
        goto LABEL_82;
      }

      v442 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(a1, v401, a3);
      v11 = v401 + 4;
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(v401 + 4, v747, a3))
      {
        a2 = v401;
        if (!v442)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v442)
      {
LABEL_82:
        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,false>(a1, v401, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v401 + 4;
      }
    }

    else
    {
      v443 = *v11;
      v444 = v11[1];
      v445 = v11[3];
      v758 = v11[2];
      v759 = v445;
      v756 = v443;
      v757 = v444;
      v446 = *a3;
      v447 = *v11;
      v448 = v11[1];
      v449 = v11[3];
      v762 = v11[2];
      v763 = v449;
      v760 = v447;
      v761 = v448;
      v450 = *v9;
      v451 = v9[1];
      v452 = v9[3];
      v754 = v9[2];
      v755 = v452;
      v752 = v450;
      v753 = v451;
      if ((v446)(&v760, &v752))
      {
        v453 = v11;
        a2 = v747;
        do
        {
          v11 = v453 + 4;
          v454 = *a3;
          v760 = v756;
          v761 = v757;
          v762 = v758;
          v763 = v759;
          v455 = v453[5];
          v752 = v453[4];
          v753 = v455;
          v456 = v453[7];
          v754 = v453[6];
          v755 = v456;
          v457 = v454(&v760, &v752);
          v453 = v11;
        }

        while ((v457 & 1) == 0);
      }

      else
      {
        n128_u64 = v11[4].n128_u64;
        a2 = v747;
        do
        {
          v11 = n128_u64;
          if (n128_u64 >= v747)
          {
            break;
          }

          v459 = *a3;
          v760 = v756;
          v761 = v757;
          v762 = v758;
          v763 = v759;
          v460 = *v11;
          v461 = v11[1];
          v462 = v11[3];
          v754 = v11[2];
          v755 = v462;
          v752 = v460;
          v753 = v461;
          v463 = v459(&v760, &v752);
          n128_u64 = v11[4].n128_u64;
        }

        while (!v463);
      }

      v464 = a2;
      if (v11 < a2)
      {
        v465 = a2;
        do
        {
          v464 = v465 - 4;
          v466 = *a3;
          v760 = v756;
          v761 = v757;
          v762 = v758;
          v763 = v759;
          v467 = v465[-4];
          v468 = v465[-3];
          v469 = v465[-1];
          v754 = v465[-2];
          v755 = v469;
          v752 = v467;
          v753 = v468;
          v470 = v466(&v760, &v752);
          v465 = v464;
        }

        while ((v470 & 1) != 0);
      }

      while (v11 < v464)
      {
        v471 = *v11;
        v472 = v11[1];
        v473 = v11[3];
        v762 = v11[2];
        v763 = v473;
        v760 = v471;
        v761 = v472;
        v474 = *v464;
        v475 = v464[1];
        v476 = v464[3];
        v11[2] = v464[2];
        v11[3] = v476;
        *v11 = v474;
        v11[1] = v475;
        v477 = v760;
        v478 = v761;
        v479 = v763;
        v464[2] = v762;
        v464[3] = v479;
        *v464 = v477;
        v464[1] = v478;
        do
        {
          v760 = v756;
          v761 = v757;
          v762 = v758;
          v763 = v759;
          v480 = v11[5];
          v752 = v11[4];
          v753 = v480;
          v481 = v11[6];
          v482 = v11[7];
          v11 += 4;
          v483 = *a3;
          v754 = v481;
          v755 = v482;
        }

        while (!v483(&v760, &v752));
        do
        {
          v760 = v756;
          v761 = v757;
          v762 = v758;
          v763 = v759;
          v484 = v464[-4];
          v485 = v464[-3];
          v486 = v464[-2];
          v487 = v464[-1];
          v464 -= 4;
          v488 = *a3;
          v754 = v486;
          v755 = v487;
          v752 = v484;
          v753 = v485;
        }

        while (((v488)(&v760, &v752) & 1) != 0);
      }

      v489 = v11 - 4;
      if (&v11[-4] != a1)
      {
        v490 = *v489;
        v491 = v11[-3];
        v492 = v11[-1];
        a1[2] = v11[-2];
        a1[3] = v492;
        *a1 = v490;
        a1[1] = v491;
      }

      a5 = 0;
      v493 = v756;
      v494 = v757;
      v495 = v759;
      v11[-2] = v758;
      v11[-1] = v495;
      *v489 = v493;
      v11[-3] = v494;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(v11, v11 + 4, v11 + 8, v9, a3);
      return;
    }

    if (v12 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(v11, v11 + 4, v11 + 8, v11 + 12, a3);
      v496 = *a3;
      v497 = *v9;
      v498 = v9[1];
      v499 = v9[3];
      v762 = v9[2];
      v763 = v499;
      v760 = v497;
      v761 = v498;
      v500 = v11[13];
      v756 = v11[12];
      v757 = v500;
      v501 = v11[15];
      v758 = v11[14];
      v759 = v501;
      if (v496(&v760, &v756))
      {
        v503 = v11[13];
        v760 = v11[12];
        v502 = v760;
        v761 = v503;
        v505 = v11[15];
        v762 = v11[14];
        v504 = v762;
        v763 = v505;
        v507 = v9[2];
        v506 = v9[3];
        v508 = v9[1];
        v11[12] = *v9;
        v11[13] = v508;
        v11[14] = v507;
        v11[15] = v506;
        v9[2] = v504;
        v9[3] = v505;
        *v9 = v502;
        v9[1] = v503;
        v509 = *a3;
        v510 = v11[13];
        v760 = v11[12];
        v761 = v510;
        v511 = v11[15];
        v762 = v11[14];
        v763 = v511;
        v512 = v11[9];
        v756 = v11[8];
        v757 = v512;
        v513 = v11[11];
        v758 = v11[10];
        v759 = v513;
        if (v509(&v760, &v756))
        {
          v515 = v11[10];
          v514 = v11[11];
          v517 = v11[8];
          v516 = v11[9];
          v518 = v11[13];
          v11[8] = v11[12];
          v11[9] = v518;
          v519 = v11[15];
          v11[10] = v11[14];
          v11[11] = v519;
          v11[12] = v517;
          v11[13] = v516;
          v11[14] = v515;
          v11[15] = v514;
          v520 = *a3;
          v521 = v11[9];
          v760 = v11[8];
          v761 = v521;
          v522 = v11[11];
          v762 = v11[10];
          v763 = v522;
          v523 = v11[5];
          v756 = v11[4];
          v757 = v523;
          v524 = v11[7];
          v758 = v11[6];
          v759 = v524;
          if (v520(&v760, &v756))
          {
            v526 = v11[6];
            v525 = v11[7];
            v528 = v11[4];
            v527 = v11[5];
            v529 = v11[9];
            v11[4] = v11[8];
            v11[5] = v529;
            v530 = v11[11];
            v11[6] = v11[10];
            v11[7] = v530;
            v11[8] = v528;
            v11[9] = v527;
            v11[10] = v526;
            v11[11] = v525;
LABEL_165:
            v691 = *a3;
            v692 = v11[5];
            v760 = v11[4];
            v761 = v692;
            v693 = v11[7];
            v762 = v11[6];
            v763 = v693;
            v694 = *v11;
            v695 = v11[1];
            v696 = v11[3];
            v758 = v11[2];
            v759 = v696;
            v756 = v694;
            v757 = v695;
            if (v691(&v760, &v756))
            {
              v697 = *v11;
              v698 = v11[1];
              v699 = v11[3];
              v762 = v11[2];
              v763 = v699;
              v760 = v697;
              v761 = v698;
              v700 = v11[5];
              *v11 = v11[4];
              v11[1] = v700;
              v701 = v11[7];
              v11[2] = v11[6];
              v11[3] = v701;
              v702 = v760;
              v703 = v761;
              v704 = v763;
              v11[6] = v762;
              v11[7] = v704;
              v11[4] = v702;
              v11[5] = v703;
            }
          }
        }
      }

      return;
    }

    goto LABEL_9;
  }

  v539 = *a3;
  v540 = v11[5];
  v760 = v11[4];
  v761 = v540;
  v541 = v11[7];
  v762 = v11[6];
  v763 = v541;
  v542 = *v11;
  v543 = v11[1];
  v544 = v11[3];
  v758 = v11[2];
  v759 = v544;
  v756 = v542;
  v757 = v543;
  v545 = v539(&v760, &v756);
  v546 = *a3;
  if (v545)
  {
    v547 = *v9;
    v548 = v9[1];
    v549 = v9[3];
    v762 = v9[2];
    v763 = v549;
    v760 = v547;
    v761 = v548;
    v550 = v11[5];
    v756 = v11[4];
    v757 = v550;
    v551 = v11[7];
    v758 = v11[6];
    v759 = v551;
    if (v546(&v760, &v756))
    {
      goto LABEL_111;
    }

    v728 = *v11;
    v729 = v11[1];
    v730 = v11[3];
    v762 = v11[2];
    v763 = v730;
    v760 = v728;
    v761 = v729;
    v731 = v11[5];
    *v11 = v11[4];
    v11[1] = v731;
    v732 = v11[7];
    v11[2] = v11[6];
    v11[3] = v732;
    v733 = v760;
    v734 = v761;
    v735 = v763;
    v11[6] = v762;
    v11[7] = v735;
    v11[4] = v733;
    v11[5] = v734;
    v736 = *a3;
    v737 = *v9;
    v738 = v9[1];
    v739 = v9[3];
    v762 = v9[2];
    v763 = v739;
    v760 = v737;
    v761 = v738;
    v740 = v11[5];
    v756 = v11[4];
    v757 = v740;
    v741 = v11[7];
    v758 = v11[6];
    v759 = v741;
    if (!v736(&v760, &v756))
    {
      return;
    }

    v558 = v11[4];
    v559 = v11[5];
    v760 = v558;
    v761 = v559;
    v560 = v11[6];
    v561 = v11[7];
    v762 = v560;
    v763 = v561;
    v743 = v9[2];
    v742 = v9[3];
    v744 = v9[1];
    v11[4] = *v9;
    v11[5] = v744;
    v11[6] = v743;
    v11[7] = v742;
LABEL_112:
    v9[2] = v560;
    v9[3] = v561;
    *v9 = v558;
    v9[1] = v559;
    return;
  }

  v679 = *v9;
  v680 = v9[1];
  v681 = v9[3];
  v762 = v9[2];
  v763 = v681;
  v760 = v679;
  v761 = v680;
  v682 = v11[5];
  v756 = v11[4];
  v757 = v682;
  v683 = v11[7];
  v758 = v11[6];
  v759 = v683;
  if (v546(&v760, &v756))
  {
    v685 = v11[5];
    v760 = v11[4];
    v684 = v760;
    v761 = v685;
    v687 = v11[7];
    v762 = v11[6];
    v686 = v762;
    v763 = v687;
    v689 = v9[2];
    v688 = v9[3];
    v690 = v9[1];
    v11[4] = *v9;
    v11[5] = v690;
    v11[6] = v689;
    v11[7] = v688;
    v9[2] = v686;
    v9[3] = v687;
    *v9 = v684;
    v9[1] = v685;
    goto LABEL_165;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ITColor>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, unsigned int (**a5)(__n128 *, __n128 *))
{
  v10 = *a5;
  v11 = a2[1];
  v106 = *a2;
  v107 = v11;
  v12 = a2[3];
  v108 = a2[2];
  v109 = v12;
  v13 = a1[1];
  v102 = *a1;
  v103 = v13;
  v14 = a1[3];
  v104 = a1[2];
  v105 = v14;
  v15 = v10(&v106, &v102);
  v16 = *a5;
  if (v15)
  {
    v17 = a3[1];
    v106 = *a3;
    v107 = v17;
    v18 = a3[3];
    v108 = a3[2];
    v109 = v18;
    v19 = a2[1];
    v102 = *a2;
    v103 = v19;
    v20 = a2[3];
    v104 = a2[2];
    v105 = v20;
    if (v16(&v106, &v102))
    {
      v22 = a1[2];
      v21 = a1[3];
      v24 = *a1;
      v23 = a1[1];
      v25 = a3[3];
      v27 = *a3;
      v26 = a3[1];
      a1[2] = a3[2];
      a1[3] = v25;
      *a1 = v27;
      a1[1] = v26;
LABEL_9:
      *a3 = v24;
      a3[1] = v23;
      a3[2] = v22;
      a3[3] = v21;
      goto LABEL_10;
    }

    v52 = a1[2];
    v51 = a1[3];
    v54 = *a1;
    v53 = a1[1];
    v55 = a2[3];
    v57 = *a2;
    v56 = a2[1];
    a1[2] = a2[2];
    a1[3] = v55;
    *a1 = v57;
    a1[1] = v56;
    *a2 = v54;
    a2[1] = v53;
    a2[2] = v52;
    a2[3] = v51;
    v58 = *a5;
    v59 = a3[1];
    v106 = *a3;
    v107 = v59;
    v60 = a3[3];
    v108 = a3[2];
    v109 = v60;
    v61 = a2[1];
    v102 = *a2;
    v103 = v61;
    v62 = a2[3];
    v104 = a2[2];
    v105 = v62;
    if (v58(&v106, &v102))
    {
      v22 = a2[2];
      v21 = a2[3];
      v24 = *a2;
      v23 = a2[1];
      v63 = a3[3];
      v65 = *a3;
      v64 = a3[1];
      a2[2] = a3[2];
      a2[3] = v63;
      *a2 = v65;
      a2[1] = v64;
      goto LABEL_9;
    }
  }

  else
  {
    v28 = a3[1];
    v106 = *a3;
    v107 = v28;
    v29 = a3[3];
    v108 = a3[2];
    v109 = v29;
    v30 = a2[1];
    v102 = *a2;
    v103 = v30;
    v31 = a2[3];
    v104 = a2[2];
    v105 = v31;
    if (v16(&v106, &v102))
    {
      v33 = a2[2];
      v32 = a2[3];
      v35 = *a2;
      v34 = a2[1];
      v36 = a3[3];
      v38 = *a3;
      v37 = a3[1];
      a2[2] = a3[2];
      a2[3] = v36;
      *a2 = v38;
      a2[1] = v37;
      *a3 = v35;
      a3[1] = v34;
      a3[2] = v33;
      a3[3] = v32;
      v39 = *a5;
      v40 = a2[1];
      v106 = *a2;
      v107 = v40;
      v41 = a2[3];
      v108 = a2[2];
      v109 = v41;
      v42 = a1[1];
      v102 = *a1;
      v103 = v42;
      v43 = a1[3];
      v104 = a1[2];
      v105 = v43;
      if (v39(&v106, &v102))
      {
        v45 = a1[2];
        v44 = a1[3];
        v47 = *a1;
        v46 = a1[1];
        v48 = a2[3];
        v50 = *a2;
        v49 = a2[1];
        a1[2] = a2[2];
        a1[3] = v48;
        *a1 = v50;
        a1[1] = v49;
        *a2 = v47;
        a2[1] = v46;
        a2[2] = v45;
        a2[3] = v44;
      }
    }
  }

LABEL_10:
  v66 = *a5;
  v67 = a4[1];
  v106 = *a4;
  v107 = v67;
  v68 = a4[3];
  v108 = a4[2];
  v109 = v68;
  v69 = a3[1];
  v102 = *a3;
  v103 = v69;
  v70 = a3[3];
  v104 = a3[2];
  v105 = v70;
  if (v66(&v106, &v102))
  {
    v73 = a3[2];
    v72 = a3[3];
    v75 = *a3;
    v74 = a3[1];
    v76 = a4[3];
    v78 = *a4;
    v77 = a4[1];
    a3[2] = a4[2];
    a3[3] = v76;
    *a3 = v78;
    a3[1] = v77;
    *a4 = v75;
    a4[1] = v74;
    a4[2] = v73;
    a4[3] = v72;
    v79 = *a5;
    v80 = a3[1];
    v106 = *a3;
    v107 = v80;
    v81 = a3[3];
    v108 = a3[2];
    v109 = v81;
    v82 = a2[1];
    v102 = *a2;
    v103 = v82;
    v83 = a2[3];
    v104 = a2[2];
    v105 = v83;
    if (v79(&v106, &v102))
    {
      v85 = a2[2];
      v84 = a2[3];
      v87 = *a2;
      v86 = a2[1];
      v88 = a3[3];
      v90 = *a3;
      v89 = a3[1];
      a2[2] = a3[2];
      a2[3] = v88;
      *a2 = v90;
      a2[1] = v89;
      *a3 = v87;
      a3[1] = v86;
      a3[2] = v85;
      a3[3] = v84;
      v91 = *a5;
      v92 = a2[1];
      v106 = *a2;
      v107 = v92;
      v93 = a2[3];
      v108 = a2[2];
      v109 = v93;
      v94 = a1[1];
      v102 = *a1;
      v103 = v94;
      v95 = a1[3];
      v104 = a1[2];
      v105 = v95;
      if (v91(&v106, &v102))
      {
        v96 = a1[2];
        result = a1[3];
        v98 = *a1;
        v97 = a1[1];
        v99 = a2[3];
        v101 = *a2;
        v100 = a2[1];
        a1[2] = a2[2];
        a1[3] = v99;
        *a1 = v101;
        a1[1] = v100;
        *a2 = v98;
        a2[1] = v97;
        a2[2] = v96;
        a2[3] = result;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*>(__n128 *a1, __n128 *a2, unsigned int (**a3)(__n128 *, __n128 *))
{
  v6 = (a2 - a1) >> 6;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v56 = a2 - 4;
        v57 = *a3;
        v58 = a1[5];
        v189 = a1[4];
        v190 = v58;
        v59 = a1[7];
        v191 = a1[6];
        v192 = v59;
        v60 = a1[1];
        v185 = *a1;
        v186 = v60;
        v61 = a1[3];
        v187 = a1[2];
        v188 = v61;
        v62 = v57(&v189, &v185);
        v63 = *a3;
        if (v62)
        {
          v64 = v56[1];
          v189 = *v56;
          v190 = v64;
          v65 = v56[3];
          v191 = v56[2];
          v192 = v65;
          v66 = a1[5];
          v185 = a1[4];
          v186 = v66;
          v67 = a1[7];
          v187 = a1[6];
          v188 = v67;
          if (v63(&v189, &v185))
          {
            v69 = a1[2];
            v68 = a1[3];
            v71 = *a1;
            v70 = a1[1];
            v72 = v56[3];
            v74 = *v56;
            v73 = v56[1];
            a1[2] = v56[2];
            a1[3] = v72;
            *a1 = v74;
            a1[1] = v73;
          }

          else
          {
            v137 = a1[2];
            v136 = a1[3];
            v139 = *a1;
            v138 = a1[1];
            v140 = a1[5];
            *a1 = a1[4];
            a1[1] = v140;
            v141 = a1[7];
            a1[2] = a1[6];
            a1[3] = v141;
            a1[4] = v139;
            a1[5] = v138;
            a1[6] = v137;
            a1[7] = v136;
            v142 = *a3;
            v143 = v56[1];
            v189 = *v56;
            v190 = v143;
            v144 = v56[3];
            v191 = v56[2];
            v192 = v144;
            v145 = a1[5];
            v185 = a1[4];
            v186 = v145;
            v146 = a1[7];
            v187 = a1[6];
            v188 = v146;
            if (!v142(&v189, &v185))
            {
              return 1;
            }

            v69 = a1[6];
            v68 = a1[7];
            v71 = a1[4];
            v70 = a1[5];
            v147 = v56[3];
            v149 = *v56;
            v148 = v56[1];
            a1[6] = v56[2];
            a1[7] = v147;
            a1[4] = v149;
            a1[5] = v148;
          }

          *v56 = v71;
          v56[1] = v70;
          result = 1;
          v56[2] = v69;
          v56[3] = v68;
          return result;
        }

        v93 = v56[1];
        v189 = *v56;
        v190 = v93;
        v94 = v56[3];
        v191 = v56[2];
        v192 = v94;
        v95 = a1[5];
        v185 = a1[4];
        v186 = v95;
        v96 = a1[7];
        v187 = a1[6];
        v188 = v96;
        if (!v63(&v189, &v185))
        {
          return 1;
        }

        v98 = a1[6];
        v97 = a1[7];
        v100 = a1[4];
        v99 = a1[5];
        v101 = v56[3];
        v103 = *v56;
        v102 = v56[1];
        a1[6] = v56[2];
        a1[7] = v101;
        a1[4] = v103;
        a1[5] = v102;
        *v56 = v100;
        v56[1] = v99;
        v56[2] = v98;
        v56[3] = v97;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(a1, a1 + 4, a1 + 8, a2 - 4, a3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortColorEntry,sortColorEntry),sortColorEntry*,0>(a1, a1 + 4, a1 + 8, a1 + 12, a3);
        v21 = *a3;
        v22 = a2[-3];
        v189 = a2[-4];
        v190 = v22;
        v23 = a2[-1];
        v191 = a2[-2];
        v192 = v23;
        v24 = a1[13];
        v185 = a1[12];
        v186 = v24;
        v25 = a1[15];
        v187 = a1[14];
        v188 = v25;
        if (!v21(&v189, &v185))
        {
          return 1;
        }

        v26 = a2 - 4;
        v28 = a1[14];
        v27 = a1[15];
        v30 = a1[12];
        v29 = a1[13];
        v31 = a2[-1];
        v33 = a2[-4];
        v32 = a2[-3];
        a1[14] = a2[-2];
        a1[15] = v31;
        a1[12] = v33;
        a1[13] = v32;
        *v26 = v30;
        v26[1] = v29;
        v26[2] = v28;
        v26[3] = v27;
        v34 = *a3;
        v35 = a1[13];
        v189 = a1[12];
        v190 = v35;
        v36 = a1[15];
        v191 = a1[14];
        v192 = v36;
        v37 = a1[9];
        v185 = a1[8];
        v186 = v37;
        v38 = a1[11];
        v187 = a1[10];
        v188 = v38;
        if (!v34(&v189, &v185))
        {
          return 1;
        }

        v40 = a1[10];
        v39 = a1[11];
        v42 = a1[8];
        v41 = a1[9];
        v43 = a1[13];
        a1[8] = a1[12];
        a1[9] = v43;
        v44 = a1[15];
        a1[10] = a1[14];
        a1[11] = v44;
        a1[12] = v42;
        a1[13] = v41;
        a1[14] = v40;
        a1[15] = v39;
        v45 = *a3;
        v46 = a1[9];
        v189 = a1[8];
        v190 = v46;
        v47 = a1[11];
        v191 = a1[10];
        v192 = v47;
        v48 = a1[5];
        v185 = a1[4];
        v186 = v48;
        v49 = a1[7];
        v187 = a1[6];
        v188 = v49;
        if (!v45(&v189, &v185))
        {
          return 1;
        }

        v51 = a1[6];
        v50 = a1[7];
        v53 = a1[4];
        v52 = a1[5];
        v54 = a1[9];
        a1[4] = a1[8];
        a1[5] = v54;
        v55 = a1[11];
        a1[6] = a1[10];
        a1[7] = v55;
        a1[8] = v53;
        a1[9] = v52;
        a1[10] = v51;
        a1[11] = v50;
        break;
      default:
        goto LABEL_16;
    }

    v104 = *a3;
    v105 = a1[5];
    v189 = a1[4];
    v190 = v105;
    v106 = a1[7];
    v191 = a1[6];
    v192 = v106;
    v107 = a1[1];
    v185 = *a1;
    v186 = v107;
    v108 = a1[3];
    v187 = a1[2];
    v188 = v108;
    if (v104(&v189, &v185))
    {
      v110 = a1[2];
      v109 = a1[3];
      v112 = *a1;
      v111 = a1[1];
      v113 = a1[5];
      *a1 = a1[4];
      a1[1] = v113;
      v114 = a1[7];
      a1[2] = a1[6];
      a1[3] = v114;
      a1[4] = v112;
      a1[5] = v111;
      a1[6] = v110;
      a1[7] = v109;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *a3;
    v8 = a2[-3];
    v189 = a2[-4];
    v190 = v8;
    v9 = a2[-1];
    v191 = a2[-2];
    v192 = v9;
    v10 = a1[1];
    v185 = *a1;
    v186 = v10;
    v11 = a1[3];
    v187 = a1[2];
    v188 = v11;
    if (v7(&v189, &v185))
    {
      v12 = a2 - 4;
      v14 = a1[2];
      v13 = a1[3];
      v16 = *a1;
      v15 = a1[1];
      v17 = a2[-1];
      v19 = a2[-4];
      v18 = a2[-3];
      a1[2] = a2[-2];
      a1[3] = v17;
      *a1 = v19;
      a1[1] = v18;
      *v12 = v16;
      v12[1] = v15;
      result = 1;
      v12[2] = v14;
      v12[3] = v13;
      return result;
    }

    return 1;
  }

LABEL_16:
  v75 = a1 + 8;
  v76 = *a3;
  v77 = a1[5];
  v189 = a1[4];
  v190 = v77;
  v78 = a1[7];
  v191 = a1[6];
  v192 = v78;
  v79 = a1[1];
  v185 = *a1;
  v186 = v79;
  v80 = a1[3];
  v187 = a1[2];
  v188 = v80;
  v81 = v76(&v189, &v185);
  v82 = *a3;
  if (v81)
  {
    v83 = a1[9];
    v189 = *v75;
    v190 = v83;
    v84 = a1[11];
    v191 = a1[10];
    v192 = v84;
    v85 = a1[5];
    v185 = a1[4];
    v186 = v85;
    v86 = a1[7];
    v187 = a1[6];
    v188 = v86;
    if (v82(&v189, &v185))
    {
      v88 = a1[2];
      v87 = a1[3];
      v90 = *a1;
      v89 = a1[1];
      v91 = a1[9];
      *a1 = *v75;
      a1[1] = v91;
      v92 = a1[11];
      a1[2] = a1[10];
      a1[3] = v92;
    }

    else
    {
      v151 = a1[2];
      v150 = a1[3];
      v153 = *a1;
      v152 = a1[1];
      v154 = a1[5];
      *a1 = a1[4];
      a1[1] = v154;
      v155 = a1[7];
      a1[2] = a1[6];
      a1[3] = v155;
      a1[4] = v153;
      a1[5] = v152;
      a1[6] = v151;
      a1[7] = v150;
      v156 = *a3;
      v157 = a1[9];
      v189 = *v75;
      v190 = v157;
      v158 = a1[11];
      v191 = a1[10];
      v192 = v158;
      v159 = a1[5];
      v185 = a1[4];
      v186 = v159;
      v160 = a1[7];
      v187 = a1[6];
      v188 = v160;
      if (!v156(&v189, &v185))
      {
        goto LABEL_33;
      }

      v88 = a1[6];
      v87 = a1[7];
      v90 = a1[4];
      v89 = a1[5];
      v161 = a1[9];
      a1[4] = *v75;
      a1[5] = v161;
      v162 = a1[11];
      a1[6] = a1[10];
      a1[7] = v162;
    }

    *v75 = v90;
    a1[9] = v89;
    a1[10] = v88;
    a1[11] = v87;
  }

  else
  {
    v115 = a1[9];
    v189 = *v75;
    v190 = v115;
    v116 = a1[11];
    v191 = a1[10];
    v192 = v116;
    v117 = a1[5];
    v185 = a1[4];
    v186 = v117;
    v118 = a1[7];
    v187 = a1[6];
    v188 = v118;
    if (v82(&v189, &v185))
    {
      v120 = a1[6];
      v119 = a1[7];
      v122 = a1[4];
      v121 = a1[5];
      v123 = a1[9];
      a1[4] = *v75;
      a1[5] = v123;
      v124 = a1[11];
      a1[6] = a1[10];
      a1[7] = v124;
      *v75 = v122;
      a1[9] = v121;
      a1[10] = v120;
      a1[11] = v119;
      v125 = *a3;
      v126 = a1[5];
      v189 = a1[4];
      v190 = v126;
      v127 = a1[7];
      v191 = a1[6];
      v192 = v127;
      v128 = a1[1];
      v185 = *a1;
      v186 = v128;
      v129 = a1[3];
      v187 = a1[2];
      v188 = v129;
      if (v125(&v189, &v185))
      {
        v131 = a1[2];
        v130 = a1[3];
        v133 = *a1;
        v132 = a1[1];
        v134 = a1[5];
        *a1 = a1[4];
        a1[1] = v134;
        v135 = a1[7];
        a1[2] = a1[6];
        a1[3] = v135;
        a1[4] = v133;
        a1[5] = v132;
        a1[6] = v131;
        a1[7] = v130;
      }
    }
  }

LABEL_33:
  v163 = a1 + 12;
  if (&a1[12] == a2)
  {
    return 1;
  }

  v164 = 0;
  v165 = 0;
  while (1)
  {
    v166 = *a3;
    v167 = v163[1];
    v189 = *v163;
    v190 = v167;
    v168 = v163[3];
    v191 = v163[2];
    v192 = v168;
    v169 = *v75;
    v170 = v75[1];
    v171 = v75[3];
    v187 = v75[2];
    v188 = v171;
    v185 = v169;
    v186 = v170;
    if (v166(&v189, &v185))
    {
      v172 = v163[1];
      v189 = *v163;
      v190 = v172;
      v173 = v163[3];
      v191 = v163[2];
      v192 = v173;
      v174 = v164;
      while (1)
      {
        v175 = (a1->n128_u64 + v174);
        v176 = *(&a1[9] + v174);
        v175[12] = *(&a1[8] + v174);
        v175[13] = v176;
        v177 = *(&a1[11] + v174);
        v175[14] = *(&a1[10] + v174);
        v175[15] = v177;
        if (v174 == -128)
        {
          break;
        }

        v178 = *a3;
        v185 = v189;
        v186 = v190;
        v187 = v191;
        v188 = v192;
        v179 = v175[5];
        v184[0] = v175[4];
        v184[1] = v179;
        v180 = v175[7];
        v184[2] = v175[6];
        v184[3] = v180;
        v174 -= 64;
        if (((v178)(&v185, v184) & 1) == 0)
        {
          v181 = (a1 + v174 + 192);
          goto LABEL_41;
        }
      }

      v181 = a1;
LABEL_41:
      v182 = v190;
      *v181 = v189;
      v181[1] = v182;
      v183 = v192;
      v181[2] = v191;
      v181[3] = v183;
      if (++v165 == 8)
      {
        return &v163[4] == a2;
      }
    }

    v75 = v163;
    v164 += 64;
    v163 += 4;
    if (v163 == a2)
    {
      return 1;
    }
  }
}

uint64_t isCloseToColor(ITColor *a1, double *a2, int a3, double a4)
{
  var1 = a1->var1;
  if (a3)
  {
    if (var1 < 0.0500000007)
    {
      v8 = a2[1];
      if (v8 < 0.0500000007)
      {
        goto LABEL_7;
      }
    }

    if (a1->var3 < 0.0149999997 && a2[3] < 0.0149999997)
    {
      v8 = a2[1];
LABEL_7:
      v9.n128_f64[0] = ITColor::CreateFromHSVDoubles(a1, a1->var0, a1->var1, a1->var2);
      v11 = v10;
      v9.n128_u64[1] = v12;
      v26 = v9;
      v14.n128_f64[0] = ITColor::CreateFromHSVDoubles(v13, *a2, v8, a2[2]);
      v14.n128_u64[1] = v15;
      ITColor::GetLuminance(v16, v14, v17);
      v19 = v18;
      ITColor::GetLuminance(v20, v26, v11);
      if (v21 <= v19)
      {
        v22 = v19;
      }

      else
      {
        v22 = v21;
      }

      if (v21 > v19)
      {
        v21 = v19;
      }

      if ((v22 + 0.0500000007) / (v21 + 0.0500000007) <= 1.65999997)
      {
        return 1;
      }
    }
  }

  if (vabdd_f64(var1, a2[1]) > a4 || vabdd_f64(a1->var2, a2[2]) > a4)
  {
    return 0;
  }

  var0 = a1->var0;
  v25 = *a2;
  if (vabdd_f64(a1->var0, *a2) > a4)
  {
    if (var0 < a4)
    {
      var0 = var0 + 1.0;
    }

    if (v25 < a4)
    {
      v25 = v25 + 1.0;
    }

    if (vabdd_f64(var0, v25) > a4)
    {
      return 0;
    }
  }

  return 1;
}

double ImageAnalyzer::WeightForPointOnEdge(ImageAnalyzer *this, unint64_t a2)
{
  v2 = this;
  if (this <= 4 && a2 <= 4)
  {
    v3 = a2;
    v4 = 4.00000006 - v2;
LABEL_4:
    v5 = 4.00000006 - v3;
    if (v4 < 1.0)
    {
      v4 = 1.0;
    }

    if (v5 < 1.0)
    {
      v5 = 1.0;
    }

    v6 = v4 * 0.75;
    v7 = v5 * 0.75;
    if (v7 <= v6)
    {
      v7 = v6;
    }

    goto LABEL_16;
  }

  if (this > 4)
  {
    if (this >= 0x10 && a2 <= 4)
    {
      v3 = a2;
      v4 = 15.9999999 - v2;
      goto LABEL_4;
    }

    v7 = 1.0;
    if (this < 0x10)
    {
      goto LABEL_16;
    }

    v8 = 15.9999999;
  }

  else
  {
    v8 = 4.00000006;
  }

  v9 = v8 - v2;
  if (v9 < 1.0)
  {
    v9 = 1.0;
  }

  v7 = v9 * 0.75;
LABEL_16:
  result = 1.0;
  if (v7 >= 1.0)
  {
    return v7;
  }

  return result;
}

void std::vector<sortQuantizeColorEntry>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v9 = *a1;
    v10 = v3 - *a1;
    v11 = 0x6DB6DB6DB6DB6DB7 * (v10 >> 3) + 1;
    if (v11 > 0x492492492492492)
    {
      std::vector<sortQuantizeColorEntry>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0x6DB6DB6DB6DB6DB7 * ((v4 - v9) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x249249249249249)
    {
      v13 = 0x492492492492492;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (v13 <= 0x492492492492492)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v14 = 8 * (v10 >> 3);
    v15 = a2[1];
    *v14 = *a2;
    *(v14 + 16) = v15;
    *(v14 + 32) = a2[2];
    *(v14 + 48) = *(a2 + 6);
    v8 = v14 + 56;
    v16 = v14 - v10;
    memcpy((v14 - v10), v9, v10);
    *a1 = v16;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    *(v3 + 48) = *(a2 + 6);
    *(v3 + 16) = v6;
    *(v3 + 32) = v7;
    *v3 = v5;
    v8 = v3 + 56;
  }

  *(a1 + 8) = v8;
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*,false>(uint64_t a1, unint64_t a2, unsigned int (**a3)(__int128 *, __int128 *), uint64_t a4, char a5)
{
LABEL_1:
  v9 = a2 - 56;
  v10 = a2 - 168;
  v11 = a1;
  v723 = a2 - 112;
  v724 = a2;
  while (1)
  {
    a1 = v11;
    v12 = a2 - v11;
    v13 = 0x6DB6DB6DB6DB6DB7 * ((a2 - v11) >> 3);
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return;
    }

    if (v13 == 2)
    {
      v517 = *a3;
      v518 = *v9;
      v519 = *(v9 + 16);
      v520 = *(v9 + 32);
      v743 = *(v9 + 48);
      v741 = v519;
      v742 = v520;
      v740 = v518;
      v521 = *a1;
      v522 = *(a1 + 16);
      v523 = *(a1 + 32);
      v739 = *(a1 + 48);
      v737 = v522;
      v738 = v523;
      v736 = v521;
      if (!v517(&v740, &v736))
      {
        return;
      }

LABEL_109:
      v536 = *a1;
      v537 = *(a1 + 16);
      v538 = *(a1 + 32);
      v743 = *(a1 + 48);
      v741 = v537;
      v742 = v538;
      v740 = v536;
      v539 = *v9;
      v540 = *(v9 + 16);
      v541 = *(v9 + 32);
      *(a1 + 48) = *(v9 + 48);
      *(a1 + 16) = v540;
      *(a1 + 32) = v541;
      *a1 = v539;
      v542 = v740;
      v543 = v741;
      v544 = v742;
      *(v9 + 48) = v743;
      *(v9 + 32) = v544;
      goto LABEL_110;
    }

LABEL_9:
    if (v12 <= 1343)
    {
      v545 = a1 + 56;
      v547 = a1 == a2 || v545 == a2;
      if (a5)
      {
        if (!v547)
        {
          v548 = 0;
          v549 = a1;
          do
          {
            v550 = v549;
            v549 = v545;
            v551 = *a3;
            v552 = *v549;
            v553 = *(v549 + 16);
            v554 = *(v549 + 32);
            v743 = *(v549 + 48);
            v741 = v553;
            v742 = v554;
            v740 = v552;
            v555 = *v550;
            v556 = *(v550 + 16);
            v557 = *(v550 + 32);
            v739 = *(v550 + 48);
            v737 = v556;
            v738 = v557;
            v736 = v555;
            if (v551(&v740, &v736))
            {
              v558 = *v549;
              v559 = *(v549 + 16);
              v560 = *(v549 + 32);
              v743 = *(v549 + 48);
              v741 = v559;
              v742 = v560;
              v740 = v558;
              v561 = v548;
              while (1)
              {
                v562 = a1 + v561;
                v563 = *(a1 + v561 + 16);
                *(v562 + 56) = *(a1 + v561);
                *(v562 + 72) = v563;
                *(v562 + 88) = *(a1 + v561 + 32);
                *(v562 + 104) = *(a1 + v561 + 48);
                if (!v561)
                {
                  break;
                }

                v564 = *a3;
                v736 = v740;
                v737 = v741;
                v738 = v742;
                v739 = v743;
                v565 = *(v562 - 56);
                v566 = *(v562 - 40);
                v567 = *(v562 - 24);
                v735 = *(v562 - 8);
                v733 = v566;
                v734 = v567;
                v732 = v565;
                v561 -= 56;
                if (((v564)(&v736, &v732) & 1) == 0)
                {
                  v568 = a1 + v561 + 56;
                  goto LABEL_127;
                }
              }

              v568 = a1;
LABEL_127:
              v569 = v740;
              v570 = v741;
              v571 = v742;
              *(v568 + 48) = v743;
              *(v568 + 16) = v570;
              *(v568 + 32) = v571;
              *v568 = v569;
              a2 = v724;
            }

            v545 = v549 + 56;
            v548 += 56;
          }

          while (v549 + 56 != a2);
        }
      }

      else if (!v547)
      {
        do
        {
          v684 = a1;
          a1 = v545;
          v685 = *a3;
          v686 = *a1;
          v687 = *(a1 + 16);
          v688 = *(a1 + 32);
          v743 = *(a1 + 48);
          v741 = v687;
          v742 = v688;
          v740 = v686;
          v689 = *v684;
          v690 = *(v684 + 16);
          v691 = *(v684 + 32);
          v739 = *(v684 + 48);
          v737 = v690;
          v738 = v691;
          v736 = v689;
          if (v685(&v740, &v736))
          {
            v692 = *a1;
            v693 = *(a1 + 16);
            v694 = *(a1 + 32);
            v743 = *(a1 + 48);
            v741 = v693;
            v742 = v694;
            v740 = v692;
            v695 = a1;
            do
            {
              v696 = v695 - 56;
              v697 = *(v695 - 40);
              *v695 = *(v695 - 56);
              *(v695 + 16) = v697;
              *(v695 + 32) = *(v695 - 24);
              *(v695 + 48) = *(v695 - 8);
              v698 = *a3;
              v736 = v740;
              v737 = v741;
              v738 = v742;
              v739 = v743;
              v699 = *(v695 - 112);
              v700 = *(v695 - 96);
              v701 = *(v695 - 80);
              v735 = *(v695 - 64);
              v733 = v700;
              v734 = v701;
              v732 = v699;
              v702 = v698(&v736, &v732);
              v695 = v696;
            }

            while ((v702 & 1) != 0);
            v703 = v740;
            v704 = v741;
            v705 = v742;
            *(v696 + 48) = v743;
            *(v696 + 16) = v704;
            *(v696 + 32) = v705;
            *v696 = v703;
            a2 = v724;
          }

          v545 = a1 + 56;
        }

        while (a1 + 56 != a2);
      }

      return;
    }

    if (!a4)
    {
      if (a1 != a2)
      {
        v572 = (v13 - 2) >> 1;
        v727 = v572;
        do
        {
          v573 = v572;
          if (v727 >= v572)
          {
            v574 = (2 * v572) | 1;
            v575 = a1 + 56 * v574;
            if (2 * v572 + 2 < v13)
            {
              v576 = *a3;
              v577 = *v575;
              v578 = *(v575 + 16);
              v579 = *(v575 + 32);
              v743 = *(v575 + 48);
              v741 = v578;
              v742 = v579;
              v740 = v577;
              v580 = *(v575 + 56);
              v581 = *(v575 + 72);
              v582 = *(v575 + 88);
              v739 = *(v575 + 104);
              v737 = v581;
              v738 = v582;
              v736 = v580;
              if (v576(&v740, &v736))
              {
                v575 += 56;
                v574 = 2 * v573 + 2;
              }
            }

            v583 = a1 + 56 * v573;
            v584 = *a3;
            v585 = *v575;
            v586 = *(v575 + 16);
            v587 = *(v575 + 32);
            v743 = *(v575 + 48);
            v741 = v586;
            v742 = v587;
            v740 = v585;
            v588 = *v583;
            v589 = *(v583 + 16);
            v590 = *(v583 + 32);
            v739 = *(v583 + 48);
            v737 = v589;
            v738 = v590;
            v736 = v588;
            if (((v584)(&v740, &v736) & 1) == 0)
            {
              v591 = *v583;
              v592 = *(v583 + 16);
              v593 = *(v583 + 32);
              v743 = *(v583 + 48);
              v741 = v592;
              v742 = v593;
              v740 = v591;
              do
              {
                v594 = v575;
                v595 = *v575;
                v596 = *(v575 + 16);
                v597 = *(v575 + 32);
                *(v583 + 48) = *(v575 + 48);
                *(v583 + 16) = v596;
                *(v583 + 32) = v597;
                *v583 = v595;
                if (v727 < v574)
                {
                  break;
                }

                v598 = (2 * v574) | 1;
                v575 = a1 + 56 * v598;
                if (2 * v574 + 2 < v13)
                {
                  v599 = *a3;
                  v600 = *v575;
                  v601 = *(v575 + 16);
                  v602 = *(v575 + 32);
                  v739 = *(v575 + 48);
                  v737 = v601;
                  v738 = v602;
                  v736 = v600;
                  v603 = *(v575 + 56);
                  v604 = *(v575 + 72);
                  v605 = *(v575 + 88);
                  v735 = *(v575 + 104);
                  v733 = v604;
                  v734 = v605;
                  v732 = v603;
                  if (v599(&v736, &v732))
                  {
                    v575 += 56;
                    v598 = 2 * v574 + 2;
                  }
                }

                v606 = *a3;
                v607 = *v575;
                v608 = *(v575 + 16);
                v609 = *(v575 + 32);
                v739 = *(v575 + 48);
                v737 = v608;
                v738 = v609;
                v736 = v607;
                v732 = v740;
                v733 = v741;
                v734 = v742;
                v735 = v743;
                v583 = v594;
                v574 = v598;
              }

              while (!v606(&v736, &v732));
              v610 = v740;
              v611 = v741;
              v612 = v742;
              *(v594 + 48) = v743;
              *(v594 + 16) = v611;
              *(v594 + 32) = v612;
              *v594 = v610;
            }
          }

          v572 = v573 - 1;
        }

        while (v573);
        v613 = 0x6DB6DB6DB6DB6DB7 * (v12 >> 3);
        v614 = v724;
        do
        {
          v725 = v614;
          v615 = 0;
          v731 = *(a1 + 48);
          v729 = *(a1 + 16);
          v730 = *(a1 + 32);
          v728 = *a1;
          v616 = a1;
          do
          {
            v617 = v616 + 56 * v615;
            v618 = v617 + 56;
            v619 = (2 * v615) | 1;
            v620 = 2 * v615 + 2;
            if (v620 < v613)
            {
              v621 = *a3;
              v622 = *v618;
              v623 = *(v617 + 72);
              v624 = *(v617 + 88);
              v743 = *(v617 + 104);
              v741 = v623;
              v742 = v624;
              v740 = v622;
              v625 = v617 + 112;
              v626 = *(v617 + 112);
              v627 = *(v617 + 128);
              v628 = *(v617 + 144);
              v739 = *(v617 + 160);
              v737 = v627;
              v738 = v628;
              v736 = v626;
              if (v621(&v740, &v736))
              {
                v618 = v625;
                v619 = v620;
              }
            }

            v629 = *v618;
            v630 = *(v618 + 16);
            v631 = *(v618 + 32);
            *(v616 + 48) = *(v618 + 48);
            *(v616 + 16) = v630;
            *(v616 + 32) = v631;
            *v616 = v629;
            v616 = v618;
            v615 = v619;
          }

          while (v619 <= (v613 - 2) / 2);
          v632 = (v725 - 56);
          if (v618 == v725 - 56)
          {
            v614 = v725 - 56;
            *(v618 + 48) = v731;
            *(v618 + 16) = v729;
            *(v618 + 32) = v730;
            *v618 = v728;
          }

          else
          {
            v633 = *v632;
            v634 = *(v725 - 40);
            v635 = *(v725 - 24);
            *(v618 + 48) = *(v725 - 8);
            *(v618 + 16) = v634;
            *(v618 + 32) = v635;
            *v618 = v633;
            *(v725 - 8) = v731;
            *(v725 - 40) = v729;
            *(v725 - 24) = v730;
            v614 = v725 - 56;
            *v632 = v728;
            v636 = v618 - a1 + 56;
            if (v636 >= 57)
            {
              v637 = (0x6DB6DB6DB6DB6DB7 * (v636 >> 3) - 2) >> 1;
              v638 = a1 + 56 * v637;
              v639 = *a3;
              v640 = *v638;
              v641 = *(v638 + 16);
              v642 = *(v638 + 32);
              v743 = *(v638 + 48);
              v741 = v641;
              v742 = v642;
              v740 = v640;
              v643 = *v618;
              v644 = *(v618 + 16);
              v645 = *(v618 + 32);
              v739 = *(v618 + 48);
              v737 = v644;
              v738 = v645;
              v736 = v643;
              if (v639(&v740, &v736))
              {
                v646 = *v618;
                v647 = *(v618 + 16);
                v648 = *(v618 + 32);
                v743 = *(v618 + 48);
                v741 = v647;
                v742 = v648;
                v740 = v646;
                do
                {
                  v649 = v638;
                  v650 = *v638;
                  v651 = *(v638 + 16);
                  v652 = *(v638 + 32);
                  *(v618 + 48) = *(v638 + 48);
                  *(v618 + 16) = v651;
                  *(v618 + 32) = v652;
                  *v618 = v650;
                  if (!v637)
                  {
                    break;
                  }

                  v637 = (v637 - 1) >> 1;
                  v653 = *a3;
                  v638 = a1 + 56 * v637;
                  v654 = *v638;
                  v655 = *(v638 + 16);
                  v656 = *(v638 + 32);
                  v739 = *(v638 + 48);
                  v737 = v655;
                  v738 = v656;
                  v736 = v654;
                  v732 = v740;
                  v733 = v741;
                  v734 = v742;
                  v735 = v743;
                  v618 = v649;
                }

                while (((v653)(&v736, &v732) & 1) != 0);
                v657 = v740;
                v658 = v741;
                v659 = v742;
                *(v649 + 48) = v743;
                *(v649 + 16) = v658;
                *(v649 + 32) = v659;
                *v649 = v657;
              }
            }
          }
        }

        while (v613-- > 2);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = a1 + 56 * (v13 >> 1);
    v16 = *a3;
    if (v12 >= 0x1C01)
    {
      v17 = *v15;
      v18 = *(v15 + 16);
      v19 = *(v15 + 32);
      v743 = *(v15 + 48);
      v741 = v18;
      v742 = v19;
      v740 = v17;
      v20 = *a1;
      v21 = *(a1 + 16);
      v22 = *(a1 + 32);
      v739 = *(a1 + 48);
      v737 = v21;
      v738 = v22;
      v736 = v20;
      v23 = v16(&v740, &v736);
      v24 = *a3;
      if (v23)
      {
        v25 = *v9;
        v26 = *(v9 + 16);
        v27 = *(v9 + 32);
        v743 = *(v9 + 48);
        v741 = v26;
        v742 = v27;
        v740 = v25;
        v28 = *v15;
        v29 = *(v15 + 16);
        v30 = *(v15 + 32);
        v739 = *(v15 + 48);
        v737 = v29;
        v738 = v30;
        v736 = v28;
        if (v24(&v740, &v736))
        {
          v31 = *a1;
          v32 = *(a1 + 16);
          v33 = *(a1 + 32);
          v743 = *(a1 + 48);
          v741 = v32;
          v742 = v33;
          v740 = v31;
          v34 = *v9;
          v35 = *(v9 + 16);
          v36 = *(v9 + 32);
          *(a1 + 48) = *(v9 + 48);
          *(a1 + 16) = v35;
          *(a1 + 32) = v36;
          *a1 = v34;
          goto LABEL_26;
        }

        v119 = *a1;
        v120 = *(a1 + 16);
        v121 = *(a1 + 32);
        v743 = *(a1 + 48);
        v741 = v120;
        v742 = v121;
        v740 = v119;
        v122 = *v15;
        v123 = *(v15 + 16);
        v124 = *(v15 + 32);
        *(a1 + 48) = *(v15 + 48);
        *(a1 + 16) = v123;
        *(a1 + 32) = v124;
        *a1 = v122;
        v125 = v740;
        v126 = v741;
        v127 = v742;
        *(v15 + 48) = v743;
        *(v15 + 16) = v126;
        *(v15 + 32) = v127;
        *v15 = v125;
        v128 = *a3;
        v129 = *v9;
        v130 = *(v9 + 16);
        v131 = *(v9 + 32);
        v743 = *(v9 + 48);
        v741 = v130;
        v742 = v131;
        v740 = v129;
        v132 = *v15;
        v133 = *(v15 + 16);
        v134 = *(v15 + 32);
        v739 = *(v15 + 48);
        v737 = v133;
        v738 = v134;
        v736 = v132;
        if (v128(&v740, &v736))
        {
          v135 = *v15;
          v136 = *(v15 + 16);
          v137 = *(v15 + 32);
          v743 = *(v15 + 48);
          v741 = v136;
          v742 = v137;
          v740 = v135;
          v138 = *v9;
          v139 = *(v9 + 16);
          v140 = *(v9 + 32);
          *(v15 + 48) = *(v9 + 48);
          *(v15 + 16) = v139;
          *(v15 + 32) = v140;
          *v15 = v138;
LABEL_26:
          v141 = v740;
          v142 = v741;
          v143 = v742;
          *(v9 + 48) = v743;
          *(v9 + 16) = v142;
          *(v9 + 32) = v143;
          *v9 = v141;
        }
      }

      else
      {
        v57 = *v9;
        v58 = *(v9 + 16);
        v59 = *(v9 + 32);
        v743 = *(v9 + 48);
        v741 = v58;
        v742 = v59;
        v740 = v57;
        v60 = *v15;
        v61 = *(v15 + 16);
        v62 = *(v15 + 32);
        v739 = *(v15 + 48);
        v737 = v61;
        v738 = v62;
        v736 = v60;
        if (v24(&v740, &v736))
        {
          v63 = *v15;
          v64 = *(v15 + 16);
          v65 = *(v15 + 32);
          v743 = *(v15 + 48);
          v741 = v64;
          v742 = v65;
          v740 = v63;
          v66 = *v9;
          v67 = *(v9 + 16);
          v68 = *(v9 + 32);
          *(v15 + 48) = *(v9 + 48);
          *(v15 + 16) = v67;
          *(v15 + 32) = v68;
          *v15 = v66;
          v69 = v740;
          v70 = v741;
          v71 = v742;
          *(v9 + 48) = v743;
          *(v9 + 16) = v70;
          *(v9 + 32) = v71;
          *v9 = v69;
          v72 = *a3;
          v73 = *v15;
          v74 = *(v15 + 16);
          v75 = *(v15 + 32);
          v743 = *(v15 + 48);
          v741 = v74;
          v742 = v75;
          v740 = v73;
          v76 = *a1;
          v77 = *(a1 + 16);
          v78 = *(a1 + 32);
          v739 = *(a1 + 48);
          v737 = v77;
          v738 = v78;
          v736 = v76;
          if (v72(&v740, &v736))
          {
            v79 = *a1;
            v80 = *(a1 + 16);
            v81 = *(a1 + 32);
            v743 = *(a1 + 48);
            v741 = v80;
            v742 = v81;
            v740 = v79;
            v82 = *v15;
            v83 = *(v15 + 16);
            v84 = *(v15 + 32);
            *(a1 + 48) = *(v15 + 48);
            *(a1 + 16) = v83;
            *(a1 + 32) = v84;
            *a1 = v82;
            v85 = v740;
            v86 = v741;
            v87 = v742;
            *(v15 + 48) = v743;
            *(v15 + 16) = v86;
            *(v15 + 32) = v87;
            *v15 = v85;
          }
        }
      }

      v144 = *a3;
      v145 = a1 + 56 * v14;
      v146 = *(v145 - 56);
      v147 = v145 - 56;
      v148 = *(v145 - 40);
      v149 = *(v145 - 24);
      v743 = *(v145 - 8);
      v741 = v148;
      v742 = v149;
      v740 = v146;
      v150 = *(a1 + 72);
      v736 = *(a1 + 56);
      v737 = v150;
      v738 = *(a1 + 88);
      v739 = *(a1 + 104);
      v151 = v144(&v740, &v736);
      v152 = *a3;
      if (v151)
      {
        v153 = *v723;
        v154 = *(v723 + 16);
        v155 = *(v723 + 32);
        v743 = *(v723 + 48);
        v741 = v154;
        v742 = v155;
        v740 = v153;
        v156 = *v147;
        v157 = *(v147 + 16);
        v158 = *(v147 + 32);
        v739 = *(v147 + 48);
        v737 = v157;
        v738 = v158;
        v736 = v156;
        if (v152(&v740, &v736))
        {
          v160 = *(a1 + 72);
          v740 = *(a1 + 56);
          v159 = v740;
          v741 = v160;
          v742 = *(a1 + 88);
          v161 = v742;
          v743 = *(a1 + 104);
          v162 = v743;
          v163 = *(v723 + 48);
          v165 = *(v723 + 16);
          v164 = *(v723 + 32);
          *(a1 + 56) = *v723;
          *(a1 + 72) = v165;
          *(a1 + 88) = v164;
          *(a1 + 104) = v163;
          *(v723 + 16) = v160;
          *(v723 + 32) = v161;
          *(v723 + 48) = v162;
          *v723 = v159;
        }

        else
        {
          v219 = *(a1 + 72);
          v740 = *(a1 + 56);
          v218 = v740;
          v741 = v219;
          v742 = *(a1 + 88);
          v220 = v742;
          v743 = *(a1 + 104);
          v221 = v743;
          v222 = *(v147 + 48);
          v224 = *(v147 + 16);
          v223 = *(v147 + 32);
          *(a1 + 56) = *v147;
          *(a1 + 72) = v224;
          *(a1 + 88) = v223;
          *(a1 + 104) = v222;
          *(v147 + 16) = v219;
          *(v147 + 32) = v220;
          *(v147 + 48) = v221;
          *v147 = v218;
          v225 = *a3;
          v226 = *v723;
          v227 = *(v723 + 16);
          v228 = *(v723 + 32);
          v743 = *(v723 + 48);
          v741 = v227;
          v742 = v228;
          v740 = v226;
          v229 = *v147;
          v230 = *(v147 + 16);
          v231 = *(v147 + 32);
          v739 = *(v147 + 48);
          v737 = v230;
          v738 = v231;
          v736 = v229;
          if (v225(&v740, &v736))
          {
            v232 = *v147;
            v233 = *(v147 + 16);
            v234 = *(v147 + 32);
            v743 = *(v147 + 48);
            v741 = v233;
            v742 = v234;
            v740 = v232;
            v235 = *v723;
            v236 = *(v723 + 16);
            v237 = *(v723 + 32);
            *(v147 + 48) = *(v723 + 48);
            *(v147 + 16) = v236;
            *(v147 + 32) = v237;
            *v147 = v235;
            v238 = v740;
            v239 = v741;
            v240 = v742;
            *(v723 + 48) = v743;
            *(v723 + 16) = v239;
            *(v723 + 32) = v240;
            *v723 = v238;
          }
        }
      }

      else
      {
        v166 = *v723;
        v167 = *(v723 + 16);
        v168 = *(v723 + 32);
        v743 = *(v723 + 48);
        v741 = v167;
        v742 = v168;
        v740 = v166;
        v169 = *v147;
        v170 = *(v147 + 16);
        v171 = *(v147 + 32);
        v739 = *(v147 + 48);
        v737 = v170;
        v738 = v171;
        v736 = v169;
        if (v152(&v740, &v736))
        {
          v172 = *v147;
          v173 = *(v147 + 16);
          v174 = *(v147 + 32);
          v743 = *(v147 + 48);
          v741 = v173;
          v742 = v174;
          v740 = v172;
          v175 = *v723;
          v176 = *(v723 + 16);
          v177 = *(v723 + 32);
          *(v147 + 48) = *(v723 + 48);
          *(v147 + 16) = v176;
          *(v147 + 32) = v177;
          *v147 = v175;
          v178 = v740;
          v179 = v741;
          v180 = v742;
          *(v723 + 48) = v743;
          *(v723 + 16) = v179;
          *(v723 + 32) = v180;
          *v723 = v178;
          v181 = *a3;
          v182 = *v147;
          v183 = *(v147 + 16);
          v184 = *(v147 + 32);
          v743 = *(v147 + 48);
          v741 = v183;
          v742 = v184;
          v740 = v182;
          v185 = *(a1 + 72);
          v736 = *(a1 + 56);
          v737 = v185;
          v738 = *(a1 + 88);
          v739 = *(a1 + 104);
          if (v181(&v740, &v736))
          {
            v187 = *(a1 + 72);
            v740 = *(a1 + 56);
            v186 = v740;
            v741 = v187;
            v742 = *(a1 + 88);
            v188 = v742;
            v743 = *(a1 + 104);
            v189 = v743;
            v190 = *(v147 + 48);
            v192 = *(v147 + 16);
            v191 = *(v147 + 32);
            *(a1 + 56) = *v147;
            *(a1 + 72) = v192;
            *(a1 + 88) = v191;
            *(a1 + 104) = v190;
            *(v147 + 16) = v187;
            *(v147 + 32) = v188;
            *(v147 + 48) = v189;
            *v147 = v186;
          }
        }
      }

      v241 = *a3;
      v242 = a1 + 56 * v14;
      v243 = *(v242 + 56);
      v244 = *(v242 + 72);
      v245 = *(v242 + 88);
      v743 = *(v242 + 104);
      v741 = v244;
      v742 = v245;
      v740 = v243;
      v246 = *(a1 + 128);
      v736 = *(a1 + 112);
      v737 = v246;
      v738 = *(a1 + 144);
      v739 = *(a1 + 160);
      v247 = v241(&v740, &v736);
      v248 = *a3;
      if (v247)
      {
        v249 = *v10;
        v250 = *(v10 + 16);
        v251 = *(v10 + 32);
        v743 = *(v10 + 48);
        v741 = v250;
        v742 = v251;
        v740 = v249;
        v252 = *(v242 + 56);
        v253 = *(v242 + 72);
        v254 = *(v242 + 88);
        v739 = *(v242 + 104);
        v737 = v253;
        v738 = v254;
        v736 = v252;
        if (v248(&v740, &v736))
        {
          v255 = *(a1 + 112);
          v256 = *(a1 + 128);
          v740 = v255;
          v741 = v256;
          v742 = *(a1 + 144);
          v257 = v742;
          v743 = *(a1 + 160);
          v258 = v743;
          v259 = *(v10 + 48);
          v261 = *(v10 + 16);
          v260 = *(v10 + 32);
          *(a1 + 112) = *v10;
          *(a1 + 128) = v261;
          *(a1 + 144) = v260;
          *(a1 + 160) = v259;
          *(v10 + 32) = v257;
          *(v10 + 48) = v258;
          goto LABEL_46;
        }

        v290 = *(a1 + 128);
        v740 = *(a1 + 112);
        v289 = v740;
        v741 = v290;
        v742 = *(a1 + 144);
        v291 = v742;
        v743 = *(a1 + 160);
        v292 = v743;
        v293 = *(v242 + 104);
        v294 = *(v242 + 88);
        v295 = *(v242 + 72);
        *(a1 + 112) = *(v242 + 56);
        *(a1 + 128) = v295;
        *(a1 + 144) = v294;
        *(a1 + 160) = v293;
        *(v242 + 72) = v290;
        *(v242 + 88) = v291;
        *(v242 + 104) = v292;
        *(v242 + 56) = v289;
        v296 = *a3;
        v297 = *v10;
        v298 = *(v10 + 16);
        v299 = *(v10 + 32);
        v743 = *(v10 + 48);
        v741 = v298;
        v742 = v299;
        v740 = v297;
        v300 = *(v242 + 56);
        v301 = *(v242 + 72);
        v302 = *(v242 + 88);
        v739 = *(v242 + 104);
        v737 = v301;
        v738 = v302;
        v736 = v300;
        if (v296(&v740, &v736))
        {
          v303 = *(v242 + 56);
          v304 = *(v242 + 72);
          v305 = *(v242 + 88);
          v743 = *(v242 + 104);
          v741 = v304;
          v742 = v305;
          v740 = v303;
          v306 = *v10;
          v307 = *(v10 + 16);
          v308 = *(v10 + 32);
          *(v242 + 104) = *(v10 + 48);
          *(v242 + 88) = v308;
          *(v242 + 72) = v307;
          *(v242 + 56) = v306;
          v255 = v740;
          v256 = v741;
          v309 = v742;
          *(v10 + 48) = v743;
          *(v10 + 32) = v309;
LABEL_46:
          *v10 = v255;
          *(v10 + 16) = v256;
        }
      }

      else
      {
        v262 = *v10;
        v263 = *(v10 + 16);
        v264 = *(v10 + 32);
        v743 = *(v10 + 48);
        v741 = v263;
        v742 = v264;
        v740 = v262;
        v265 = *(v242 + 56);
        v266 = *(v242 + 72);
        v267 = *(v242 + 88);
        v739 = *(v242 + 104);
        v737 = v266;
        v738 = v267;
        v736 = v265;
        if (v248(&v740, &v736))
        {
          v268 = *(v242 + 56);
          v269 = *(v242 + 72);
          v270 = *(v242 + 88);
          v743 = *(v242 + 104);
          v741 = v269;
          v742 = v270;
          v740 = v268;
          v271 = *v10;
          v272 = *(v10 + 16);
          v273 = *(v10 + 32);
          *(v242 + 104) = *(v10 + 48);
          *(v242 + 88) = v273;
          *(v242 + 72) = v272;
          *(v242 + 56) = v271;
          v274 = v740;
          v275 = v741;
          v276 = v742;
          *(v10 + 48) = v743;
          *(v10 + 16) = v275;
          *(v10 + 32) = v276;
          *v10 = v274;
          v277 = *a3;
          v278 = *(v242 + 56);
          v279 = *(v242 + 72);
          v280 = *(v242 + 88);
          v743 = *(v242 + 104);
          v741 = v279;
          v742 = v280;
          v740 = v278;
          v281 = *(a1 + 128);
          v736 = *(a1 + 112);
          v737 = v281;
          v738 = *(a1 + 144);
          v739 = *(a1 + 160);
          if (v277(&v740, &v736))
          {
            v283 = *(a1 + 128);
            v740 = *(a1 + 112);
            v282 = v740;
            v741 = v283;
            v742 = *(a1 + 144);
            v284 = v742;
            v743 = *(a1 + 160);
            v285 = v743;
            v286 = *(v242 + 104);
            v287 = *(v242 + 88);
            v288 = *(v242 + 72);
            *(a1 + 112) = *(v242 + 56);
            *(a1 + 128) = v288;
            *(a1 + 144) = v287;
            *(a1 + 160) = v286;
            *(v242 + 72) = v283;
            *(v242 + 88) = v284;
            *(v242 + 104) = v285;
            *(v242 + 56) = v282;
          }
        }
      }

      v310 = *a3;
      v311 = *v15;
      v312 = *(v15 + 16);
      v313 = *(v15 + 32);
      v743 = *(v15 + 48);
      v741 = v312;
      v742 = v313;
      v740 = v311;
      v314 = *v147;
      v315 = *(v147 + 16);
      v316 = *(v147 + 32);
      v739 = *(v147 + 48);
      v737 = v315;
      v738 = v316;
      v736 = v314;
      v317 = v310(&v740, &v736);
      v318 = *a3;
      if (v317)
      {
        v319 = *(v242 + 56);
        v320 = *(v242 + 72);
        v321 = *(v242 + 88);
        v743 = *(v242 + 104);
        v741 = v320;
        v742 = v321;
        v740 = v319;
        v322 = *v15;
        v323 = *(v15 + 16);
        v324 = *(v15 + 32);
        v739 = *(v15 + 48);
        v737 = v323;
        v738 = v324;
        v736 = v322;
        if (v318(&v740, &v736))
        {
          v325 = *v147;
          v326 = *(v147 + 16);
          v327 = *(v147 + 32);
          v743 = *(v147 + 48);
          v741 = v326;
          v742 = v327;
          v740 = v325;
          v328 = *(v242 + 72);
          *v147 = *(v242 + 56);
          *(v147 + 16) = v328;
          *(v147 + 32) = *(v242 + 88);
          *(v147 + 48) = *(v242 + 104);
          goto LABEL_55;
        }

        v356 = *v147;
        v357 = *(v147 + 16);
        v358 = *(v147 + 32);
        v743 = *(v147 + 48);
        v741 = v357;
        v742 = v358;
        v740 = v356;
        v359 = *(v15 + 16);
        *v147 = *v15;
        *(v147 + 16) = v359;
        *(v147 + 32) = *(v15 + 32);
        *(v147 + 48) = *(v15 + 48);
        v360 = v743;
        v361 = v742;
        v362 = v740;
        *(v15 + 16) = v741;
        *(v15 + 32) = v361;
        *(v15 + 48) = v360;
        *v15 = v362;
        v363 = *a3;
        v364 = *(v242 + 56);
        v365 = *(v242 + 72);
        v366 = *(v242 + 88);
        v743 = *(v242 + 104);
        v741 = v365;
        v742 = v366;
        v740 = v364;
        v367 = *v15;
        v368 = *(v15 + 16);
        v369 = *(v15 + 32);
        v739 = *(v15 + 48);
        v737 = v368;
        v738 = v369;
        v736 = v367;
        if (v363(&v740, &v736))
        {
          v370 = *v15;
          v371 = *(v15 + 16);
          v372 = *(v15 + 32);
          v743 = *(v15 + 48);
          v741 = v371;
          v742 = v372;
          v740 = v370;
          v373 = *(v242 + 72);
          *v15 = *(v242 + 56);
          *(v15 + 16) = v373;
          *(v15 + 32) = *(v242 + 88);
          *(v15 + 48) = *(v242 + 104);
LABEL_55:
          v374 = v743;
          v375 = v742;
          v376 = v740;
          *(v242 + 72) = v741;
          *(v242 + 88) = v375;
          *(v242 + 104) = v374;
          *(v242 + 56) = v376;
        }
      }

      else
      {
        v329 = *(v242 + 56);
        v330 = *(v242 + 72);
        v331 = *(v242 + 88);
        v743 = *(v242 + 104);
        v741 = v330;
        v742 = v331;
        v740 = v329;
        v332 = *v15;
        v333 = *(v15 + 16);
        v334 = *(v15 + 32);
        v739 = *(v15 + 48);
        v737 = v333;
        v738 = v334;
        v736 = v332;
        if (v318(&v740, &v736))
        {
          v335 = *v15;
          v336 = *(v15 + 16);
          v337 = *(v15 + 32);
          v743 = *(v15 + 48);
          v741 = v336;
          v742 = v337;
          v740 = v335;
          v338 = *(v242 + 72);
          *v15 = *(v242 + 56);
          *(v15 + 16) = v338;
          *(v15 + 32) = *(v242 + 88);
          *(v15 + 48) = *(v242 + 104);
          v339 = v743;
          v340 = v742;
          v341 = v740;
          *(v242 + 72) = v741;
          *(v242 + 88) = v340;
          *(v242 + 104) = v339;
          *(v242 + 56) = v341;
          v342 = *a3;
          v343 = *v15;
          v344 = *(v15 + 16);
          v345 = *(v15 + 32);
          v743 = *(v15 + 48);
          v741 = v344;
          v742 = v345;
          v740 = v343;
          v346 = *v147;
          v347 = *(v147 + 16);
          v348 = *(v147 + 32);
          v739 = *(v147 + 48);
          v737 = v347;
          v738 = v348;
          v736 = v346;
          if (v342(&v740, &v736))
          {
            v349 = *v147;
            v350 = *(v147 + 16);
            v351 = *(v147 + 32);
            v743 = *(v147 + 48);
            v741 = v350;
            v742 = v351;
            v740 = v349;
            v352 = *(v15 + 16);
            *v147 = *v15;
            *(v147 + 16) = v352;
            *(v147 + 32) = *(v15 + 32);
            *(v147 + 48) = *(v15 + 48);
            v353 = v743;
            v354 = v742;
            v355 = v740;
            *(v15 + 16) = v741;
            *(v15 + 32) = v354;
            *(v15 + 48) = v353;
            *v15 = v355;
          }
        }
      }

      v377 = *a1;
      v378 = *(a1 + 16);
      v379 = *(a1 + 32);
      v743 = *(a1 + 48);
      v741 = v378;
      v742 = v379;
      v740 = v377;
      v380 = *v15;
      v381 = *(v15 + 16);
      v382 = *(v15 + 32);
      *(a1 + 48) = *(v15 + 48);
      *(a1 + 16) = v381;
      *(a1 + 32) = v382;
      *a1 = v380;
      v383 = v740;
      v384 = v741;
      v385 = v742;
      *(v15 + 48) = v743;
      *(v15 + 16) = v384;
      *(v15 + 32) = v385;
      *v15 = v383;
      goto LABEL_57;
    }

    v37 = *a1;
    v38 = *(a1 + 16);
    v39 = *(a1 + 32);
    v743 = *(a1 + 48);
    v741 = v38;
    v742 = v39;
    v740 = v37;
    v40 = *v15;
    v41 = *(v15 + 16);
    v42 = *(v15 + 32);
    v739 = *(v15 + 48);
    v737 = v41;
    v738 = v42;
    v736 = v40;
    v43 = v16(&v740, &v736);
    v44 = *a3;
    if ((v43 & 1) == 0)
    {
      v88 = *v9;
      v89 = *(v9 + 16);
      v90 = *(v9 + 32);
      v743 = *(v9 + 48);
      v741 = v89;
      v742 = v90;
      v740 = v88;
      v91 = *a1;
      v92 = *(a1 + 16);
      v93 = *(a1 + 32);
      v739 = *(a1 + 48);
      v737 = v92;
      v738 = v93;
      v736 = v91;
      if (v44(&v740, &v736))
      {
        v94 = *a1;
        v95 = *(a1 + 16);
        v96 = *(a1 + 32);
        v743 = *(a1 + 48);
        v741 = v95;
        v742 = v96;
        v740 = v94;
        v97 = *v9;
        v98 = *(v9 + 16);
        v99 = *(v9 + 32);
        *(a1 + 48) = *(v9 + 48);
        *(a1 + 16) = v98;
        *(a1 + 32) = v99;
        *a1 = v97;
        v100 = v740;
        v101 = v741;
        v102 = v742;
        *(v9 + 48) = v743;
        *(v9 + 16) = v101;
        *(v9 + 32) = v102;
        *v9 = v100;
        v103 = *a3;
        v104 = *a1;
        v105 = *(a1 + 16);
        v106 = *(a1 + 32);
        v743 = *(a1 + 48);
        v741 = v105;
        v742 = v106;
        v740 = v104;
        v107 = *v15;
        v108 = *(v15 + 16);
        v109 = *(v15 + 32);
        v739 = *(v15 + 48);
        v737 = v108;
        v738 = v109;
        v736 = v107;
        if (v103(&v740, &v736))
        {
          v110 = *v15;
          v111 = *(v15 + 16);
          v112 = *(v15 + 32);
          v743 = *(v15 + 48);
          v741 = v111;
          v742 = v112;
          v740 = v110;
          v113 = *a1;
          v114 = *(a1 + 16);
          v115 = *(a1 + 32);
          *(v15 + 48) = *(a1 + 48);
          *(v15 + 16) = v114;
          *(v15 + 32) = v115;
          *v15 = v113;
          v116 = v740;
          v117 = v741;
          v118 = v742;
          *(a1 + 48) = v743;
          *(a1 + 16) = v117;
          *(a1 + 32) = v118;
          *a1 = v116;
        }
      }

      goto LABEL_57;
    }

    v45 = *v9;
    v46 = *(v9 + 16);
    v47 = *(v9 + 32);
    v743 = *(v9 + 48);
    v741 = v46;
    v742 = v47;
    v740 = v45;
    v48 = *a1;
    v49 = *(a1 + 16);
    v50 = *(a1 + 32);
    v739 = *(a1 + 48);
    v737 = v49;
    v738 = v50;
    v736 = v48;
    if (v44(&v740, &v736))
    {
      v51 = *v15;
      v52 = *(v15 + 16);
      v53 = *(v15 + 32);
      v743 = *(v15 + 48);
      v741 = v52;
      v742 = v53;
      v740 = v51;
      v54 = *v9;
      v55 = *(v9 + 16);
      v56 = *(v9 + 32);
      *(v15 + 48) = *(v9 + 48);
      *(v15 + 16) = v55;
      *(v15 + 32) = v56;
      *v15 = v54;
    }

    else
    {
      v193 = *v15;
      v194 = *(v15 + 16);
      v195 = *(v15 + 32);
      v743 = *(v15 + 48);
      v741 = v194;
      v742 = v195;
      v740 = v193;
      v196 = *a1;
      v197 = *(a1 + 16);
      v198 = *(a1 + 32);
      *(v15 + 48) = *(a1 + 48);
      *(v15 + 16) = v197;
      *(v15 + 32) = v198;
      *v15 = v196;
      v199 = v740;
      v200 = v741;
      v201 = v742;
      *(a1 + 48) = v743;
      *(a1 + 16) = v200;
      *(a1 + 32) = v201;
      *a1 = v199;
      v202 = *a3;
      v203 = *v9;
      v204 = *(v9 + 16);
      v205 = *(v9 + 32);
      v743 = *(v9 + 48);
      v741 = v204;
      v742 = v205;
      v740 = v203;
      v206 = *a1;
      v207 = *(a1 + 16);
      v208 = *(a1 + 32);
      v739 = *(a1 + 48);
      v737 = v207;
      v738 = v208;
      v736 = v206;
      if (!v202(&v740, &v736))
      {
        goto LABEL_57;
      }

      v209 = *a1;
      v210 = *(a1 + 16);
      v211 = *(a1 + 32);
      v743 = *(a1 + 48);
      v741 = v210;
      v742 = v211;
      v740 = v209;
      v212 = *v9;
      v213 = *(v9 + 16);
      v214 = *(v9 + 32);
      *(a1 + 48) = *(v9 + 48);
      *(a1 + 16) = v213;
      *(a1 + 32) = v214;
      *a1 = v212;
    }

    v215 = v740;
    v216 = v741;
    v217 = v742;
    *(v9 + 48) = v743;
    *(v9 + 16) = v216;
    *(v9 + 32) = v217;
    *v9 = v215;
LABEL_57:
    --a4;
    if (a5)
    {
      goto LABEL_59;
    }

    v386 = *a3;
    v387 = *(a1 - 56);
    v388 = *(a1 - 40);
    v389 = *(a1 - 24);
    v743 = *(a1 - 8);
    v741 = v388;
    v742 = v389;
    v740 = v387;
    v390 = *a1;
    v391 = *(a1 + 16);
    v392 = *(a1 + 32);
    v739 = *(a1 + 48);
    v737 = v391;
    v738 = v392;
    v736 = v390;
    if ((v386)(&v740, &v736))
    {
LABEL_59:
      v393 = a4;
      v394 = *a1;
      v395 = *(a1 + 16);
      v396 = *(a1 + 32);
      v739 = *(a1 + 48);
      v737 = v395;
      v738 = v396;
      v736 = v394;
      v397 = a1;
      do
      {
        v398 = v397;
        v399 = *a3;
        v397 += 56;
        v400 = *(v398 + 72);
        v740 = *(v398 + 56);
        v741 = v400;
        v742 = *(v398 + 88);
        v743 = *(v398 + 104);
        v732 = v736;
        v733 = v737;
        v734 = v738;
        v735 = v739;
      }

      while (((v399)(&v740, &v732) & 1) != 0);
      v401 = a2;
      if (v398 == a1)
      {
        while (v397 < a2)
        {
          v408 = *a3;
          v402 = a2 - 56;
          v409 = *(a2 - 56);
          v410 = *(a2 - 40);
          v411 = *(a2 - 24);
          v743 = *(a2 - 8);
          v741 = v410;
          v742 = v411;
          v740 = v409;
          v732 = v736;
          v733 = v737;
          v734 = v738;
          v735 = v739;
          a2 -= 56;
          if ((v408)(&v740, &v732))
          {
            goto LABEL_68;
          }
        }

        v402 = a2;
      }

      else
      {
        do
        {
          v402 = v401 - 56;
          v403 = *a3;
          v404 = *(v401 - 56);
          v405 = *(v401 - 40);
          v406 = *(v401 - 24);
          v743 = *(v401 - 8);
          v741 = v405;
          v742 = v406;
          v740 = v404;
          v732 = v736;
          v733 = v737;
          v734 = v738;
          v735 = v739;
          v407 = v403(&v740, &v732);
          v401 = v402;
        }

        while (!v407);
      }

LABEL_68:
      if (v397 < v402)
      {
        v412 = v397;
        v413 = v402;
        do
        {
          v415 = *(v412 + 16);
          v740 = *v412;
          v414 = v740;
          v741 = v415;
          v742 = *(v412 + 32);
          v416 = v742;
          v743 = *(v412 + 48);
          v417 = v743;
          v418 = *(v413 + 48);
          v420 = *(v413 + 16);
          v419 = *(v413 + 32);
          *v412 = *v413;
          *(v412 + 16) = v420;
          *(v412 + 32) = v419;
          *(v412 + 48) = v418;
          *(v413 + 16) = v415;
          *(v413 + 32) = v416;
          *(v413 + 48) = v417;
          *v413 = v414;
          do
          {
            v398 = v412;
            v421 = *a3;
            v412 += 56;
            v422 = *(v398 + 72);
            v740 = *(v398 + 56);
            v741 = v422;
            v742 = *(v398 + 88);
            v743 = *(v398 + 104);
            v732 = v736;
            v733 = v737;
            v734 = v738;
            v735 = v739;
          }

          while (((v421)(&v740, &v732) & 1) != 0);
          do
          {
            v423 = *(v413 - 56);
            v424 = *(v413 - 40);
            v425 = *(v413 - 24);
            v426 = *(v413 - 8);
            v413 -= 56;
            v427 = *a3;
            v743 = v426;
            v741 = v424;
            v742 = v425;
            v740 = v423;
            v732 = v736;
            v733 = v737;
            v734 = v738;
            v735 = v739;
          }

          while (!v427(&v740, &v732));
        }

        while (v412 < v413);
      }

      if (v398 != a1)
      {
        v428 = *v398;
        v429 = *(v398 + 16);
        v430 = *(v398 + 32);
        *(a1 + 48) = *(v398 + 48);
        *(a1 + 16) = v429;
        *(a1 + 32) = v430;
        *a1 = v428;
      }

      v431 = v736;
      v432 = v737;
      v433 = v738;
      *(v398 + 48) = v739;
      *(v398 + 16) = v432;
      *(v398 + 32) = v433;
      *v398 = v431;
      v434 = v397 >= v402;
      a2 = v724;
      a4 = v393;
      if (!v434)
      {
        goto LABEL_80;
      }

      v435 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(a1, v398, a3);
      v11 = v398 + 56;
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(v398 + 56, v724, a3))
      {
        a2 = v398;
        if (!v435)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v435)
      {
LABEL_80:
        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*,false>(a1, v398, a3, v393, a5 & 1);
        a5 = 0;
        v11 = v398 + 56;
      }
    }

    else
    {
      v436 = *a1;
      v437 = *(a1 + 16);
      v438 = *(a1 + 32);
      v739 = *(a1 + 48);
      v737 = v437;
      v738 = v438;
      v736 = v436;
      v439 = *a3;
      v440 = *a1;
      v441 = *(a1 + 16);
      v442 = *(a1 + 32);
      v743 = *(a1 + 48);
      v741 = v441;
      v742 = v442;
      v740 = v440;
      v443 = *v9;
      v444 = *(v9 + 16);
      v445 = *(v9 + 32);
      v735 = *(v9 + 48);
      v733 = v444;
      v734 = v445;
      v732 = v443;
      if ((v439)(&v740, &v732))
      {
        v446 = a1;
        do
        {
          v11 = v446 + 56;
          v447 = *a3;
          v740 = v736;
          v741 = v737;
          v742 = v738;
          v743 = v739;
          v448 = *(v446 + 72);
          v732 = *(v446 + 56);
          v733 = v448;
          v734 = *(v446 + 88);
          v735 = *(v446 + 104);
          v449 = v447(&v740, &v732);
          v446 = v11;
        }

        while ((v449 & 1) == 0);
      }

      else
      {
        v450 = a1 + 56;
        do
        {
          v11 = v450;
          if (v450 >= a2)
          {
            break;
          }

          v451 = *a3;
          v740 = v736;
          v741 = v737;
          v742 = v738;
          v743 = v739;
          v452 = *v11;
          v453 = *(v11 + 16);
          v454 = *(v11 + 32);
          v735 = *(v11 + 48);
          v733 = v453;
          v734 = v454;
          v732 = v452;
          v455 = v451(&v740, &v732);
          v450 = v11 + 56;
        }

        while (!v455);
      }

      v456 = a2;
      if (v11 < a2)
      {
        v457 = a2;
        do
        {
          v456 = v457 - 56;
          v458 = *a3;
          v740 = v736;
          v741 = v737;
          v742 = v738;
          v743 = v739;
          v459 = *(v457 - 56);
          v460 = *(v457 - 40);
          v461 = *(v457 - 24);
          v735 = *(v457 - 8);
          v733 = v460;
          v734 = v461;
          v732 = v459;
          v462 = v458(&v740, &v732);
          v457 = v456;
        }

        while ((v462 & 1) != 0);
      }

      while (v11 < v456)
      {
        v463 = *v11;
        v464 = *(v11 + 16);
        v465 = *(v11 + 32);
        v743 = *(v11 + 48);
        v741 = v464;
        v742 = v465;
        v740 = v463;
        v466 = *v456;
        v467 = *(v456 + 16);
        v468 = *(v456 + 32);
        *(v11 + 48) = *(v456 + 48);
        *(v11 + 16) = v467;
        *(v11 + 32) = v468;
        *v11 = v466;
        v469 = v740;
        v470 = v741;
        v471 = v742;
        *(v456 + 48) = v743;
        *(v456 + 16) = v470;
        *(v456 + 32) = v471;
        *v456 = v469;
        do
        {
          v740 = v736;
          v741 = v737;
          v742 = v738;
          v472 = *(v11 + 72);
          v732 = *(v11 + 56);
          v733 = v472;
          v473 = *(v11 + 88);
          v474 = *(v11 + 104);
          v11 += 56;
          v475 = *a3;
          v743 = v739;
          v734 = v473;
          v735 = v474;
        }

        while (!v475(&v740, &v732));
        do
        {
          v740 = v736;
          v741 = v737;
          v742 = v738;
          v743 = v739;
          v476 = *(v456 - 56);
          v477 = *(v456 - 40);
          v478 = *(v456 - 24);
          v479 = *(v456 - 8);
          v456 -= 56;
          v480 = *a3;
          v735 = v479;
          v733 = v477;
          v734 = v478;
          v732 = v476;
        }

        while (((v480)(&v740, &v732) & 1) != 0);
      }

      v481 = (v11 - 56);
      if (v11 - 56 != a1)
      {
        v482 = *v481;
        v483 = *(v11 - 40);
        v484 = *(v11 - 24);
        *(a1 + 48) = *(v11 - 8);
        *(a1 + 16) = v483;
        *(a1 + 32) = v484;
        *a1 = v482;
      }

      a5 = 0;
      v485 = v736;
      v486 = v737;
      v487 = v738;
      *(v11 - 8) = v739;
      *(v11 - 40) = v486;
      *(v11 - 24) = v487;
      *v481 = v485;
    }
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*,0>(a1, (a1 + 56), (a1 + 112), v9, a3);
      return;
    }

    if (v13 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*,0>(a1, (a1 + 56), (a1 + 112), (a1 + 168), a3);
      v488 = *a3;
      v489 = *v9;
      v490 = *(v9 + 16);
      v491 = *(v9 + 32);
      v743 = *(v9 + 48);
      v741 = v490;
      v742 = v491;
      v740 = v489;
      v492 = *(a1 + 184);
      v736 = *(a1 + 168);
      v737 = v492;
      v738 = *(a1 + 200);
      v739 = *(a1 + 216);
      if (v488(&v740, &v736))
      {
        v494 = *(a1 + 184);
        v740 = *(a1 + 168);
        v493 = v740;
        v741 = v494;
        v742 = *(a1 + 200);
        v495 = v742;
        v743 = *(a1 + 216);
        v496 = v743;
        v497 = *(v9 + 48);
        v499 = *(v9 + 16);
        v498 = *(v9 + 32);
        *(a1 + 168) = *v9;
        *(a1 + 184) = v499;
        *(a1 + 200) = v498;
        *(a1 + 216) = v497;
        *(v9 + 16) = v494;
        *(v9 + 32) = v495;
        *(v9 + 48) = v496;
        *v9 = v493;
        v500 = *a3;
        v501 = *(a1 + 184);
        v740 = *(a1 + 168);
        v741 = v501;
        v742 = *(a1 + 200);
        v743 = *(a1 + 216);
        v502 = *(a1 + 128);
        v736 = *(a1 + 112);
        v737 = v502;
        v738 = *(a1 + 144);
        v739 = *(a1 + 160);
        if (v500(&v740, &v736))
        {
          v503 = *(a1 + 160);
          v505 = *(a1 + 128);
          v504 = *(a1 + 144);
          v506 = *(a1 + 112);
          v507 = *(a1 + 184);
          *(a1 + 112) = *(a1 + 168);
          *(a1 + 128) = v507;
          *(a1 + 144) = *(a1 + 200);
          v508 = *(a1 + 216);
          *(a1 + 160) = v508;
          *(a1 + 168) = v506;
          *(a1 + 184) = v505;
          *(a1 + 200) = v504;
          *(a1 + 216) = v503;
          v509 = *a3;
          v510 = *(a1 + 128);
          v740 = *(a1 + 112);
          v741 = v510;
          v742 = *(a1 + 144);
          v743 = v508;
          v511 = *(a1 + 72);
          v736 = *(a1 + 56);
          v737 = v511;
          v738 = *(a1 + 88);
          v739 = *(a1 + 104);
          if (v509(&v740, &v736))
          {
            v512 = *(a1 + 104);
            v513 = *(a1 + 88);
            v514 = *(a1 + 56);
            v515 = *(a1 + 128);
            *(a1 + 56) = *(a1 + 112);
            v516 = *(a1 + 72);
            *(a1 + 72) = v515;
            *(a1 + 88) = *(a1 + 144);
            *(a1 + 104) = *(a1 + 160);
            *(a1 + 112) = v514;
            *(a1 + 128) = v516;
            *(a1 + 144) = v513;
            *(a1 + 160) = v512;
LABEL_164:
            v672 = *a3;
            v673 = *(a1 + 72);
            v740 = *(a1 + 56);
            v741 = v673;
            v742 = *(a1 + 88);
            v743 = *(a1 + 104);
            v674 = *a1;
            v675 = *(a1 + 16);
            v676 = *(a1 + 32);
            v739 = *(a1 + 48);
            v737 = v675;
            v738 = v676;
            v736 = v674;
            if (v672(&v740, &v736))
            {
              v677 = *a1;
              v678 = *(a1 + 16);
              v679 = *(a1 + 32);
              v743 = *(a1 + 48);
              v741 = v678;
              v742 = v679;
              v740 = v677;
              v680 = *(a1 + 72);
              *a1 = *(a1 + 56);
              *(a1 + 16) = v680;
              *(a1 + 32) = *(a1 + 88);
              *(a1 + 48) = *(a1 + 104);
              v681 = v740;
              v682 = v741;
              v683 = v742;
              *(a1 + 104) = v743;
              *(a1 + 88) = v683;
              *(a1 + 72) = v682;
              *(a1 + 56) = v681;
            }
          }
        }
      }

      return;
    }

    goto LABEL_9;
  }

  v525 = *a3;
  v526 = *(a1 + 72);
  v740 = *(a1 + 56);
  v741 = v526;
  v742 = *(a1 + 88);
  v743 = *(a1 + 104);
  v527 = *a1;
  v528 = *(a1 + 16);
  v529 = *(a1 + 32);
  v739 = *(a1 + 48);
  v737 = v528;
  v738 = v529;
  v736 = v527;
  v530 = v525(&v740, &v736);
  v531 = *a3;
  if (v530)
  {
    v532 = *v9;
    v533 = *(v9 + 16);
    v534 = *(v9 + 32);
    v743 = *(v9 + 48);
    v741 = v533;
    v742 = v534;
    v740 = v532;
    v535 = *(a1 + 72);
    v736 = *(a1 + 56);
    v737 = v535;
    v738 = *(a1 + 88);
    v739 = *(a1 + 104);
    if (v531(&v740, &v736))
    {
      goto LABEL_109;
    }

    v706 = *a1;
    v707 = *(a1 + 16);
    v708 = *(a1 + 32);
    v743 = *(a1 + 48);
    v741 = v707;
    v742 = v708;
    v740 = v706;
    v709 = *(a1 + 72);
    *a1 = *(a1 + 56);
    *(a1 + 16) = v709;
    *(a1 + 32) = *(a1 + 88);
    *(a1 + 48) = *(a1 + 104);
    v710 = v740;
    v711 = v741;
    v712 = v742;
    *(a1 + 104) = v743;
    *(a1 + 88) = v712;
    *(a1 + 72) = v711;
    *(a1 + 56) = v710;
    v713 = *a3;
    v714 = *v9;
    v715 = *(v9 + 16);
    v716 = *(v9 + 32);
    v743 = *(v9 + 48);
    v741 = v715;
    v742 = v716;
    v740 = v714;
    v717 = *(a1 + 72);
    v736 = *(a1 + 56);
    v737 = v717;
    v738 = *(a1 + 88);
    v739 = *(a1 + 104);
    if (!v713(&v740, &v736))
    {
      return;
    }

    v542 = *(a1 + 56);
    v543 = *(a1 + 72);
    v740 = v542;
    v741 = v543;
    v742 = *(a1 + 88);
    v718 = v742;
    v743 = *(a1 + 104);
    v719 = v743;
    v720 = *(v9 + 48);
    v722 = *(v9 + 16);
    v721 = *(v9 + 32);
    *(a1 + 56) = *v9;
    *(a1 + 72) = v722;
    *(a1 + 88) = v721;
    *(a1 + 104) = v720;
    *(v9 + 32) = v718;
    *(v9 + 48) = v719;
LABEL_110:
    *v9 = v542;
    *(v9 + 16) = v543;
    return;
  }

  v661 = *v9;
  v662 = *(v9 + 16);
  v663 = *(v9 + 32);
  v743 = *(v9 + 48);
  v741 = v662;
  v742 = v663;
  v740 = v661;
  v664 = *(a1 + 72);
  v736 = *(a1 + 56);
  v737 = v664;
  v738 = *(a1 + 88);
  v739 = *(a1 + 104);
  if (v531(&v740, &v736))
  {
    v666 = *(a1 + 72);
    v740 = *(a1 + 56);
    v665 = v740;
    v741 = v666;
    v742 = *(a1 + 88);
    v667 = v742;
    v743 = *(a1 + 104);
    v668 = v743;
    v669 = *(v9 + 48);
    v671 = *(v9 + 16);
    v670 = *(v9 + 32);
    *(a1 + 56) = *v9;
    *(a1 + 72) = v671;
    *(a1 + 88) = v670;
    *(a1 + 104) = v669;
    *(v9 + 16) = v666;
    *(v9 + 32) = v667;
    *(v9 + 48) = v668;
    *v9 = v665;
    goto LABEL_164;
  }
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, unsigned int (**a5)(__int128 *, __int128 *))
{
  v10 = *a5;
  v11 = a2[1];
  v90 = *a2;
  v91 = v11;
  v92 = a2[2];
  v93 = *(a2 + 6);
  v12 = a1[1];
  v86 = *a1;
  v87 = v12;
  v88 = a1[2];
  v89 = *(a1 + 6);
  v13 = v10(&v90, &v86);
  v14 = *a5;
  if (v13)
  {
    v15 = a3[1];
    v90 = *a3;
    v91 = v15;
    v92 = a3[2];
    v93 = *(a3 + 6);
    v16 = a2[1];
    v86 = *a2;
    v87 = v16;
    v88 = a2[2];
    v89 = *(a2 + 6);
    if (v14(&v90, &v86))
    {
      v17 = *(a1 + 6);
      v19 = a1[1];
      v18 = a1[2];
      v20 = *a1;
      v22 = a3[1];
      v21 = a3[2];
      v23 = *a3;
      *(a1 + 6) = *(a3 + 6);
      a1[1] = v22;
      a1[2] = v21;
      *a1 = v23;
LABEL_9:
      *a3 = v20;
      a3[1] = v19;
      a3[2] = v18;
      *(a3 + 6) = v17;
      goto LABEL_10;
    }

    v43 = *(a1 + 6);
    v45 = a1[1];
    v44 = a1[2];
    v46 = *a1;
    v48 = a2[1];
    v47 = a2[2];
    v49 = *a2;
    *(a1 + 6) = *(a2 + 6);
    a1[1] = v48;
    a1[2] = v47;
    *a1 = v49;
    *a2 = v46;
    a2[1] = v45;
    a2[2] = v44;
    *(a2 + 6) = v43;
    v50 = *a5;
    v51 = a3[1];
    v90 = *a3;
    v91 = v51;
    v92 = a3[2];
    v93 = *(a3 + 6);
    v52 = a2[1];
    v86 = *a2;
    v87 = v52;
    v88 = a2[2];
    v89 = *(a2 + 6);
    if (v50(&v90, &v86))
    {
      v17 = *(a2 + 6);
      v19 = a2[1];
      v18 = a2[2];
      v20 = *a2;
      v54 = a3[1];
      v53 = a3[2];
      v55 = *a3;
      *(a2 + 6) = *(a3 + 6);
      a2[1] = v54;
      a2[2] = v53;
      *a2 = v55;
      goto LABEL_9;
    }
  }

  else
  {
    v24 = a3[1];
    v90 = *a3;
    v91 = v24;
    v92 = a3[2];
    v93 = *(a3 + 6);
    v25 = a2[1];
    v86 = *a2;
    v87 = v25;
    v88 = a2[2];
    v89 = *(a2 + 6);
    if (v14(&v90, &v86))
    {
      v26 = *(a2 + 6);
      v28 = a2[1];
      v27 = a2[2];
      v29 = *a2;
      v31 = a3[1];
      v30 = a3[2];
      v32 = *a3;
      *(a2 + 6) = *(a3 + 6);
      a2[1] = v31;
      a2[2] = v30;
      *a2 = v32;
      *a3 = v29;
      a3[1] = v28;
      a3[2] = v27;
      *(a3 + 6) = v26;
      v33 = *a5;
      v34 = a2[1];
      v90 = *a2;
      v91 = v34;
      v92 = a2[2];
      v93 = *(a2 + 6);
      v35 = a1[1];
      v86 = *a1;
      v87 = v35;
      v88 = a1[2];
      v89 = *(a1 + 6);
      if (v33(&v90, &v86))
      {
        v36 = *(a1 + 6);
        v38 = a1[1];
        v37 = a1[2];
        v39 = *a1;
        v41 = a2[1];
        v40 = a2[2];
        v42 = *a2;
        *(a1 + 6) = *(a2 + 6);
        a1[1] = v41;
        a1[2] = v40;
        *a1 = v42;
        *a2 = v39;
        a2[1] = v38;
        a2[2] = v37;
        *(a2 + 6) = v36;
      }
    }
  }

LABEL_10:
  v56 = *a5;
  v57 = a4[1];
  v90 = *a4;
  v91 = v57;
  v92 = a4[2];
  v93 = *(a4 + 6);
  v58 = a3[1];
  v86 = *a3;
  v87 = v58;
  v88 = a3[2];
  v89 = *(a3 + 6);
  if (v56(&v90, &v86))
  {
    v60 = *(a3 + 6);
    v62 = a3[1];
    v61 = a3[2];
    v63 = *a3;
    v65 = a4[1];
    v64 = a4[2];
    v66 = *a4;
    *(a3 + 6) = *(a4 + 6);
    a3[1] = v65;
    a3[2] = v64;
    *a3 = v66;
    *a4 = v63;
    a4[1] = v62;
    a4[2] = v61;
    *(a4 + 6) = v60;
    v67 = *a5;
    v68 = a3[1];
    v90 = *a3;
    v91 = v68;
    v92 = a3[2];
    v93 = *(a3 + 6);
    v69 = a2[1];
    v86 = *a2;
    v87 = v69;
    v88 = a2[2];
    v89 = *(a2 + 6);
    if (v67(&v90, &v86))
    {
      v70 = *(a2 + 6);
      v72 = a2[1];
      v71 = a2[2];
      v73 = *a2;
      v75 = a3[1];
      v74 = a3[2];
      v76 = *a3;
      *(a2 + 6) = *(a3 + 6);
      a2[1] = v75;
      a2[2] = v74;
      *a2 = v76;
      *a3 = v73;
      a3[1] = v72;
      a3[2] = v71;
      *(a3 + 6) = v70;
      v77 = *a5;
      v78 = a2[1];
      v90 = *a2;
      v91 = v78;
      v92 = a2[2];
      v93 = *(a2 + 6);
      v79 = a1[1];
      v86 = *a1;
      v87 = v79;
      v88 = a1[2];
      v89 = *(a1 + 6);
      if (v77(&v90, &v86))
      {
        v80 = *(a1 + 6);
        v81 = a1[1];
        result = a1[2];
        v82 = *a1;
        v84 = a2[1];
        v83 = a2[2];
        v85 = *a2;
        *(a1 + 6) = *(a2 + 6);
        a1[1] = v84;
        a1[2] = v83;
        *a1 = v85;
        *a2 = v82;
        a2[1] = v81;
        a2[2] = result;
        *(a2 + 6) = v80;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*>(uint64_t a1, uint64_t a2, unsigned int (**a3)(__int128 *, __int128 *))
{
  v6 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v47 = a2 - 56;
        v48 = *a3;
        v49 = *(a1 + 72);
        v152 = *(a1 + 56);
        v153 = v49;
        v154 = *(a1 + 88);
        v155 = *(a1 + 104);
        v50 = *(a1 + 16);
        v148 = *a1;
        v149 = v50;
        v150 = *(a1 + 32);
        v151 = *(a1 + 48);
        v51 = v48(&v152, &v148);
        v52 = *a3;
        if (v51)
        {
          v53 = *(v47 + 16);
          v152 = *v47;
          v153 = v53;
          v154 = *(v47 + 32);
          v155 = *(v47 + 48);
          v54 = *(a1 + 72);
          v148 = *(a1 + 56);
          v149 = v54;
          v150 = *(a1 + 88);
          v151 = *(a1 + 104);
          if (v52(&v152, &v148))
          {
            v55 = *(a1 + 48);
            v57 = *(a1 + 16);
            v56 = *(a1 + 32);
            v58 = *a1;
            v60 = *(v47 + 16);
            v59 = *(v47 + 32);
            v61 = *v47;
            *(a1 + 48) = *(v47 + 48);
            *(a1 + 16) = v60;
            *(a1 + 32) = v59;
            *a1 = v61;
          }

          else
          {
            v108 = *(a1 + 48);
            v110 = *(a1 + 16);
            v109 = *(a1 + 32);
            v111 = *a1;
            v112 = *(a1 + 72);
            *a1 = *(a1 + 56);
            *(a1 + 16) = v112;
            *(a1 + 32) = *(a1 + 88);
            *(a1 + 48) = *(a1 + 104);
            *(a1 + 56) = v111;
            *(a1 + 72) = v110;
            *(a1 + 88) = v109;
            *(a1 + 104) = v108;
            v113 = *a3;
            v114 = *(v47 + 16);
            v152 = *v47;
            v153 = v114;
            v154 = *(v47 + 32);
            v155 = *(v47 + 48);
            v115 = *(a1 + 72);
            v148 = *(a1 + 56);
            v149 = v115;
            v150 = *(a1 + 88);
            v151 = *(a1 + 104);
            if (!v113(&v152, &v148))
            {
              return 1;
            }

            v55 = *(a1 + 104);
            v56 = *(a1 + 88);
            v57 = *(a1 + 72);
            v58 = *(a1 + 56);
            v117 = *(v47 + 16);
            v116 = *(v47 + 32);
            v118 = *(v47 + 48);
            *(a1 + 56) = *v47;
            *(a1 + 104) = v118;
            *(a1 + 88) = v116;
            *(a1 + 72) = v117;
          }

          *v47 = v58;
          *(v47 + 16) = v57;
          *(v47 + 32) = v56;
          result = 1;
          *(v47 + 48) = v55;
          return result;
        }

        v75 = *(v47 + 16);
        v152 = *v47;
        v153 = v75;
        v154 = *(v47 + 32);
        v155 = *(v47 + 48);
        v76 = *(a1 + 72);
        v148 = *(a1 + 56);
        v149 = v76;
        v150 = *(a1 + 88);
        v151 = *(a1 + 104);
        if (!v52(&v152, &v148))
        {
          return 1;
        }

        v77 = *(a1 + 104);
        v78 = *(a1 + 88);
        v79 = *(a1 + 72);
        v80 = *(a1 + 56);
        v82 = *(v47 + 16);
        v81 = *(v47 + 32);
        v83 = *(v47 + 48);
        *(a1 + 56) = *v47;
        *(a1 + 104) = v83;
        *(a1 + 88) = v81;
        *(a1 + 72) = v82;
        *v47 = v80;
        *(v47 + 16) = v79;
        *(v47 + 32) = v78;
        *(v47 + 48) = v77;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*,0>(a1, (a1 + 56), (a1 + 112), (a2 - 56), a3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(sortQuantizeColorEntry,sortQuantizeColorEntry),sortQuantizeColorEntry*,0>(a1, (a1 + 56), (a1 + 112), (a1 + 168), a3);
        v19 = *a3;
        v20 = *(a2 - 40);
        v152 = *(a2 - 56);
        v153 = v20;
        v154 = *(a2 - 24);
        v155 = *(a2 - 8);
        v21 = *(a1 + 184);
        v148 = *(a1 + 168);
        v149 = v21;
        v150 = *(a1 + 200);
        v151 = *(a1 + 216);
        if (!v19(&v152, &v148))
        {
          return 1;
        }

        v22 = a2 - 56;
        v23 = *(a1 + 216);
        v24 = *(a1 + 200);
        v25 = *(a1 + 184);
        v26 = *(a1 + 168);
        v28 = *(a2 - 40);
        v27 = *(a2 - 24);
        v29 = *(a2 - 8);
        *(a1 + 168) = *(a2 - 56);
        *(a1 + 216) = v29;
        *(a1 + 200) = v27;
        *(a1 + 184) = v28;
        *v22 = v26;
        *(v22 + 16) = v25;
        *(v22 + 32) = v24;
        *(v22 + 48) = v23;
        v30 = *a3;
        v31 = *(a1 + 184);
        v152 = *(a1 + 168);
        v153 = v31;
        v154 = *(a1 + 200);
        v155 = *(a1 + 216);
        v32 = *(a1 + 128);
        v148 = *(a1 + 112);
        v149 = v32;
        v150 = *(a1 + 144);
        v151 = *(a1 + 160);
        if (!v30(&v152, &v148))
        {
          return 1;
        }

        v33 = *(a1 + 160);
        v35 = *(a1 + 128);
        v34 = *(a1 + 144);
        v36 = *(a1 + 112);
        v37 = *(a1 + 184);
        *(a1 + 112) = *(a1 + 168);
        *(a1 + 128) = v37;
        *(a1 + 144) = *(a1 + 200);
        v38 = *(a1 + 216);
        *(a1 + 160) = v38;
        *(a1 + 168) = v36;
        *(a1 + 184) = v35;
        *(a1 + 200) = v34;
        *(a1 + 216) = v33;
        v39 = *a3;
        v40 = *(a1 + 128);
        v152 = *(a1 + 112);
        v153 = v40;
        v154 = *(a1 + 144);
        v155 = v38;
        v41 = *(a1 + 72);
        v148 = *(a1 + 56);
        v149 = v41;
        v150 = *(a1 + 88);
        v151 = *(a1 + 104);
        if (!v39(&v152, &v148))
        {
          return 1;
        }

        v42 = *(a1 + 104);
        v43 = *(a1 + 88);
        v44 = *(a1 + 56);
        v45 = *(a1 + 128);
        *(a1 + 56) = *(a1 + 112);
        v46 = *(a1 + 72);
        *(a1 + 72) = v45;
        *(a1 + 88) = *(a1 + 144);
        *(a1 + 104) = *(a1 + 160);
        *(a1 + 112) = v44;
        *(a1 + 128) = v46;
        *(a1 + 144) = v43;
        *(a1 + 160) = v42;
        break;
      default:
        goto LABEL_16;
    }

    v84 = *a3;
    v85 = *(a1 + 72);
    v152 = *(a1 + 56);
    v153 = v85;
    v154 = *(a1 + 88);
    v155 = *(a1 + 104);
    v86 = *(a1 + 16);
    v148 = *a1;
    v149 = v86;
    v150 = *(a1 + 32);
    v151 = *(a1 + 48);
    if (v84(&v152, &v148))
    {
      v87 = *(a1 + 48);
      v89 = *(a1 + 16);
      v88 = *(a1 + 32);
      v90 = *a1;
      v91 = *(a1 + 72);
      *a1 = *(a1 + 56);
      *(a1 + 16) = v91;
      *(a1 + 32) = *(a1 + 88);
      *(a1 + 48) = *(a1 + 104);
      *(a1 + 56) = v90;
      *(a1 + 72) = v89;
      *(a1 + 88) = v88;
      result = 1;
      *(a1 + 104) = v87;
      return result;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *a3;
    v8 = *(a2 - 40);
    v152 = *(a2 - 56);
    v153 = v8;
    v154 = *(a2 - 24);
    v155 = *(a2 - 8);
    v9 = *(a1 + 16);
    v148 = *a1;
    v149 = v9;
    v150 = *(a1 + 32);
    v151 = *(a1 + 48);
    if (v7(&v152, &v148))
    {
      v10 = a2 - 56;
      v11 = *(a1 + 48);
      v13 = *(a1 + 16);
      v12 = *(a1 + 32);
      v14 = *a1;
      v16 = *(a2 - 40);
      v15 = *(a2 - 24);
      v17 = *(a2 - 56);
      *(a1 + 48) = *(a2 - 8);
      *(a1 + 16) = v16;
      *(a1 + 32) = v15;
      *a1 = v17;
      *v10 = v14;
      *(v10 + 16) = v13;
      *(v10 + 32) = v12;
      result = 1;
      *(v10 + 48) = v11;
      return result;
    }

    return 1;
  }

LABEL_16:
  v62 = a1 + 112;
  v63 = *a3;
  v64 = *(a1 + 72);
  v152 = *(a1 + 56);
  v153 = v64;
  v154 = *(a1 + 88);
  v155 = *(a1 + 104);
  v65 = *(a1 + 16);
  v148 = *a1;
  v149 = v65;
  v150 = *(a1 + 32);
  v151 = *(a1 + 48);
  v66 = v63(&v152, &v148);
  v67 = *a3;
  if (v66)
  {
    v68 = *(a1 + 128);
    v152 = *v62;
    v153 = v68;
    v154 = *(a1 + 144);
    v155 = *(a1 + 160);
    v69 = *(a1 + 72);
    v148 = *(a1 + 56);
    v149 = v69;
    v150 = *(a1 + 88);
    v151 = *(a1 + 104);
    if (v67(&v152, &v148))
    {
      v70 = *(a1 + 48);
      v72 = *(a1 + 16);
      v71 = *(a1 + 32);
      v73 = *a1;
      v74 = *(a1 + 128);
      *a1 = *v62;
      *(a1 + 16) = v74;
      *(a1 + 32) = *(a1 + 144);
      *(a1 + 48) = *(a1 + 160);
      *v62 = v73;
      *(a1 + 128) = v72;
    }

    else
    {
      v119 = *(a1 + 48);
      v121 = *(a1 + 16);
      v120 = *(a1 + 32);
      v122 = *a1;
      v123 = *(a1 + 72);
      *a1 = *(a1 + 56);
      *(a1 + 16) = v123;
      *(a1 + 32) = *(a1 + 88);
      *(a1 + 48) = *(a1 + 104);
      *(a1 + 56) = v122;
      *(a1 + 72) = v121;
      *(a1 + 88) = v120;
      *(a1 + 104) = v119;
      v124 = *a3;
      v125 = *(a1 + 128);
      v152 = *v62;
      v153 = v125;
      v154 = *(a1 + 144);
      v155 = *(a1 + 160);
      v126 = *(a1 + 72);
      v148 = *(a1 + 56);
      v149 = v126;
      v150 = *(a1 + 88);
      v151 = *(a1 + 104);
      if (!v124(&v152, &v148))
      {
        goto LABEL_33;
      }

      v70 = *(a1 + 104);
      v71 = *(a1 + 88);
      v127 = *(a1 + 56);
      v128 = *(a1 + 128);
      *(a1 + 56) = *v62;
      v129 = *(a1 + 72);
      *(a1 + 72) = v128;
      *(a1 + 88) = *(a1 + 144);
      *(a1 + 104) = *(a1 + 160);
      *v62 = v127;
      *(a1 + 128) = v129;
    }

    *(a1 + 144) = v71;
    *(a1 + 160) = v70;
  }

  else
  {
    v92 = *(a1 + 128);
    v152 = *v62;
    v153 = v92;
    v154 = *(a1 + 144);
    v155 = *(a1 + 160);
    v93 = *(a1 + 72);
    v148 = *(a1 + 56);
    v149 = v93;
    v150 = *(a1 + 88);
    v151 = *(a1 + 104);
    if (v67(&v152, &v148))
    {
      v94 = *(a1 + 104);
      v95 = *(a1 + 88);
      v96 = *(a1 + 56);
      v97 = *(a1 + 128);
      *(a1 + 56) = *v62;
      v98 = *(a1 + 72);
      *(a1 + 72) = v97;
      *(a1 + 88) = *(a1 + 144);
      v99 = *(a1 + 160);
      *(a1 + 104) = v99;
      *v62 = v96;
      *(a1 + 128) = v98;
      *(a1 + 144) = v95;
      *(a1 + 160) = v94;
      v100 = *a3;
      v101 = *(a1 + 72);
      v152 = *(a1 + 56);
      v153 = v101;
      v154 = *(a1 + 88);
      v155 = v99;
      v102 = *(a1 + 16);
      v148 = *a1;
      v149 = v102;
      v150 = *(a1 + 32);
      v151 = *(a1 + 48);
      if (v100(&v152, &v148))
      {
        v103 = *(a1 + 48);
        v105 = *(a1 + 16);
        v104 = *(a1 + 32);
        v106 = *a1;
        v107 = *(a1 + 72);
        *a1 = *(a1 + 56);
        *(a1 + 16) = v107;
        *(a1 + 32) = *(a1 + 88);
        *(a1 + 48) = *(a1 + 104);
        *(a1 + 56) = v106;
        *(a1 + 72) = v105;
        *(a1 + 88) = v104;
        *(a1 + 104) = v103;
      }
    }
  }

LABEL_33:
  v130 = a1 + 168;
  if (a1 + 168 == a2)
  {
    return 1;
  }

  v131 = 0;
  v132 = 0;
  while (1)
  {
    v133 = *a3;
    v134 = *(v130 + 16);
    v152 = *v130;
    v153 = v134;
    v154 = *(v130 + 32);
    v155 = *(v130 + 48);
    v135 = *v62;
    v136 = *(v62 + 16);
    v137 = *(v62 + 32);
    v151 = *(v62 + 48);
    v149 = v136;
    v150 = v137;
    v148 = v135;
    if (v133(&v152, &v148))
    {
      v138 = *(v130 + 16);
      v152 = *v130;
      v153 = v138;
      v154 = *(v130 + 32);
      v155 = *(v130 + 48);
      v139 = v131;
      while (1)
      {
        v140 = a1 + v139;
        v141 = *(a1 + v139 + 128);
        *(v140 + 168) = *(a1 + v139 + 112);
        *(v140 + 184) = v141;
        *(v140 + 200) = *(a1 + v139 + 144);
        *(v140 + 216) = *(a1 + v139 + 160);
        if (v139 == -112)
        {
          break;
        }

        v142 = *a3;
        v148 = v152;
        v149 = v153;
        v150 = v154;
        v151 = v155;
        v143 = *(v140 + 72);
        v146[0] = *(v140 + 56);
        v146[1] = v143;
        v146[2] = *(v140 + 88);
        v147 = *(v140 + 104);
        v139 -= 56;
        if (((v142)(&v148, v146) & 1) == 0)
        {
          v144 = a1 + v139 + 168;
          goto LABEL_41;
        }
      }

      v144 = a1;
LABEL_41:
      v145 = v153;
      *v144 = v152;
      *(v144 + 16) = v145;
      *(v144 + 32) = v154;
      *(v144 + 48) = v155;
      if (++v132 == 8)
      {
        return v130 + 56 == a2;
      }
    }

    v62 = v130;
    v131 += 56;
    v130 += 56;
    if (v130 == a2)
    {
      return 1;
    }
  }
}

uint64_t final_act<ImageAnalyzer::GenerateColorMaps(CGImage *)::$_1>::~final_act(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CGImageRelease(v2);
    }
  }

  return a1;
}

uint64_t final_act<ImageAnalyzer::GenerateColorMaps(CGImage *)::$_0>::~final_act(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    CGContextRelease(*a1);
  }

  return a1;
}

void AnalyzeImagePlease(CGContext *a1, AnalyzedImageColors *a2)
{
  v77 = 0uLL;
  v78 = 0.0;
  v79 = 0x3FF0000000000000uLL;
  v80 = 0uLL;
  v81 = 0x3FF0000000000000uLL;
  v82 = 0uLL;
  v83 = 0x3FF0000000000000uLL;
  v84 = 0uLL;
  v85 = 0x3FF0000000000000uLL;
  v86 = 0uLL;
  v87 = 0x3FF0000000000000uLL;
  v88 = 0uLL;
  v89 = 0x3FF0000000000000;
  v90 = 0uLL;
  *&v91 = 0;
  *(&v91 + 1) = 0x3FF0000000000000;
  v92 = 0uLL;
  *&v93 = 0;
  *(&v93 + 1) = 0x3FF0000000000000;
  v94 = 0uLL;
  *&v95 = 0;
  *(&v95 + 1) = 0x3FF0000000000000;
  v76[0] = 0uLL;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  BytesPerRow = CGBitmapContextGetBytesPerRow(a1);
  Width = CGBitmapContextGetWidth(a1);
  Height = CGBitmapContextGetHeight(a1);
  v7 = Height;
  if (Height != 22 || Width != 22)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    ImageAnalyzer::image_analyzer_error::image_analyzer_error(exception, 5, "ImageAnalyzer::GenerateColorMaps() - invalid height (%ud) or width (%ud) parameter", v53, v54, v55, v56, v57, v7);
    goto LABEL_19;
  }

  BitmapInfo = CGBitmapContextGetBitmapInfo(a1);
  Data = CGBitmapContextGetData(a1);
  if (!Data)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    ImageAnalyzer::image_analyzer_error::image_analyzer_error(exception, 3, "ImageAnalyzer::GenerateColorMaps() - Failed to obtain bitmap image data", v58, v59, v60, v61, v62, v68);
    goto LABEL_19;
  }

  v10 = malloc_type_calloc(0x1E4uLL, 0x28uLL, 0x10000400A747E1EuLL);
  v70 = a2;
  if (!v10)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    ImageAnalyzer::image_analyzer_error::image_analyzer_error(exception, 1, "ImageAnalyzer::getHSVMap() - failed to allocate memory for imageHSVMap.", v63, v64, v65, v66, v67, v68);
LABEL_19:
  }

  v13 = BitmapInfo & 0x3000;
  v14 = *(&v99 + 1);
  v69 = v10;
  v15 = (v10 + 16);
  v16 = 1;
  v17 = vdupq_lane_s64(0x406FE00000000000, 0);
  v71 = v17.i64[1];
  do
  {
    v18 = 0;
    v19 = &Data[v16 * BytesPerRow];
    v20 = v15;
    do
    {
      v21 = &v19[v18];
      v22 = &v19[v18 + 4];
      if (v13)
      {
        v23 = 5;
      }

      else
      {
        v23 = 6;
      }

      if (v13)
      {
        v24 = 6;
      }

      else
      {
        v22 = &v19[v18 + 7];
        v24 = 5;
      }

      LOBYTE(v11) = v21[v24];
      *&v25 = *&v11;
      v26.n128_f64[0] = *&v25 / 255.0;
      LOBYTE(v25) = v21[v23];
      LOBYTE(v12) = *v22;
      v26.n128_f64[1] = v25 / 255.0;
      v72 = v26;
      v74 = v12 / 255.0;
      *(&v27 + 1) = v17.i64[1];
      *&v27 = v74;
      *&v100.var0 = v26;
      *&v100.var2 = v27;
      HSVColor = ITColor::GetHSVColor(&v100);
      v30 = v29;
      v32 = v31;
      ITColor::GetLuminance(v33, v72, v74);
      v17.i64[1] = v71;
      *(v20 - 2) = HSVColor;
      *(v20 - 1) = v30;
      *v20 = v32;
      v20[1] = v11;
      v20[2] = 255.0;
      v14 = v11 + v14;
      *(&v99 + 1) = v14;
      v18 += 4;
      v20 += 5;
    }

    while (v18 != 80);
    ++v16;
    v15 += 100;
  }

  while (v16 != 21);
  *(&v99 + 1) = v14 / 400.0;
  v76[0].n128_u64[0] = v69;
  ImageAnalyzer::QuantizeColorMaps(v76);
  v34 = v70;
  ImageAnalyzer::PickBackgroundColor(v76);
  ImageAnalyzer::PickTextColors(v76);
  ImageAnalyzer::DoPostImageAnalysis(v76, v35, v36);
  v37 = v78;
  v38 = v77;
  *&v70->var0.var0 = v77;
  v70->var0.var2 = v37;
  *&v70->var0.var3 = v79;
  *&v70->var1.var1 = v80;
  *&v70->var1.var3 = v81;
  *&v70->var2.var1 = v82;
  *&v70->var2.var3 = v83;
  *&v70->var3.var1 = v84;
  *&v70->var3.var3 = v85;
  *&v70->var4.var1 = v86;
  v39 = v89;
  *&v70->var4.var3 = v87;
  *&v70->var5.var1 = v88;
  *&v70->var5.var3 = v39;
  v40 = v91;
  *&v70->var7.var0 = v90;
  *&v70->var7.var2 = v40;
  v41 = v93;
  *&v70->var6.var0 = v92;
  *&v70->var6.var2 = v41;
  v42 = v95;
  *&v70->var8.var0 = v94;
  *&v70->var8.var2 = v42;
  v70->var10 = 1;
  ITColor::GetLuminance(v43, v38, v37);
  v75 = v44;
  ITColor::GetLuminance(v45, v34[2], v34[3].n128_f64[0]);
  v73 = v46;
  ITColor::GetLuminance(v47, v34[4], v34[5].n128_f64[0]);
  v48 = *&v99;
  *&v49.f64[1] = v99;
  v50.f64[0] = v75;
  v50.f64[1] = v73;
  v51 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vcgtq_f64(vdupq_n_s64(0x3FC70A3D80000000uLL), v50), vcgtq_f64(xmmword_1AC881BF0, v49))));
  *&v49.f64[0] = vmovn_s64(vcgtq_f64(v49, xmmword_1AC881BF0));
  v51.i16[3] = vuzp1_s16(*&v49, *&v49).i16[3];
  *&v49.f64[0] = vand_s8(v51, 0x1000100010001);
  *&v70->var11 = vuzp1_s8(*&v49.f64[0], *&v49.f64[0]).u32[0];
  v70->var9 = v48;
  ImageAnalyzer::~ImageAnalyzer(v76);
}

void sub_1AC8310F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  __cxa_free_exception(v21);
  ImageAnalyzer::~ImageAnalyzer(&a21);
  _Unwind_Resume(a1);
}

void sub_1AC831F34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_1AC833B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AC8342E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  _Block_object_dispose(&a16, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AC834C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id MSVCryptoDigestForString(void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [a1 dataUsingEncoding:4];
  v4 = v3;
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    CC_SHA1([v3 bytes], objc_msgSend(v3, "length"), md);
    __sprintf_chk(v9, 0, 0x29uLL, "%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", md[0], md[1], md[2], md[3], md[4], md[5], md[6], md[7], md[8], md[9], md[10], md[11], md[12], md[13], md[14], md[15], md[16], md[17], md[18], md[19]);
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

uint64_t MSVProcessIsDebugging()
{
  v37 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  memset(v3, 0, sizeof(v3));
  LODWORD(v4) = 0;
  *v34 = 0xE00000001;
  v35 = 1;
  v36 = getpid();
  v2 = 648;
  if (sysctl(v34, 4u, v3, &v2, 0, 0))
  {
    __assert_rtn("MSVProcessIsDebugging", "MSVDebugUtilities.m", 64, "junk == 0");
  }

  v0 = *MEMORY[0x1E69E9840];
  return (v4 >> 11) & 1;
}

void _MSVEnumerateClassHierarchy(void *a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [a1 superclass];
  v6 = v5;
  if (a2)
  {
    v7[2](v7, a1, v5 == 0);
  }

  if (v6)
  {
    _MSVEnumerateClassHierarchy(v6, a2, v7);
  }

  if ((a2 & 1) == 0)
  {
    v7[2](v7, a1, v6 == 0);
  }
}

void _MSVEnumerateClassProtocols(objc_class *a1, void *a2)
{
  v3 = a2;
  outCount = 0;
  v4 = class_copyProtocolList(a1, &outCount);
  if (outCount)
  {
      ;
    }
  }

  free(v4);
}

id _MSVDescribeMethod(objc_method *a1, int a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = v3;
  if (a2)
  {
    v5 = @"+";
  }

  else
  {
    v5 = @"-";
  }

  [v3 appendString:v5];
  v6 = method_copyReturnType(a1);
  v7 = _MSVObjCTypeDescription(v6);
  [v4 appendFormat:@" (%@)", v7];

  free(v6);
  Name = method_getName(a1);
  v9 = NSStringFromSelector(Name);
  v10 = [v9 componentsSeparatedByString:@":"];
  v11 = [MEMORY[0x1E695DF70] array];
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = ___MSVMethodComponents_block_invoke;
  v32[3] = &unk_1E7981BB0;
  v35 = v36;
  v12 = v11;
  v33 = v12;
  v34 = @":";
  [v10 enumerateObjectsUsingBlock:v32];
  v13 = v34;
  v14 = v12;

  _Block_object_dispose(v36, 8);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v16)
  {
    v17 = 2;
    v18 = *v29;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v28 + 1) + 8 * i);
        [v4 appendFormat:@"%@", v20];
        if ([v20 hasSuffix:@":"])
        {
          v21 = method_copyArgumentType(a1, v17);
          v22 = _MSVObjCTypeDescription(v21);
          [v4 appendFormat:@"(%@)arg%ld", v22, v17 - 1];

          free(v21);
        }

        if (++v17 >= 3)
        {
          v23 = [v15 lastObject];
          v24 = v20 == v23;

          if (!v24)
          {
            [v4 appendString:@" "];
          }
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v16);
  }

  [v4 appendString:@";"];
  v25 = *MEMORY[0x1E69E9840];

  return v4;
}

__CFString *_MSVObjCTypeDescription(const char *a1)
{
  v2 = *a1;
  if (v2 > 0x5A)
  {
    if (*a1 <= 0x68u)
    {
      if (*a1 > 0x62u)
      {
        if (v2 == 99)
        {
          if (!a1[1])
          {
            v4 = @"char";
            goto LABEL_101;
          }
        }

        else if (v2 == 100)
        {
          if (!a1[1])
          {
            v4 = @"double";
            goto LABEL_101;
          }
        }

        else if (v2 == 102 && !a1[1])
        {
          v4 = @"float";
          goto LABEL_101;
        }

        goto LABEL_80;
      }

      if (v2 != 91)
      {
        if (v2 == 94)
        {
          if (a1[1] == 118 && !a1[2])
          {
            v4 = @"void *";
            goto LABEL_101;
          }

          if (strlen(a1) >= 2)
          {
            v8 = MEMORY[0x1E696AEC0];
            v9 = _MSVObjCTypeDescription(a1 + 1);
            v4 = [v8 stringWithFormat:@"%@ *", v9];

            goto LABEL_101;
          }
        }

        goto LABEL_80;
      }

      v10 = strlen(a1);
      if (v10 < 4)
      {
        goto LABEL_80;
      }

      v11 = 1;
      v12 = malloc_type_calloc(1uLL, v10 + 1, 0x246E4A8CuLL);
      do
      {
        v13 = v11;
        v14 = a1[v11++] - 48;
      }

      while (v14 < 0xA);
      v15 = v13 - 1;
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a1 + 1 length:v13 - 1 encoding:1];
      v17 = strlen(a1);
      v18 = strncpy(v12, &a1[v15 + 1], v17 - v15 - 2);
      v19 = _MSVObjCTypeDescription(v18);
      free(v12);
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%@]", v19, v16];

      goto LABEL_101;
    }

    if (*a1 <= 0x72u)
    {
      if (v2 == 105)
      {
        if (!a1[1])
        {
          v4 = @"int";
          goto LABEL_101;
        }
      }

      else if (v2 == 113 && !a1[1])
      {
        v4 = @"long";
        goto LABEL_101;
      }

      goto LABEL_80;
    }

    if (v2 == 115)
    {
      if (!a1[1])
      {
        v4 = @"short";
        goto LABEL_101;
      }

      goto LABEL_80;
    }

    if (v2 == 118)
    {
      if (!a1[1])
      {
        v4 = @"void";
        goto LABEL_101;
      }

      goto LABEL_80;
    }

    if (v2 != 123)
    {
      goto LABEL_80;
    }

LABEL_32:
    if (strlen(a1) >= 4)
    {
      v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a1 + 1 length:strlen(a1) - 2 encoding:1];
      v5 = [v3 componentsSeparatedByString:@"="];
      if ([v5 count] < 2)
      {
        v4 = v3;
      }

      else
      {
        v6 = [v5 objectAtIndex:0];
        if (*a1 == 123)
        {
          v7 = @"struct";
        }

        else
        {
          v7 = @"union";
        }

        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v7, v6];
      }

      goto LABEL_100;
    }

    goto LABEL_80;
  }

  if (*a1 > 0x41u)
  {
    if (*a1 <= 0x48u)
    {
      if (v2 == 66)
      {
        if (!a1[1])
        {
          v4 = @"BOOL";
          goto LABEL_101;
        }
      }

      else if (v2 == 67 && !a1[1])
      {
        v4 = @"unsigned char";
        goto LABEL_101;
      }
    }

    else if (v2 == 73)
    {
      if (!a1[1])
      {
        v4 = @"unsigned int";
        goto LABEL_101;
      }
    }

    else if (v2 == 81)
    {
      if (!a1[1])
      {
        v4 = @"unsigned long";
        goto LABEL_101;
      }
    }

    else if (v2 == 83 && !a1[1])
    {
      v4 = @"unsigned short";
      goto LABEL_101;
    }

    goto LABEL_80;
  }

  if (*a1 <= 0x29u)
  {
    if (v2 == 35)
    {
      if (!a1[1])
      {
        v4 = @"Class";
        goto LABEL_101;
      }

      goto LABEL_80;
    }

    if (v2 != 40)
    {
      goto LABEL_80;
    }

    goto LABEL_32;
  }

  if (v2 == 42)
  {
    if (!a1[1])
    {
      v4 = @"char *";
      goto LABEL_101;
    }

    goto LABEL_80;
  }

  if (v2 == 58)
  {
    if (!a1[1])
    {
      v4 = @"SEL";
      goto LABEL_101;
    }

    goto LABEL_80;
  }

  if (v2 != 64)
  {
    goto LABEL_80;
  }

  if (a1[1])
  {
    if (a1[1] != 63 || a1[2])
    {
      if (strlen(a1) >= 4)
      {
        v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a1 + 2 length:strlen(a1) - 3 encoding:1];
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ *", v3, v22];
        v4 = LABEL_99:;
LABEL_100:

        goto LABEL_101;
      }

LABEL_80:
      if (strlen(a1) >= 2)
      {
        if (v2 <= 85)
        {
          switch(v2)
          {
            case 'N':
              v20 = @"inout";
              goto LABEL_98;
            case 'O':
              v20 = @"bycopy";
              goto LABEL_98;
            case 'R':
              v20 = @"byref";
              goto LABEL_98;
          }
        }

        else if (v2 > 110)
        {
          if (v2 == 111)
          {
            v20 = @"out";
            goto LABEL_98;
          }

          if (v2 == 114)
          {
            v20 = @"const";
            goto LABEL_98;
          }
        }

        else
        {
          if (v2 == 86)
          {
            v20 = @"oneway";
            goto LABEL_98;
          }

          if (v2 == 110)
          {
            v20 = @"in";
LABEL_98:
            v3 = _MSVObjCTypeDescription(a1 + 1);
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v20, v3];
            goto LABEL_99;
          }
        }
      }

      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", a1];
      goto LABEL_101;
    }

    v4 = @"^";
  }

  else
  {
    v4 = @"id";
  }

LABEL_101:

  return v4;
}