@interface CRKASMPreemptiveIDSMessagingRosterProvider
+ (id)appleIDsFromData:(id)a3 error:(id *)a4;
+ (id)observedKeyPaths;
+ (id)trustedUserAppleIDsFromRoster:(id)a3;
- (BOOL)persistAppleIDs:(id)a3 withError:(id *)a4;
- (CRKASMPreemptiveIDSMessagingRosterProvider)initWithRosterProvider:(id)a3 IDSPrimitives:(id)a4 IDSAddressTranslator:(id)a5 dataStore:(id)a6;
- (id)fetchMessagedAppleIDsWitherror:(id *)a3;
- (void)beginObservingRoster;
- (void)dealloc;
- (void)endObservingRoster;
- (void)messageAppleID:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)rosterDidChange;
@end

@implementation CRKASMPreemptiveIDSMessagingRosterProvider

- (void)dealloc
{
  [(CRKASMPreemptiveIDSMessagingRosterProvider *)self endObservingRoster];
  v3.receiver = self;
  v3.super_class = CRKASMPreemptiveIDSMessagingRosterProvider;
  [(CRKASMPreemptiveIDSMessagingRosterProvider *)&v3 dealloc];
}

- (CRKASMPreemptiveIDSMessagingRosterProvider)initWithRosterProvider:(id)a3 IDSPrimitives:(id)a4 IDSAddressTranslator:(id)a5 dataStore:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = CRKASMPreemptiveIDSMessagingRosterProvider;
  v14 = [(CRKASMRosterProviderDecoratorBase *)&v17 initWithRosterProvider:a3];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_IDSPrimitives, a4);
    objc_storeStrong(&v15->_IDSAddressTranslator, a5);
    objc_storeStrong(&v15->_dataStore, a6);
    [(CRKASMPreemptiveIDSMessagingRosterProvider *)v15 beginObservingRoster];
    [(CRKASMPreemptiveIDSMessagingRosterProvider *)v15 rosterDidChange];
  }

  return v15;
}

- (void)rosterDidChange
{
  v6 = [a1 verboseDescription];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (id)fetchMessagedAppleIDsWitherror:(id *)a3
{
  v5 = [(CRKASMPreemptiveIDSMessagingRosterProvider *)self messagedAppleIDs];

  if (v5)
  {
    v6 = [(CRKASMPreemptiveIDSMessagingRosterProvider *)self messagedAppleIDs];
  }

  else
  {
    v7 = [(CRKASMPreemptiveIDSMessagingRosterProvider *)self dataStore];
    v18 = 0;
    v8 = [v7 dataForKey:@"PreemptiveMessageHistory" error:&v18];
    v9 = v18;

    if (v9)
    {
      if (a3)
      {
        v10 = v9;
        v6 = 0;
        *a3 = v9;
      }

      else
      {
        v6 = 0;
      }
    }

    else if (v8)
    {
      v17 = 0;
      v11 = [objc_opt_class() appleIDsFromData:v8 error:&v17];
      v12 = v17;
      v13 = v12;
      if (v12)
      {
        if (a3)
        {
          v14 = v12;
          v6 = 0;
          *a3 = v13;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        [(CRKASMPreemptiveIDSMessagingRosterProvider *)self setMessagedAppleIDs:v11];
        v6 = [(CRKASMPreemptiveIDSMessagingRosterProvider *)self messagedAppleIDs];
      }
    }

    else
    {
      v15 = objc_opt_new();
      [(CRKASMPreemptiveIDSMessagingRosterProvider *)self setMessagedAppleIDs:v15];

      v6 = [(CRKASMPreemptiveIDSMessagingRosterProvider *)self messagedAppleIDs];
    }
  }

  return v6;
}

- (BOOL)persistAppleIDs:(id)a3 withError:(id *)a4
{
  v6 = a3;
  if ([v6 count])
  {
    v23 = 0;
    v7 = [objc_opt_class() dataForAppleIDs:v6 error:&v23];
    v8 = v23;
    v9 = v8;
    if (v6)
    {
      v10 = [(CRKASMPreemptiveIDSMessagingRosterProvider *)self dataStore];
      v22 = 0;
      v11 = [v10 removeDataForKey:@"PreemptiveMessageHistory" error:&v22];
      v12 = v22;

      if (v11)
      {
        v13 = [(CRKASMPreemptiveIDSMessagingRosterProvider *)self dataStore];
        v21 = 0;
        v14 = [v13 setData:v7 forKey:@"PreemptiveMessageHistory" error:&v21];
        v15 = v21;

        if (v14)
        {
          [(CRKASMPreemptiveIDSMessagingRosterProvider *)self setMessagedAppleIDs:v6];
        }

        else if (a4)
        {
          v19 = v15;
          *a4 = v15;
        }
      }

      else if (a4)
      {
        v18 = v12;
        v14 = 0;
        *a4 = v12;
      }

      else
      {
        v14 = 0;
      }
    }

    else if (a4)
    {
      v17 = v8;
      v14 = 0;
      *a4 = v9;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    [(CRKASMPreemptiveIDSMessagingRosterProvider *)self setMessagedAppleIDs:v6];
    v16 = [(CRKASMPreemptiveIDSMessagingRosterProvider *)self dataStore];
    v14 = [v16 removeAllDataWithError:a4];
  }

  return v14;
}

- (void)messageAppleID:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _CRKLogASM_16();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = v4;
    _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "Preemptively messaging %{public}@", buf, 0xCu);
  }

  v6 = [[CRKYoIDSMessage alloc] initWithMessage:@"new-trusted-user-checkin"];
  v7 = [(CRKASMPreemptiveIDSMessagingRosterProvider *)self IDSAddressTranslator];
  v8 = [v7 destinationAddressForAppleID:v4];

  v9 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  v10 = [v9 roster];
  v11 = [v10 user];
  v12 = [v11 appleID];

  v13 = objc_opt_new();
  v14 = [(CRKASMPreemptiveIDSMessagingRosterProvider *)self IDSPrimitives];
  v15 = [(CRKYoIDSMessage *)v6 dictionaryValue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__CRKASMPreemptiveIDSMessagingRosterProvider_messageAppleID___block_invoke;
  v17[3] = &unk_278DC0F68;
  v18 = v4;
  v16 = v4;
  [v14 sendMessage:v15 destinationAddress:v8 sourceAppleID:v12 options:v13 completion:v17];
}

void __61__CRKASMPreemptiveIDSMessagingRosterProvider_messageAppleID___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _CRKLogASM_16();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __61__CRKASMPreemptiveIDSMessagingRosterProvider_messageAppleID___block_invoke_cold_1(a1, v3);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "Successfully preemptively messaged %{public}@.", &v7, 0xCu);
  }
}

+ (id)appleIDsFromData:(id)a3 error:(id *)a4
{
  v12[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAAC8];
  v6 = MEMORY[0x277CBEB98];
  v7 = a3;
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v9 = [v6 setWithArray:v8];
  v10 = [v5 unarchivedObjectOfClasses:v9 fromData:v7 error:a4];

  return v10;
}

+ (id)trustedUserAppleIDsFromRoster:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  if (a3)
  {
    v4 = [a3 courses];
    v5 = [v4 crk_flatMapUsingBlock:&__block_literal_global_83];
    v6 = [v3 setWithArray:v5];
  }

  else
  {
    v6 = objc_opt_new();
  }

  return v6;
}

id __76__CRKASMPreemptiveIDSMessagingRosterProvider_trustedUserAppleIDsFromRoster___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 trustedUsers];
  v3 = [v2 crk_mapUsingBlock:&__block_literal_global_22_1];

  return v3;
}

+ (id)observedKeyPaths
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"roster";
  v4[1] = @"populated";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

- (void)beginObservingRoster
{
  v15 = *MEMORY[0x277D85DE8];
  if (![(CRKASMPreemptiveIDSMessagingRosterProvider *)self isObservingRoster])
  {
    [(CRKASMPreemptiveIDSMessagingRosterProvider *)self setObservingRoster:1];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [objc_opt_class() observedKeyPaths];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          v9 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
          [v9 addObserver:self forKeyPath:v8 options:0 context:@"KVOContext"];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }
}

- (void)endObservingRoster
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(CRKASMPreemptiveIDSMessagingRosterProvider *)self isObservingRoster])
  {
    [(CRKASMPreemptiveIDSMessagingRosterProvider *)self setObservingRoster:0];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [objc_opt_class() observedKeyPaths];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          v9 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
          [v9 removeObserver:self forKeyPath:v8 context:@"KVOContext"];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == @"KVOContext")
  {

    [(CRKASMPreemptiveIDSMessagingRosterProvider *)self rosterDidChange:a3];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = CRKASMPreemptiveIDSMessagingRosterProvider;
    [(CRKASMPreemptiveIDSMessagingRosterProvider *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

void __61__CRKASMPreemptiveIDSMessagingRosterProvider_messageAppleID___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v7 = [a2 verboseDescription];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end