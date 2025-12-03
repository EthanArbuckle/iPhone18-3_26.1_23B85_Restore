@interface PKSafariCredentialsUtilities
+ (void)_retrieveSafariCredentials:(id)credentials;
+ (void)hasSafariCredentials:(id)credentials;
+ (void)retrieveSafariCredentials:(id)credentials;
@end

@implementation PKSafariCredentialsUtilities

+ (void)hasSafariCredentials:(id)credentials
{
  credentialsCopy = credentials;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__PKSafariCredentialsUtilities_hasSafariCredentials___block_invoke;
  v5[3] = &unk_1E79D9338;
  v6 = credentialsCopy;
  v4 = credentialsCopy;
  [PKSafariCredentialsUtilities _retrieveSafariCredentials:v5];
}

void __53__PKSafariCredentialsUtilities_hasSafariCredentials___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  if (a4)
  {
    [a4 count];
  }

  (*(*(a1 + 32) + 16))();
}

+ (void)retrieveSafariCredentials:(id)credentials
{
  credentialsCopy = credentials;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__PKSafariCredentialsUtilities_retrieveSafariCredentials___block_invoke;
  v5[3] = &unk_1E79D9338;
  v6 = credentialsCopy;
  v4 = credentialsCopy;
  [PKSafariCredentialsUtilities _retrieveSafariCredentials:v5];
}

void __58__PKSafariCredentialsUtilities_retrieveSafariCredentials___block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a2)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v6;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[PKFPANCredential alloc] initWithSafariDictionary:*(*(&v22 + 1) + 8 * i)];
          v14 = v13;
          if (v13 && [(PKFPANCredential *)v13 canCheckEligibility])
          {
            [v7 addObject:v14];
          }

          else
          {
            v15 = PKLogFacilityTypeGetObject(7uLL);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Not adding Safari credential: Either missing required fields, or card has expired, so can't check eligibility", buf, 2u);
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v10);
    }

    v16 = [v7 array];
    v17 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v7 count];
      v19 = [v8 count];
      v20 = [v7 count];
      *buf = 134218240;
      v27 = v18;
      v28 = 2048;
      v29 = v19 - v20;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Got %lu Safari Cards, after filtering out %lu duplicates/invalid.", buf, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
    v6 = v21;
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

+ (void)_retrieveSafariCredentials:(id)credentials
{
  credentialsCopy = credentials;
  if (credentialsCopy)
  {
    v4 = dispatch_get_global_queue(0, 0);
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__43;
    v25 = __Block_byref_object_dispose__43;
    v26 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v4);
    v5 = v22[5];
    v6 = dispatch_time(0, 3000000000);
    dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v20 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__PKSafariCredentialsUtilities__retrieveSafariCredentials___block_invoke;
    aBlock[3] = &unk_1E79D9360;
    v17 = &v21;
    v18 = v19;
    v16 = credentialsCopy;
    v7 = _Block_copy(aBlock);
    v8 = v22[5];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __59__PKSafariCredentialsUtilities__retrieveSafariCredentials___block_invoke_2;
    handler[3] = &unk_1E79C4428;
    v9 = v7;
    v14 = v9;
    dispatch_source_set_event_handler(v8, handler);
    dispatch_resume(v22[5]);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__PKSafariCredentialsUtilities__retrieveSafariCredentials___block_invoke_17;
    block[3] = &unk_1E79C4428;
    v12 = v9;
    v10 = v9;
    dispatch_async(v4, block);

    _Block_object_dispose(v19, 8);
    _Block_object_dispose(&v21, 8);
  }
}

void __59__PKSafariCredentialsUtilities__retrieveSafariCredentials___block_invoke(void *a1, uint64_t a2, void *a3, void *a4)
{
  v13 = a3;
  v7 = a4;
  v8 = *(*(a1[5] + 8) + 40);
  if (v8)
  {
    dispatch_source_cancel(v8);
    v9 = *(a1[5] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }

  v11 = *(a1[6] + 8);
  if ((*(v11 + 24) & 1) == 0)
  {
    *(v11 + 24) = 1;
    v12 = a1[4];
    if (v12)
    {
      (*(v12 + 16))(v12, a2, v13, v7);
    }
  }
}

uint64_t __59__PKSafariCredentialsUtilities__retrieveSafariCredentials___block_invoke_2(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Timeout occured for [PKPaymentProvisioningController retrieveSafariCredentials:]", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __59__PKSafariCredentialsUtilities__retrieveSafariCredentials___block_invoke_17(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v2 = [getSFSafariCreditCardStoreClass[0]() savedCreditCardsWithError:&v6];
  v3 = v6;
  if (v2)
  {
    v4 = *(*(a1 + 32) + 16);
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Couldn't get credentials from Safari: %@", buf, 0xCu);
    }

    v4 = *(*(a1 + 32) + 16);
  }

  v4();
}

@end