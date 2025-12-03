@interface PKInAppPaymentEntitlement
- (PKInAppPaymentEntitlement)initWithToken:(id *)token;
- (void)_probeEntitlementsWithToken:(id *)token;
@end

@implementation PKInAppPaymentEntitlement

- (PKInAppPaymentEntitlement)initWithToken:(id *)token
{
  v9.receiver = self;
  v9.super_class = PKInAppPaymentEntitlement;
  v4 = [(PKInAppPaymentEntitlement *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v6 = *&token->var0[4];
    v8[0] = *token->var0;
    v8[1] = v6;
    [(PKInAppPaymentEntitlement *)v4 _probeEntitlementsWithToken:v8];
  }

  return v5;
}

- (void)_probeEntitlementsWithToken:(id *)token
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E695E480];
  v5 = *&token->var0[4];
  *token.val = *token->var0;
  *&token.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(v4, &token);
  if (v6)
  {
    v7 = v6;
    error = 0;
    v8 = SecTaskCopyValueForEntitlement(v6, @"com.apple.private.in-app-payments", &error);
    v9 = error;
    if (error)
    {
      v10 = PKLogFacilityTypeGetObject(8uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        token.val[0] = 138412290;
        *&token.val[1] = v9;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Failed to get entitlements: %@", &token, 0xCu);
      }

      CFRelease(error);
    }

    if (v8)
    {
      v11 = PKLogFacilityTypeGetObject(8uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(token.val[0]) = 0;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Client has ignore merchant identifiers entitlement", &token, 2u);
      }

      v12 = CFGetTypeID(v8);
      v13 = v12 == CFBooleanGetTypeID() && CFBooleanGetValue(v8) != 0;
      self->_ignoreMerchantIdentifiers = v13;
      CFRelease(v8);
    }

    v14 = SecTaskCopyValueForEntitlement(v7, @"com.apple.developer.in-app-payments", &error);
    v15 = error;
    if (error)
    {
      v16 = PKLogFacilityTypeGetObject(8uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        token.val[0] = 138412290;
        *&token.val[1] = v15;
        _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Failed to get entitlements: %@", &token, 0xCu);
      }

      CFRelease(error);
    }

    if (v14)
    {
      v17 = CFGetTypeID(v14);
      if (v17 == CFArrayGetTypeID())
      {
        v18 = v14;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      v20 = PKLogFacilityTypeGetObject(8uLL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        token.val[0] = 138412290;
        *&token.val[1] = v19;
        _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "Client has merchant identifiers: %@", &token, 0xCu);
      }

      array = [MEMORY[0x1E695DF70] array];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v22 = v19;
      v23 = [v22 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v31;
        do
        {
          v26 = 0;
          do
          {
            if (*v31 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v30 + 1) + 8 * v26);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [array addObject:{v27, v30}];
            }

            ++v26;
          }

          while (v24 != v26);
          v24 = [v22 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v24);
      }

      CFRelease(v14);
      v28 = [array copy];
      merchantIdentifiers = self->_merchantIdentifiers;
      self->_merchantIdentifiers = v28;
    }

    CFRelease(v7);
  }
}

@end