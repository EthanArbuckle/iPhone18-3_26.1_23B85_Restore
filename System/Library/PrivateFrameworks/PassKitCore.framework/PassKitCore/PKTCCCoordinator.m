@interface PKTCCCoordinator
+ (BOOL)setAuthorizationForCapability:(int64_t)a3 granted:(BOOL)a4 bundleIdentifier:(id)a5;
+ (id)allAuthorizations;
+ (int64_t)authorizationStatusForCapability:(int64_t)a3;
+ (int64_t)authorizationStatusForCapability:(int64_t)a3 auditToken:(id *)a4;
+ (int64_t)authorizationStatusForCapability:(int64_t)a3 bundleIdentifier:(id)a4;
+ (void)requestAuthorizationForCapability:(int64_t)a3 completion:(id)a4;
@end

@implementation PKTCCCoordinator

+ (void)requestAuthorizationForCapability:(int64_t)a3 completion:(id)a4
{
  v5 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__PKTCCCoordinator_requestAuthorizationForCapability_completion___block_invoke;
  aBlock[3] = &unk_1E79DBDA0;
  v6 = v5;
  v10 = v6;
  v7 = _Block_copy(aBlock);
  if (PKTCCServiceForCapability(a3) && !TCCAccessRestricted())
  {
    v8 = v7;
    TCCAccessRequest();
  }

  else
  {
    (*(v7 + 2))(v7, -1);
  }
}

uint64_t __65__PKTCCCoordinator_requestAuthorizationForCapability_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (int64_t)authorizationStatusForCapability:(int64_t)a3
{
  if (!PKTCCServiceForCapability(a3) || TCCAccessRestricted())
  {
    return -1;
  }

  v4 = TCCAccessPreflight();
  if (v4 == 2)
  {
    return -1;
  }

  else
  {
    return v4 != 1;
  }
}

+ (int64_t)authorizationStatusForCapability:(int64_t)a3 auditToken:(id *)a4
{
  if (!PKTCCServiceForCapability(a3) || TCCAccessRestricted())
  {
    return -1;
  }

  v5 = TCCAccessPreflightWithAuditToken();
  if (v5 == 2)
  {
    return -1;
  }

  else
  {
    return v5 != 1;
  }
}

+ (int64_t)authorizationStatusForCapability:(int64_t)a3 bundleIdentifier:(id)a4
{
  v5 = a4;
  if (!PKTCCServiceForCapability(a3) || (v6 = TCCAccessCopyInformation(), Count = CFArrayGetCount(v6), Count < 1))
  {
LABEL_14:
    v17 = -1;
    goto LABEL_15;
  }

  v8 = Count;
  v9 = 0;
  v10 = MEMORY[0x1E69D54E0];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
    Value = CFDictionaryGetValue(ValueAtIndex, *v10);
    if (!Value)
    {
      v13 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v20[0] = 0;
        _os_log_error_impl(&dword_1AD337000, v13, OS_LOG_TYPE_ERROR, "Missing bundle in TCC dict", v20, 2u);
      }

      goto LABEL_13;
    }

    v13 = CFBundleGetIdentifier(Value);
    v14 = v5;
    v15 = v14;
    if (v13 == v14)
    {
      break;
    }

    if (v5 && v13)
    {
      v16 = [v13 isEqualToString:v14];

      if (v16)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

LABEL_13:

    if (v8 == ++v9)
    {
      goto LABEL_14;
    }
  }

LABEL_17:
  v19 = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E69D54E8]);
  if (CFEqual(v19, *MEMORY[0x1E695E4D0]))
  {
    v17 = 1;
  }

  else
  {
    v17 = 2 * (TCCAccessRestricted() != 0);
  }

LABEL_15:
  return v17;
}

+ (id)allAuthorizations
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (*MEMORY[0x1E69D55B8])
  {
    v3 = TCCAccessCopyInformation();
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      v7 = MEMORY[0x1E69D54E0];
      v8 = *MEMORY[0x1E695E4D0];
      v9 = MEMORY[0x1E69D54E8];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
        Value = CFDictionaryGetValue(ValueAtIndex, *v7);
        if (Value)
        {
          v12 = CFBundleGetIdentifier(Value);
          if (v12)
          {
            v13 = CFDictionaryGetValue(ValueAtIndex, *v9);
            v14 = [v2 objectForKey:v12];
            if (!v14)
            {
              v14 = [[PKAppAuthorizationInfo alloc] initWithBundleIdentifier:v12];
              [v2 setObject:v14 forKey:v12];
            }

            [(PKAppAuthorizationInfo *)v14 setAuthorizationStatus:CFEqual(v13 forCapability:v8) != 0, 0];
          }

          else
          {
            v14 = PKLogFacilityTypeGetObject(0);
            if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_ERROR))
            {
              *v17 = 0;
              _os_log_error_impl(&dword_1AD337000, &v14->super, OS_LOG_TYPE_ERROR, "Failed to get bundle identifier", v17, 2u);
            }
          }
        }

        else
        {
          v12 = PKLogFacilityTypeGetObject(0);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1AD337000, v12, OS_LOG_TYPE_ERROR, "Missing bundle in TCC dict", buf, 2u);
          }
        }

        ++v6;
      }

      while (v5 != v6);
    }

    v15 = [v2 allValues];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (BOOL)setAuthorizationForCapability:(int64_t)a3 granted:(BOOL)a4 bundleIdentifier:(id)a5
{
  v5 = a4;
  v18 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = PKTCCServiceForCapability(a3);
  if (v8)
  {
    v9 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      v12 = 134218498;
      v13 = a3;
      v14 = 2112;
      if (v5)
      {
        v10 = @"YES";
      }

      v15 = v7;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Setting %ld TCC for bundle %@ to %@", &v12, 0x20u);
    }

    TCCAccessSetForBundleId();
  }

  return v8 != 0;
}

@end