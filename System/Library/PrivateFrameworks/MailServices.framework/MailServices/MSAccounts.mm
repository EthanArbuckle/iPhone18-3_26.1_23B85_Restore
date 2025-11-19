@interface MSAccounts
+ (BOOL)deleteAccountsWithUniqueIdentifiers:(id)a3 error:(id *)a4;
+ (BOOL)hasActiveAccounts;
+ (id)attachmentCapabilities;
+ (id)customSignatureForSendingEmailAddress:(id)a3;
+ (void)mailboxListingForAccountWithUniqueIdentifier:(id)a3 keys:(id)a4 completionBlock:(id)a5;
- (void)_simulateServicesMethod:(id)a3 arguments:(id)a4 callback:(id)a5;
@end

@implementation MSAccounts

+ (BOOL)hasActiveAccounts
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = objc_alloc_init(MSAccounts);
  [(MSMailDefaultService *)v2 setShouldLaunchMobileMail:1];
  v3 = dispatch_semaphore_create(0);
  v4 = [MEMORY[0x1E695DEC8] array];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__MSAccounts_hasActiveAccounts__block_invoke;
  v7[3] = &unk_1E855E970;
  v9 = &v10;
  v5 = v3;
  v8 = v5;
  [(MSAccounts *)v2 _listAccountKeys:v4 originatingBundleID:0 sourceAccountManagement:1 handler:v7];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(v3) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v3;
}

void __31__MSAccounts_hasActiveAccounts__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (!v5 && [v6 count])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __83__MSAccounts__listAccountKeys_originatingBundleID_sourceAccountManagement_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = [a2 objectForKey:@"accounts"];
  (*(*(a1 + 32) + 16))();
}

+ (id)customSignatureForSendingEmailAddress:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v4 = objc_alloc_init(MSAccounts);
  [(MSMailDefaultService *)v4 setShouldLaunchMobileMail:1];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_1F541BFA8;
  }

  v21 = @"sendingEmailAddress";
  v22[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v7 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__MSAccounts_customSignatureForSendingEmailAddress___block_invoke;
  v12[3] = &unk_1E855E9C0;
  v13 = v7;
  v14 = &v15;
  v8 = v7;
  [(MSService *)v4 _callServicesMethod:@"CustomSignature" arguments:v6 callback:v12];
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

void __52__MSAccounts_customSignatureForSendingEmailAddress___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectForKey:@"signature"];
  v4 = [v3 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (BOOL)deleteAccountsWithUniqueIdentifiers:(id)a3 error:(id *)a4
{
  v5 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v6 = objc_alloc_init(MSAccounts);
  [(MSMailDefaultService *)v6 setShouldLaunchMobileMail:1];
  v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v5, @"accountUniqueIdentifiers", 0}];
  v8 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__MSAccounts_deleteAccountsWithUniqueIdentifiers_error___block_invoke;
  v12[3] = &unk_1E855E9E8;
  v15 = &v16;
  v13 = v8;
  v14 = &v22;
  v9 = v8;
  [(MSService *)v6 _callServicesMethod:@"RemoveAccounts" arguments:v7 callback:v12];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v10 = *(v23 + 24);
  if (a4 && (v23[3] & 1) == 0)
  {
    *a4 = v17[5];
    v10 = *(v23 + 24);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10 & 1;
}

void __56__MSAccounts_deleteAccountsWithUniqueIdentifiers_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v10 objectForKey:@"success"];
  *(*(*(a1 + 40) + 8) + 24) = [v6 BOOLValue];

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)mailboxListingForAccountWithUniqueIdentifier:(id)a3 keys:(id)a4 completionBlock:(id)a5
{
  v23[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MSAccounts);
  [(MSMailDefaultService *)v10 setShouldLaunchMobileMail:1];
  v11 = objc_autoreleasePoolPush();
  v21 = v7;
  v22[0] = @"accountUniqueIdentifiers";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v22[1] = @"keys";
  v23[0] = v12;
  v23[1] = v8;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];

  v14 = dispatch_semaphore_create(0);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __80__MSAccounts_mailboxListingForAccountWithUniqueIdentifier_keys_completionBlock___block_invoke;
  v18[3] = &unk_1E855EA10;
  v15 = v9;
  v19 = v14;
  v20 = v15;
  v16 = v14;
  [(MSService *)v10 _callServicesMethod:@"ListMailboxes" arguments:v13 callback:v18];
  dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);

  objc_autoreleasePoolPop(v11);
  v17 = *MEMORY[0x1E69E9840];
}

void __80__MSAccounts_mailboxListingForAccountWithUniqueIdentifier_keys_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = [a2 objectForKey:@"mailboxes"];
  (*(*(a1 + 40) + 16))();
  dispatch_semaphore_signal(*(a1 + 32));
}

void __69__MSAccounts_setPushStateForMailboxWithPath_account_pushState_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v9 objectForKey:@"success"];
  *(*(*(a1 + 32) + 8) + 24) = [v6 BOOLValue];

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
}

+ (id)attachmentCapabilities
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v2 = objc_alloc_init(MSAccounts);
  [(MSMailDefaultService *)v2 setShouldLaunchMobileMail:1];
  v3 = objc_autoreleasePoolPush();
  v4 = dispatch_semaphore_create(0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__MSAccounts_attachmentCapabilities__block_invoke;
  v8[3] = &unk_1E855E9C0;
  v9 = v4;
  v10 = &v11;
  v5 = v4;
  [(MSService *)v2 _callServicesMethod:@"AttachmentCapabilities" arguments:MEMORY[0x1E695E0F8] callback:v8];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

  objc_autoreleasePoolPop(v3);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __36__MSAccounts_attachmentCapabilities__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 objectForKeyedSubscript:@"capabilities"];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_simulateServicesMethod:(id)a3 arguments:(id)a4 callback:(id)a5
{
  v22[16] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 isEqualToString:@"ListAccounts"])
  {
    v21[0] = @"uniqueID";
    v21[1] = @"fullUserName";
    v22[0] = @"6ADE0CAF-7F5B-4251-A792-71ECB04D5617";
    v22[1] = @"Example User";
    v21[2] = @"username";
    v21[3] = @"emailAddresses";
    v22[2] = @"example";
    v22[3] = &unk_1F541F1B8;
    v21[4] = @"emailAddressAndAliases";
    v21[5] = @"fromEmailAddresses";
    v22[4] = &unk_1F541F1D0;
    v22[5] = &unk_1F541F1E8;
    v21[6] = @"fromEmailAddressesIncludingDisabled";
    v21[7] = @"defaultAddress";
    v22[6] = &unk_1F541F200;
    v22[7] = &unk_1F541F218;
    v21[8] = @"isDefaultSendingAccount";
    v21[9] = @"isActive";
    v22[8] = &unk_1F541F230;
    v22[9] = &unk_1F541F230;
    v21[10] = @"restrictsRepliesAndForwards";
    v21[11] = @"sendingRestricted";
    v22[10] = &unk_1F541F248;
    v22[11] = &unk_1F541F248;
    v21[12] = @"supportsThreadOperations";
    v21[13] = @"supportsMailDrop";
    v22[12] = &unk_1F541F230;
    v22[13] = &unk_1F541F230;
    v21[14] = @"isManaged";
    v21[15] = @"attachmentCapabilities";
    v22[14] = &unk_1F541F248;
    v22[15] = MEMORY[0x1E695E0F8];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:16];
    v18 = v11;
    v19 = @"accounts";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v20 = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];

    v10[2](v10, v13, 0);
  }

  else
  {
    if (![v8 isEqualToString:@"CustomSignature"])
    {
      v15.receiver = self;
      v15.super_class = MSAccounts;
      [(MSService *)&v15 _simulateServicesMethod:v8 arguments:v9 callback:v10];
      goto LABEL_7;
    }

    v16 = @"signature";
    v17 = @"Sent from my iPhone Simulator";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v10[2](v10, v11, 0);
  }

LABEL_7:
  v14 = *MEMORY[0x1E69E9840];
}

@end