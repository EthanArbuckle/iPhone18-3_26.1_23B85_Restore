@interface CRKASMPreemptiveIDSMessagingRosterProvider
+ (id)appleIDsFromData:(id)data error:(id *)error;
+ (id)observedKeyPaths;
+ (id)trustedUserAppleIDsFromRoster:(id)roster;
- (BOOL)persistAppleIDs:(id)ds withError:(id *)error;
- (CRKASMPreemptiveIDSMessagingRosterProvider)initWithRosterProvider:(id)provider IDSPrimitives:(id)primitives IDSAddressTranslator:(id)translator dataStore:(id)store;
- (id)fetchMessagedAppleIDsWitherror:(id *)witherror;
- (void)beginObservingRoster;
- (void)dealloc;
- (void)endObservingRoster;
- (void)messageAppleID:(id)d;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
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

- (CRKASMPreemptiveIDSMessagingRosterProvider)initWithRosterProvider:(id)provider IDSPrimitives:(id)primitives IDSAddressTranslator:(id)translator dataStore:(id)store
{
  primitivesCopy = primitives;
  translatorCopy = translator;
  storeCopy = store;
  v17.receiver = self;
  v17.super_class = CRKASMPreemptiveIDSMessagingRosterProvider;
  v14 = [(CRKASMRosterProviderDecoratorBase *)&v17 initWithRosterProvider:provider];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_IDSPrimitives, primitives);
    objc_storeStrong(&v15->_IDSAddressTranslator, translator);
    objc_storeStrong(&v15->_dataStore, store);
    [(CRKASMPreemptiveIDSMessagingRosterProvider *)v15 beginObservingRoster];
    [(CRKASMPreemptiveIDSMessagingRosterProvider *)v15 rosterDidChange];
  }

  return v15;
}

- (void)rosterDidChange
{
  verboseDescription = [self verboseDescription];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (id)fetchMessagedAppleIDsWitherror:(id *)witherror
{
  messagedAppleIDs = [(CRKASMPreemptiveIDSMessagingRosterProvider *)self messagedAppleIDs];

  if (messagedAppleIDs)
  {
    messagedAppleIDs2 = [(CRKASMPreemptiveIDSMessagingRosterProvider *)self messagedAppleIDs];
  }

  else
  {
    dataStore = [(CRKASMPreemptiveIDSMessagingRosterProvider *)self dataStore];
    v18 = 0;
    v8 = [dataStore dataForKey:@"PreemptiveMessageHistory" error:&v18];
    v9 = v18;

    if (v9)
    {
      if (witherror)
      {
        v10 = v9;
        messagedAppleIDs2 = 0;
        *witherror = v9;
      }

      else
      {
        messagedAppleIDs2 = 0;
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
        if (witherror)
        {
          v14 = v12;
          messagedAppleIDs2 = 0;
          *witherror = v13;
        }

        else
        {
          messagedAppleIDs2 = 0;
        }
      }

      else
      {
        [(CRKASMPreemptiveIDSMessagingRosterProvider *)self setMessagedAppleIDs:v11];
        messagedAppleIDs2 = [(CRKASMPreemptiveIDSMessagingRosterProvider *)self messagedAppleIDs];
      }
    }

    else
    {
      v15 = objc_opt_new();
      [(CRKASMPreemptiveIDSMessagingRosterProvider *)self setMessagedAppleIDs:v15];

      messagedAppleIDs2 = [(CRKASMPreemptiveIDSMessagingRosterProvider *)self messagedAppleIDs];
    }
  }

  return messagedAppleIDs2;
}

- (BOOL)persistAppleIDs:(id)ds withError:(id *)error
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    v23 = 0;
    v7 = [objc_opt_class() dataForAppleIDs:dsCopy error:&v23];
    v8 = v23;
    v9 = v8;
    if (dsCopy)
    {
      dataStore = [(CRKASMPreemptiveIDSMessagingRosterProvider *)self dataStore];
      v22 = 0;
      v11 = [dataStore removeDataForKey:@"PreemptiveMessageHistory" error:&v22];
      v12 = v22;

      if (v11)
      {
        dataStore2 = [(CRKASMPreemptiveIDSMessagingRosterProvider *)self dataStore];
        v21 = 0;
        v14 = [dataStore2 setData:v7 forKey:@"PreemptiveMessageHistory" error:&v21];
        v15 = v21;

        if (v14)
        {
          [(CRKASMPreemptiveIDSMessagingRosterProvider *)self setMessagedAppleIDs:dsCopy];
        }

        else if (error)
        {
          v19 = v15;
          *error = v15;
        }
      }

      else if (error)
      {
        v18 = v12;
        v14 = 0;
        *error = v12;
      }

      else
      {
        v14 = 0;
      }
    }

    else if (error)
    {
      v17 = v8;
      v14 = 0;
      *error = v9;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    [(CRKASMPreemptiveIDSMessagingRosterProvider *)self setMessagedAppleIDs:dsCopy];
    dataStore3 = [(CRKASMPreemptiveIDSMessagingRosterProvider *)self dataStore];
    v14 = [dataStore3 removeAllDataWithError:error];
  }

  return v14;
}

- (void)messageAppleID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = _CRKLogASM_16();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = dCopy;
    _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "Preemptively messaging %{public}@", buf, 0xCu);
  }

  v6 = [[CRKYoIDSMessage alloc] initWithMessage:@"new-trusted-user-checkin"];
  iDSAddressTranslator = [(CRKASMPreemptiveIDSMessagingRosterProvider *)self IDSAddressTranslator];
  v8 = [iDSAddressTranslator destinationAddressForAppleID:dCopy];

  underlyingRosterProvider = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  roster = [underlyingRosterProvider roster];
  user = [roster user];
  appleID = [user appleID];

  v13 = objc_opt_new();
  iDSPrimitives = [(CRKASMPreemptiveIDSMessagingRosterProvider *)self IDSPrimitives];
  dictionaryValue = [(CRKYoIDSMessage *)v6 dictionaryValue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__CRKASMPreemptiveIDSMessagingRosterProvider_messageAppleID___block_invoke;
  v17[3] = &unk_278DC0F68;
  v18 = dCopy;
  v16 = dCopy;
  [iDSPrimitives sendMessage:dictionaryValue destinationAddress:v8 sourceAppleID:appleID options:v13 completion:v17];
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

+ (id)appleIDsFromData:(id)data error:(id *)error
{
  v12[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAAC8];
  v6 = MEMORY[0x277CBEB98];
  dataCopy = data;
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v9 = [v6 setWithArray:v8];
  v10 = [v5 unarchivedObjectOfClasses:v9 fromData:dataCopy error:error];

  return v10;
}

+ (id)trustedUserAppleIDsFromRoster:(id)roster
{
  v3 = MEMORY[0x277CBEB98];
  if (roster)
  {
    courses = [roster courses];
    v5 = [courses crk_flatMapUsingBlock:&__block_literal_global_83];
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
    observedKeyPaths = [objc_opt_class() observedKeyPaths];
    v4 = [observedKeyPaths countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(observedKeyPaths);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          underlyingRosterProvider = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
          [underlyingRosterProvider addObserver:self forKeyPath:v8 options:0 context:@"KVOContext"];

          ++v7;
        }

        while (v5 != v7);
        v5 = [observedKeyPaths countByEnumeratingWithState:&v10 objects:v14 count:16];
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
    observedKeyPaths = [objc_opt_class() observedKeyPaths];
    v4 = [observedKeyPaths countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(observedKeyPaths);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          underlyingRosterProvider = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
          [underlyingRosterProvider removeObserver:self forKeyPath:v8 context:@"KVOContext"];

          ++v7;
        }

        while (v5 != v7);
        v5 = [observedKeyPaths countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == @"KVOContext")
  {

    [(CRKASMPreemptiveIDSMessagingRosterProvider *)self rosterDidChange:path];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = CRKASMPreemptiveIDSMessagingRosterProvider;
    [(CRKASMPreemptiveIDSMessagingRosterProvider *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

void __61__CRKASMPreemptiveIDSMessagingRosterProvider_messageAppleID___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v7 = [a2 verboseDescription];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end