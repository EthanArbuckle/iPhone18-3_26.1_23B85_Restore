@interface HTHangSymbolicator
+ (BOOL)isLogFileSymbolicated:(id)a3;
+ (HTHangSymbolicator)sharedSymbolicator;
+ (id)symbolicatedLogURLForFile:(id)a3;
- (BOOL)canSymbolicateLogFile:(id)a3;
- (HTHangSymbolicator)init;
- (void)symbolicateLogFile:(id)a3 completion:(id)a4;
- (void)symbolicateLogFiles:(id)a3 completion:(id)a4;
@end

@implementation HTHangSymbolicator

- (HTHangSymbolicator)init
{
  v10.receiver = self;
  v10.super_class = HTHangSymbolicator;
  v2 = [(HTHangSymbolicator *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(HTDeveloperSettings);
    settings = v2->_settings;
    v2->_settings = v3;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("com.apple.DeveloperSettings.HangSymbolicator", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v2->_allowListingOnDemandVPNs = 0;
    v8 = v2;
  }

  return v2;
}

+ (HTHangSymbolicator)sharedSymbolicator
{
  if (sharedSymbolicator_onceToken != -1)
  {
    +[HTHangSymbolicator sharedSymbolicator];
  }

  v3 = sharedSymbolicator_instance;

  return v3;
}

uint64_t __40__HTHangSymbolicator_sharedSymbolicator__block_invoke()
{
  sharedSymbolicator_instance = objc_alloc_init(HTHangSymbolicator);

  return MEMORY[0x2821F96F8]();
}

- (BOOL)canSymbolicateLogFile:(id)a3
{
  v4 = a3;
  if (!-[HTDeveloperSettings isInternalBuild](self->_settings, "isInternalBuild") || +[HTHangSymbolicator isLogFileSymbolicated:](HTHangSymbolicator, "isLogFileSymbolicated:", v4) || (+[HTHangSymbolicator symbolicatedLogURLForFile:](HTHangSymbolicator, "symbolicatedLogURLForFile:", v4), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 checkResourceIsReachableAndReturnError:0], v5, (v6 & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    v9 = [v4 pathExtension];
    if ([v9 isEqualToString:@"synced"])
    {
      v10 = [v4 URLByDeletingPathExtension];
      v11 = [v10 pathExtension];

      v9 = v11;
    }

    v7 = [v9 isEqualToString:@"ips"];
  }

  return v7;
}

- (void)symbolicateLogFile:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HTHangSymbolicator_symbolicateLogFile_completion___block_invoke;
  block[3] = &unk_2796A9048;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __52__HTHangSymbolicator_symbolicateLogFile_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v25 = 0;
  v3 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v2 options:0 error:&v25];
  if (v3)
  {
    v4 = MEMORY[0x277CCAB70];
    v5 = [MEMORY[0x277CBEBC0] URLWithString:@"https://speedtracer.apple.com/api/v2/trace"];
    v6 = [v4 requestWithURL:v5];

    [v6 setHTTPMethod:@"POST"];
    [v6 setValue:@"developer-settings-dev" forHTTPHeaderField:@"X-ST-GroupName"];
    v7 = [MEMORY[0x277CCAD78] UUID];
    v8 = [v7 UUIDString];

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"multipart/form-data boundary=%@", v8];;
    [v6 setValue:v9 forHTTPHeaderField:@"Content-Type"];

    v10 = [MEMORY[0x277CBEB28] data];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __requestWithLogFile_block_invoke;
    v26[3] = &unk_2796A91B0;
    v27 = v10;
    v11 = v10;
    v12 = MEMORY[0x25306A220](v26);
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"\r\n--%@\r\n", v8];
    (v12)[2](v12, v13);

    (v12)[2](v12, @"Content-Disposition: form-data; name=log_content; filename=CrashLog\r\n");
    (v12)[2](v12, @"Content-Type: text/plain\r\n\r\n");
    [v11 appendData:v3];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"\r\n--%@--\r\n", v8];
    (v12)[2](v12, v14);

    v15 = v11;
  }

  else
  {
    v11 = 0;
    v6 = 0;
  }

  v16 = v11;
  v17 = v25;
  if (v6)
  {
    v18 = [MEMORY[0x277CCAD30] sharedSession];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __52__HTHangSymbolicator_symbolicateLogFile_completion___block_invoke_2;
    v22[3] = &unk_2796A9070;
    v24 = *(a1 + 48);
    v21 = *(a1 + 32);
    v19 = v21.i64[0];
    v23 = vextq_s8(v21, v21, 8uLL);
    v20 = [v18 uploadTaskWithRequest:v6 fromData:v16 completionHandler:v22];
    [v20 resume];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __52__HTHangSymbolicator_symbolicateLogFile_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v10 statusCode];
      v12 = [v10 allHeaderFields];
      *buf = 134218242;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_2510AF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Symbolication task returned with status code %ld: %@", buf, 0x16u);
    }
  }

  if (v7)
  {
    v13 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__HTHangSymbolicator_symbolicateLogFile_completion___block_invoke_12;
    block[3] = &unk_2796A9048;
    v16 = v7;
    v18 = *(a1 + 48);
    v17 = *(a1 + 40);
    dispatch_async(v13, block);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __52__HTHangSymbolicator_symbolicateLogFile_completion___block_invoke_2_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __52__HTHangSymbolicator_symbolicateLogFile_completion___block_invoke_12(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v38 = 0;
  v3 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v2 options:0 error:&v38];
  v4 = v38;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 objectForKeyedSubscript:@"symbolicated_log"], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [HTHangSymbolicator symbolicatedLogURLForFile:*(a1 + 40)];
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [v8 temporaryDirectory];
    v10 = [v7 lastPathComponent];
    v11 = [v9 URLByAppendingPathComponent:v10];

    v12 = [v6 dataUsingEncoding:4];
    v37 = v4;
    LODWORD(v10) = [v12 writeToURL:v11 options:1 error:&v37];
    v13 = v37;

    if (v10)
    {
      v28 = v7;
      v29 = v6;
      v30 = v3;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v14 = *MEMORY[0x277D0FA40];
      v39[0] = *MEMORY[0x277D0FA38];
      v39[1] = v14;
      v15 = *MEMORY[0x277D0FA58];
      v39[2] = *MEMORY[0x277D0FA50];
      v39[3] = v15;
      v39[4] = *MEMORY[0x277D0FA48];
      obj = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:5];
      v16 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v34;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v34 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v33 + 1) + 8 * i);
            v21 = getxattr([*(a1 + 40) fileSystemRepresentation], objc_msgSend(v20, "UTF8String"), 0, 0x2710uLL, 0, 0);
            if ((v21 & 0x8000000000000000) == 0)
            {
              v22 = v21;
              v23 = [MEMORY[0x277CBEB28] dataWithLength:v21];
              getxattr([*(a1 + 40) fileSystemRepresentation], objc_msgSend(v20, "UTF8String"), objc_msgSend(v23, "mutableBytes"), v22, 0, 0);
              setxattr([v11 fileSystemRepresentation], objc_msgSend(v20, "UTF8String"), objc_msgSend(v23, "bytes"), v22, 0, 0);
            }
          }

          v17 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
        }

        while (v17);
      }

      v24 = [MEMORY[0x277CCAA00] defaultManager];
      v7 = v28;
      v32 = v13;
      v25 = [v24 moveItemAtURL:v11 toURL:v28 error:&v32];
      v4 = v32;

      if (v25)
      {
        (*(*(a1 + 48) + 16))();
        v6 = v29;
        v3 = v30;
      }

      else
      {
        v6 = v29;
        v3 = v30;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          __52__HTHangSymbolicator_symbolicateLogFile_completion___block_invoke_12_cold_2();
        }

        (*(*(a1 + 48) + 16))();
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __52__HTHangSymbolicator_symbolicateLogFile_completion___block_invoke_12_cold_1();
      }

      (*(*(a1 + 48) + 16))();
      v4 = v13;
    }
  }

  else
  {
    v26 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v3)
    {
      if (v26)
      {
        __52__HTHangSymbolicator_symbolicateLogFile_completion___block_invoke_12_cold_3(v3, (a1 + 32));
      }
    }

    else if (v26)
    {
      __52__HTHangSymbolicator_symbolicateLogFile_completion___block_invoke_12_cold_4(v4, (a1 + 32));
    }

    (*(*(a1 + 48) + 16))();
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)symbolicateLogFiles:(id)a3 completion:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v19 = a4;
  group = dispatch_group_create();
  v6 = [MEMORY[0x277CBEB18] array];
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3032000000;
  v46[3] = __Block_byref_object_copy_;
  v46[4] = __Block_byref_object_dispose_;
  v47 = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v45 = 0;
  objc_initWeak(&location, self);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v7)
  {
    v8 = *v40;
    v20 = v34;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v39 + 1) + 8 * i);
        v11 = [HTHangSymbolicator symbolicatedLogURLForFile:v10, v19, v20];
        if ([v11 checkResourceIsReachableAndReturnError:0])
        {
          [v6 addObject:v11];
        }

        else
        {
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v34[0] = __53__HTHangSymbolicator_symbolicateLogFiles_completion___block_invoke;
          v34[1] = &unk_2796A9110;
          v36 = v44;
          v12 = group;
          v35 = v12;
          objc_copyWeak(&v38, &location);
          v37 = v46;
          v13 = MEMORY[0x25306A220](v33);
          dispatch_group_enter(v12);
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __53__HTHangSymbolicator_symbolicateLogFiles_completion___block_invoke_5;
          v29[3] = &unk_2796A9160;
          v30 = v6;
          v14 = v13;
          v32 = v14;
          v31 = v12;
          [(HTHangSymbolicator *)self symbolicateLogFile:v10 completion:v29];

          objc_destroyWeak(&v38);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v7);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HTHangSymbolicator_symbolicateLogFiles_completion___block_invoke_7;
  block[3] = &unk_2796A9188;
  v25 = v6;
  v26 = obj;
  v27 = v19;
  v28 = v46;
  v15 = obj;
  v16 = v6;
  v17 = v19;
  dispatch_group_notify(group, MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&location);
  _Block_object_dispose(v44, 8);
  _Block_object_dispose(v46, 8);

  v18 = *MEMORY[0x277D85DE8];
}

void __53__HTHangSymbolicator_symbolicateLogFiles_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v5 = [v3 domain];
    if ([v5 isEqual:*MEMORY[0x277CCA738]])
    {
      v6 = [v4 code];

      if (v6 == -1003)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        dispatch_group_enter(*(a1 + 32));
        v16 = 0;
        v17 = &v16;
        v18 = 0x2050000000;
        v7 = getNEVPNManagerClass_softClass;
        v19 = getNEVPNManagerClass_softClass;
        if (!getNEVPNManagerClass_softClass)
        {
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __getNEVPNManagerClass_block_invoke;
          v15[3] = &unk_2796A9020;
          v15[4] = &v16;
          __getNEVPNManagerClass_block_invoke(v15);
          v7 = v17[3];
        }

        v8 = v7;
        _Block_object_dispose(&v16, 8);
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __53__HTHangSymbolicator_symbolicateLogFiles_completion___block_invoke_2;
        v11[3] = &unk_2796A90E8;
        objc_copyWeak(&v14, (a1 + 56));
        v9 = *(a1 + 32);
        v10 = *(a1 + 48);
        v12 = v9;
        v13 = v10;
        [v7 loadAllFromPreferencesWithCompletionHandler:v11];

        objc_destroyWeak(&v14);
      }
    }

    else
    {
    }
  }
}

void __53__HTHangSymbolicator_symbolicateLogFiles_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__HTHangSymbolicator_symbolicateLogFiles_completion___block_invoke_3;
  v15[3] = &unk_2796A9098;
  objc_copyWeak(&v16, (a1 + 48));
  v7 = [v5 indexesOfObjectsPassingTest:v15];
  if ([v7 count])
  {
    v8 = [v5 objectsAtIndexes:v7];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__HTHangSymbolicator_symbolicateLogFiles_completion___block_invoke_4;
    block[3] = &unk_2796A90C0;
    v13 = v8;
    v11 = *(a1 + 32);
    v9 = v11;
    v14 = v11;
    v10 = v8;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
  }

  objc_destroyWeak(&v16);
}

uint64_t __53__HTHangSymbolicator_symbolicateLogFiles_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 connection];
  v6 = [v5 status];

  if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v7 = 0;
  }

  else if ([v3 isOnDemandEnabled])
  {
    v7 = [WeakRetained allowListingOnDemandVPNs];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

void __53__HTHangSymbolicator_symbolicateLogFiles_completion___block_invoke_4(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 32));
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void __53__HTHangSymbolicator_symbolicateLogFiles_completion___block_invoke_5(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HTHangSymbolicator_symbolicateLogFiles_completion___block_invoke_6;
  block[3] = &unk_2796A9138;
  v10 = v5;
  v11 = a1[4];
  v12 = v6;
  v14 = a1[6];
  v13 = a1[5];
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __53__HTHangSymbolicator_symbolicateLogFiles_completion___block_invoke_6(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) addObject:?];
  }

  if (*(a1 + 48))
  {
    (*(*(a1 + 64) + 16))();
  }

  v2 = *(a1 + 56);

  dispatch_group_leave(v2);
}

uint64_t __53__HTHangSymbolicator_symbolicateLogFiles_completion___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = [v3 count];
  if (v4 == [*(a1 + 40) count])
  {
    v5 = 0;
  }

  else
  {
    v5 = *(*(*(a1 + 56) + 8) + 40);
  }

  v6 = *(v2 + 16);

  return v6(v2, v3, v5);
}

+ (id)symbolicatedLogURLForFile:(id)a3
{
  v3 = a3;
  v4 = [v3 lastPathComponent];
  v5 = [v4 pathExtension];
  v6 = [v5 isEqualToString:@"synced"];

  if (v6)
  {
    v7 = [v4 stringByDeletingPathExtension];

    v4 = v7;
  }

  v8 = [v4 pathExtension];
  v9 = [v4 stringByDeletingPathExtension];

  v10 = [v9 stringByAppendingString:@"_symbolicated"];

  v11 = [v10 stringByAppendingPathExtension:v8];

  v12 = [v3 URLByDeletingLastPathComponent];

  v13 = [v12 URLByAppendingPathComponent:v11];

  return v13;
}

+ (BOOL)isLogFileSymbolicated:(id)a3
{
  v3 = a3;
  v4 = [v3 pathExtension];
  v5 = [v4 isEqualToString:@"synced"];

  v6 = v3;
  if (v5)
  {
    v6 = [v3 URLByDeletingPathExtension];
  }

  v7 = [v3 URLByDeletingPathExtension];
  v8 = [v7 lastPathComponent];
  v9 = [v8 hasSuffix:@"_symbolicated"];

  return v9;
}

void __52__HTHangSymbolicator_symbolicateLogFile_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__HTHangSymbolicator_symbolicateLogFile_completion___block_invoke_12_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__HTHangSymbolicator_symbolicateLogFile_completion___block_invoke_12_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__HTHangSymbolicator_symbolicateLogFile_completion___block_invoke_12_cold_3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:*a2 encoding:4];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __52__HTHangSymbolicator_symbolicateLogFile_completion___block_invoke_12_cold_4(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:*a2 encoding:4];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end