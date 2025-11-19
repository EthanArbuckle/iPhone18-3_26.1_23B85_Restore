@interface MDMMAIDAuthenticator
- (BOOL)authenticateRequest:(id)a3 error:(id *)a4;
- (BOOL)prepareTask:(id)a3 error:(id *)a4;
- (MDMMAIDAuthenticator)initWithRMAccountID:(id)a3;
- (id)_appleIDContext;
@end

@implementation MDMMAIDAuthenticator

- (MDMMAIDAuthenticator)initWithRMAccountID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MDMMAIDAuthenticator;
  v6 = [(MDMMAIDAuthenticator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rmAccountID, a3);
  }

  return v7;
}

- (BOOL)authenticateRequest:(id)a3 error:(id *)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(MDMMAIDAuthenticator *)self rmAccountID];
  v7 = [MDMAccountUtilities maidPropertiesForRMAccountID:v6];

  v8 = MEMORY[0x277CBEB18];
  v9 = v7;
  v10 = [v8 arrayWithCapacity:{objc_msgSend(v9, "count")}];
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __sortKeysAndMakeCommaSeparatedString_block_invoke;
  v41 = &unk_2788570C0;
  v42 = v10;
  v11 = v10;
  [v9 enumerateKeysAndObjectsUsingBlock:buf];

  v12 = [v11 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
  v13 = [v12 componentsJoinedByString:{@", "}];

  [v5 setValue:v13 forHTTPHeaderField:*MEMORY[0x277D03340]];
  [v5 ak_addDeviceUDIDHeader];
  [v5 ak_addClientInfoHeader];
  [v5 ak_addDeviceSerialNumberHeader];
  v14 = [v9 objectForKeyedSubscript:*MEMORY[0x277D03370]];
  v15 = [v9 objectForKeyedSubscript:*MEMORY[0x277D03388]];
  v16 = v15;
  if (v14 && v15)
  {
    v17 = v15;
    if (coerceIntoString_onceToken != -1)
    {
      [MDMMAIDAuthenticator authenticateRequest:error:];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [v17 stringValue];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = [coerceIntoString_dateFormatter stringFromDate:v17];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v17 base64EncodedStringWithOptions:0];
          }

          else
          {
            [v17 description];
          }
          v18 = ;
        }
      }
    }

    v20 = v18;

    v21 = v14;
    if (coerceIntoString_onceToken != -1)
    {
      [MDMMAIDAuthenticator authenticateRequest:error:];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = [v21 stringValue];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = [coerceIntoString_dateFormatter stringFromDate:v21];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v21 base64EncodedStringWithOptions:0];
          }

          else
          {
            [v21 description];
          }
          v22 = ;
        }
      }
    }

    v23 = v22;

    [v5 ak_addAuthorizationHeaderWithServiceToken:v20 forAltDSID:v23];
  }

  else
  {
    v19 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = v14;
      *&buf[12] = 2114;
      *&buf[14] = v16;
      _os_log_impl(&dword_22E997000, v19, OS_LOG_TYPE_ERROR, "Missing short-lived token details for RM account: altDSID: %{public}@, token: %{public}@", buf, 0x16u);
    }
  }

  v24 = [v9 objectForKeyedSubscript:*MEMORY[0x277D03378]];
  v25 = [v9 objectForKeyedSubscript:*MEMORY[0x277D03380]];
  v26 = v25;
  if (v24 && v25)
  {
    v39 = MEMORY[0x277CCACA8];
    v27 = v24;
    if (coerceIntoString_onceToken != -1)
    {
      [MDMMAIDAuthenticator authenticateRequest:error:];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = [v27 stringValue];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = [coerceIntoString_dateFormatter stringFromDate:v27];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v27 base64EncodedStringWithOptions:0];
          }

          else
          {
            [v27 description];
          }
          v28 = ;
        }
      }
    }

    v30 = v28;

    v31 = v26;
    if (coerceIntoString_onceToken != -1)
    {
      [MDMMAIDAuthenticator authenticateRequest:error:];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v31;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = [v31 stringValue];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = [coerceIntoString_dateFormatter stringFromDate:v31];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v31 base64EncodedStringWithOptions:0];
          }

          else
          {
            [v31 description];
          }
          v32 = ;
        }
      }
    }

    v33 = v32;

    v34 = [v39 stringWithFormat:@"%@:%@", v30, v33];

    v35 = [v34 dataUsingEncoding:4];
    v36 = [v35 base64EncodedStringWithOptions:0];
    [v5 setValue:v36 forHTTPHeaderField:*MEMORY[0x277D03360]];
  }

  else
  {
    v29 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = v24;
      *&buf[12] = 2114;
      *&buf[14] = v26;
      _os_log_impl(&dword_22E997000, v29, OS_LOG_TYPE_ERROR, "Missing long-lived token details for RM account: dsid: %{public}@, token: %{public}@", buf, 0x16u);
    }
  }

  v37 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)prepareTask:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    v6 = [(MDMMAIDAuthenticator *)self _appleIDContext];
    [v5 _setAppleIDContext:v6];
  }

  return 1;
}

- (id)_appleIDContext
{
  if (_appleIDContext_onceToken != -1)
  {
    [MDMMAIDAuthenticator _appleIDContext];
  }

  v3 = _appleIDContext_lock;
  objc_sync_enter(v3);
  v4 = objc_getAssociatedObject(self, @"AssociatedKeyAppleIDContext");
  if (!v4)
  {
    DMCAKAppleIDSession();
    v4 = objc_opt_new();
    objc_setAssociatedObject(self, @"AssociatedKeyAppleIDContext", v4, 0x301);
  }

  objc_sync_exit(v3);

  return v4;
}

uint64_t __39__MDMMAIDAuthenticator__appleIDContext__block_invoke()
{
  _appleIDContext_lock = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

@end