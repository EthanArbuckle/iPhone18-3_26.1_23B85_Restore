@interface NDOServerVersionUtilities
+ (BOOL)isHighServerVersionFeaturesetEnabled;
+ (id)clientConfig;
+ (id)getValidServerVersionCache;
+ (id)readAPSSupportedOverride;
+ (id)readULWebURLOverride;
+ (id)readWebURLOverride;
+ (void)_dictionaryFromURL:(id)l shouldRetry:(BOOL)retry withCompletion:(id)completion;
+ (void)_supportedVersionsForClientAndServer:(unint64_t)server withCompletion:(id)completion;
+ (void)getDecodedParamsForPath:(id)path withCompletion:(id)completion;
+ (void)getValidServerVersionCache;
+ (void)isHighServerVersionFeaturesetEnabled:(id)enabled;
+ (void)isHighServerVersionFeaturesetEnabled:(unint64_t)enabled withCompletion:(id)completion;
+ (void)readAPSSupportedOverride;
+ (void)serverVersionSupported:(id)supported;
@end

@implementation NDOServerVersionUtilities

+ (void)_dictionaryFromURL:(id)l shouldRetry:(BOOL)retry withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__2;
  v21[4] = __Block_byref_object_dispose__2;
  v22 = 0;
  if (retry)
  {
    mEMORY[0x277CCAD30] = [MEMORY[0x277CCAD30] sharedSession];
  }

  else
  {
    defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    [defaultSessionConfiguration setRequestCachePolicy:1];
    mEMORY[0x277CCAD30] = [MEMORY[0x277CCAD30] sessionWithConfiguration:defaultSessionConfiguration];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__NDOServerVersionUtilities__dictionaryFromURL_shouldRetry_withCompletion___block_invoke;
  v15[3] = &unk_2799763F0;
  v18 = v21;
  v12 = lCopy;
  v16 = v12;
  v13 = completionCopy;
  retryCopy = retry;
  v17 = v13;
  selfCopy = self;
  v14 = [mEMORY[0x277CCAD30] dataTaskWithURL:v12 completionHandler:v15];
  [v14 resume];

  _Block_object_dispose(v21, 8);
}

void __75__NDOServerVersionUtilities__dictionaryFromURL_shouldRetry_withCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (a2)
  {
    v21 = 0;
    v7 = [MEMORY[0x277CCAC58] propertyListWithData:a2 options:0 format:0 error:&v21];
    v8 = v21;
    v9 = a1 + 48;
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v7;

    if (v8)
    {
      v12 = _NDOLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __75__NDOServerVersionUtilities__dictionaryFromURL_shouldRetry_withCompletion___block_invoke_cold_1(a1);
      }
    }

    else
    {
      v16 = *(*(*v9 + 8) + 40);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 && *(a1 + 64) == 1)
      {
        v17 = _NDOLogSystem();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __75__NDOServerVersionUtilities__dictionaryFromURL_shouldRetry_withCompletion___block_invoke_cold_2();
        }

        [*(a1 + 56) _dictionaryFromURL:*(a1 + 32) shouldRetry:0 withCompletion:*(a1 + 40)];
        goto LABEL_19;
      }

      v18 = *(*(*v9 + 8) + 40);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (*(a1 + 64))
      {
        v19 = *(*(*(a1 + 48) + 8) + 40);
        v13 = *(*(a1 + 40) + 16);
        goto LABEL_18;
      }

      v20 = _NDOLogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        __75__NDOServerVersionUtilities__dictionaryFromURL_shouldRetry_withCompletion___block_invoke_cold_3(a1);
      }
    }

    v13 = *(*(a1 + 40) + 16);
LABEL_18:
    v13();
LABEL_19:

    goto LABEL_20;
  }

  v14 = _NDOLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    __75__NDOServerVersionUtilities__dictionaryFromURL_shouldRetry_withCompletion___block_invoke_cold_4(a1);
  }

  v15 = *(*(*(a1 + 48) + 8) + 40);
  (*(*(a1 + 40) + 16))();
LABEL_20:
}

+ (void)_supportedVersionsForClientAndServer:(unint64_t)server withCompletion:(id)completion
{
  v61 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = __Block_byref_object_copy__2;
  v55[4] = __Block_byref_object_dispose__2;
  v56 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__2;
  v53 = __Block_byref_object_dispose__2;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v54 = [standardUserDefaults objectForKey:@"ServerVersionOverride"];

  v8 = _NDOLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    serverCopy = server;
    _os_log_impl(&dword_25BD52000, v8, OS_LOG_TYPE_DEFAULT, " Server lookup policy:%ld", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__NDOServerVersionUtilities__supportedVersionsForClientAndServer_withCompletion___block_invoke;
  aBlock[3] = &unk_279976418;
  v47 = &v49;
  v9 = completionCopy;
  v46 = v9;
  v48 = v55;
  v10 = _Block_copy(aBlock);
  if (!v50[5])
  {
    v14 = +[NDOServerVersionUtilities getValidServerVersionCache];
    if (server == 1)
    {
      objc_storeStrong(v50 + 5, v14);
      if (v50[5])
      {
        v20 = _NDOLogSystem();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v50[5];
          *buf = 138412290;
          serverCopy = v21;
          _os_log_impl(&dword_25BD52000, v20, OS_LOG_TYPE_DEFAULT, "Using Cached Server version: %@", buf, 0xCu);
        }
      }

      else
      {
        v22 = MEMORY[0x277CCABB0];
        standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        v24 = [v22 numberWithInteger:{objc_msgSend(standardUserDefaults2, "integerForKey:", @"LowServerVersion"}];
        v25 = v24;
        v26 = &unk_286D6E4E0;
        if (v24)
        {
          v26 = v24;
        }

        v20 = v26;

        v27 = MEMORY[0x277CCABB0];
        standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        v29 = [v27 numberWithInteger:{objc_msgSend(standardUserDefaults3, "integerForKey:", @"HighServerVersion"}];
        v30 = v29;
        v31 = &unk_286D6E4F8;
        if (v29)
        {
          v31 = v29;
        }

        v32 = v31;

        v57[0] = @"LowServerVersion";
        v57[1] = @"HighServerVersion";
        v58[0] = v20;
        v58[1] = v32;
        v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
        v34 = v50[5];
        v50[5] = v33;

        v35 = _NDOLogSystem();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = v50[5];
          *buf = 138412290;
          serverCopy = v36;
          _os_log_impl(&dword_25BD52000, v35, OS_LOG_TYPE_DEFAULT, "Using Client version: %@", buf, 0xCu);
        }
      }

      (v10)[2](v10, v50[5]);
      goto LABEL_25;
    }

    if (server == 2)
    {
      v15 = MEMORY[0x277CBEBC0];
      standardUserDefaults4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v17 = [standardUserDefaults4 objectForKey:@"ServerVersionURL"];
      v18 = [v15 URLWithString:v17];

      v19 = v42;
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __81__NDOServerVersionUtilities__supportedVersionsForClientAndServer_withCompletion___block_invoke_32;
      v42[3] = &unk_279976440;
      v44 = &v49;
      v42[4] = v14;
      v43 = v10;
      [self _dictionaryFromURL:v18 shouldRetry:1 withCompletion:v42];
    }

    else
    {
      if (v50[5] || (objc_storeStrong(v50 + 5, v14), v50[5]))
      {
        (v10[2])(v10);
        goto LABEL_25;
      }

      v38 = MEMORY[0x277CBEBC0];
      standardUserDefaults5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v40 = [standardUserDefaults5 objectForKey:@"ServerVersionURL"];
      v18 = [v38 URLWithString:v40];

      v19 = v41;
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __81__NDOServerVersionUtilities__supportedVersionsForClientAndServer_withCompletion___block_invoke_36;
      v41[3] = &unk_279976378;
      v41[5] = &v49;
      v41[4] = v10;
      [self _dictionaryFromURL:v18 shouldRetry:1 withCompletion:v41];
    }

LABEL_25:
    goto LABEL_26;
  }

  v11 = _NDOLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v50[5];
    *buf = 138412290;
    serverCopy = v12;
    _os_log_impl(&dword_25BD52000, v11, OS_LOG_TYPE_DEFAULT, "Using Overridden Server version  %@", buf, 0xCu);
  }

  standardUserDefaults6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults6 setObject:v50[5] forKey:@"ServerVersionCache"];

  (v10)[2](v10, v50[5]);
LABEL_26:

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(v55, 8);

  v37 = *MEMORY[0x277D85DE8];
}

void __81__NDOServerVersionUtilities__supportedVersionsForClientAndServer_withCompletion___block_invoke(void *a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  v5 = _NDOLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1[5] + 8) + 40);
    *buf = 138412290;
    v38 = v6;
    _os_log_impl(&dword_25BD52000, v5, OS_LOG_TYPE_DEFAULT, "Server version  %@", buf, 0xCu);
  }

  if (!*(*(a1[5] + 8) + 40))
  {
    v9 = _NDOLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __81__NDOServerVersionUtilities__supportedVersionsForClientAndServer_withCompletion___block_invoke_cold_4();
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = _NDOLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __81__NDOServerVersionUtilities__supportedVersionsForClientAndServer_withCompletion___block_invoke_cold_1();
    }

LABEL_11:

    (*(a1[4] + 16))();
    goto LABEL_36;
  }

  v7 = [*(*(a1[5] + 8) + 40) objectForKey:@"LowServerVersion"];
  if (_NSIsNSString())
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "integerValue")}];
  }

  else
  {
    v8 = v7;
  }

  v10 = v8;
  if (!v8)
  {
    v13 = _NDOLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __81__NDOServerVersionUtilities__supportedVersionsForClientAndServer_withCompletion___block_invoke_cold_3();
    }

    (*(a1[4] + 16))();
    goto LABEL_32;
  }

  v11 = [*(*(a1[5] + 8) + 40) objectForKey:@"HighServerVersion"];

  if (_NSIsNSString())
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "integerValue")}];
  }

  else
  {
    v12 = v11;
  }

  v14 = v12;
  if (v12)
  {
    v15 = [MEMORY[0x277CBEB98] setWithObjects:{v10, v12, 0}];
    v16 = *(a1[6] + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v18 = _NDOLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*(a1[6] + 8) + 40);
      *buf = 138412290;
      v38 = v19;
      _os_log_impl(&dword_25BD52000, v18, OS_LOG_TYPE_DEFAULT, "Server versions '%@'", buf, 0xCu);
    }

    v20 = MEMORY[0x277CCABB0];
    v21 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v22 = [v20 numberWithInteger:{objc_msgSend(v21, "integerForKey:", @"LowServerVersion"}];
    v23 = v22;
    v24 = &unk_286D6E4E0;
    if (v22)
    {
      v24 = v22;
    }

    v25 = v24;

    v26 = MEMORY[0x277CCABB0];
    v27 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v28 = [v26 numberWithInteger:{objc_msgSend(v27, "integerForKey:", @"HighServerVersion"}];
    v29 = v28;
    v30 = &unk_286D6E4F8;
    if (v28)
    {
      v30 = v28;
    }

    v31 = v30;

    v7 = [MEMORY[0x277CBEB98] setWithObjects:{v25, v31, 0}];
    v32 = _NDOLogSystem();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v7;
      _os_log_impl(&dword_25BD52000, v32, OS_LOG_TYPE_DEFAULT, "Client versions '%@'", buf, 0xCu);
    }

    v33 = [v7 mutableCopy];
    [v33 intersectSet:*(*(a1[6] + 8) + 40)];
    v34 = _NDOLogSystem();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v33;
      _os_log_impl(&dword_25BD52000, v34, OS_LOG_TYPE_DEFAULT, "clientAndServerSet '%@'", buf, 0xCu);
    }

    (*(a1[4] + 16))();
LABEL_32:

    goto LABEL_36;
  }

  v35 = _NDOLogSystem();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    __81__NDOServerVersionUtilities__supportedVersionsForClientAndServer_withCompletion___block_invoke_cold_2();
  }

  (*(a1[4] + 16))();
LABEL_36:

  v36 = *MEMORY[0x277D85DE8];
}

void __81__NDOServerVersionUtilities__supportedVersionsForClientAndServer_withCompletion___block_invoke_32(uint64_t a1, void *a2)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v5 = *(*(a1 + 48) + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  if (!v7)
  {
    objc_storeStrong(v6, *(a1 + 32));
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v8 = MEMORY[0x277CCABB0];
      v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v10 = [v8 numberWithInteger:{objc_msgSend(v9, "integerForKey:", @"LowServerVersion"}];
      v11 = v10;
      v12 = &unk_286D6E4E0;
      if (v10)
      {
        v12 = v10;
      }

      v13 = v12;

      v14 = MEMORY[0x277CCABB0];
      v15 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v16 = [v14 numberWithInteger:{objc_msgSend(v15, "integerForKey:", @"HighServerVersion"}];
      v17 = v16;
      v18 = &unk_286D6E4F8;
      if (v16)
      {
        v18 = v16;
      }

      v19 = v18;

      v32[0] = @"LowServerVersion";
      v32[1] = @"HighServerVersion";
      v33[0] = v13;
      v33[1] = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
      v21 = *(*(a1 + 48) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

      v23 = _NDOLogSystem();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(*(*(a1 + 48) + 8) + 40);
        v30 = 138412290;
        v31 = v24;
        _os_log_impl(&dword_25BD52000, v23, OS_LOG_TYPE_DEFAULT, "Using Client version: %@", &v30, 0xCu);
      }
    }
  }

  v25 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v25 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:@"ServerVersionCache"];

  v26 = _NDOLogSystem();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *(*(*(a1 + 48) + 8) + 40);
    v30 = 138412290;
    v31 = v27;
    _os_log_impl(&dword_25BD52000, v26, OS_LOG_TYPE_DEFAULT, "Caching Server version  %@", &v30, 0xCu);
  }

  v28 = *(*(*(a1 + 48) + 8) + 40);
  (*(*(a1 + 40) + 16))();

  v29 = *MEMORY[0x277D85DE8];
}

void __81__NDOServerVersionUtilities__supportedVersionsForClientAndServer_withCompletion___block_invoke_36(uint64_t a1, void *a2)
{
  v29[2] = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v5 setObject:*(*(*(a1 + 40) + 8) + 40) forKey:@"ServerVersionCache"];

    v6 = _NDOLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(*(a1 + 40) + 8) + 40);
      v26 = 138412290;
      v27 = v7;
      _os_log_impl(&dword_25BD52000, v6, OS_LOG_TYPE_DEFAULT, "Caching Server version  %@", &v26, 0xCu);
    }
  }

  else
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v10 = [v8 numberWithInteger:{objc_msgSend(v9, "integerForKey:", @"LowServerVersion"}];
    v11 = v10;
    v12 = &unk_286D6E4E0;
    if (v10)
    {
      v12 = v10;
    }

    v6 = v12;

    v13 = MEMORY[0x277CCABB0];
    v14 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v15 = [v13 numberWithInteger:{objc_msgSend(v14, "integerForKey:", @"HighServerVersion"}];
    v16 = v15;
    v17 = &unk_286D6E4F8;
    if (v15)
    {
      v17 = v15;
    }

    v18 = v17;

    v28[0] = @"LowServerVersion";
    v28[1] = @"HighServerVersion";
    v29[0] = v6;
    v29[1] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
    v20 = *(*(a1 + 40) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    v22 = _NDOLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(*(*(a1 + 40) + 8) + 40);
      v26 = 138412290;
      v27 = v23;
      _os_log_impl(&dword_25BD52000, v22, OS_LOG_TYPE_DEFAULT, "Using Client version: %@", &v26, 0xCu);
    }
  }

  v24 = *(*(*(a1 + 40) + 8) + 40);
  (*(*(a1 + 32) + 16))();

  v25 = *MEMORY[0x277D85DE8];
}

+ (id)getValidServerVersionCache
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"ServerVersionCache"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = _NDOLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[NDOServerVersionUtilities getValidServerVersionCache];
    }

    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults2 removeObjectForKey:@"ServerVersionCache"];

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

+ (void)serverVersionSupported:(id)supported
{
  supportedCopy = supported;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__NDOServerVersionUtilities_serverVersionSupported___block_invoke;
  v6[3] = &unk_279976468;
  v7 = supportedCopy;
  v5 = supportedCopy;
  [self _supportedVersionsForClientAndServer:2 withCompletion:v6];
}

void __52__NDOServerVersionUtilities_serverVersionSupported___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = _NDOLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_25BD52000, v4, OS_LOG_TYPE_DEFAULT, "Server version supported by client version - '%@'", &v6, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x277D85DE8];
}

+ (void)isHighServerVersionFeaturesetEnabled:(unint64_t)enabled withCompletion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__NDOServerVersionUtilities_isHighServerVersionFeaturesetEnabled_withCompletion___block_invoke;
  v8[3] = &unk_279976468;
  v9 = completionCopy;
  v7 = completionCopy;
  [self _supportedVersionsForClientAndServer:enabled withCompletion:v8];
}

void __81__NDOServerVersionUtilities_isHighServerVersionFeaturesetEnabled_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v6 = [v4 numberWithInteger:{objc_msgSend(v5, "integerForKey:", @"HighServerVersion"}];

    v7 = [v3 containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = _NDOLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (v7)
    {
      v9 = @"YES";
    }

    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_25BD52000, v8, OS_LOG_TYPE_DEFAULT, "High Server version supported - %@", &v11, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v10 = *MEMORY[0x277D85DE8];
}

+ (void)isHighServerVersionFeaturesetEnabled:(id)enabled
{
  enabledCopy = enabled;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__NDOServerVersionUtilities_isHighServerVersionFeaturesetEnabled___block_invoke;
  v6[3] = &unk_279976490;
  v7 = enabledCopy;
  v5 = enabledCopy;
  [self isHighServerVersionFeaturesetEnabled:0 withCompletion:v6];
}

+ (BOOL)isHighServerVersionFeaturesetEnabled
{
  v19 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__NDOServerVersionUtilities_isHighServerVersionFeaturesetEnabled__block_invoke;
  v10[3] = &unk_2799764B8;
  v10[4] = &v11;
  [self _supportedVersionsForClientAndServer:1 withCompletion:v10];
  if ([v12[5] count])
  {
    v2 = MEMORY[0x277CCABB0];
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [v2 numberWithInteger:{objc_msgSend(standardUserDefaults, "integerForKey:", @"HighServerVersion"}];

    v5 = [v12[5] containsObject:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = _NDOLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v5)
    {
      v7 = @"YES";
    }

    *buf = 138412290;
    v18 = v7;
    _os_log_impl(&dword_25BD52000, v6, OS_LOG_TYPE_DEFAULT, "High Server version supported - %@", buf, 0xCu);
  }

  _Block_object_dispose(&v11, 8);
  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)readWebURLOverride
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _NDOLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "+[NDOServerVersionUtilities readWebURLOverride]";
    _os_log_impl(&dword_25BD52000, v2, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults objectForKey:@"WebFlowURL"];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)readULWebURLOverride
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _NDOLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "+[NDOServerVersionUtilities readULWebURLOverride]";
    _os_log_impl(&dword_25BD52000, v2, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults objectForKey:@"ULWebFlowURL"];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)readAPSSupportedOverride
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = _NDOLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "+[NDOServerVersionUtilities readAPSSupportedOverride]";
    _os_log_impl(&dword_25BD52000, v2, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults objectForKey:@"isAPSSupported"];

  if (!v4)
  {
    v5 = _NDOLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      +[(NDOServerVersionUtilities *)v5];
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)getDecodedParamsForPath:(id)path withCompletion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  completionCopy = completion;
  v8 = _NDOLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [NDOServerVersionUtilities getDecodedParamsForPath:v8 withCompletion:?];
  }

  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__2;
  v30[4] = __Block_byref_object_dispose__2;
  v31 = 0;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v10 = [standardUserDefaults stringForKey:@"UniversalLinkEncodedParams"];

  v11 = dispatch_group_create();
  if (pathCopy && [pathCopy length] || v10)
  {
    dispatch_group_enter(v11);
    v13 = MEMORY[0x277CBEBC0];
    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v15 = [standardUserDefaults2 objectForKey:@"ServerVersionURL"];
    v16 = [v13 URLWithString:v15];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __68__NDOServerVersionUtilities_getDecodedParamsForPath_withCompletion___block_invoke;
    v25[3] = &unk_2799764E0;
    v26 = v10;
    v17 = pathCopy;
    v27 = v17;
    v29 = v30;
    v18 = v11;
    v28 = v18;
    [self _dictionaryFromURL:v16 shouldRetry:1 withCompletion:v25];
    v19 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__NDOServerVersionUtilities_getDecodedParamsForPath_withCompletion___block_invoke_2;
    block[3] = &unk_279976508;
    v24 = v30;
    v23 = completionCopy;
    v22 = v17;
    dispatch_group_notify(v18, v19, block);
  }

  else
  {
    v12 = _NDOLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v33 = "+[NDOServerVersionUtilities getDecodedParamsForPath:withCompletion:]";
      v34 = 2114;
      v35 = pathCopy;
      _os_log_impl(&dword_25BD52000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: No valid params found for: %{public}@", buf, 0x16u);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }

  _Block_object_dispose(v30, 8);
  v20 = *MEMORY[0x277D85DE8];
}

void __68__NDOServerVersionUtilities_getDecodedParamsForPath_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = [a2 objectForKey:@"ulmapping"];
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
LABEL_7:
    v4 = v3;
LABEL_8:
    if ([v4 length])
    {
      v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v4 options:0];
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 encoding:4];
      v7 = *(*(a1 + 56) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    goto LABEL_10;
  }

  v4 = [v9 objectForKey:*(a1 + 40)];
  if (v4)
  {
    goto LABEL_8;
  }

LABEL_10:

LABEL_11:
  dispatch_group_leave(*(a1 + 48));
}

uint64_t __68__NDOServerVersionUtilities_getDecodedParamsForPath_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  if (v2 && [v2 length])
  {
    v3 = *(*(*(a1 + 48) + 8) + 40);
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  else
  {
    v6 = _NDOLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __68__NDOServerVersionUtilities_getDecodedParamsForPath_withCompletion___block_invoke_2_cold_1(a1);
    }

    return (*(*(a1 + 40) + 16))();
  }
}

+ (id)clientConfig
{
  getValidServerVersionCache = [self getValidServerVersionCache];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [getValidServerVersionCache objectForKey:@"clientConfig"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }
  }

  v3 = 0;
LABEL_5:

  return v3;
}

void __75__NDOServerVersionUtilities__dictionaryFromURL_shouldRetry_withCompletion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __75__NDOServerVersionUtilities__dictionaryFromURL_shouldRetry_withCompletion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __75__NDOServerVersionUtilities__dictionaryFromURL_shouldRetry_withCompletion___block_invoke_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  v2 = *(*(*v1 + 8) + 40);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __75__NDOServerVersionUtilities__dictionaryFromURL_shouldRetry_withCompletion___block_invoke_cold_4(uint64_t a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __81__NDOServerVersionUtilities__supportedVersionsForClientAndServer_withCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __81__NDOServerVersionUtilities__supportedVersionsForClientAndServer_withCompletion___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __81__NDOServerVersionUtilities__supportedVersionsForClientAndServer_withCompletion___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __81__NDOServerVersionUtilities__supportedVersionsForClientAndServer_withCompletion___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)getValidServerVersionCache
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)readAPSSupportedOverride
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136446210;
  v3 = "+[NDOServerVersionUtilities readAPSSupportedOverride]";
  _os_log_debug_impl(&dword_25BD52000, log, OS_LOG_TYPE_DEBUG, "%{public}s: Override isAPSSupported nil", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)getDecodedParamsForPath:(os_log_t)log withCompletion:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "+[NDOServerVersionUtilities getDecodedParamsForPath:withCompletion:]";
  _os_log_debug_impl(&dword_25BD52000, log, OS_LOG_TYPE_DEBUG, "%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __68__NDOServerVersionUtilities_getDecodedParamsForPath_withCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

@end