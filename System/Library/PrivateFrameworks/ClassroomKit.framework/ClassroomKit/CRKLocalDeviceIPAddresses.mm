@interface CRKLocalDeviceIPAddresses
+ (id)makeIPAddresses;
+ (void)makeIPAddresses;
- (BOOL)containsIPAddress:(id)a3;
- (CRKLocalDeviceIPAddresses)init;
@end

@implementation CRKLocalDeviceIPAddresses

- (CRKLocalDeviceIPAddresses)init
{
  v6.receiver = self;
  v6.super_class = CRKLocalDeviceIPAddresses;
  v2 = [(CRKLocalDeviceIPAddresses *)&v6 init];
  if (v2)
  {
    v3 = [objc_opt_class() makeIPAddresses];
    IPAddresses = v2->_IPAddresses;
    v2->_IPAddresses = v3;
  }

  return v2;
}

- (BOOL)containsIPAddress:(id)a3
{
  v4 = a3;
  v5 = [(CRKLocalDeviceIPAddresses *)self IPAddresses];
  v6 = [v5 containsObject:v4];

  return v6;
}

+ (id)makeIPAddresses
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v3 = [CRKIfaddrsEnumerator internetInterfaceEnumeratorWithError:&v19];
  v4 = v19;
  if (v3)
  {
    v5 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v15 + 1) + 8 * i) IPAddress];
          if (v11)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v8);
    }

    v12 = [v5 copy];
  }

  else
  {
    if (_CRKLogGeneral_onceToken_45 != -1)
    {
      +[CRKLocalDeviceIPAddresses makeIPAddresses];
    }

    v13 = _CRKLogGeneral_logObj_45;
    if (os_log_type_enabled(_CRKLogGeneral_logObj_45, OS_LOG_TYPE_ERROR))
    {
      +[(CRKLocalDeviceIPAddresses *)v13];
    }

    v12 = objc_opt_new();
  }

  return v12;
}

+ (void)makeIPAddresses
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = objc_opt_class();
  v6 = [a3 verboseDescription];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_243550000, v4, OS_LOG_TYPE_ERROR, "Failed to create ifaddrs enumerator in %{public}@: %{public}@", &v7, 0x16u);
}

@end