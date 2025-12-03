@interface IMUserVaultTransaction
- (IMUserVaultTransaction)init;
- (NSURL)url;
@end

@implementation IMUserVaultTransaction

- (IMUserVaultTransaction)init
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1AC570AA0](@"UVTransaction", @"UserVault");
  if ([(objc_class *)v3 instancesRespondToSelector:sel_initWithResource_error_])
  {
    v11 = 0;
    v4 = [[v3 alloc] initWithResource:@"com.apple.messages" error:&v11];
    v5 = v11;
    if (v4)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_13;
      }

      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v13 = v4;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Initialized a new UVTransaction: %@", buf, 0xCu);
      }
    }

    else
    {
      v6 = IMLogHandleForCategory("IMUserVaultTransaction");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C0FE8(v5, v6);
      }
    }
  }

  else
  {
    v5 = IMLogHandleForCategory("IMUserVaultTransaction");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C0FA4(v5);
    }

    v4 = 0;
  }

LABEL_13:

  v10.receiver = self;
  v10.super_class = IMUserVaultTransaction;
  v7 = [(IMUserVaultTransaction *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_uvTransaction, v4);
  }

  return v8;
}

- (NSURL)url
{
  uvTransaction = [(IMUserVaultTransaction *)self uvTransaction];
  v4 = objc_opt_respondsToSelector();

  uvTransaction2 = [(IMUserVaultTransaction *)self uvTransaction];
  v6 = uvTransaction2;
  if (v4)
  {
    v7 = [uvTransaction2 url];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {

    if (v6)
    {
      v8 = IMLogHandleForCategory("IMUserVaultTransaction");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C1060(v8);
      }

      v6 = 0;
    }
  }

  return v6;
}

@end