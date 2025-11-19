@interface DDRTaskResetBiometricIdentities
- (void)_resetIdentities;
@end

@implementation DDRTaskResetBiometricIdentities

- (void)_resetIdentities
{
  v2 = [NSClassFromString(@"BiometricKit") manager];
  v3 = [v2 identities:0];
  v4 = [v3 copy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v16;
    *&v7 = 67109120;
    v14 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [v2 removeIdentity:{*(*(&v15 + 1) + 8 * v10), v14, v15}];
        if (v11)
        {
          v12 = v11;
          v13 = DDRLogForCategory(0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = v14;
            v20 = v12;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error %d removing identity", buf, 8u);
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v8);
  }
}

@end