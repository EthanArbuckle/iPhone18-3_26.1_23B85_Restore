@interface NGMReplayManager
+ (id)sharedManager;
- (BOOL)deleteExpiredSendingDestinations;
- (BOOL)deleteReceivingCountersForKey:(id)key;
- (BOOL)duplicateTagForPrekey:(id)prekey;
- (BOOL)isBATS;
- (BOOL)isRunningTests;
- (BOOL)isXCTest;
- (BOOL)processFetchRequestAndValidate:(id)validate counter:(unsigned int)counter commit:(BOOL)commit theirIdentity:(id)identity prekey:(id)prekey error:(id *)error;
- (id)computeDestinationHashForIncomingMessageFrom:(id)from toLocalKey:(id)key;
- (id)computeDestinationHashForOutgoingMessageTo:(id)to withLocalKey:(id)key;
- (id)dbNameFromProcess;
- (id)objectContextWithError:(id *)error;
- (id)persistentContainerWithError:(id *)error;
- (id)persistentStoreDescription;
- (id)pruneDuplicates:(id)duplicates tag:(id)tag moc:(id)moc;
- (id)registeredPrekeyForNGMPrekey:(id)prekey objectContext:(id)context;
- (unsigned)counterForDestinationWithIdentityKey:(id)key sendingIdentity:(id)identity error:(id *)error success:(BOOL *)success;
- (void)deleteExpiredSendingDestinations;
- (void)logDatabaseCreationDate:(id)date;
@end

@implementation NGMReplayManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__NGMReplayManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_sharedManager;

  return v2;
}

void __33__NGMReplayManager_sharedManager__block_invoke(uint64_t a1)
{
  v2 = MessageProtectionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_22B404000, v2, OS_LOG_TYPE_INFO, "Setting shared instance of the NGMReplayManager.", v5, 2u);
  }

  v3 = objc_alloc_init(*(a1 + 32));
  v4 = sharedManager_sharedManager;
  sharedManager_sharedManager = v3;
}

- (id)dbNameFromProcess
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"/NGMTrustStore-%@.db", processName];

  return v4;
}

- (BOOL)isBATS
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  environment = [processInfo environment];

  v4 = [environment objectForKeyedSubscript:@"BATS"];
  if (v4)
  {
    v5 = [environment objectForKeyedSubscript:@"PWD"];
    v6 = [v5 isEqualToString:@"/AppleInternal/XCTests/com.apple.messageprotection"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isXCTest
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  environment = [processInfo environment];

  v4 = [environment objectForKeyedSubscript:@"XCTestBundlePath"];
  pathExtension = [v4 pathExtension];
  v6 = [pathExtension isEqualToString:@"xctest"];

  return v6;
}

- (BOOL)isRunningTests
{
  if ([(NGMReplayManager *)self isBATS])
  {
    return 1;
  }

  return [(NGMReplayManager *)self isXCTest];
}

- (id)persistentStoreDescription
{
  dbNameFromProcess = [(NGMReplayManager *)self dbNameFromProcess];
  if ([(NGMReplayManager *)self isRunningTests])
  {
    v4 = NSTemporaryDirectory();
LABEL_5:
    v9 = [v4 stringByAppendingString:dbNameFromProcess];

    v10 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v9];
    v11 = [objc_alloc(MEMORY[0x277CBE4E0]) initWithURL:v10];
    [v11 setOption:*MEMORY[0x277CCA1A0] forKey:*MEMORY[0x277CBE240]];
    [v11 setShouldAddStoreAsynchronously:0];

    goto LABEL_6;
  }

  v5 = NSHomeDirectory();
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:{v5, @"/Library/IdentityServices", 0}];
    v4 = [v7 pathWithComponents:v8];

    goto LABEL_5;
  }

  v9 = MessageProtectionLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    [(NGMReplayManager *)v9 persistentStoreDescription];
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (id)objectContextWithError:(id *)error
{
  v4 = [(NGMReplayManager *)self persistentContainerWithError:?];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
    persistentStoreCoordinator = [v4 persistentStoreCoordinator];
    [v5 setPersistentStoreCoordinator:persistentStoreCoordinator];
  }

  else
  {
    v7 = MessageProtectionLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NGMReplayManager objectContextWithError:error];
    }

    v5 = 0;
  }

  return v5;
}

- (id)persistentContainerWithError:(id *)error
{
  v32[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  persistentContainer = selfCopy->_persistentContainer;
  if (persistentContainer)
  {
    goto LABEL_2;
  }

  v7 = MessageProtectionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22B404000, v7, OS_LOG_TYPE_INFO, "Performing initial load of the replay database.", buf, 2u);
  }

  v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.MessageProtection"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 URLForResource:@"NGMTrustStore" withExtension:@"momd"];
    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:v10];
      if (v11)
      {
        v12 = [objc_alloc(MEMORY[0x277CBE4A0]) initWithName:@"NGMTrustStore" managedObjectModel:v11];
        persistentStoreDescription = [(NGMReplayManager *)selfCopy persistentStoreDescription];
        v14 = persistentStoreDescription;
        if (persistentStoreDescription)
        {
          v32[0] = persistentStoreDescription;
          v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
          [v12 setPersistentStoreDescriptions:v15];

          *buf = 0;
          v27 = buf;
          v28 = 0x3032000000;
          v29 = __Block_byref_object_copy__0;
          v30 = __Block_byref_object_dispose__0;
          v31 = 0;
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __49__NGMReplayManager_persistentContainerWithError___block_invoke;
          v25[3] = &unk_2786FDDD0;
          v25[4] = selfCopy;
          v25[5] = buf;
          [v12 loadPersistentStoresWithCompletionHandler:v25];
          v16 = *(v27 + 5);
          if (v16)
          {
            v17 = MessageProtectionLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              [NGMReplayManager persistentContainerWithError:v17];
            }

            if (error)
            {
              *error = *(v27 + 5);
            }
          }

          else
          {
            v21 = MessageProtectionLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v24[0] = 0;
              _os_log_impl(&dword_22B404000, v21, OS_LOG_TYPE_INFO, "Loading the persistent container worked, setting it to shared instance", v24, 2u);
            }

            objc_storeStrong(&selfCopy->_persistentContainer, v12);
          }

          _Block_object_dispose(buf, 8);

          if (!v16)
          {
            persistentContainer = selfCopy->_persistentContainer;
LABEL_2:
            v6 = persistentContainer;
            goto LABEL_29;
          }
        }

        else
        {
          MPLogAndAssignError(6, error, @"Failed to get the persistentStoreDescription.");
        }
      }

      else
      {
        v20 = MessageProtectionLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          [v10 description];
          objc_claimAutoreleasedReturnValue();
          [NGMReplayManager persistentContainerWithError:];
        }
      }
    }

    else
    {
      v19 = MessageProtectionLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        [NGMReplayManager persistentContainerWithError:v19];
      }

      MPLogAndAssignError(9, error, @"Failed to lookup replay database model in bundle.");
    }
  }

  else
  {
    v18 = MessageProtectionLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [NGMReplayManager persistentContainerWithError:v18];
    }

    MPLogAndAssignError(8, error, @"Failed to lookup MessageProtection bundle.");
  }

  v6 = 0;
LABEL_29:
  objc_sync_exit(selfCopy);

  v22 = *MEMORY[0x277D85DE8];

  return v6;
}

void __49__NGMReplayManager_persistentContainerWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MessageProtectionLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __49__NGMReplayManager_persistentContainerWithError___block_invoke_cold_1(v6);
    }

    v9 = *(*(a1 + 40) + 8);
    v10 = v6;
    v11 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v12 = [v5 description];
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&dword_22B404000, v8, OS_LOG_TYPE_INFO, "Loaded container with description: %@", &v15, 0xCu);
    }

    v13 = *(a1 + 32);
    v11 = [v5 URL];
    [v13 logDatabaseCreationDate:v11];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)logDatabaseCreationDate:(id)date
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAA00];
  dateCopy = date;
  defaultManager = [v3 defaultManager];
  absoluteString = [dateCopy absoluteString];

  v7 = [defaultManager attributesOfItemAtPath:absoluteString error:0];

  if (v7)
  {
    v8 = [v7 objectForKey:*MEMORY[0x277CCA108]];
    v9 = MessageProtectionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v8 description];
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_22B404000, v9, OS_LOG_TYPE_INFO, "Loaded replay database was created at: %@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)computeDestinationHashForOutgoingMessageTo:(id)to withLocalKey:(id)key
{
  v5 = MEMORY[0x277CBEB28];
  keyCopy = key;
  toCopy = to;
  data = [v5 data];
  signingKey = [toCopy signingKey];
  dataRepresentation = [signingKey dataRepresentation];
  [data appendData:dataRepresentation];

  echnidaRegistration = [toCopy echnidaRegistration];

  dhKey = [echnidaRegistration dhKey];
  dataRepresentation2 = [dhKey dataRepresentation];
  [data appendData:dataRepresentation2];

  v14 = [keyCopy dataUsingEncoding:4];

  [data appendData:v14];
  v15 = [@"Outgoing" dataUsingEncoding:4];
  [data appendData:v15];

  v16 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:32];
  CC_SHA256([data bytes], objc_msgSend(data, "length"), objc_msgSend(v16, "bytes"));
  v17 = [v16 base64EncodedStringWithOptions:0];

  return v17;
}

- (id)computeDestinationHashForIncomingMessageFrom:(id)from toLocalKey:(id)key
{
  v5 = MEMORY[0x277CBEB28];
  keyCopy = key;
  fromCopy = from;
  data = [v5 data];
  signingKey = [fromCopy signingKey];
  dataRepresentation = [signingKey dataRepresentation];
  [data appendData:dataRepresentation];

  echnidaRegistration = [fromCopy echnidaRegistration];

  dhKey = [echnidaRegistration dhKey];
  dataRepresentation2 = [dhKey dataRepresentation];
  [data appendData:dataRepresentation2];

  v14 = [keyCopy dataUsingEncoding:4];

  [data appendData:v14];
  v15 = [@"Incoming" dataUsingEncoding:4];
  [data appendData:v15];

  v16 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:32];
  CC_SHA256([data bytes], objc_msgSend(data, "length"), objc_msgSend(v16, "bytes"));
  v17 = [v16 base64EncodedStringWithOptions:0];

  return v17;
}

- (unsigned)counterForDestinationWithIdentityKey:(id)key sendingIdentity:(id)identity error:(id *)error success:(BOOL *)success
{
  v47 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  identityCopy = identity;
  *success = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = -1;
  v12 = [(NGMReplayManager *)self objectContextWithError:error];
  if (v12)
  {
    v13 = +[SendingDestination fetchRequest];
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__0;
    v45 = __Block_byref_object_dispose__0;
    deviceSigningKey = [identityCopy deviceSigningKey];
    keyIdentifier = [deviceSigningKey keyIdentifier];
    v46 = [(NGMReplayManager *)self computeDestinationHashForOutgoingMessageTo:keyCopy withLocalKey:keyIdentifier];

    v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"destinationHash == %@", v42[5]];
    [v13 setPredicate:v16];

    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__0;
    v35 = __Block_byref_object_dispose__0;
    v36 = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __87__NGMReplayManager_counterForDestinationWithIdentityKey_sendingIdentity_error_success___block_invoke;
    v23[3] = &unk_2786FDDF8;
    v24 = v12;
    v17 = v13;
    v25 = v17;
    v27 = &v31;
    v28 = &v37;
    v29 = &v41;
    successCopy = success;
    v26 = keyCopy;
    [v24 performBlockAndWait:v23];
    if (error)
    {
      v18 = v32[5];
      if (v18)
      {
        *error = v18;
      }
    }

    v19 = *(v38 + 6);

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v41, 8);
  }

  else
  {
    v20 = MessageProtectionLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [*error description];
      objc_claimAutoreleasedReturnValue();
      [NGMReplayManager counterForDestinationWithIdentityKey:sendingIdentity:error:success:];
    }

    v19 = *(v38 + 6);
  }

  _Block_object_dispose(&v37, 8);
  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

void __87__NGMReplayManager_counterForDestinationWithIdentityKey_sendingIdentity_error_success___block_invoke(uint64_t a1)
{
  v3 = a1 + 56;
  v2 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(v3 - 16);
  v6 = *(v2 + 8);
  obj = *(v6 + 40);
  v7 = [v4 executeFetchRequest:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (*(*(*v3 + 8) + 40))
  {
    v8 = MessageProtectionLog();
    if (os_log_type_enabled(&v8->super.super, OS_LOG_TYPE_ERROR))
    {
      __87__NGMReplayManager_counterForDestinationWithIdentityKey_sendingIdentity_error_success___block_invoke_cold_1(v3);
    }

    goto LABEL_15;
  }

  if ([v7 count] == 1)
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    *(*(*(a1 + 64) + 8) + 24) = [(SendingDestination *)v8 validOutgoingCounter];
    v9 = *(*(*(a1 + 64) + 8) + 24);
    if (v9 == -1)
    {
      v17 = *(*v3 + 8);
      v27 = *(v17 + 40);
      MPLogAndAssignError(603, &v27, @"Replay Protection Error: Ran out of counters");
      objc_storeStrong((v17 + 40), v27);
LABEL_15:

      goto LABEL_16;
    }

    [(SendingDestination *)v8 setValidOutgoingCounter:(v9 + 1)];
    **(a1 + 80) = 1;
    v10 = *(a1 + 32);
    v11 = *(*(a1 + 56) + 8);
    v13 = *(v11 + 40);
    v12 = (v11 + 40);
    v26 = v13;
    [v10 save:&v26];
    v14 = v26;
  }

  else
  {
    if ([v7 count])
    {
      v15 = *(*v3 + 8);
      v24 = *(v15 + 40);
      MPLogAndAssignError(600, &v24, @"It appears we have a collision in the hashes.");
      v16 = v24;
      v8 = *(v15 + 40);
      *(v15 + 40) = v16;
      goto LABEL_12;
    }

    v8 = [[SendingDestination alloc] initWithContext:*(a1 + 32)];
    [(SendingDestination *)v8 setDestinationHash:*(*(*(a1 + 72) + 8) + 40)];
    v18 = MEMORY[0x277CBEAA8];
    v19 = [*(a1 + 48) echnidaRegistration];
    [v19 timestamp];
    v20 = [v18 dateWithTimeIntervalSince1970:?];
    [(SendingDestination *)v8 setRegistrationDate:v20];

    *(*(*(a1 + 64) + 8) + 24) = 0;
    [(SendingDestination *)v8 setValidOutgoingCounter:1];
    **(a1 + 80) = 1;
    v21 = *(a1 + 32);
    v22 = *(*(a1 + 56) + 8);
    v23 = *(v22 + 40);
    v12 = (v22 + 40);
    v25 = v23;
    [v21 save:&v25];
    v14 = v25;
  }

  objc_storeStrong(v12, v14);
  +[_TtC17MessageProtection15FilesystemUtils syncIfNeededOnPlatform];
LABEL_12:

  if (*(*(*v3 + 8) + 40))
  {
    **(a1 + 80) = 0;
    v8 = MessageProtectionLog();
    if (os_log_type_enabled(&v8->super.super, OS_LOG_TYPE_ERROR))
    {
      __87__NGMReplayManager_counterForDestinationWithIdentityKey_sendingIdentity_error_success___block_invoke_cold_2(v3);
    }

    goto LABEL_15;
  }

LABEL_16:
}

- (BOOL)processFetchRequestAndValidate:(id)validate counter:(unsigned int)counter commit:(BOOL)commit theirIdentity:(id)identity prekey:(id)prekey error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  validateCopy = validate;
  identityCopy = identity;
  prekeyCopy = prekey;
  v16 = [(NGMReplayManager *)self objectContextWithError:error];
  if (v16)
  {
    v17 = +[SenderPublicIdentity fetchRequest];
    validateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"destinationHash == %@", validateCopy];
    [v17 setPredicate:validateCopy];

    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__0;
    v45 = __Block_byref_object_dispose__0;
    v46 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __93__NGMReplayManager_processFetchRequestAndValidate_counter_commit_theirIdentity_prekey_error___block_invoke;
    v26[3] = &unk_2786FDE48;
    v27 = v16;
    v19 = v17;
    v28 = v19;
    v33 = &v41;
    v29 = identityCopy;
    v30 = validateCopy;
    selfCopy = self;
    v32 = prekeyCopy;
    v34 = &v37;
    counterCopy = counter;
    commitCopy = commit;
    [v27 performBlockAndWait:v26];
    if (v42[5])
    {
      v20 = MessageProtectionLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        v21 = [v42[5] description];
        [NGMReplayManager processFetchRequestAndValidate:commit counter:v21 commit:buf theirIdentity:v20 prekey:? error:?];
      }

      v22 = 0;
      if (error)
      {
        *error = v42[5];
      }
    }

    else
    {
      v22 = *(v38 + 24);
    }

    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&v41, 8);
  }

  else
  {
    v19 = MessageProtectionLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [NGMReplayManager processFetchRequestAndValidate:error counter:? commit:? theirIdentity:? prekey:? error:?];
    }

    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v22 & 1;
}

void __93__NGMReplayManager_processFetchRequestAndValidate_counter_commit_theirIdentity_prekey_error___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a1 + 80;
  v2 = *(a1 + 80);
  v4 = *(a1 + 32);
  v5 = *(v3 - 40);
  v6 = *(v2 + 8);
  obj = *(v6 + 40);
  v7 = [v4 executeFetchRequest:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (*(*(*v3 + 8) + 40))
  {
    v8 = MessageProtectionLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __93__NGMReplayManager_processFetchRequestAndValidate_counter_commit_theirIdentity_prekey_error___block_invoke_cold_1(v3);
    }

    goto LABEL_4;
  }

  if ([v7 count] == 1)
  {
    v10 = [v7 objectAtIndexedSubscript:0];
    v12 = [NGMRollingBitmaskBuffer alloc];
    v13 = [(SenderPublicIdentity *)v10 skippedCounters];
    v14 = [(NGMRollingBitmaskBuffer *)v12 initWithData:v13 upperBufferIndex:[(SenderPublicIdentity *)v10 upperBufferIndex]];
  }

  else
  {
    if ([v7 count])
    {
      v22 = *(a1 + 72);
      v23 = *(*(a1 + 80) + 8);
      v32 = *(v23 + 40);
      v24 = MEMORY[0x277CCACA8];
      v8 = [v22 dhKey];
      v25 = [v8 description];
      v26 = [v24 stringWithFormat:@"We have duplicate entries on the incoming validation counter for key: %@ \n, destinationHash: %@.", v25, *(a1 + 56)];
      MPLogAndAssignError(600, &v32, v26);
      objc_storeStrong((v23 + 40), v32);

LABEL_4:
      v9 = 0;
      v10 = 0;
LABEL_5:

      goto LABEL_6;
    }

    v10 = [[SenderPublicIdentity alloc] initWithContext:*(a1 + 32)];
    v27 = MEMORY[0x277CBEAA8];
    v28 = [*(a1 + 48) echnidaRegistration];
    [v28 timestamp];
    v29 = [v27 dateWithTimeIntervalSince1970:?];
    [(SenderPublicIdentity *)v10 setDate:v29];

    [(SenderPublicIdentity *)v10 setDestinationHash:*(a1 + 56)];
    v30 = [*(a1 + 64) registeredPrekeyForNGMPrekey:*(a1 + 72) objectContext:*(a1 + 32)];
    if (!v30)
    {
      v8 = MessageProtectionLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __93__NGMReplayManager_processFetchRequestAndValidate_counter_commit_theirIdentity_prekey_error___block_invoke_cold_2((a1 + 72));
      }

      v9 = 0;
      goto LABEL_5;
    }

    v13 = v30;
    [(SenderPublicIdentity *)v10 setMessagedKey:v30];
    v14 = objc_alloc_init(NGMRollingBitmaskBuffer);
  }

  v9 = v14;

  *(*(*(a1 + 88) + 8) + 24) = [(NGMRollingBitmaskBuffer *)v9 processIncomingCounter:*(a1 + 96)];
  v15 = [(NGMRollingBitmaskBuffer *)v9 bufferData];
  [(SenderPublicIdentity *)v10 setSkippedCounters:v15];

  [(SenderPublicIdentity *)v10 setUpperBufferIndex:[(NGMRollingBitmaskBuffer *)v9 upper_buffer_index]];
  v16 = MessageProtectionLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = *(a1 + 56);
    if (*(*(*(a1 + 88) + 8) + 24))
    {
      v18 = "";
    }

    else
    {
      v18 = "not";
    }

    *buf = 138412546;
    v35 = v17;
    v36 = 2080;
    v37 = v18;
    _os_log_impl(&dword_22B404000, v16, OS_LOG_TYPE_INFO, "Successfully fetched counters for destination (%@) and counter is %s valid.", buf, 0x16u);
  }

  if (*(a1 + 100) == 1)
  {
    v19 = *(a1 + 32);
    v20 = *(*(a1 + 80) + 8);
    v31 = *(v20 + 40);
    [v19 save:&v31];
    v21 = v31;
    v8 = *(v20 + 40);
    *(v20 + 40) = v21;
    goto LABEL_5;
  }

LABEL_6:

  v11 = *MEMORY[0x277D85DE8];
}

- (id)pruneDuplicates:(id)duplicates tag:(id)tag moc:(id)moc
{
  v22 = *MEMORY[0x277D85DE8];
  duplicatesCopy = duplicates;
  tagCopy = tag;
  mocCopy = moc;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [duplicatesCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(duplicatesCopy);
        }

        [mocCopy deleteObject:*(*(&v17 + 1) + 8 * i)];
      }

      v11 = [duplicatesCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v14 = [[RegisteredPreKey alloc] initWithContext:mocCopy];
  [(RegisteredPreKey *)v14 setTag:tagCopy];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)registeredPrekeyForNGMPrekey:(id)prekey objectContext:(id)context
{
  prekeyCopy = prekey;
  contextCopy = context;
  v8 = +[RegisteredPreKey fetchRequest];
  dhKey = [prekeyCopy dhKey];
  keyIdentifier = [dhKey keyIdentifier];

  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"tag = %@", keyIdentifier];
  [v8 setPredicate:v11];

  v23 = 0;
  v12 = [contextCopy executeFetchRequest:v8 error:&v23];
  v13 = v23;
  if (!v13)
  {
    if ([v12 count] == 1)
    {
      v17 = [v12 objectAtIndexedSubscript:0];
    }

    else
    {
      if (![v12 count])
      {
        v16 = [[RegisteredPreKey alloc] initWithContext:contextCopy];
        dhKey2 = [prekeyCopy dhKey];
        keyIdentifier2 = [dhKey2 keyIdentifier];
        [(RegisteredPreKey *)v16 setTag:keyIdentifier2];

        v22 = 0;
        [contextCopy save:&v22];
        v14 = v22;
        goto LABEL_12;
      }

      v18 = MessageProtectionLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        [NGMReplayManager registeredPrekeyForNGMPrekey:objectContext:];
      }

      v17 = [(NGMReplayManager *)self pruneDuplicates:v12 tag:keyIdentifier moc:contextCopy];
    }

    v16 = v17;
    v14 = 0;
    goto LABEL_12;
  }

  v14 = v13;
  v15 = MessageProtectionLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [NGMReplayManager registeredPrekeyForNGMPrekey:v14 objectContext:?];
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (BOOL)deleteReceivingCountersForKey:(id)key
{
  v51 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v46 = 0;
  v5 = [(NGMReplayManager *)self objectContextWithError:&v46];
  v6 = v46;
  if (v5)
  {
    v7 = +[RegisteredPreKey fetchRequest];
    v8 = MEMORY[0x277CCAC30];
    dhKey = [keyCopy dhKey];
    keyIdentifier = [dhKey keyIdentifier];
    v11 = [v8 predicateWithFormat:@"tag = %@", keyIdentifier];
    [v7 setPredicate:v11];

    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__0;
    v44 = __Block_byref_object_dispose__0;
    v45 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__0;
    v38 = __Block_byref_object_dispose__0;
    v39 = 0;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __50__NGMReplayManager_deleteReceivingCountersForKey___block_invoke;
    v29[3] = &unk_2786FDE70;
    v32 = &v34;
    v12 = v5;
    v30 = v12;
    v13 = v7;
    v31 = v13;
    v33 = &v40;
    [v12 performBlockAndWait:v29];
    if (v41[5])
    {
      v14 = MessageProtectionLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [v41[5] description];
        objc_claimAutoreleasedReturnValue();
        [NGMReplayManager deleteReceivingCountersForKey:];
      }

      v15 = 0;
    }

    else if ([v35[5] count] == 1)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __50__NGMReplayManager_deleteReceivingCountersForKey___block_invoke_92;
      v25[3] = &unk_2786FDE98;
      v26 = v12;
      v27 = &v34;
      v28 = &v40;
      [v26 performBlockAndWait:v25];
      v16 = v41[5];
      v15 = v16 == 0;
      if (v16)
      {
        v17 = MessageProtectionLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          dhKey2 = [keyCopy dhKey];
          v23 = [dhKey2 description];
          v24 = [v41[5] description];
          *buf = 138412546;
          v48 = v23;
          v49 = 2112;
          v50 = v24;
          _os_log_fault_impl(&dword_22B404000, v17, OS_LOG_TYPE_FAULT, "Failed to delete the counters associated with %@: %@", buf, 0x16u);
        }
      }

      v14 = v26;
    }

    else
    {
      if ([v35[5] count])
      {
        v15 = 0;
        goto LABEL_16;
      }

      v14 = MessageProtectionLog();
      v15 = 1;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        dhKey3 = [keyCopy dhKey];
        v21 = [dhKey3 description];
        *buf = 138412290;
        v48 = v21;
        _os_log_impl(&dword_22B404000, v14, OS_LOG_TYPE_INFO, "No counters to delete for %@, probably never received any messages to that prekey.", buf, 0xCu);

        v15 = 1;
      }
    }

LABEL_16:
    _Block_object_dispose(&v34, 8);

    _Block_object_dispose(&v40, 8);
    goto LABEL_17;
  }

  v13 = MessageProtectionLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [NGMReplayManager deleteReceivingCountersForKey:v6];
  }

  v15 = 0;
LABEL_17:

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

void __50__NGMReplayManager_deleteReceivingCountersForKey___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __50__NGMReplayManager_deleteReceivingCountersForKey___block_invoke_92(void *a1)
{
  v2 = a1[4];
  v3 = [*(*(a1[5] + 8) + 40) objectAtIndexedSubscript:0];
  [v2 deleteObject:v3];

  v4 = a1[4];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  [v4 save:&obj];
  objc_storeStrong((v5 + 40), obj);
}

- (BOOL)deleteExpiredSendingDestinations
{
  v36 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  obj = 0;
  v2 = [(NGMReplayManager *)self objectContextWithError:&obj];
  objc_storeStrong(&v29, obj);
  if (v2)
  {
    v3 = +[SendingDestination fetchRequest];
    v4 = MEMORY[0x277CCAC30];
    v5 = +[NGMTimeBasedEvaluations oldestDateAllowedToSendTo];
    v6 = [v4 predicateWithFormat:@"registrationDate < %@", v5];
    [v3 setPredicate:v6];

    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__0;
    v34 = __Block_byref_object_dispose__0;
    v35 = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __52__NGMReplayManager_deleteExpiredSendingDestinations__block_invoke;
    v18[3] = &unk_2786FDE70;
    v21 = &v30;
    v7 = v2;
    v19 = v7;
    v8 = v3;
    v20 = v8;
    v22 = &v24;
    [v7 performBlockAndWait:v18];
    if (v25[5])
    {
      v9 = MessageProtectionLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [v25[5] description];
        objc_claimAutoreleasedReturnValue();
        [NGMReplayManager deleteExpiredSendingDestinations];
      }

      v10 = 0;
    }

    else
    {
      if (![v31[5] count])
      {
        v10 = 1;
LABEL_18:

        _Block_object_dispose(&v30, 8);
        goto LABEL_19;
      }

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __52__NGMReplayManager_deleteExpiredSendingDestinations__block_invoke_97;
      v14[3] = &unk_2786FDEE8;
      v16 = &v30;
      v15 = v7;
      v17 = &v24;
      [v15 performBlockAndWait:v14];
      if (v25[5])
      {
        v11 = MessageProtectionLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          [v25[5] description];
          objc_claimAutoreleasedReturnValue();
          [NGMReplayManager deleteExpiredSendingDestinations];
        }

        v10 = 0;
      }

      else
      {
        v10 = 1;
      }

      v9 = v15;
    }

    goto LABEL_18;
  }

  v8 = MessageProtectionLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [v25[5] description];
    objc_claimAutoreleasedReturnValue();
    [NGMReplayManager deleteExpiredSendingDestinations];
  }

  v10 = 0;
LABEL_19:

  _Block_object_dispose(&v24, 8);
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

void __52__NGMReplayManager_deleteExpiredSendingDestinations__block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __52__NGMReplayManager_deleteExpiredSendingDestinations__block_invoke_97(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__NGMReplayManager_deleteExpiredSendingDestinations__block_invoke_2;
  v6[3] = &unk_2786FDEC0;
  v7 = *(a1 + 32);
  [v2 enumerateObjectsUsingBlock:v6];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  [v3 save:&obj];
  objc_storeStrong((v4 + 40), obj);
}

- (BOOL)duplicateTagForPrekey:(id)prekey
{
  v25[4] = *MEMORY[0x277D85DE8];
  prekeyCopy = prekey;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25[0] = 0;
  obj = 0;
  v5 = [(NGMReplayManager *)self objectContextWithError:&obj];
  objc_storeStrong(v25, obj);
  if (v5)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __42__NGMReplayManager_duplicateTagForPrekey___block_invoke;
    v15 = &unk_2786FDF10;
    v16 = v5;
    v17 = prekeyCopy;
    v18 = &v20;
    [v16 performBlockAndWait:&v12];
    v6 = v21[5];
    v7 = v6 == 0;
    if (v6)
    {
      v8 = MessageProtectionLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [v21[5] description];
        objc_claimAutoreleasedReturnValue();
        [NGMReplayManager duplicateTagForPrekey:];
      }
    }

    v9 = v16;
  }

  else
  {
    v9 = MessageProtectionLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [v21[5] description];
      objc_claimAutoreleasedReturnValue();
      [NGMReplayManager duplicateTagForPrekey:];
    }

    v7 = 0;
  }

  _Block_object_dispose(&v20, 8);
  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

void __42__NGMReplayManager_duplicateTagForPrekey___block_invoke(uint64_t a1)
{
  v2 = [[RegisteredPreKey alloc] initWithContext:*(a1 + 32)];
  v3 = [*(a1 + 40) dhKey];
  v4 = [v3 keyIdentifier];
  [(RegisteredPreKey *)v2 setTag:v4];

  v5 = *(a1 + 32);
  v6 = *(*(a1 + 48) + 8);
  obj = *(v6 + 40);
  [v5 save:&obj];
  objc_storeStrong((v6 + 40), obj);
}

- (void)objectContextWithError:(id *)a1 .cold.1(id *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_22B404000, v2, v3, "Failing to initialize a Managed Object Context for NGMTrustStore queries: %@.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)persistentContainerWithError:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_6(&dword_22B404000, v3, v4, "Failed to initialize NSManagedObjectModel with URL: %@", v5);
}

- (void)persistentContainerWithError:(os_log_t)log .cold.3(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = @"Failed to lookup replay database model in bundle.";
  _os_log_fault_impl(&dword_22B404000, log, OS_LOG_TYPE_FAULT, "%@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)persistentContainerWithError:(os_log_t)log .cold.4(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = @"Failed to lookup MessageProtection bundle.";
  _os_log_fault_impl(&dword_22B404000, log, OS_LOG_TYPE_FAULT, "%@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __49__NGMReplayManager_persistentContainerWithError___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)counterForDestinationWithIdentityKey:sendingIdentity:error:success:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_5(&dword_22B404000, v3, v4, "Failed to obtain the managed object context required to do the outgoing replay counter query: %@.", v5);
}

void __87__NGMReplayManager_counterForDestinationWithIdentityKey_sendingIdentity_error_success___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_2(a1) description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_22B404000, v3, v4, "Database query failed while obtaining sending counter: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __87__NGMReplayManager_counterForDestinationWithIdentityKey_sendingIdentity_error_success___block_invoke_cold_2(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_2(a1) description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_22B404000, v3, v4, "An issue occured persisting the managed object context: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)processFetchRequestAndValidate:(uint8_t *)buf counter:(os_log_t)log commit:theirIdentity:prekey:error:.cold.1(char a1, void *a2, uint8_t *buf, os_log_t log)
{
  v5 = @"validating";
  if (a1)
  {
    v5 = @"committing";
  }

  *buf = 138412546;
  *(buf + 4) = v5;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_22B404000, log, OS_LOG_TYPE_FAULT, "An error happened while %@ the counter: %@", buf, 0x16u);
}

- (void)processFetchRequestAndValidate:(id *)a1 counter:commit:theirIdentity:prekey:error:.cold.2(id *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_22B404000, v2, v3, "Failed to obtain the managed object context required to validate the incoming replay counter query: %@.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __93__NGMReplayManager_processFetchRequestAndValidate_counter_commit_theirIdentity_prekey_error___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_2(a1) description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void __93__NGMReplayManager_processFetchRequestAndValidate_counter_commit_theirIdentity_prekey_error___block_invoke_cold_2(id *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [*a1 dhKey];
  v2 = [v1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_22B404000, v3, v4, "There was an issue obtaining the registered prekey: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)registeredPrekeyForNGMPrekey:(void *)a1 objectContext:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_22B404000, v2, v3, "Database query failed while obtaining sending counter: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)registeredPrekeyForNGMPrekey:objectContext:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = [0 description];
  OUTLINED_FUNCTION_7();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)deleteReceivingCountersForKey:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_6(&dword_22B404000, v3, v4, "Database query failed while cleaning up old counters: %@", v5);
}

- (void)deleteReceivingCountersForKey:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_22B404000, v2, v3, "Failed to obtain the managed object context required to validate delete the receiving counters: %@.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)deleteExpiredSendingDestinations
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_5(&dword_22B404000, v3, v4, "Failed to obtain the managed object context required to validate delete the sending destinations: %@.", v5);
}

- (void)duplicateTagForPrekey:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_5(&dword_22B404000, v3, v4, "Failed to create a duplicate for the prekey. {error = %@}", v5);
}

- (void)duplicateTagForPrekey:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_5(&dword_22B404000, v3, v4, "Failed to obtain the managed object context required to delete the duplicate prekeys: %@.", v5);
}

@end