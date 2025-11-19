id BLDefaultLog()
{
  if (qword_280BC59C0 != -1)
  {
    sub_241D20348();
  }

  v1 = qword_280BC59C8;

  return v1;
}

uint64_t sub_241D203A0()
{
  qword_280BC59C8 = os_log_create("com.apple.iBooks.BookLibrary", "BookLibrary");

  return MEMORY[0x2821F96F8]();
}

void sub_241D20504()
{
  v6 = *MEMORY[0x277D85DE8];
  if (qword_280BC58C8)
  {
    v0 = qword_280BC58C8;
  }

  else
  {
    v0 = objc_opt_new();
  }

  v1 = qword_280BC5948;
  qword_280BC5948 = v0;

  v2 = BLDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = qword_280BC5948;
    _os_log_impl(&dword_241D1F000, v2, OS_LOG_TYPE_DEFAULT, "[DownloadQueueNonUI]: using singelton instance: %@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

uint64_t sub_241D2066C(uint64_t a1)
{
  qword_280BC58C0 = [[BLDownloadQueueServerProgressObserver alloc] initWithDownloadQueue:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

void sub_241D208E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241D208F8(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  if (v2)
  {
    v3 = v2 == 4;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = BLServiceProxyLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_241D1F000, v4, OS_LOG_TYPE_DEFAULT, "[BLServiceProxy] Creating connection to bookassetd.", buf, 2u);
    }

    v5 = [BLServiceProxyConnectionFactory connectionWithMachServiceName:@"com.apple.ibooks.BLService" options:0];
    [*(a1 + 32) setConnection:v5];

    v6 = +[BLServiceInterface mainInterface];
    v7 = [*(a1 + 32) connection];
    [v7 setRemoteObjectInterface:v6];

    objc_initWeak(buf, *(a1 + 32));
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_241D36A94;
    v19[3] = &unk_278D17598;
    objc_copyWeak(&v20, buf);
    v8 = [*(a1 + 32) connection];
    [v8 setInterruptionHandler:v19];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_241D36BF4;
    v17[3] = &unk_278D17598;
    objc_copyWeak(&v18, buf);
    v9 = [*(a1 + 32) connection];
    [v9 setInvalidationHandler:v17];

    v10 = [*(a1 + 32) progressReceiver];

    if (v10)
    {
      v11 = +[BLServiceInterface progressInterface];
      v12 = [*(a1 + 32) connection];
      [v12 setExportedInterface:v11];

      v13 = [*(a1 + 32) progressReceiver];
      v14 = [*(a1 + 32) connection];
      [v14 setExportedObject:v13];
    }

    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) state] != 0;
    [*(a1 + 32) setState:2];
    v15 = [*(a1 + 32) connection];
    [v15 resume];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  else if (v2 == 3)
  {
    v16 = BLServiceProxyLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_241D1F000, v16, OS_LOG_TYPE_DEFAULT, "[BLServiceProxy] Attempting to reconnect to bookassetd after interruption.", buf, 2u);
    }

    [*(a1 + 32) setState:2];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_241D20C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id BLServiceProxyLog()
{
  if (qword_280BC59D0 != -1)
  {
    sub_241D20C80();
  }

  v1 = qword_280BC59D8;

  return v1;
}

uint64_t sub_241D20C94()
{
  qword_280BC59D8 = os_log_create("com.apple.iBooks.BookLibrary", "BLServiceProxy");

  return MEMORY[0x2821F96F8]();
}

id BLDownloadQueueServiceProgressMonitorLog()
{
  if (qword_280BC5958 != -1)
  {
    sub_241D20F54();
  }

  v1 = qword_280BC5960;

  return v1;
}

uint64_t sub_241D20FAC()
{
  qword_280BC5960 = os_log_create("com.apple.bookassetd", "BLDownloadQueueServiceProgressMonitor");

  return MEMORY[0x2821F96F8]();
}

id BLDaemonLog()
{
  if (qword_280BC5968 != -1)
  {
    sub_241D20FF0();
  }

  v1 = qword_280BC5970;

  return v1;
}

id BLServiceLog()
{
  if (qword_280BC58E0 != -1)
  {
    sub_241D76C38();
  }

  v1 = qword_280BC58E8;

  return v1;
}

id BLServiceDownloadManagerLog()
{
  if (qword_280BC5900 != -1)
  {
    sub_241D76C88();
  }

  v1 = qword_280BC5908;

  return v1;
}

void sub_241D213C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"BKPurchases" ofType:@"momd"];

  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:@"[BLJaliscoServerSource managedObjectModel]" format:@"[[NSBundle bundleForClass:[self class]] pathForResource:@'BKPurchases' ofType:@'momd'] failed"];
  }

  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4 isDirectory:1];
  v5 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:v8];
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;
}

id BLJaliscoLog()
{
  if (qword_280BC5898 != -1)
  {
    sub_241D218DC();
  }

  v1 = qword_280BC58A0;

  return v1;
}

uint64_t sub_241D219E8()
{
  qword_280BC58A0 = os_log_create("com.apple.iBooks.BookLibrary", "BLJalisco");

  return MEMORY[0x2821F96F8]();
}

void sub_241D21AF8()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = container_system_group_path_for_identifier();
  if (v0)
  {
    v1 = v0;
    v2 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:v0 isDirectory:1 relativeToURL:0];
    v3 = [v2 URLByAppendingPathComponent:@"Library"];

    free(v1);
  }

  else
  {
    v4 = BLDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "systemgroup.com.apple.media.books.managed";
      v10 = 2048;
      v11 = 1;
      _os_log_impl(&dword_241D1F000, v4, OS_LOG_TYPE_ERROR, "Error getting system group container: %s => %llu", buf, 0x16u);
    }

    v3 = 0;
  }

  v5 = [v3 path];
  v6 = qword_280BC5990;
  qword_280BC5990 = v5;

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t sub_241D21D34()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = qword_280BC5840;
  qword_280BC5840 = v0;

  v2 = qword_280BC5840;

  return [v2 setDateFormat:@"~~~~~HH:mm:ss;yyyy-MM-dd"];
}

void sub_241D21DE8()
{
  v3 = [MEMORY[0x277CBEBC0] bu_booksRepositoryURL];
  v0 = [v3 path];
  v1 = [v0 stringByAppendingPathComponent:@"Purchases"];
  v2 = qword_280BC5980;
  qword_280BC5980 = v1;
}

uint64_t sub_241D23028()
{
  qword_280BC59A8 = dispatch_queue_create("default_book_library", 0);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_241D230F8(uint64_t result)
{
  if (!qword_280BC59B0)
  {
    qword_280BC59B0 = [objc_alloc(*(result + 32)) _init];

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

void sub_241D23DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241D23E0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_241D23E24(uint64_t a1, void *a2)
{
  v3 = [a2 permlink];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_241D23E68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_241D24160(uint64_t a1, void *a2)
{
  v3 = [a2 permlink];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_241D2444C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_241D24470(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [*(a1 + 32) _allPlists];
  v26 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v26)
  {
    v27 = 0;
    v25 = *v33;
    while (2)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v32 + 1) + 8 * i);
        v4 = [*(a1 + 32) _bookItemsFromPlist:v3];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v5 = v4;
        v6 = [v5 countByEnumeratingWithState:&v28 objects:v39 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v29;
LABEL_8:
          v9 = 0;
          while (1)
          {
            if (*v29 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v28 + 1) + 8 * v9);
            v11 = [v10 identifier];
            v12 = [v11 isEqualToString:*(a1 + 40)];

            if (v12)
            {
              break;
            }

            if (v7 == ++v9)
            {
              v7 = [v5 countByEnumeratingWithState:&v28 objects:v39 count:16];
              if (v7)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }

          v13 = v3;
          v14 = [v10 path];

          if (!v13)
          {
            v27 = v14;
            continue;
          }

          v15 = [v14 lastPathComponent];
          v38 = v15;
          v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
          [v13 addDeletedFiles:v16];

          if (([*(a1 + 32) _isMultiUser] & 1) == 0)
          {
            v17 = [MEMORY[0x277CCAA00] defaultManager];
            [v17 removeItemAtPath:v14 error:*(a1 + 64)];
          }

          *(*(*(a1 + 48) + 8) + 24) = 1;
          goto LABEL_28;
        }

LABEL_14:
      }

      v26 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v27 = 0;
  }

  if (*(a1 + 64))
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = &stru_2853E2EC8;
    if (*(a1 + 40))
    {
      v19 = *(a1 + 40);
    }

    v36 = @"identifier";
    v37 = v19;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v20 = [v18 errorWithDomain:@"BLLibraryErrorDomain" code:-1000 userInfo:v13];
    v21 = *(*(a1 + 56) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    v14 = v27;
LABEL_28:
  }

  else
  {
    v14 = v27;
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_241D24908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_241D2492C(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [*(a1 + 32) _allPlists];
  v26 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v26)
  {
    v27 = 0;
    v25 = *v33;
    while (2)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v32 + 1) + 8 * i);
        v4 = [*(a1 + 32) _bookItemsFromPlist:v3];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v5 = v4;
        v6 = [v5 countByEnumeratingWithState:&v28 objects:v39 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v29;
LABEL_8:
          v9 = 0;
          while (1)
          {
            if (*v29 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v28 + 1) + 8 * v9);
            v11 = [v10 path];
            v12 = [v11 isEqualToString:*(a1 + 40)];

            if (v12)
            {
              break;
            }

            if (v7 == ++v9)
            {
              v7 = [v5 countByEnumeratingWithState:&v28 objects:v39 count:16];
              if (v7)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }

          v13 = v3;
          v14 = [v10 path];

          if (!v13)
          {
            v27 = v14;
            continue;
          }

          v15 = [v14 lastPathComponent];
          v38 = v15;
          v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
          [v13 addDeletedFiles:v16];

          if (([*(a1 + 32) _isMultiUser] & 1) == 0)
          {
            v17 = [MEMORY[0x277CCAA00] defaultManager];
            [v17 removeItemAtPath:v14 error:*(a1 + 64)];
          }

          *(*(*(a1 + 48) + 8) + 24) = 1;
          goto LABEL_28;
        }

LABEL_14:
      }

      v26 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v27 = 0;
  }

  if (*(a1 + 64))
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = &stru_2853E2EC8;
    if (*(a1 + 40))
    {
      v19 = *(a1 + 40);
    }

    v36 = @"path";
    v37 = v19;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v20 = [v18 errorWithDomain:@"BLLibraryErrorDomain" code:-1000 userInfo:v13];
    v21 = *(*(a1 + 56) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    v14 = v27;
LABEL_28:
  }

  else
  {
    v14 = v27;
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t sub_241D25100(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 storeIdentifier];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 permlink];
    v5 = [v6 isEqual:*(a1 + 40)];
  }

  return v5;
}

uint64_t sub_241D25270(uint64_t a1, void *a2)
{
  v3 = [a2 permlink];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_241D25904(void *a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = BLDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = a1[4];
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_ERROR, "Failed to add permalink %@. Error:  %@", &v9, 0x16u);
    }

    (*(a1[6] + 16))();
  }

  else
  {
    v7 = [[BLBookItem alloc] initWithPeristentIdentifier:@"0" permlink:a1[4] title:a1[5]];
    (*(a1[6] + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_241D25B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_241D25BB4(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = 0x278D16000uLL;
  v3 = [*(a1 + 32) sharedPlist];
  v4 = [v3 contents];
  v5 = [IMLibraryPlist booksArrayFromPlistEntry:v4];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v44;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v43 + 1) + 8 * i);
        objc_opt_class();
        v12 = BUDynamicCast();
        if (v12)
        {
          v13 = [IMLibraryPlist permlinkFromPlistEntry:v12];
          v14 = [v13 isEqual:*(a1 + 40)];

          if (v14)
          {

            v21 = [*(a1 + 32) purchasedPlist];
            v22 = [v21 contents];

            v41 = v22;
            v23 = [IMLibraryPlist booksArrayFromPlistEntry:v22];
            v24 = v23;
            if (v23)
            {
              v25 = [v23 mutableCopy];
            }

            else
            {
              v25 = objc_opt_new();
            }

            v26 = v25;
            v42 = v6;
            v27 = [v25 count];
            if (v27 - 1 >= 0)
            {
              v28 = v27;
              do
              {
                --v28;
                objc_opt_class();
                v29 = [v26 objectAtIndexedSubscript:v28];
                v30 = BUDynamicCast();

                v31 = v2;
                v32 = [*(v2 + 1488) permlinkFromPlistEntry:v30];
                v33 = [v32 isEqual:*(a1 + 40)];

                if (v33)
                {
                  [v26 removeObjectAtIndex:v28];
                }

                v2 = v31;
              }

              while (v28 > 0);
            }

            [v26 addObject:v12];
            v34 = [MEMORY[0x277CBEB38] dictionary];
            [*(v2 + 1488) setBooksArray:v26 toPlistEntry:v34];
            v35 = [*(a1 + 32) purchasedPlist];
            v36 = [v35 path];
            *(*(*(a1 + 48) + 8) + 24) = [v34 writeToFile:v36 atomically:1];

            v37 = [*(v2 + 1488) folderNameFromPlistEntry:v12];
            v38 = [*(a1 + 32) purchasedPlist];
            v49 = v37;
            v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
            [v38 removeDeletedPaths:v39];

            v6 = v42;
            goto LABEL_24;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v43 objects:v50 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  if (*(a1 + 64))
  {
    v15 = MEMORY[0x277CCA9B8];
    v47 = @"BLLibraryErrorPermlink";
    v16 = *(a1 + 40);
    v12 = v16;
    if (!v16)
    {
      v12 = [MEMORY[0x277CBEB68] null];
    }

    v48 = v12;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v18 = [v15 errorWithDomain:@"BLLibraryErrorDomain" code:-1003 userInfo:v17];
    v19 = *(*(a1 + 56) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    if (!v16)
    {
LABEL_24:
    }
  }

  v40 = *MEMORY[0x277D85DE8];
}

void sub_241D262D8(uint64_t a1)
{
  if ((*(a1 + 32) || *(a1 + 40)) && [*(a1 + 48) _isMultiUser])
  {
    v3 = *(a1 + 40);
    v2 = *(a1 + 48);
    v4 = *(a1 + 32);
    v12 = 0;
    v5 = [v2 _bookItemFromStoreID:v4 permlink:v3 error:&v12];
    v6 = v12;
    if (v5)
    {
      if (*(a1 + 56))
      {
        [v5 setLastUserAccessDate:?];
      }

      else
      {
        v7 = [MEMORY[0x277CBEAA8] date];
        [v5 setLastUserAccessDate:v7];
      }

      if ([*(a1 + 48) _bookItemIsShared:v5])
      {
        v8 = *(a1 + 56);
        v9 = [*(a1 + 48) sharedPlist];
        v11 = v6;
        [BLLibrary _addDate:v8 toPlist:v9 bookItem:v5 error:&v11];
        v10 = v11;

        v6 = v10;
      }
    }
  }
}

void sub_241D265A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_241D265C8(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) contents];
  v3 = [IMLibraryPlist booksArrayFromPlistEntry:v2];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v26 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v25 + 1) + 8 * v8);
      objc_opt_class();
      v10 = BUDynamicCast();
      if (sub_241D268C0(v10, *(a1 + 40)))
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = [v10 mutableCopy];
    [IMLibraryPlist setAccessDate:*(a1 + 48) toPlistEntry:v11];

    if (!v11)
    {
      goto LABEL_17;
    }

    v12 = [v4 mutableCopy];
    v13 = [v12 count];
    if (v13 - 1 >= 0)
    {
      v14 = v13;
      do
      {
        --v14;
        objc_opt_class();
        v15 = [v12 objectAtIndexedSubscript:v14];
        v16 = BUDynamicCast();

        if (sub_241D268C0(v16, *(a1 + 40)))
        {
          [v12 removeObjectAtIndex:v14];
        }
      }

      while (v14 > 0);
    }

    [v12 addObject:v11];
    v17 = [MEMORY[0x277CBEB38] dictionary];
    [IMLibraryPlist setBooksArray:v12 toPlistEntry:v17];
    v18 = [*(a1 + 32) path];
    *(*(*(a1 + 56) + 8) + 24) = [v17 writeToFile:v18 atomically:1];

    v19 = [IMLibraryPlist folderNameFromPlistEntry:v11];
    v20 = *(a1 + 32);
    v29 = v19;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    [v20 removeDeletedPaths:v21];

    goto LABEL_19;
  }

LABEL_9:

LABEL_17:
  if (*(a1 + 72))
  {
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BLLibraryErrorDomain" code:-1000 userInfo:0];
    v23 = *(*(a1 + 64) + 8);
    v11 = *(v23 + 40);
    *(v23 + 40) = v22;
LABEL_19:
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t sub_241D268C0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = [v4 storeIdentifier];
    v8 = [v7 length];

    if (v8)
    {
      v9 = [IMLibraryPlist storeIdFromPlistEntry:v3];
      v10 = [v5 storeIdentifier];
      v11 = [v9 isEqualToString:v10];
    }

    else
    {
      v12 = [v5 permlink];

      if (!v12)
      {
        v6 = 0;
        goto LABEL_8;
      }

      v9 = [IMLibraryPlist permlinkFromPlistEntry:v3];
      v10 = [v5 permlink];
      v11 = [v9 isEqual:v10];
    }

    v6 = v11;
  }

LABEL_8:

  return v6;
}

id BLError(int a1, __CFString *a2, __CFString *a3)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v5 = @"Unknown Error";
  if (a3)
  {
    v5 = a3;
  }

  v14[0] = @"message";
  v14[1] = @"title";
  v6 = @"BLService error";
  if (a2)
  {
    v6 = a2;
  }

  v15[0] = v5;
  v15[1] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = a3;
  v9 = a2;
  v10 = [v7 dictionaryWithObjects:v15 forKeys:v14 count:2];
  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BLErrorDomain" code:a1 userInfo:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id BLErrorWithUserInfo(int a1, __CFString *a2, __CFString *a3, void *a4)
{
  v7 = a4;
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = @"Unknown Error";
  }

  v9 = @"BLService error";
  if (a2)
  {
    v9 = a2;
  }

  v10 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v8, @"message", v9, @"title", 0}];
  v11 = v10;
  if (v7)
  {
    [v10 addEntriesFromDictionary:v7];
  }

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BLErrorDomain" code:a1 userInfo:v11];

  return v12;
}

uint64_t BLErrorIsEqual(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (v5 && [v5 code] == a3)
  {
    v7 = [v5 domain];
    v8 = [v7 isEqualToString:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id BLErrorWithDomain(void *a1, uint64_t a2, __CFString *a3, __CFString *a4)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v7 = @"Unknown Error";
  if (a4)
  {
    v7 = a4;
  }

  v17[0] = @"message";
  v17[1] = @"title";
  v8 = @"BLService error";
  if (a3)
  {
    v8 = a3;
  }

  v18[0] = v7;
  v18[1] = v8;
  v9 = MEMORY[0x277CBEAC0];
  v10 = a4;
  v11 = a3;
  v12 = a1;
  v13 = [v9 dictionaryWithObjects:v18 forKeys:v17 count:2];
  v14 = [MEMORY[0x277CCA9B8] errorWithDomain:v12 code:a2 userInfo:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

id BLUnknownDownloadError(uint64_t a1)
{
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown download id (%@)", a1];
  v2 = BLError(23, 0, v1);

  return v2;
}

uint64_t sub_241D2BC5C()
{
  qword_280BC58E8 = os_log_create("com.apple.bookassetd", "BLService");

  return MEMORY[0x2821F96F8]();
}

id BLServiceDownloadQueueLog()
{
  if (qword_280BC58F0 != -1)
  {
    sub_241D76C4C();
  }

  v1 = qword_280BC58F8;

  return v1;
}

uint64_t sub_241D2BCE4()
{
  qword_280BC58F8 = os_log_create("com.apple.bookassetd", "BLServiceDownloadQueue");

  return MEMORY[0x2821F96F8]();
}

id BLServicePurchaseManagerLog()
{
  if (qword_280BC57E0 != -1)
  {
    sub_241D76C60();
  }

  v1 = qword_280BC57E8;

  return v1;
}

uint64_t sub_241D2BD6C()
{
  qword_280BC57E8 = os_log_create("com.apple.bookassetd", "BLServicePurchaseManager");

  return MEMORY[0x2821F96F8]();
}

id BLServiceMediaLibraryManagerLog()
{
  if (qword_27EC71ED8 != -1)
  {
    sub_241D76C74();
  }

  v1 = qword_27EC71ED0;

  return v1;
}

uint64_t sub_241D2BDF4()
{
  qword_27EC71ED0 = os_log_create("com.apple.bookassetd", "BLServiceMediaLibraryManagerLog");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_241D2BE38()
{
  qword_280BC5908 = os_log_create("com.apple.bookassetd", "BLServiceDownloadManager");

  return MEMORY[0x2821F96F8]();
}

id BLServiceDownloadPipelineLog()
{
  if (qword_27EC71EE8 != -1)
  {
    sub_241D76C9C();
  }

  v1 = qword_27EC71EE0;

  return v1;
}

uint64_t sub_241D2BEC0()
{
  qword_27EC71EE0 = os_log_create("com.apple.bookassetd", "BLServiceDownloadPipeline");

  return MEMORY[0x2821F96F8]();
}

id BLServiceDatabaseManagerLog()
{
  if (qword_280BC5910 != -1)
  {
    sub_241D76CB0();
  }

  v1 = qword_280BC5918;

  return v1;
}

uint64_t sub_241D2BF48()
{
  qword_280BC5918 = os_log_create("com.apple.bookassetd", "BLServiceDatabaseManager");

  return MEMORY[0x2821F96F8]();
}

id BLServiceDownloadFilesystemLog()
{
  if (qword_27EC71EF8 != -1)
  {
    sub_241D76CC4();
  }

  v1 = qword_27EC71EF0;

  return v1;
}

uint64_t sub_241D2BFD0()
{
  qword_27EC71EF0 = os_log_create("com.apple.bookassetd", "BLServiceDownloadFilesystem");

  return MEMORY[0x2821F96F8]();
}

id BLServiceDownloadStreamingZipLog()
{
  if (qword_27EC71F08 != -1)
  {
    sub_241D76CD8();
  }

  v1 = qword_27EC71F00;

  return v1;
}

uint64_t sub_241D2C058()
{
  qword_27EC71F00 = os_log_create("com.apple.bookassetd", "BLServiceDownloadStreamingZip");

  return MEMORY[0x2821F96F8]();
}

id BLServiceNotificationLog()
{
  if (qword_280BC58D0 != -1)
  {
    sub_241D76CEC();
  }

  v1 = qword_280BC58D8;

  return v1;
}

uint64_t sub_241D2C0E0()
{
  qword_280BC58D8 = os_log_create("com.apple.iBooks.BookLibrary", "BLServiceNotification");

  return MEMORY[0x2821F96F8]();
}

id BLServiceMetadataStoreLog()
{
  if (qword_280BC57F0 != -1)
  {
    sub_241D76D00();
  }

  v1 = qword_280BC57F8;

  return v1;
}

uint64_t sub_241D2C168()
{
  qword_280BC57F8 = os_log_create("com.apple.iBooks.BookLibrary", "BLServiceMetadataStore");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_241D2C1AC()
{
  qword_280BC5970 = os_log_create("com.apple.iBooks.BookLibrary", "BLDaemon");

  return MEMORY[0x2821F96F8]();
}

id BLBookInstallLog()
{
  if (qword_280BC5920 != -1)
  {
    sub_241D76D14();
  }

  v1 = qword_280BC5928;

  return v1;
}

uint64_t sub_241D2C234()
{
  qword_280BC5928 = os_log_create("com.apple.iBooks.BookLibrary", "BLBookInstallLog");

  return MEMORY[0x2821F96F8]();
}

id BLBookCacheDeleteLog()
{
  if (qword_280BC5930 != -1)
  {
    sub_241D76D28();
  }

  v1 = qword_280BC5938;

  return v1;
}

uint64_t sub_241D2C2BC()
{
  qword_280BC5938 = os_log_create("com.apple.iBooks.BookLibrary", "BLBookCacheDeleteLog");

  return MEMORY[0x2821F96F8]();
}

id BLUtilitiesLog()
{
  if (qword_27EC71F18 != -1)
  {
    sub_241D76D3C();
  }

  v1 = qword_27EC71F10;

  return v1;
}

uint64_t sub_241D2C344()
{
  qword_27EC71F10 = os_log_create("com.apple.iBooks.BookLibrary", "BLUtilitiesLog");

  return MEMORY[0x2821F96F8]();
}

id BLAudiobookSyncLog()
{
  if (qword_27EC71F28 != -1)
  {
    sub_241D76D50();
  }

  v1 = qword_27EC71F20;

  return v1;
}

uint64_t sub_241D2C3CC()
{
  qword_27EC71F20 = os_log_create("com.apple.iBooks.BookLibrary", "BLAudiobookSyncLog");

  return MEMORY[0x2821F96F8]();
}

id BLHLSKeyFetchingLog()
{
  if (qword_27EC71F38 != -1)
  {
    sub_241D76D64();
  }

  v1 = qword_27EC71F30;

  return v1;
}

uint64_t sub_241D2C454()
{
  qword_27EC71F30 = os_log_create("com.apple.iBooks.BookLibrary", "BookLibrary.HLSStreaming");

  return MEMORY[0x2821F96F8]();
}

id BLFamilyLog()
{
  if (qword_27EC71F48 != -1)
  {
    sub_241D76D78();
  }

  v1 = qword_27EC71F40;

  return v1;
}

uint64_t sub_241D2C4DC()
{
  qword_27EC71F40 = os_log_create("com.apple.iBooks.BookLibrary", "BLFamily");

  return MEMORY[0x2821F96F8]();
}

id BLAudiobookMLImporterLog()
{
  if (qword_27EC71F58 != -1)
  {
    sub_241D76D8C();
  }

  v1 = qword_27EC71F50;

  return v1;
}

uint64_t sub_241D2C564()
{
  qword_27EC71F50 = os_log_create("com.apple.iBooks.BookLibrary", "BLAudiobookMLImporter");

  return MEMORY[0x2821F96F8]();
}

id BLBooksAskPermissionExtensionLog()
{
  if (qword_27EC71F68 != -1)
  {
    sub_241D76DA0();
  }

  v1 = qword_27EC71F60;

  return v1;
}

uint64_t sub_241D2C5EC()
{
  qword_27EC71F60 = os_log_create("com.apple.iBooks.BookLibrary", "BLBooksAskPermissionExtensionLog");

  return MEMORY[0x2821F96F8]();
}

id BLBooksDiagnosticExtensionLog()
{
  if (qword_27EC71F78 != -1)
  {
    sub_241D76DB4();
  }

  v1 = qword_27EC71F70;

  return v1;
}

uint64_t sub_241D2C674()
{
  qword_27EC71F70 = os_log_create("com.apple.iBooks.BookLibrary", "BLBooksDiagnosticExtensionLog");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_241D2CFF4()
{
  qword_27EC71F88 = objc_alloc_init(BLEduCloudContainer);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_241D2D1D0(uint64_t a1)
{
  v2 = [*(a1 + 40) URLForUbiquityContainerIdentifier:@"iCloud.com.apple.iBooks.iTunesU"];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  return MEMORY[0x2821F96F8]();
}

void sub_241D2D2D8(uint64_t a1)
{
  v5 = [*(a1 + 32) containerURL];
  v2 = [v5 URLByAppendingPathComponent:@"Documents"];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;
}

void sub_241D2DBD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241D2DC2C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241D2DC44(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = [a2 path];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = [BLLibraryUtility writeBinaryPropertyList:v3 toPath:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[5] + 8) + 24) = v6;
}

id deleteItemAtURLCoordinated(void *a1)
{
  v1 = MEMORY[0x277CCAA00];
  v2 = a1;
  v3 = [v1 defaultManager];
  v4 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
  v11 = v3;
  v12 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_241D2E140;
  v10[3] = &unk_278D17418;
  v5 = v3;
  [v4 coordinateWritingItemAtURL:v2 options:1 error:&v12 byAccessor:v10];

  v6 = v12;
  v7 = v11;
  v8 = v6;

  return v6;
}

void sub_241D2E140(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v8 = 0;
  v3 = [v2 removeItemAtURL:a2 error:&v8];
  v4 = v8;
  v5 = v4;
  if ((v3 & 1) == 0 && v4)
  {
    v6 = BLDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_241D1F000, v6, OS_LOG_TYPE_ERROR, "Failed to delete iTunesU file with error:  %@", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_241D2EB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241D2EBA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_241D2EC48;
  v8[3] = &unk_278D17440;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = v3;
  v10 = v4;
  v8[4] = v5;
  v6 = v3;
  v7 = [v5 performMetadataActionOnCloudURL:v6 action:v8];
}

void sub_241D2EC48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:a2];
  v4 = [*(a1 + 40) path];
  v5 = [v3 dictionaryAsBookItem:v8 path:v4];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_241D2ECE4(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = BLDefaultLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v12 = 138412546;
      v13 = v3;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_241D1F000, v6, OS_LOG_TYPE_ERROR, "Encountered error doing a coordinated read of %@. Error:  %@", &v12, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412290;
      v13 = v3;
      _os_log_impl(&dword_241D1F000, v6, OS_LOG_TYPE_DEBUG, "coordinated read taken for: %@", &v12, 0xCu);
    }

    v8 = [v3 lastPathComponent];
    v9 = [v8 pathExtension];
    v10 = [@"cloudItem" isEqualToString:v9];

    if (v10)
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_241D2EFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241D2EFF0(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    v2 = BLDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = a1[6];
      v4 = a1[4];
      *buf = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_241D1F000, v2, OS_LOG_TYPE_ERROR, "Encountered error doing a coordinated read of %@. Error:  %@", buf, 0x16u);
    }
  }

  else
  {
    v5 = a1[5];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_241D2F138;
    v8[3] = &unk_278D17440;
    v8[4] = v5;
    v9 = *(a1 + 3);
    v6 = [v5 performMetadataActionOnCloudURL:v9 action:v8];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_241D2F138(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:a2];
  v4 = [*(a1 + 40) path];
  v5 = [v3 dictionaryAsBookItem:v8 path:v4];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_241D2FA28(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[BLHLSGroup alloc] initWithGroupID:v6 media:v5];

  [*(a1 + 32) addObject:v7];
}

uint64_t sub_241D30830(void *a1)
{
  v1 = MEMORY[0x277CCAC80];
  v2 = a1;
  v3 = [[v1 alloc] initWithString:v2];

  v6 = 0;
  [v3 scanUnsignedLongLong:&v6];
  v4 = v6;

  return v4;
}

uint64_t sub_241D31F1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [IMLibraryPlist folderNameFromPlistEntry:a1];
  v5 = [IMLibraryPlist folderNameFromPlistEntry:v3];

  if (v4)
  {
    if (v5)
    {
      v6 = [v4 compare:v5];
    }

    else
    {
      v6 = 1;
    }
  }

  else if (v5)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_241D3251C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 lastPathComponent];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t sub_241D34064()
{
  qword_27EC71F98 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"zh", @"chinese", @"tr", @"turkish", @"pl", @"polish", @"uk", @"ukrainian", 0}];

  return MEMORY[0x2821F96F8]();
}

void sub_241D3593C()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = container_system_group_path_for_identifier();
  if (v0)
  {
    v1 = v0;
    v2 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:v0 isDirectory:1 relativeToURL:0];
    v3 = qword_280BC58B0;
    qword_280BC58B0 = v2;

    free(v1);
  }

  else
  {
    v4 = BLDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v7 = "systemgroup.com.apple.media.shared.books";
      v8 = 2048;
      v9 = 1;
      _os_log_impl(&dword_241D1F000, v4, OS_LOG_TYPE_ERROR, "Error getting system group container: %s => %llu", buf, 0x16u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_241D35AEC(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (+[BLLibraryUtility _isMultiUser])
  {
    v2 = *(a1 + 32);
    v3 = [objc_opt_class() sharedContainerURL];
    v4 = [v3 URLByAppendingPathComponent:@"Library"];

    v18 = 0;
    v5 = *MEMORY[0x277CBE878];
    v17 = 0;
    v6 = [v4 getResourceValue:&v18 forKey:v5 error:&v17];
    v7 = v18;
    v8 = v17;
    if (v6)
    {
      if (v7 && ([v7 BOOLValue] & 1) != 0)
      {
        goto LABEL_13;
      }

      v16 = v8;
      v9 = [v4 setResourceValue:MEMORY[0x277CBEC38] forKey:v5 error:&v16];
      v10 = v16;

      if (v9)
      {
LABEL_12:
        v8 = v10;
LABEL_13:
        v13 = [v4 path];
        v14 = qword_27EC71FA0;
        qword_27EC71FA0 = v13;

        goto LABEL_14;
      }

      v11 = BLDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [v4 lastPathComponent];
        *buf = 138412546;
        v20 = v12;
        v21 = 2112;
        v22 = v10;
        _os_log_impl(&dword_241D1F000, v11, OS_LOG_TYPE_ERROR, "Error excluding %@ from backup:  %@", buf, 0x16u);
      }
    }

    else
    {
      v11 = BLDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v8;
        _os_log_impl(&dword_241D1F000, v11, OS_LOG_TYPE_ERROR, "Error encountered accessing resource value for backup exclusion key. Error:  %@", buf, 0xCu);
      }

      v10 = v8;
    }

    goto LABEL_12;
  }

LABEL_14:
  v15 = *MEMORY[0x277D85DE8];
}

id BLBundle()
{
  if (qword_27EC71FB8 != -1)
  {
    sub_241D76E04();
  }

  v1 = qword_27EC71FB0;

  return v1;
}

uint64_t sub_241D35DB0()
{
  qword_27EC71FB0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

void sub_241D36904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241D36920(uint64_t a1)
{
  v2 = BLServiceProxyLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_241D1F000, v2, OS_LOG_TYPE_DEFAULT, "[BLServiceProxy] bookassetd has started.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _createAndStartConnection];
}

void sub_241D36A94(uint64_t a1)
{
  v2 = BLServiceProxyLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v2, OS_LOG_TYPE_DEFAULT, "[BLServiceProxy] The connection to bookassetd was interrupted.", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v6 = sub_241D36BB0;
    v7 = &unk_278D17598;
    objc_copyWeak(&v8, (a1 + 32));
    v4 = v5;
    os_unfair_lock_lock(WeakRetained + 2);
    v6(v4);
    os_unfair_lock_unlock(WeakRetained + 2);

    objc_destroyWeak(&v8);
  }
}

void sub_241D36BB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setState:3];
}

void sub_241D36BF4(uint64_t a1)
{
  v2 = BLServiceProxyLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v2, OS_LOG_TYPE_ERROR, "[BLServiceProxy] The connection to bookassetd was invalidated.", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v6 = sub_241D36D10;
    v7 = &unk_278D17598;
    objc_copyWeak(&v8, (a1 + 32));
    v4 = v5;
    os_unfair_lock_lock(WeakRetained + 2);
    v6(v4);
    os_unfair_lock_unlock(WeakRetained + 2);

    objc_destroyWeak(&v8);
  }
}

void sub_241D36D10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained state] != 1)
  {
    [WeakRetained setState:4];
  }

  [WeakRetained setConnection:0];
}

void sub_241D36E30(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = BLServiceProxyLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_241D1F000, v4, OS_LOG_TYPE_ERROR, "Remote proxy hit an error:  %@", &v8, 0xCu);
  }

  v5 = MEMORY[0x245CFF560](*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_241D36FD0(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = BLServiceProxyLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_241D1F000, v4, OS_LOG_TYPE_ERROR, "Synchronous Remote proxy hit an error:  %@", &v8, 0xCu);
  }

  v5 = MEMORY[0x245CFF560](*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_241D371A8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x245CFF560](*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, 0, v5);
  }
}

void sub_241D37324(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x245CFF560](*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, 0, v5);
  }
}

void sub_241D3782C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x245CFF560](*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, 0, 0, v5);
  }
}

void sub_241D379C8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x245CFF560](*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, 0, v5);
  }
}

void sub_241D37B44(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x245CFF560](*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, 0, v5);
  }
}

void sub_241D37CD0(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x245CFF560](*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, 0, v5);
  }
}

void sub_241D37E5C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x245CFF560](*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, 0, v5);
  }
}

void sub_241D37FD8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x245CFF560](*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, 0, v5);
  }
}

void sub_241D38170(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x245CFF560](*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, 0, v5);
  }
}

void sub_241D382D8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x245CFF560](*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, MEMORY[0x277CBEBF8], v5);
  }
}

void sub_241D38468(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x245CFF560](*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, v5);
  }
}

void sub_241D387D8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x245CFF560](*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, 0, v5);
  }
}

void sub_241D38AB4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x245CFF560](*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, 0, v5);
  }
}

void sub_241D38C30(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x245CFF560](*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, 0, v5);
  }
}

void sub_241D38DAC(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x245CFF560](*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, 0, v5);
  }
}

void sub_241D393B0(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x245CFF560](*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, 0, 0, 0, 0, v5);
  }
}

void sub_241D3966C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x245CFF560](*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, 0, v5);
  }
}

uint64_t sub_241D39830()
{
  qword_280BC5818 = objc_alloc_init(BLPrivacyInfo);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_241D3AD60(void *a1)
{
  v1 = a1;
  if (qword_27EC71FD0 != -1)
  {
    sub_241D76E2C();
  }

  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

void sub_241D3BAA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_241D3BAC8(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = a2;
  v17 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v17)
  {
    v2 = *v19;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v19 != v2)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v18 + 1) + 8 * i);
        if ([v4 state] == 4)
        {
          WeakRetained = objc_loadWeakRetained((a1 + 40));
          v16 = [v4 storeIdentifier];
          v6 = [v4 storePlaylistIdentifier];
          v7 = [v4 permlink];
          v8 = [v4 downloadID];
          v9 = [v4 title];
          v10 = [v4 collectionTitle];
          v11 = [v4 kind];
          LOBYTE(v13) = 1;
          [WeakRetained sendInitialProgressNotificationForDownloadWithStoreID:v16 storePlaylistID:v6 orPermlink:v7 downloadID:v8 title:v9 collectionTitle:v10 assetKind:v11 isPaused:v13 targetObserver:*(a1 + 32)];
        }
      }

      v17 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v17);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_241D3D738(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = BLDownloadQueueServiceProgressMonitorLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v2;
      v5 = "[BLDownloadQueueServerProgressObserver] Failed registering to monitor progress:  %@";
      v6 = v4;
      v7 = OS_LOG_TYPE_ERROR;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_241D1F000, v6, v7, v5, &v10, v8);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    v5 = "[BLDownloadQueueServerProgressObserver] Successfully registered to monitor progress.";
    v6 = v4;
    v7 = OS_LOG_TYPE_DEFAULT;
    v8 = 2;
    goto LABEL_6;
  }

  v9 = *MEMORY[0x277D85DE8];
}

Class sub_241D3D8D0()
{
  qword_27EC71FC8 = NSClassFromString(&cfstr_Ssdownloadmana.isa);
  result = NSClassFromString(&cfstr_Ssdownloadmana_0.isa);
  qword_27EC71FC0 = result;
  return result;
}

uint64_t sub_241D3D9AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_280BC5848 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

void sub_241D45C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241D45C74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241D45E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_241D45E34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_241D460D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_241D460FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_241D46298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241D46508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241D46520(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241D466AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_241D466D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_241D46854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241D46CD4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    objc_opt_class();
    v13 = BUDynamicCast();
    v12 = v13;
    if (v13 && ([v13 statusCode] < 200 || objc_msgSend(v12, "statusCode") >= 300))
    {
      v14 = BLAudiobookSyncLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_241D76F10(v12);
      }

      v15 = MEMORY[0x245CFF560](*(a1 + 32));
      if (!v15)
      {
        goto LABEL_21;
      }

      v16 = MEMORY[0x277CCA9B8];
      v34 = @"BLKeyHTTPResponseCode";
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "statusCode")}];
      v35[0] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      v19 = [v16 errorWithDomain:@"BLErrorDomain" code:39 userInfo:v18];
      (*(v15 + 2))(v15, 0, v19);
    }

    else
    {
      v20 = BLAudiobookSyncLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241D1F000, v20, OS_LOG_TYPE_DEFAULT, "Downloaded master playlist, about to parse it.", buf, 2u);
      }

      v29 = 0;
      v17 = [BLHLSPlaylist playlistParsingURL:v7 error:&v29];
      v15 = v29;
      v18 = [BLHLSAudiobookFetcher preferredStreamFromMasterPlaylist:v17];
      if (v18)
      {
        v21 = BLAudiobookSyncLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v17 streamInfs];
          v23 = [v22 count];
          *buf = 134218242;
          v31 = v23;
          v32 = 2112;
          v33 = v18;
          _os_log_impl(&dword_241D1F000, v21, OS_LOG_TYPE_DEFAULT, "Parsed master playlist. Out of a total of %lu choices, using streamInf: %@", buf, 0x16u);
        }

        v24 = MEMORY[0x245CFF560](*(a1 + 32));
        v19 = v24;
        if (v24)
        {
          (*(v24 + 16))(v24, v18, 0);
        }
      }

      else
      {
        v26 = BLAudiobookSyncLog();
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
        if (v17)
        {
          if (v27)
          {
            sub_241D76F88();
          }

          v26 = v15;
          v15 = 0;
        }

        else if (v27)
        {
          sub_241D76FF0();
        }

        v19 = MEMORY[0x245CFF560](*(a1 + 32));
        if (v19)
        {
          v28 = [MEMORY[0x277CCA9B8] bu_errorWithDomain:@"BLErrorDomain" code:2 description:@"Unable to parse master HLS Playlist" underlyingError:v15];
          (v19)[2](v19, 0, v28);
        }
      }
    }

LABEL_21:
    goto LABEL_22;
  }

  v10 = BLAudiobookSyncLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_241D76EA8();
  }

  v11 = MEMORY[0x245CFF560](*(a1 + 32));
  v12 = v11;
  if (v11)
  {
    (*(v11 + 16))(v11, 0, v9);
  }

LABEL_22:

  v25 = *MEMORY[0x277D85DE8];
}

void sub_241D471B8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    objc_opt_class();
    v13 = BUDynamicCast();
    v12 = v13;
    if (v13 && ([v13 statusCode] < 200 || objc_msgSend(v12, "statusCode") >= 300))
    {
      v14 = BLAudiobookSyncLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_241D76F10(v12);
      }

      v15 = MEMORY[0x245CFF560](*(a1 + 32));
      if (!v15)
      {
        goto LABEL_23;
      }

      v16 = MEMORY[0x277CCA9B8];
      v26 = @"BLKeyHTTPResponseCode";
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "statusCode")}];
      v27[0] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      v19 = [v16 errorWithDomain:@"BLErrorDomain" code:39 userInfo:v18];
      (v15[2].isa)(v15, 0, v19);
    }

    else
    {
      v20 = BLAudiobookSyncLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241D1F000, v20, OS_LOG_TYPE_DEFAULT, "Downloaded master playlist, about to parse it to get racGUID.", buf, 2u);
      }

      v24 = 0;
      v18 = [BLHLSPlaylist playlistParsingURL:v7 error:&v24];
      v15 = v24;
      if (v18)
      {
        v17 = [v18 racGUID];
        v21 = v15;
        v15 = 0;
      }

      else
      {
        v21 = BLAudiobookSyncLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_241D76FF0();
        }

        v17 = 0;
      }

      v22 = MEMORY[0x245CFF560](*(a1 + 32));
      v19 = v22;
      if (v22)
      {
        (*(v22 + 16))(v22, v17, v15);
      }
    }

LABEL_23:
    goto LABEL_24;
  }

  v10 = BLAudiobookSyncLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_241D76EA8();
  }

  v11 = MEMORY[0x245CFF560](*(a1 + 32));
  v12 = v11;
  if (v11)
  {
    (*(v11 + 16))(v11, 0, v9);
  }

LABEL_24:

  v23 = *MEMORY[0x277D85DE8];
}

void sub_241D474E0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_241D47508(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_241D47528(void *a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a3;
  v6 = a4;
  v7 = [a1 valueForKey:v11];
  v8 = v7;
  if (v6)
  {
    if ([v7 isEqualToString:v6])
    {
      goto LABEL_7;
    }

    v9 = a1;
    v10 = v6;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v9 = a1;
    v10 = 0;
  }

  [v9 setValue:v10 forKey:v11];
LABEL_7:
}

void sub_241D475D0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a3;
  v6 = a4;
  v7 = [a1 valueForKey:v11];
  v8 = v7;
  if (v6)
  {
    if ([v7 isEqualToNumber:v6])
    {
      goto LABEL_7;
    }

    v9 = a1;
    v10 = v6;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v9 = a1;
    v10 = 0;
  }

  [v9 setValue:v10 forKey:v11];
LABEL_7:
}

void sub_241D47678(void *a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a3;
  v6 = a4;
  v7 = [a1 valueForKey:v11];
  v8 = v7;
  if (v6)
  {
    if ([v7 isEqualToDate:v6])
    {
      goto LABEL_7;
    }

    v9 = a1;
    v10 = v6;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v9 = a1;
    v10 = 0;
  }

  [v9 setValue:v10 forKey:v11];
LABEL_7:
}

void sub_241D47720(void *a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a3;
  v6 = a4;
  v7 = [a1 valueForKey:v11];
  v8 = v7;
  if (v6)
  {
    if ([v7 isEqualToDictionary:v6])
    {
      goto LABEL_7;
    }

    v9 = a1;
    v10 = v6;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v9 = a1;
    v10 = 0;
  }

  [v9 setValue:v10 forKey:v11];
LABEL_7:
}

void *sub_241D477C8(void *a1, const char *a2, uint64_t a3)
{
  if (a3)
  {
    return [a1 setValue:? forKey:?];
  }

  return a1;
}

uint64_t BLItemImageSizeEqualToSize(double a1, double a2, double a3, double a4)
{
  result = 1;
  if (a2 != 0.0 && a1 != 0.0 && a4 != 0.0 && a3 != 0.0 && a1 / a2 != a3 / a4)
  {
    return 0;
  }

  return result;
}

__CFString *NSStringFromBLDownloadState(unint64_t a1)
{
  if (a1 > 0x10)
  {
    return @"BLDownloadStateUnknown";
  }

  else
  {
    return off_278D177F0[a1];
  }
}

id BLDownloadSupportedDownloadKinds()
{
  if (qword_280BC5808 != -1)
  {
    sub_241D77058();
  }

  v1 = qword_280BC5800;

  return v1;
}

void sub_241D49150()
{
  v3[3] = *MEMORY[0x277D85DE8];
  v3[0] = @"book";
  v3[1] = @"ebook";
  v3[2] = @"pdf";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:3];
  v1 = qword_280BC5800;
  qword_280BC5800 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void sub_241D4AED0(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = MEMORY[0x245CFF560](*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, v8, v5);
  }
}

void sub_241D4B07C(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = BLDefaultLog();
  v8 = v7;
  if (v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v17 = 138412290;
    v18 = v6;
    v9 = "[UIHostServiceProxy] received error from AMSSystemAlertDialogTask:  %@";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v13 = *(a1 + 32);
    v17 = 138412546;
    v18 = v13;
    v19 = 2112;
    v20 = v5;
    v9 = "[UIHostServiceProxy] received result from AMSSystemAlertDialogTask for request %@ and calling replay block with result %@";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 22;
  }

  _os_log_impl(&dword_241D1F000, v10, v11, v9, &v17, v12);
LABEL_7:

  v14 = MEMORY[0x245CFF560](*(a1 + 40));
  v15 = v14;
  if (v14)
  {
    (*(v14 + 16))(v14, v5, v6);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_241D4B2E4(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = MEMORY[0x245CFF560](*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, v8, v5);
  }
}

void sub_241D4B690()
{
  v0 = BLDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_241D1F000, v0, OS_LOG_TYPE_FAULT, "Failed to complete backgound task after file lock. This will most likely result in a crash", v1, 2u);
  }
}

uint64_t sub_241D4B9C0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (a3 == 6)
  {
    v8 = MEMORY[0x277CEE188];
  }

  else
  {
    if (a3 != 16)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v8 = BLErrorDomain;
  }

  v9 = [v6 isEqualToString:*v8];
LABEL_7:

  return v9;
}

BOOL sub_241D4BA44(void *a1)
{
  v2 = [a1 domain];
  v3 = [v2 isEqualToString:*MEMORY[0x277CEE188]];

  if (!v3)
  {
    return 0;
  }

  objc_opt_class();
  v4 = [a1 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CEE1A8]];
  v6 = BUDynamicCast();

  v7 = [v6 longValue] == 401;
  return v7;
}

id sub_241D4BB08(void *a1)
{
  v59[3] = *MEMORY[0x277D85DE8];
  v33 = [a1 userInfo];
  if (![v33 count])
  {
    v27 = a1;
    goto LABEL_39;
  }

  v1 = MEMORY[0x277CBEB98];
  v59[0] = @"NSErrorPeerCertificateChainKey";
  v59[1] = @"NSErrorClientCertificateChainKey";
  v59[2] = *MEMORY[0x277CCA750];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:3];
  v39 = [v1 setWithArray:v2];

  v36 = [MEMORY[0x277CBEB98] setWithArray:MEMORY[0x277CBEBF8]];
  v38 = [v33 mutableCopy];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v33;
  v3 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (!v3)
  {

    goto LABEL_38;
  }

  v35 = 0;
  v4 = *v49;
  v32 = v41;
  do
  {
    v5 = 0;
    do
    {
      if (*v49 != v4)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v48 + 1) + 8 * v5);
      if ([v39 containsObject:{v6, v32}])
      {
        v35 = 1;
LABEL_10:
        [v38 removeObjectForKey:v6];
        goto LABEL_23;
      }

      if ([v36 containsObject:v6])
      {
        goto LABEL_10;
      }

      v7 = [obj objectForKeyedSubscript:v6];
      v44 = 0;
      v45 = &v44;
      v46 = 0x2020000000;
      v47 = 0;
      objc_opt_class();
      v8 = BUDynamicCast();
      v9 = v8;
      if (v8)
      {
        v10 = [v8 bl_securelyCodableError];
        [v38 setObject:v10 forKeyedSubscript:v6];
      }

      else
      {
        objc_opt_class();
        v12 = BUDynamicCast();
        v11 = v12;
        if (v12)
        {
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = sub_241D4C184;
          v43[3] = &unk_278D17918;
          v43[4] = a1;
          v43[5] = &v44;
          v13 = [v12 ams_filterUsingTest:v43];
          [v38 setObject:v13 forKeyedSubscript:v6];

          goto LABEL_16;
        }

        objc_opt_class();
        v19 = BUDynamicCast();
        v14 = v19;
        if (v19)
        {
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = sub_241D4C19C;
          v42[3] = &unk_278D17940;
          v42[4] = a1;
          v42[5] = &v44;
          v20 = [v19 ams_filterUsingTest:v42];
          [v38 setObject:v20 forKeyedSubscript:v6];

          v11 = 0;
          goto LABEL_17;
        }

        objc_opt_class();
        v21 = BUDynamicCast();
        v15 = v21;
        if (v21)
        {
          v40[0] = MEMORY[0x277D85DD0];
          v40[1] = 3221225472;
          v41[0] = sub_241D4C1B0;
          v41[1] = &unk_278D17968;
          v41[2] = a1;
          v41[3] = &v44;
          v22 = [v21 objectsPassingTest:v40];
          [v38 setObject:v22 forKeyedSubscript:v6];

          v11 = 0;
          v14 = 0;
          goto LABEL_18;
        }

        if (([a1 _secureCodingSupportedByObject:v7] & 1) == 0)
        {
          v23 = BLDefaultLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = objc_opt_class();
            Name = class_getName(v24);
            *buf = 138412802;
            v53 = v6;
            v54 = 2080;
            v55 = Name;
            v56 = 2112;
            v57 = v7;
            _os_log_impl(&dword_241D1F000, v23, OS_LOG_TYPE_ERROR, "userInfo[%@] of class '%s' does not support NSSecureCoding, value: %@", buf, 0x20u);
          }

          [v38 removeObjectForKey:v6];
        }
      }

      v11 = 0;
LABEL_16:
      v14 = 0;
LABEL_17:
      v15 = 0;
LABEL_18:
      if (*(v45 + 24) == 1)
      {
        v16 = BLDefaultLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = objc_opt_class();
          v18 = class_getName(v17);
          *buf = 138412802;
          v53 = v6;
          v54 = 2080;
          v55 = v18;
          v56 = 2112;
          v57 = v7;
          _os_log_impl(&dword_241D1F000, v16, OS_LOG_TYPE_ERROR, "userInfo[%@] of class '%s' contains items not supporting NSSecureCoding, value: %@", buf, 0x20u);
        }
      }

      _Block_object_dispose(&v44, 8);
LABEL_23:
      ++v5;
    }

    while (v3 != v5);
    v26 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
    v3 = v26;
  }

  while (v26);

  if (v35)
  {
    [v38 removeObjectForKey:*MEMORY[0x277CCA7E8]];
  }

LABEL_38:
  v28 = MEMORY[0x277CCA9B8];
  v29 = [a1 domain];
  v27 = [v28 errorWithDomain:v29 code:objc_msgSend(a1 userInfo:{"code"), v38}];

LABEL_39:
  v30 = *MEMORY[0x277D85DE8];

  return v27;
}

uint64_t sub_241D4C1C8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_opt_class() supportsSecureCoding])
  {
    v4 = [v3 conformsToProtocol:&unk_2853F3B90];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_241D4C234(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [a1 _secureCodingSupportedByObject:?];
  if (a4)
  {
    if ((result & 1) == 0)
    {
      *a4 = 1;
    }
  }

  return result;
}

void *BLGetNSNumberFromValue(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{strtoull(objc_msgSend(v1, "UTF8String"), 0, 10)}];

    v1 = v2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

id sub_241D4C9E4(xmlTextReader *a1)
{
  String = xmlTextReaderReadString(a1);
  if (String || (String = xmlTextReaderReadInnerXml(a1)) != 0)
  {
    v3 = String;
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:String];
    free(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_241D4D4C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241D4D4D8(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = BLDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v13 = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_241D1F000, v7, OS_LOG_TYPE_ERROR, "Error creating zip archive at %@. error:  %@", &v13, 0x16u);
    }
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_group_leave(*(a1 + 40));
  v12 = *MEMORY[0x277D85DE8];
}

void sub_241D4DD0C()
{
  v0 = [MEMORY[0x277D77C00] sharedManager];
  v1 = [v0 currentUser];

  byte_280BC57D8 = [v1 userType] == 1;
}

id sub_241D4DD84(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 dataUsingEncoding:2483028224];
  memset(&c, 0, sizeof(c));
  CC_MD5_Init(&c);
  v2 = [v1 length];
  v3 = [v1 bytes];
  if (v2)
  {
    v4 = v3;
    do
    {
      if (v2 >= 0xFFFFFFFF)
      {
        v5 = 0xFFFFFFFFLL;
      }

      else
      {
        v5 = v2;
      }

      CC_MD5_Update(&c, v4, v5);
      v4 += v5;
      v2 -= v5;
    }

    while (v2);
  }

  CC_MD5_Final(md, &c);
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", md[0], md[1], md[2], md[3], md[4], md[5], md[6], md[7], md[8], md[9], md[10], md[11], md[12], md[13], md[14], md[15]];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

id sub_241D4DEFC(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 dataUsingEncoding:2483028224];
  CC_SHA1([v1 bytes], objc_msgSend(v1, "length"), md);
  v2 = [MEMORY[0x277CCAB68] string];
  for (i = 0; i != 20; ++i)
  {
    [v2 appendFormat:@"%02x", md[i]];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

id sub_241D4DFF0(void *a1)
{
  v1 = [a1 absoluteString];
  v2 = [v1 bl_sha1];

  return v2;
}

void sub_241D4E20C(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = BLServiceLog();
  v8 = v7;
  if (v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v9 = *(a1 + 32);
    v17 = 134218242;
    v18 = v9;
    v19 = 2112;
    v20 = v6;
    v10 = "[DownloadManifestRequest] addDownloadsWithManifestRequest for request %p returned error:  %@";
    v11 = v8;
    v12 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v13 = *(a1 + 32);
    v17 = 134218242;
    v18 = v13;
    v19 = 2112;
    v20 = v5;
    v10 = "[DownloadManifestRequest] addDownloadsWithManifestRequest for request %p completed with response %@.";
    v11 = v8;
    v12 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_241D1F000, v11, v12, v10, &v17, 0x16u);
LABEL_7:

  v14 = MEMORY[0x245CFF560](*(a1 + 40));
  v15 = v14;
  if (v14)
  {
    (*(v14 + 16))(v14, v5, v6);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_241D4E6C0()
{
  v2 = [MEMORY[0x277CCAD78] UUID];
  v0 = [v2 UUIDString];
  v1 = qword_27EC71FD8;
  qword_27EC71FD8 = v0;
}

uint64_t sub_241D4F748(void *a1, void *a2)
{
  v3 = a2;
  [a1 imageSize];
  v5 = v4;
  [v3 imageSize];
  v7 = v6;

  if (v5 < v7)
  {
    return -1;
  }

  else
  {
    return v5 > v7;
  }
}

uint64_t sub_241D500E0(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v2 = *MEMORY[0x277CBE8B8];
  v9 = 0;
  [a1 getResourceValue:&v10 forKey:v2 error:&v9];
  v3 = v10;
  v4 = v9;
  if (v4)
  {
    v5 = BLDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_ERROR, "Error [NSURL bl_isUbiquitous]:  %@", buf, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v6 = [a1 bl_BOOLFromResourceValue:v3];
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_241D501EC(void *a1)
{
  v2 = 0;
  [a1 getResourceValue:&v2 forKey:*MEMORY[0x277CBE958] error:0];
  return [v2 BOOLValue];
}

uint64_t sub_241D5022C(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v2 = *MEMORY[0x277CBE948];
  v9 = 0;
  [a1 getResourceValue:&v10 forKey:v2 error:&v9];
  v3 = v10;
  v4 = v9;
  if (v4)
  {
    v5 = BLDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_ERROR, "Error [NSURL bl_isDownloaded]:  %@", buf, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v6 = [a1 bl_isDownloadedWithResourceValue:v3];
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_241D50338(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v2 = *MEMORY[0x277CBE960];
  v9 = 0;
  [a1 getResourceValue:&v10 forKey:v2 error:&v9];
  v3 = v10;
  v4 = v9;
  if (v4)
  {
    v5 = BLDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_ERROR, "Error [NSURL bl_isDownloading]:  %@", buf, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v6 = [a1 bl_BOOLFromResourceValue:v3];
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_241D50444(void *a1)
{
  v2 = 0;
  [a1 getResourceValue:&v2 forKey:*MEMORY[0x277CBE980] error:0];
  return [v2 BOOLValue];
}

uint64_t sub_241D50484(void *a1)
{
  v2 = 0;
  [a1 getResourceValue:&v2 forKey:*MEMORY[0x277CBE988] error:0];
  return [v2 BOOLValue];
}

uint64_t sub_241D504C4(void *a1)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBE8B8];
  v3 = *MEMORY[0x277CBE948];
  v21[0] = *MEMORY[0x277CBE8B8];
  v21[1] = v3;
  v4 = *MEMORY[0x277CBE960];
  v21[2] = *MEMORY[0x277CBE960];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  v18 = 0;
  v6 = [a1 resourceValuesForKeys:v5 error:&v18];
  v7 = v18;

  if (v7)
  {
    v8 = BLDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_ERROR, "Error querying bl_isUbiquitousPromise  %@", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v10 = [v6 objectForKeyedSubscript:v2];
    v11 = [a1 bl_BOOLFromResourceValue:v10];

    v12 = [v6 objectForKeyedSubscript:v4];
    v13 = [a1 bl_BOOLFromResourceValue:v12];

    v14 = [v6 objectForKeyedSubscript:v3];
    v15 = [a1 bl_isDownloadedWithResourceValue:v14];

    if (v11)
    {
      v9 = (v13 | v15) ^ 1;
    }

    else
    {
      v9 = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

uint64_t sub_241D50694(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  v4 = BUDynamicCast();

  v5 = [v4 BOOLValue];
  return v5;
}

uint64_t sub_241D506F0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  v4 = BUDynamicCast();

  if ([v4 isEqualToString:*MEMORY[0x277CBE938]])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:*MEMORY[0x277CBE940]];
  }

  return v5;
}

void sub_241D50E00(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _persistentStoreOptions];
  v3 = [*(a1 + 32) p_databaseExistsAtSharediBooksContainerLocation];
  v4 = [*(a1 + 32) p_databaseExistsAtPrivateiBooksContainerLocation];
  if (v3 & 1 | ((v4 & 1) == 0))
  {
    if ((v4 & 1) == 0)
    {
      [*(a1 + 32) p_createPersistentDirectoryIfNeeded];
    }

    v5 = 0;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CBE4D8]);
    v7 = [*(a1 + 32) managedObjectModel];
    v8 = [v6 initWithManagedObjectModel:v7];

    v9 = MEMORY[0x277CBEBC0];
    v10 = [*(a1 + 32) p_persistentStoreFullPathAtPrivateiBooksLocation];
    v11 = [v9 fileURLWithPath:v10 isDirectory:0];

    v12 = MEMORY[0x277CBEBC0];
    v13 = [*(a1 + 32) p_persistentStoreFullPathAtSharediBooksLocation];
    v14 = [v12 fileURLWithPath:v13 isDirectory:0];

    [*(a1 + 32) p_createPersistentDirectoryIfNeeded];
    v15 = *MEMORY[0x277CBE2E8];
    v51 = 0;
    v16 = [v8 addPersistentStoreWithType:v15 configuration:0 URL:v11 options:v2 error:&v51];
    v17 = v51;
    v50 = v17;
    v18 = [v8 migratePersistentStore:v16 toURL:v14 options:0 withType:v15 error:&v50];
    v5 = v50;

    if (!v18 || v5)
    {
      v19 = BLJaliscoLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v53 = v5;
        _os_log_impl(&dword_241D1F000, v19, OS_LOG_TYPE_ERROR, "It looks like the migration failed:  %@", buf, 0xCu);
      }
    }
  }

  v20 = objc_alloc(MEMORY[0x277CBE4D8]);
  v21 = [*(a1 + 32) managedObjectModel];
  v22 = [v20 initWithManagedObjectModel:v21];
  v23 = *(a1 + 32);
  v24 = *(v23 + 24);
  *(v23 + 24) = v22;

  v25 = MEMORY[0x277CBEBC0];
  v26 = [*(a1 + 32) p_persistentStoreFullPathAtSharediBooksLocation];
  v27 = [v25 fileURLWithPath:v26 isDirectory:0];

  v28 = *(*(a1 + 32) + 24);
  v29 = *MEMORY[0x277CBE2E8];
  v49 = v5;
  v30 = [v28 addPersistentStoreWithType:v29 configuration:0 URL:v27 options:v2 error:&v49];
  v31 = v49;

  if (v30)
  {
    v32 = v31;
LABEL_22:
    v39 = BLJaliscoLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [v30 identifier];
      *buf = 138412546;
      v53 = v27;
      v54 = 2112;
      v55 = v40;
      _os_log_impl(&dword_241D1F000, v39, OS_LOG_TYPE_DEFAULT, "Added jalisco Persistent Store: %@ persistentstoreID:%@", buf, 0x16u);
    }

    goto LABEL_29;
  }

  if (v31)
  {
    v33 = BLJaliscoLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v53 = v27;
      v54 = 2112;
      v55 = v31;
      _os_log_impl(&dword_241D1F000, v33, OS_LOG_TYPE_ERROR, "Error adding local Persistent Store at URL: %@. Trying to recover %@", buf, 0x16u);
    }
  }

  v34 = *(*(a1 + 32) + 24);
  v48 = 0;
  v35 = [v34 destroyPersistentStoreAtURL:v27 withType:v29 options:0 error:&v48];
  v36 = v48;
  if ((v35 & 1) == 0)
  {
    v37 = BLJaliscoLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v53 = v27;
      v54 = 2112;
      v55 = v36;
      _os_log_impl(&dword_241D1F000, v37, OS_LOG_TYPE_ERROR, "Could not remove local Persistent Store at URL: %@ %@", buf, 0x16u);
    }
  }

  [*(a1 + 32) p_createPersistentDirectoryIfNeeded];
  v38 = *(*(a1 + 32) + 24);
  v47 = v31;
  v30 = [v38 addPersistentStoreWithType:v29 configuration:0 URL:v27 options:v2 error:&v47];
  v32 = v47;

  if (v30)
  {
    goto LABEL_22;
  }

  v41 = [MEMORY[0x277CCA9B8] bu_errorWithDomain:@"BLJaliscoDAAPClientError" code:2 description:@"Failed to add jalisco Persistent Store: %@" underlyingError:v32];
  v39 = v41;
  if (*(a1 + 40))
  {
    v42 = v41;
    **(a1 + 40) = v39;
  }

  v43 = BLJaliscoLog();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v53 = v27;
    v54 = 2112;
    v55 = v39;
    _os_log_impl(&dword_241D1F000, v43, OS_LOG_TYPE_ERROR, "Failed to add jalisco Persistent Store: %@ %@", buf, 0x16u);
  }

  v44 = *(a1 + 32);
  v45 = *(v44 + 24);
  *(v44 + 24) = 0;

  v30 = 0;
LABEL_29:

  v46 = *MEMORY[0x277D85DE8];
}

void sub_241D53C18(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"NSDetailedErrors"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v2 count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = v2;
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
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v8 logRecursively];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

unint64_t sub_241D53D80(void *a1)
{
  v1 = [a1 UTF8String];

  return strtoull(v1, 0, 0);
}

void sub_241D55968(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v2 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];

  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"1.2/iBooks-%@", v5];
  v4 = qword_280BC5880;
  qword_280BC5880 = v3;
}

uint64_t sub_241D55A50()
{
  qword_280BC5890 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d.%d", 3, 13];

  return MEMORY[0x2821F96F8]();
}

void IMStreamingHashWithFilePath(void *a1, int a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  if (a2 == 1)
  {
    operator new();
  }

  if (!a2)
  {
    operator new();
  }

  v49 = 0;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"IMStreamingHash.%p", v47[3]];
  v11 = dispatch_queue_create([v10 UTF8String], 0);

  dispatch_set_target_queue(v11, v8);
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v45 = 0;
  v12 = [v7 fileSystemRepresentation];
  cleanup_handler[0] = MEMORY[0x277D85DD0];
  cleanup_handler[1] = 3221225472;
  cleanup_handler[2] = sub_241D56368;
  cleanup_handler[3] = &unk_278D17A98;
  v42 = v44;
  v43 = &v46;
  v13 = v11;
  v40 = v13;
  v14 = v9;
  v41 = v14;
  v15 = dispatch_io_create_with_path(0, v12, 0, 0, v13, cleanup_handler);
  v16 = v15;
  if (v15)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x3042000000;
    v33 = sub_241D56588;
    v34 = sub_241D56594;
    v35 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_241D5659C;
    v24[3] = &unk_278D17AE8;
    v27 = v44;
    v17 = v15;
    v25 = v17;
    v18 = v13;
    v26 = v18;
    v28 = &v30;
    v29 = &v46;
    v19 = [v24 copy];
    objc_storeWeak(v31 + 5, v19);
    dispatch_io_read(v17, 0, 0x10000uLL, v18, v19);

    _Block_object_dispose(&v30, 8);
    objc_destroyWeak(&v35);
  }

  else
  {
    v20 = v47[3];
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = MEMORY[0x277CCA9B8];
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"dispatch_io_create_with_path() returned NULL", *MEMORY[0x277CCA450], v7, @"path", 0}];
    v23 = [v21 errorWithDomain:@"IMStreamingHash" code:1 userInfo:v22];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_241D56570;
    block[3] = &unk_278D17AC0;
    v37 = v23;
    v38 = v14;
    v19 = v23;
    dispatch_async(v13, block);
  }

  _Block_object_dispose(v44, 8);
  _Block_object_dispose(&v46, 8);
}

void sub_241D56270(_Unwind_Exception *a1)
{
  MEMORY[0x245CFF070](v3, 0x1081C401A844EABLL);

  _Unwind_Resume(a1);
}

void sub_241D56368(uint64_t a1, int a2)
{
  if (a2 || (a2 = *(*(*(a1 + 48) + 8) + 24)) != 0)
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:a2 userInfo:0];
    v4 = 0;
  }

  else
  {
    v10 = *(*(*(a1 + 56) + 8) + 24);
    (*(*v10 + 40))(v10);
    v11 = MEMORY[0x277CBEA90];
    v12 = *(*(*(a1 + 56) + 8) + 24);
    v13 = (*(*v12 + 24))(v12);
    v14 = *(*(*(a1 + 56) + 8) + 24);
    v4 = [v11 dataWithBytes:v13 length:(*(*v14 + 16))(v14)];
    v3 = 0;
  }

  v5 = *(*(*(a1 + 56) + 8) + 24);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D56558;
  block[3] = &unk_278D17A70;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v17 = v3;
  v18 = v7;
  v16 = v4;
  v8 = v3;
  v9 = v4;
  dispatch_async(v6, block);
}

void sub_241D5659C(void *a1, int a2, void *a3, int a4)
{
  v7 = a3;
  v8 = v7;
  if (a4)
  {
    *(*(a1[6] + 8) + 24) = a4;
  }

  else
  {
    if (a2 && dispatch_data_get_size(v7))
    {
      v9 = a1[4];
      v10 = a1[5];
      WeakRetained = objc_loadWeakRetained((*(a1[7] + 8) + 40));
      dispatch_io_read(v9, 0, 0x10000uLL, v10, WeakRetained);
    }

    v12 = *(*(a1[8] + 8) + 24);
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = sub_241D56F44;
    applier[3] = &unk_278D17B80;
    applier[4] = v12;
    dispatch_data_apply(v8, applier);
  }
}

void IMStreamingHashStringWithFilePath(void *a1, int a2, void *a3, void *a4)
{
  v7 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_241D56764;
  v9[3] = &unk_278D17B10;
  v10 = v7;
  v8 = v7;
  IMStreamingHashWithFilePath(a1, a2, a3, v9);
}

void sub_241D56764(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 32);
  v6 = sub_241D567FC(a2);
  (*(v5 + 16))(v5, v6, v7);
}

__CFString *sub_241D567FC(void *a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 bytes];
    v4 = [v2 length];
    v5 = v4;
    if (v4)
    {
      v6 = 2 * v4;
      MEMORY[0x28223BE20]();
      bzero(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), 2 * v5);
      v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 1;
      do
      {
        v8 = *v3++;
        *(v7 - 1) = a0123456789abcd[v8 >> 4];
        *v7 = a0123456789abcd[v8 & 0xF];
        v7 += 2;
        --v5;
      }

      while (v5);
      v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) length:v6 encoding:4];
    }

    else
    {
      v9 = &stru_2853E2EC8;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id IMStreamingHashWithFilePathSync(void *a1, int a2, void *a3)
{
  v5 = a1;
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_241D56B68;
  v25 = sub_241D56B78;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_241D56B68;
  v19 = sub_241D56B78;
  v20 = 0;
  v7 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D56B80;
  v11[3] = &unk_278D17B38;
  v13 = &v21;
  v14 = &v15;
  v8 = v6;
  v12 = v8;
  IMStreamingHashWithFilePath(v5, a2, v7, v11);

  dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  if (a3)
  {
    *a3 = v16[5];
  }

  v9 = v22[5];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void sub_241D56B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241D56B68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241D56B80(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

id IMStreamingHashStringWithFilePathSync(void *a1, int a2, void *a3)
{
  v5 = a1;
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_241D56B68;
  v25 = sub_241D56B78;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_241D56B68;
  v19 = sub_241D56B78;
  v20 = 0;
  v7 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D56E28;
  v11[3] = &unk_278D17B60;
  v13 = &v21;
  v14 = &v15;
  v8 = v6;
  v12 = v8;
  IMStreamingHashStringWithFilePath(v5, a2, v7, v11);

  dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  if (a3)
  {
    *a3 = v16[5];
  }

  v9 = v22[5];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void sub_241D56DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_241D56E28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

BOOL _BLStoreDemoModeEnabled()
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", &keyExistsAndHasValidFormat))
  {
    v0 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0;
}

void sub_241D57244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241D573E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241D57480(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 32) & 1) == 0)
  {
    *(v1 + 33) = 0;
  }

  return result;
}

void sub_241D575AC(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [*(a1 + 32) _allPurchaseDAAPServers];
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v7 + 1) + 8 * v5++) updateItemImageURLsIgnoringCache:0 completion:0];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_241D5773C(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_241D57854;
  v9 = sub_241D57864;
  v10 = 0;
  v2 = [*(a1 + 32) dsidQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_241D5786C;
  v4[3] = &unk_278D175C0;
  v4[4] = *(a1 + 32);
  v4[5] = &v5;
  dispatch_sync(v2, v4);

  v3 = v6[5];
  if (v3)
  {
    [v3 updateItemImageURLsIgnoringCache:0 completion:*(a1 + 40)];
  }

  _Block_object_dispose(&v5, 8);
}

void sub_241D5783C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241D57854(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241D5786C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1])
  {
    v6 = [v2 swqDSIDToDAAPServer];
    v3 = [v6 objectForKeyedSubscript:*(*(a1 + 32) + 8)];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

void sub_241D579B8(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchRequestForStoreIDs:*(a1 + 40)];
  v3 = objc_opt_new();
  v4 = *(*(a1 + 32) + 136);
  v12 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v12];
  v6 = v12;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_241D57AE0;
  v10[3] = &unk_278D17C38;
  v7 = v3;
  v11 = v7;
  [v5 enumerateObjectsUsingBlock:v10];

  v8 = MEMORY[0x245CFF560](*(a1 + 48));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, v7, v6);
  }
}

void sub_241D57AE0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = [BLJaliscoItem itemWithServerItem:a2];
    [v2 addObject:v3];
  }
}

void sub_241D57C1C(uint64_t a1)
{
  v2 = +[BLJaliscoServerSource sharedSource];
  v3 = [v2 fetchRequestForAllStoreIDs:*(a1 + 32)];

  v4 = *(*(a1 + 40) + 136);
  v9 = 0;
  v5 = [v4 executeFetchRequest:v3 error:&v9];
  v6 = v9;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_241D57D10;
  v7[3] = &unk_278D17C38;
  v8 = *(a1 + 48);
  [v5 enumerateObjectsUsingBlock:v7];
}

void sub_241D57D10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = [BLJaliscoItem itemWithServerItem:a2];
    [v2 addObject:v3];
  }
}

void sub_241D57E6C(uint64_t a1)
{
  v2 = +[BLJaliscoServerSource sharedSource];
  v3 = [v2 fetchRequestForAllBookletsIDsWithParentStoreIDs:*(a1 + 32)];

  v4 = *(*(a1 + 40) + 136);
  v9 = 0;
  v5 = [v4 executeFetchRequest:v3 error:&v9];
  v6 = v9;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_241D57F60;
  v7[3] = &unk_278D17CB0;
  v8 = *(a1 + 48);
  [v5 enumerateObjectsUsingBlock:v7];
}

uint64_t sub_241D57F60(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:@"storeID"];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

void sub_241D5808C(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchRequestForBuyParameters:*(a1 + 40)];
  v3 = objc_opt_new();
  v4 = *(*(a1 + 32) + 136);
  v12 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v12];
  v6 = v12;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_241D581B4;
  v10[3] = &unk_278D17C38;
  v7 = v3;
  v11 = v7;
  [v5 enumerateObjectsUsingBlock:v10];

  v8 = MEMORY[0x245CFF560](*(a1 + 48));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, v7, v6);
  }
}

void sub_241D581B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = [BLJaliscoItem itemWithServerItem:a2];
    [v2 addObject:v3];
  }
}

void sub_241D582E0(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_241D57854;
  v10 = sub_241D57864;
  v11 = 0;
  v2 = [*(a1 + 32) dsidQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_241D58410;
  v5[3] = &unk_278D175C0;
  v5[4] = *(a1 + 32);
  v5[5] = &v6;
  dispatch_sync(v2, v5);

  v3 = v7[5];
  if (v3)
  {
    [v3 hideItemsWithStoreIDs:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))(v4, 0);
    }
  }

  _Block_object_dispose(&v6, 8);
}

void sub_241D583F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241D58410(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1])
  {
    v6 = [v2 swqDSIDToDAAPServer];
    v3 = [v6 objectForKeyedSubscript:*(*(a1 + 32) + 8)];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

void sub_241D58530(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchRequestForHiddenItems];
  v3 = objc_opt_new();
  v4 = *(*(a1 + 32) + 136);
  v12 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v12];
  v6 = v12;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_241D58654;
  v10[3] = &unk_278D17C38;
  v7 = v3;
  v11 = v7;
  [v5 enumerateObjectsUsingBlock:v10];

  v8 = MEMORY[0x245CFF560](*(a1 + 40));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, v7, v6);
  }
}

void sub_241D58654(uint64_t a1, void *a2)
{
  v3 = [a2 storeID];
  if ([v3 length])
  {
    [*(a1 + 32) addObject:v3];
  }
}

void sub_241D58E0C(uint64_t a1, uint64_t a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = BLJaliscoLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_241D1F000, v4, OS_LOG_TYPE_INFO, "UpdatePolitely was successful. Clearing storeAuthenticationRequired, isGDPRPrivacyAcknowledgementRequired", v16, 2u);
    }

    [*(a1 + 32) setIsGDPRPrivacyAcknowledgementRequired:0];
    [*(a1 + 32) setStoreAuthenticationRequired:0];
  }

  v5 = [*(a1 + 32) isGDPRPrivacyAcknowledgementRequired];
  v6 = MEMORY[0x277CCA450];
  if (v5)
  {
    v7 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA450];
    v20[0] = @"GDPR acknowledgement required";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v9 = [v7 errorWithDomain:@"BLJaliscoDAAPClientError" code:6 userInfo:v8];
  }

  else
  {
    v9 = 0;
  }

  if ([*(a1 + 32) storeAuthenticationRequired])
  {
    v10 = MEMORY[0x277CCA9B8];
    v17 = *v6;
    v18 = @"need store auth to get jalisco items";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v12 = [v10 errorWithDomain:@"BLJaliscoDAAPClientError" code:5 userInfo:v11];

    v9 = v12;
  }

  v13 = MEMORY[0x245CFF560](*(a1 + 40));
  v14 = v13;
  if (v13)
  {
    (*(v13 + 16))(v13, a2, v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_241D5909C(uint64_t a1)
{
  v76 = *MEMORY[0x277D85DE8];
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0x7FFFFFFFFFFFFFFFLL;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D597AC;
  block[3] = &unk_278D17D00;
  block[4] = v2;
  block[5] = &v63;
  block[6] = &v59;
  dispatch_sync(v3, block);
  if (v60[3])
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = *(*(a1 + 32) + 16);
      v6 = [v4 copy];
      [v5 addObject:v6];
    }

    v7 = [*(a1 + 32) _currentPurchaseDAAPServers];
    v44 = [v7 valueForKey:@"dsid"];
    v8 = BLJaliscoLog();
    v43 = v7;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 56);
      v10 = *(a1 + 48);
      *buf = 67109634;
      *&buf[4] = v9;
      *v75 = 2048;
      *&v75[2] = v10;
      *&v75[10] = 2112;
      *&v75[12] = v44;
      _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "[BLJaliscoDAAPClient] updatePolitely:%{BOOL}d reason:%ld will update for DSIDs:(%@)", buf, 0x1Cu);
    }

    if ([v44 count])
    {
      v11 = *(a1 + 32);
      if ((*(v11 + 33) & 1) == 0)
      {
        v12 = dispatch_get_global_queue(0, 0);
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = sub_241D598C8;
        v56[3] = &unk_278D17380;
        v56[4] = v11;
        v57 = v44;
        dispatch_async(v12, v56);
      }

      *buf = 0;
      *v75 = buf;
      *&v75[8] = 0x2020000000;
      v75[16] = 1;
      v13 = dispatch_group_create();
      v14 = BLJaliscoLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [MEMORY[0x277CCACC8] currentThread];
        v16 = [*(a1 + 32) purchaseDAAPSyncsInFlight];
        v17 = [v16 count];
        *v67 = 138412546;
        v68 = v15;
        v69 = 2048;
        v70 = v17;
        _os_log_impl(&dword_241D1F000, v14, OS_LOG_TYPE_INFO, "Dispatch group: creation thread %@ purchaseDAAPSyncsInFlight %lu - updatePolitely", v67, 0x16u);
      }

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v18 = v43;
      v19 = [v18 countByEnumeratingWithState:&v52 objects:v73 count:16];
      if (v19)
      {
        v20 = *v53;
        do
        {
          v21 = 0;
          v45 = v19;
          do
          {
            if (*v53 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v52 + 1) + 8 * v21);
            v23 = [*(a1 + 32) purchaseDAAPSyncsInFlight];
            v24 = [v23 containsObject:v22];

            if ((v24 & 1) == 0)
            {
              v25 = [*(a1 + 32) purchaseDAAPSyncsInFlight];
              [v25 addObject:v22];

              dispatch_group_enter(v13);
              v26 = BLJaliscoLog();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v27 = v20;
                v28 = v13;
                v29 = v18;
                v30 = [MEMORY[0x277CCACC8] currentThread];
                v31 = [v22 dsid];
                v32 = [*(a1 + 32) purchaseDAAPSyncsInFlight];
                v33 = [v32 count];
                *v67 = 138412802;
                v68 = v30;
                v69 = 2112;
                v70 = v31;
                v71 = 2048;
                v72 = v33;
                _os_log_impl(&dword_241D1F000, v26, OS_LOG_TYPE_INFO, "Dispatch group: entry thread %@ dsid:%@ purchaseDAAPSyncsInFlight %lu - updatePolitely", v67, 0x20u);

                v18 = v29;
                v13 = v28;
                v20 = v27;
                v19 = v45;
              }

              v34 = *(a1 + 48);
              v35 = *(a1 + 32);
              v36 = *(v35 + 40);
              v47[0] = MEMORY[0x277D85DD0];
              v47[1] = 3221225472;
              v47[2] = sub_241D59AB0;
              v47[3] = &unk_278D17DA0;
              v51 = *(a1 + 56);
              v47[4] = v22;
              v47[5] = v35;
              v49 = buf;
              v50 = v34;
              v48 = v13;
              [v22 setupWithReason:v34 queue:v36 completion:v47];
            }

            ++v21;
          }

          while (v19 != v21);
          v19 = [v18 countByEnumeratingWithState:&v52 objects:v73 count:16];
        }

        while (v19);
      }

      v37 = *(a1 + 32);
      v38 = *(v37 + 40);
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = sub_241D5A084;
      v46[3] = &unk_278D17DC8;
      v46[4] = v37;
      v46[5] = buf;
      v46[6] = &v63;
      dispatch_group_notify(v13, v38, v46);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v41 = BLJaliscoLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241D1F000, v41, OS_LOG_TYPE_DEFAULT, "[BLJaliscoDAAPClient] no update - no signed in user", buf, 2u);
      }

      [*(a1 + 32) _sendCompletionHandlersWithSuccess:1 generation:{v64[3], v7}];
    }
  }

  else
  {
    v39 = BLJaliscoLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v39, OS_LOG_TYPE_DEFAULT, "No update required", buf, 2u);
    }

    v40 = *(a1 + 40);
    if (v40)
    {
      (*(v40 + 16))(v40, 1);
    }
  }

  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v63, 8);
  v42 = *MEMORY[0x277D85DE8];
}

void sub_241D59740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Unwind_Resume(a1);
}

void sub_241D597AC(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  *(*(a1[5] + 8) + 24) = *(a1[4] + 88);
  *(*(a1[6] + 8) + 24) = *(a1[4] + 96) != *(a1[4] + 88);
  v2 = BLJaliscoLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v5 = *(v3 + 88);
    v4 = *(v3 + 96);
    v6 = *(*(a1[6] + 8) + 24);
    v8 = 134218496;
    v9 = v5;
    v10 = 2048;
    v11 = v4;
    v12 = 1024;
    v13 = v6;
    _os_log_impl(&dword_241D1F000, v2, OS_LOG_TYPE_DEFAULT, "Need update test: currentGeneration:%lu pendingGeneration:%lu Needs update:%{BOOL}d", &v8, 0x1Cu);
  }

  if (*(*(a1[6] + 8) + 24) == 1)
  {
    *(a1[4] + 96) = *(a1[4] + 88);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_241D598C8(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) newManagedObjectContext];
  v3 = +[BLJaliscoServerSource sharedSource];
  v4 = [v3 itemsFetchRequestForDSIDs:*(a1 + 40)];

  [v4 setFetchLimit:1];
  v12 = 0;
  v5 = [v2 countForFetchRequest:v4 error:&v12];
  v6 = v12;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = BLJaliscoLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_241D1F000, v9, OS_LOG_TYPE_ERROR, "DAAP Setup: Couldn't count items.  %@", buf, 0xCu);
    }
  }

  else if (!v5)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 40);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_241D59A58;
    v11[3] = &unk_278D173A8;
    v11[4] = v7;
    dispatch_async(v8, v11);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t sub_241D59A58(uint64_t a1)
{
  [*(a1 + 32) willChangeValueForKey:@"initiallyLoadingJalisco"];
  *(*(a1 + 32) + 32) = 1;
  v2 = *(a1 + 32);

  return [v2 didChangeValueForKey:@"initiallyLoadingJalisco"];
}

void sub_241D59AB0(uint64_t a1, int a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = BLJaliscoLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) dsid];
    *buf = 138412546;
    v25 = v5;
    v26 = 1024;
    v27 = a2;
    _os_log_impl(&dword_241D1F000, v4, OS_LOG_TYPE_INFO, "DAAP Setup, dsid: %@, success: %d", buf, 0x12u);
  }

  if (a2)
  {
    v6 = *(a1 + 72);
    v7 = *(a1 + 64);
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = *(v8 + 40);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_241D59CA4;
    v22[3] = &unk_278D17D50;
    v22[4] = v9;
    v22[5] = v8;
    v11 = &v23;
    v18 = *(a1 + 48);
    v12 = v18;
    v23 = v18;
    [v9 fetchAllItemsPolitely:v6 reason:v7 queue:v10 completion:v22];
  }

  else
  {
    v13 = *(a1 + 40);
    v14 = *(v13 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_241D59F4C;
    block[3] = &unk_278D17D78;
    v15 = *(a1 + 32);
    block[4] = v13;
    block[5] = v15;
    v11 = &v21;
    v19 = *(a1 + 48);
    v16 = v19;
    v21 = v19;
    dispatch_async(v14, block);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_241D59CA4(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = BLJaliscoLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) dsid];
    *buf = 138412546;
    v16 = v5;
    v17 = 1024;
    v18 = a2;
    _os_log_impl(&dword_241D1F000, v4, OS_LOG_TYPE_INFO, "DAAP Update, dsid: %@, success: %d", buf, 0x12u);
  }

  v6 = *(a1 + 40);
  v7 = *(v6 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D59DF8;
  block[3] = &unk_278D17D28;
  v14 = a2;
  v8 = *(a1 + 32);
  block[4] = v6;
  block[5] = v8;
  v11 = *(a1 + 48);
  v9 = v11;
  v13 = v11;
  dispatch_async(v7, block);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_241D59DF8(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 56) + 8);
  if (*(v2 + 24) == 1)
  {
    v3 = *(a1 + 64);
  }

  else
  {
    v3 = 0;
  }

  *(v2 + 24) = v3 & 1;
  v4 = [*(a1 + 32) purchaseDAAPSyncsInFlight];
  [v4 removeObject:*(a1 + 40)];

  dispatch_group_leave(*(a1 + 48));
  v5 = BLJaliscoLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x277CCACC8] currentThread];
    v7 = [*(a1 + 40) dsid];
    v8 = [*(a1 + 32) purchaseDAAPSyncsInFlight];
    v10 = 138412802;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    v14 = 2048;
    v15 = [v8 count];
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_INFO, "Dispatch group:leave thread %@ dsid:%@  purchaseDAAPSyncsInFlight %lu - after DAAP update", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_241D59F4C(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 56) + 8) + 24) = 0;
  v2 = [*(a1 + 32) purchaseDAAPSyncsInFlight];
  [v2 removeObject:*(a1 + 40)];

  dispatch_group_leave(*(a1 + 48));
  v3 = BLJaliscoLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [MEMORY[0x277CCACC8] currentThread];
    v5 = [*(a1 + 40) dsid];
    v6 = [*(a1 + 32) purchaseDAAPSyncsInFlight];
    v8 = 138412802;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    v12 = 2048;
    v13 = [v6 count];
    _os_log_impl(&dword_241D1F000, v3, OS_LOG_TYPE_INFO, "Dispatch group:leave thread %@ dsid:%@ purchaseDAAPSyncsInFlight %lu - NO DAAP update", &v8, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t sub_241D5A084(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = BLJaliscoLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [MEMORY[0x277CCACC8] currentThread];
    v4 = [*(a1 + 32) purchaseDAAPSyncsInFlight];
    v7 = 138412546;
    v8 = v3;
    v9 = 2048;
    v10 = [v4 count];
    _os_log_impl(&dword_241D1F000, v2, OS_LOG_TYPE_INFO, "Dispatch group:NOTIFY thread %@  purchaseDAAPSyncsInFlight %lu - updatePolitely", &v7, 0x16u);
  }

  result = [*(a1 + 32) _sendCompletionHandlersWithSuccess:*(*(*(a1 + 40) + 8) + 24) generation:*(*(*(a1 + 48) + 8) + 24)];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_241D5A368(uint64_t a1)
{
  v1 = [*(a1 + 32) swqDSIDToDAAPServer];
  [v1 removeAllObjects];
}

void sub_241D5A560(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 120) objectForKeyedSubscript:*(*(a1 + 32) + 8)];

  if (!v2)
  {
    v3 = [*(a1 + 32) _newPurchaseDAAPServerWithDSID:*(*(a1 + 32) + 8)];
    [*(*(a1 + 32) + 120) setObject:v3 forKeyedSubscript:*(*(a1 + 32) + 8)];

    v4 = BLJaliscoLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(v5 + 8);
      v7 = *(v5 + 88);
      v14 = 138412546;
      v15 = v6;
      v16 = 2048;
      v17 = v7;
      _os_log_impl(&dword_241D1F000, v4, OS_LOG_TYPE_DEFAULT, "_addPurchaseServerForCurrentUser Created daap server for dsid:(%@) currentServerGen:(%lu)", &v14, 0x16u);
    }

    ++*(*(a1 + 32) + 88);
    v8 = *(a1 + 32);
    if (*(v8 + 88) == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v8 + 88) = 0x8000000000000000;
    }

    v9 = BLJaliscoLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(v10 + 8);
      v12 = *(v10 + 88);
      v14 = 138412546;
      v15 = v11;
      v16 = 2048;
      v17 = v12;
      _os_log_impl(&dword_241D1F000, v9, OS_LOG_TYPE_DEFAULT, "_addPurchaseServerForCurrentUser Finished for dsid:(%@) currentServerGen:(%lu)", &v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_241D5A990(uint64_t a1, uint64_t a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = BLJaliscoLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_241D1F000, v4, OS_LOG_TYPE_INFO, "updateFamilyPolitely was successful. Clearing storeAuthenticationRequired, isGDPRPrivacyAcknowledgementRequired", v16, 2u);
    }

    [*(a1 + 32) setIsGDPRPrivacyAcknowledgementRequired:0];
    [*(a1 + 32) setStoreAuthenticationRequired:0];
  }

  v5 = [*(a1 + 32) isGDPRPrivacyAcknowledgementRequired];
  v6 = MEMORY[0x277CCA450];
  if (v5)
  {
    v7 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA450];
    v20[0] = @"GDPR acknowledgement required";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v9 = [v7 errorWithDomain:@"BLJaliscoDAAPClientError" code:6 userInfo:v8];
  }

  else
  {
    v9 = 0;
  }

  if ([*(a1 + 32) storeAuthenticationRequired])
  {
    v10 = MEMORY[0x277CCA9B8];
    v17 = *v6;
    v18 = @"need store auth to get family jalisco items";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v12 = [v10 errorWithDomain:@"BLJaliscoDAAPClientError" code:5 userInfo:v11];

    v9 = v12;
  }

  v13 = MEMORY[0x245CFF560](*(a1 + 40));
  v14 = v13;
  if (v13)
  {
    (*(v13 + 16))(v13, a2, v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_241D5ADDC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_241D5AE08(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_241D5AEB0;
  v4[3] = &unk_278D17E40;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  dispatch_async(v2, v4);
}

void sub_241D5AEB0(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(*(a1 + 32) + 24);
    v4 = [v2 copy];
    [v3 addObject:v4];
  }

  v5 = [*(a1 + 32) _familyPurchaseDAAPServers];
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = 1;
  v6 = dispatch_group_create();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v8)
  {
    v10 = *v34;
    *&v9 = 138412290;
    v26 = v9;
    do
    {
      v11 = 0;
      do
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v33 + 1) + 8 * v11);
        v13 = [*(a1 + 32) purchaseDAAPSyncsInFlight];
        v14 = [v13 containsObject:v12];

        if (v14)
        {
          v15 = BLJaliscoLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [v12 dsid];
            *buf = v26;
            v40 = v16;
            _os_log_impl(&dword_241D1F000, v15, OS_LOG_TYPE_DEFAULT, "Skipping family purchase history update for %@ (already in-flight)", buf, 0xCu);
          }
        }

        else
        {
          v17 = [*(a1 + 32) purchaseDAAPSyncsInFlight];
          [v17 addObject:v12];

          dispatch_group_enter(v6);
          v18 = BLJaliscoLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v12 dsid];
            *buf = v26;
            v40 = v19;
            _os_log_impl(&dword_241D1F000, v18, OS_LOG_TYPE_DEFAULT, "Setting up family purchase history request for %@", buf, 0xCu);
          }

          v20 = *(a1 + 48);
          v21 = *(a1 + 32);
          v22 = *(v21 + 40);
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = sub_241D5B264;
          v28[3] = &unk_278D17DA0;
          v32 = *(a1 + 56);
          v28[4] = v12;
          v28[5] = v21;
          v30 = v37;
          v31 = v20;
          v29 = v6;
          [v12 setupWithReason:v20 queue:v22 completion:v28];
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [v7 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v8);
  }

  v23 = *(a1 + 32);
  v24 = *(v23 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D5B660;
  block[3] = &unk_278D17BE8;
  block[4] = v23;
  block[5] = v37;
  dispatch_group_notify(v6, v24, block);

  _Block_object_dispose(v37, 8);
  v25 = *MEMORY[0x277D85DE8];
}

void sub_241D5B264(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 72);
    v3 = *(a1 + 64);
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(v4 + 40);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_241D5B3B0;
    v17[3] = &unk_278D17E18;
    v17[4] = v4;
    v17[5] = v5;
    v7 = &v18;
    v13 = *(a1 + 48);
    v8 = v13;
    v18 = v13;
    [v5 fetchAllItemsPolitely:v2 reason:v3 queue:v6 completion:v17];
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = *(v9 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_241D5B570;
    block[3] = &unk_278D17D78;
    v11 = *(a1 + 32);
    block[4] = v9;
    block[5] = v11;
    v7 = &v16;
    v14 = *(a1 + 48);
    v12 = v14;
    v16 = v14;
    dispatch_async(v10, block);
  }
}

void sub_241D5B3B0(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v4 = *(a1 + 48);
  v2 = *(*(a1 + 32) + 40);
  v6 = *(a1 + 32);
  block[2] = sub_241D5B454;
  block[3] = &unk_278D17D28;
  v8 = a2;
  v3 = v4;
  v7 = v4;
  dispatch_async(v2, block);
}

void sub_241D5B454(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 56) + 8);
  if (*(v2 + 24) == 1)
  {
    v3 = *(a1 + 64);
  }

  else
  {
    v3 = 0;
  }

  *(v2 + 24) = v3 & 1;
  v4 = [*(a1 + 32) purchaseDAAPSyncsInFlight];
  [v4 removeObject:*(a1 + 40)];

  v5 = BLJaliscoLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 40) dsid];
    v7 = *(a1 + 64);
    v9 = 138412546;
    v10 = v6;
    v11 = 1024;
    v12 = v7;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEFAULT, "Family purchase history update completed for %@ (%d)", &v9, 0x12u);
  }

  dispatch_group_leave(*(a1 + 48));
  v8 = *MEMORY[0x277D85DE8];
}

void sub_241D5B570(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 56) + 8) + 24) = 0;
  v2 = [*(a1 + 32) purchaseDAAPSyncsInFlight];
  [v2 removeObject:*(a1 + 40)];

  v3 = BLJaliscoLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [*(a1 + 40) dsid];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_241D1F000, v3, OS_LOG_TYPE_ERROR, "Family purchase history setup failed for %@", &v6, 0xCu);
  }

  dispatch_group_leave(*(a1 + 48));
  v5 = *MEMORY[0x277D85DE8];
}

void sub_241D5B660(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = BLJaliscoLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v3 = @"successfully";
    }

    else
    {
      v3 = @"with error";
    }

    v4 = [*(a1 + 32) purchaseDAAPSyncsInFlight];
    *buf = 138543618;
    v12 = v3;
    v13 = 2048;
    v14 = [v4 count];
    _os_log_impl(&dword_241D1F000, v2, OS_LOG_TYPE_DEFAULT, "Jalisco family purchase updates completed %{public}@ (%lu)", buf, 0x16u);
  }

  v5 = [*(a1 + 32) purchaseDAAPSyncsInFlight];
  v6 = [v5 count];

  if (!v6)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_241D5B7D8;
    v9[3] = &unk_278D175C0;
    v10 = *(a1 + 32);
    v7 = MEMORY[0x245CFF560](v9);
    v7[2]();
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t sub_241D5B7D8(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(*(a1 + 40) + 8) + 24);
        (*(*(*(&v10 + 1) + 8 * v6) + 16))(*(*(&v10 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  result = [*(*(a1 + 32) + 24) removeAllObjects];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_241D5B8EC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _processFamilyCircleAdded:v9 removed:v8 unchanged:v7 completion:*(a1 + 32)];
}

void sub_241D5C220(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = +[BLJaliscoServerSource sharedSource];
  v3 = [*(a1 + 32) _dsids];
  v4 = [v2 allItemsFetchRequestForDSIDs:v3];

  if ([*(a1 + 40) count])
  {
    v5 = +[BLJaliscoServerSource sharedSource];
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) _dsids];
    v8 = [v5 fetchRequestForStoreIDs:v6 dsids:v7];

    v4 = v8;
  }

  v9 = BLJaliscoLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v31 = v4;
    _os_log_impl(&dword_241D1F000, v9, OS_LOG_TYPE_ERROR, "Deleting items %@", buf, 0xCu);
  }

  v10 = *(*(a1 + 32) + 136);
  v27 = 0;
  v11 = [v10 executeFetchRequest:v4 error:&v27];
  v12 = v27;
  if (v12)
  {
    v13 = v12;
    v14 = BLJaliscoLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 138412290;
    v31 = v13;
    v15 = "Couldn't fetch items to delete Error: %@";
    v16 = v14;
    v17 = 12;
    goto LABEL_8;
  }

  if ([v11 count])
  {
    v14 = [v11 firstObject];
    [*(*(a1 + 32) + 136) deleteObject:v14];
    v18 = *(*(a1 + 32) + 136);
    v26 = 0;
    [v18 save:&v26];
    v13 = v26;
    v19 = BLJaliscoLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v14 storeID];
      *buf = 138412546;
      v31 = v20;
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&dword_241D1F000, v19, OS_LOG_TYPE_ERROR, "Deleted jalisco items %@. Error: %@", buf, 0x16u);
    }
  }

  else
  {
    v21 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA450];
    v29 = @"Can't delete jalisco items. Nothing to delete.";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v13 = [v21 errorWithDomain:@"BLJaliscoDAAPClientError" code:1 userInfo:v22];

    v14 = BLJaliscoLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v31 = v11;
      v32 = 2112;
      v33 = v13;
      v15 = "Fail to delete jalisco items %@. Error: %@";
      v16 = v14;
      v17 = 22;
LABEL_8:
      _os_log_impl(&dword_241D1F000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
    }
  }

LABEL_15:

  v23 = MEMORY[0x245CFF560](*(a1 + 48));
  v24 = v23;
  if (v23)
  {
    (*(v23 + 16))(v23, v13);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_241D5C664(uint64_t a1)
{
  v2 = +[BLJaliscoServerSource sharedSource];
  v3 = [v2 fetchRequestForNeedsImport:*(a1 + 48)];

  v4 = *(*(a1 + 32) + 136);
  v9 = 0;
  v5 = [v4 executeFetchRequest:v3 error:&v9];
  v6 = v9;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_241D5C758;
  v7[3] = &unk_278D17C38;
  v8 = *(a1 + 40);
  [v5 enumerateObjectsUsingBlock:v7];
}

void sub_241D5C758(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = [BLJaliscoItem itemWithServerItem:a2];
    [v2 addObject:v3];
  }
}

void sub_241D5C8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241D5C8DC(uint64_t a1)
{
  v5 = [*(a1 + 32) swqDSIDToDAAPServer];
  v2 = [v5 allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_241D5CA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241D5CA60(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[1])
  {
    v3 = [v2 swqDSIDToDAAPServer];
    v4 = [v3 objectForKeyedSubscript:*(*(a1 + 32) + 8)];

    if (v4)
    {
      v9[0] = v4;
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
      v6 = *(*(a1 + 40) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_241D5CC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241D5CC40(uint64_t a1)
{
  v2 = [*(a1 + 32) swqDSIDToDAAPServer];
  v3 = [v2 allValues];
  v4 = [v3 mutableCopy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);
  if (v7[1])
  {
    v8 = [v7 swqDSIDToDAAPServer];
    v10 = [v8 objectForKeyedSubscript:*(*(a1 + 32) + 8)];

    v9 = v10;
    if (v10)
    {
      [*(*(*(a1 + 40) + 8) + 40) removeObject:v10];
      v9 = v10;
    }
  }
}

void sub_241D5CE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241D5CE3C(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v5[0] = *(*(a1 + 32) + 8);
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  if (v2)
  {
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_241D5D06C(uint64_t a1)
{
  v93 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) setByAddingObjectsFromSet:*(a1 + 40)];
  v3 = [v2 allObjects];

  v4 = BLJaliscoLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_241D1F000, v4, OS_LOG_TYPE_DEFAULT, "Adding family member BLPurchaseDAAPServer objects for %@", &buf, 0xCu);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v77 objects:v92 count:16];
  if (v7)
  {
    v8 = *v78;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v78 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v77 + 1) + 8 * i);
        v11 = [*(a1 + 48) swqDSIDToDAAPServer];
        v12 = [v11 objectForKeyedSubscript:v10];
        v13 = v12 == 0;

        if (v13)
        {
          v14 = [*(a1 + 48) _newPurchaseDAAPServerWithDSID:v10];
          v15 = [*(a1 + 48) swqDSIDToDAAPServer];
          [v15 setObject:v14 forKeyedSubscript:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v77 objects:v92 count:16];
    }

    while (v7);
  }

  v16 = BLJaliscoLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 56);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v17;
    _os_log_impl(&dword_241D1F000, v16, OS_LOG_TYPE_DEFAULT, "Removing family member BLPurchaseDAAPServer objects for %@", &buf, 0xCu);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v18 = *(a1 + 56);
  v19 = [v18 countByEnumeratingWithState:&v73 objects:v91 count:16];
  if (v19)
  {
    v20 = *v74;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v74 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v73 + 1) + 8 * j);
        v23 = [*(a1 + 48) swqDSIDToDAAPServer];
        [v23 setObject:0 forKeyedSubscript:v22];
      }

      v19 = [v18 countByEnumeratingWithState:&v73 objects:v91 count:16];
    }

    while (v19);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v87 = 0x3032000000;
  v88 = sub_241D57854;
  v89 = sub_241D57864;
  v90 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = sub_241D57854;
  v71 = sub_241D57864;
  v72 = 0;
  v24 = *(a1 + 48);
  v25 = *(v24 + 136);
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = sub_241D5D818;
  v63[3] = &unk_278D17EE0;
  v63[4] = v24;
  v26 = v3;
  v64 = v26;
  v65 = &v67;
  p_buf = &buf;
  [v25 performBlockAndWait:v63];
  if (*(*(&buf + 1) + 40))
  {
    v27 = BLJaliscoLog();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
LABEL_25:

      goto LABEL_26;
    }

    v28 = *(*(&buf + 1) + 40);
    *v82 = 138412546;
    v83 = v26;
    v84 = 2112;
    v85 = v28;
    v29 = "_processFamilyCircle: Failed to fetch jalisco objects excluding current family members: %@,  %@";
    v30 = v27;
    v31 = OS_LOG_TYPE_ERROR;
    v32 = 22;
LABEL_24:
    _os_log_impl(&dword_241D1F000, v30, v31, v29, v82, v32);
    goto LABEL_25;
  }

  if (![v68[5] count])
  {
    v27 = BLJaliscoLog();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      goto LABEL_25;
    }

    *v82 = 0;
    v29 = "_processFamilyCircle: No items up for deletion";
    v30 = v27;
    v31 = OS_LOG_TYPE_INFO;
    v32 = 2;
    goto LABEL_24;
  }

  v39 = BLJaliscoLog();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    v40 = [v68[5] count];
    v41 = [v68[5] valueForKey:@"storeID"];
    v42 = [v41 bu_arrayByRemovingDuplicates];
    *v82 = 134218242;
    v83 = v40;
    v84 = 2112;
    v85 = v42;
    _os_log_impl(&dword_241D1F000, v39, OS_LOG_TYPE_DEBUG, "_processFamilyCircle: Deleting %lu jalisco objects that are no longer accessible: %@", v82, 0x16u);
  }

  v62 = 0u;
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v43 = v68[5];
  v44 = [v43 countByEnumeratingWithState:&v59 objects:v81 count:16];
  if (v44)
  {
    v45 = *v60;
    do
    {
      for (k = 0; k != v44; ++k)
      {
        if (*v60 != v45)
        {
          objc_enumerationMutation(v43);
        }

        [*(*(a1 + 48) + 136) deleteObject:*(*(&v59 + 1) + 8 * k)];
      }

      v44 = [v43 countByEnumeratingWithState:&v59 objects:v81 count:16];
    }

    while (v44);
  }

  if ([*(*(a1 + 48) + 136) hasChanges])
  {
    v47 = *(*(a1 + 48) + 136);
    v58 = 0;
    v48 = [v47 save:&v58];
    v27 = v58;
    if (v27)
    {
      v49 = v48;
    }

    else
    {
      v49 = 1;
    }

    if ((v49 & 1) == 0)
    {
      v50 = BLJaliscoLog();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *v82 = 138412290;
        v83 = v27;
        _os_log_impl(&dword_241D1F000, v50, OS_LOG_TYPE_ERROR, "Moc Save Error:  %@", v82, 0xCu);
      }
    }

    goto LABEL_25;
  }

LABEL_26:
  v33 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D5D8D8;
  block[3] = &unk_278D17F08;
  v52 = *(a1 + 32);
  v34 = *(a1 + 56);
  v35 = *(a1 + 48);
  v53 = v34;
  v54 = v35;
  v36 = *(a1 + 64);
  v56 = 0;
  v57 = v36;
  v55 = v26;
  v37 = v26;
  dispatch_async(v33, block);

  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&buf, 8);

  v38 = *MEMORY[0x277D85DE8];
}

void sub_241D5D7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Unwind_Resume(a1);
}

void sub_241D5D818(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchRequestForNotInStoreAccountIDs:*(a1 + 40)];
  objc_opt_class();
  v3 = *(*(a1 + 32) + 136);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v3 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = BUDynamicCast();
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_241D5D8D8(uint64_t a1)
{
  if ([*(a1 + 32) count] || *(a1 + 40))
  {
    v2 = [*(a1 + 48) delegate];
    [v2 clientDetectedPredicateChange:*(a1 + 48)];
  }

  v3 = MEMORY[0x245CFF560](*(a1 + 72));
  if (v3)
  {
    if (*(a1 + 64))
    {
      v4 = *(a1 + 64);
    }

    else
    {
      v4 = MEMORY[0x277CBEBF8];
    }

    v5 = v3;
    v3[2](v3, *(a1 + 56), v4);
    v3 = v5;
  }
}

void sub_241D5D9EC(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D5DC0C;
  block[3] = &unk_278D17F58;
  block[4] = v2;
  block[5] = &v17;
  block[6] = *(a1 + 40);
  dispatch_sync(v3, block);
  v4 = *(a1 + 32);
  if (*(v4 + 32) == 1 && *(v18 + 24) == 1)
  {
    [v4 willChangeValueForKey:@"initiallyLoadingJalisco"];
    *(*(a1 + 32) + 32) = 0;
    *(*(a1 + 32) + 33) = 1;
    [*(a1 + 32) didChangeValueForKey:@"initiallyLoadingJalisco"];
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 16);
  if (v5 && *(v18 + 24) == 1)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v21 count:16];
    if (v7)
    {
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(a1 + 48);
          (*(*(*(&v12 + 1) + 8 * v9) + 16))(*(*(&v12 + 1) + 8 * v9));
          ++v9;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v12 objects:v21 count:16];
      }

      while (v7);
    }

    [*(*(a1 + 32) + 16) removeAllObjects];
  }

  _Block_object_dispose(&v17, 8);
  v11 = *MEMORY[0x277D85DE8];
}

void *sub_241D5DC0C(void *result)
{
  *(*(result[5] + 8) + 24) = *(result[4] + 96) == result[6];
  if (*(*(result[5] + 8) + 24) == 1)
  {
    *(result[4] + 96) = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

void sub_241D5E268(uint64_t a1)
{
  v1 = [*(a1 + 32) swqDSIDToDAAPServer];
  [v1 removeAllObjects];
}

void sub_241D5E2AC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 120) objectForKeyedSubscript:*(*(a1 + 32) + 8)];

  if (!v2)
  {
    v3 = [*(a1 + 32) _newPurchaseDAAPServerWithDSID:*(*(a1 + 32) + 8)];
    [*(*(a1 + 32) + 120) setObject:v3 forKeyedSubscript:*(*(a1 + 32) + 8)];

    ++*(*(a1 + 32) + 88);
    v4 = *(a1 + 32);
    if (*(v4 + 88) == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v4 + 88) = 0x8000000000000000;
    }
  }
}

void sub_241D5E608(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) createDaapURL:a2];
    v7 = [[BLURLRequestEncoder alloc] initWithBag:*(*(a1 + 32) + 8) withURLRequest:?];
    v8 = [*(a1 + 32) requestMethod];
    v9 = [*(a1 + 32) body];
    v10 = [(AMSURLRequestEncoder *)v7 requestWithMethod:v8 URL:v6 parameters:v9];

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_241D5E894;
    v21[3] = &unk_278D17FA8;
    v11 = *(a1 + 40);
    v21[4] = *(a1 + 32);
    v22 = v11;
    [v10 resultWithCompletion:v21];

    v12 = v5;
  }

  else
  {
    v13 = BLJaliscoLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      *buf = 138412290;
      v26 = v14;
      _os_log_impl(&dword_241D1F000, v13, OS_LOG_TYPE_ERROR, "%@: No URL to configure with.", buf, 0xCu);
    }

    if (v5)
    {
      v23 = @"Underlying Error Description";
      v15 = [v5 description];
      v24 = v15;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    }

    else
    {
      v6 = 0;
    }

    v16 = MEMORY[0x277CCACA8];
    v17 = [*(a1 + 32) description];
    v18 = [v16 stringWithFormat:@"AMS bag error - no url for request %@", v17];
    v12 = BLErrorWithUserInfo(3, 0, v18, v6);

    v19 = MEMORY[0x245CFF560](*(a1 + 40));
    v7 = v19;
    if (v19)
    {
      (*(v19 + 16))(v19, 0, v12);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_241D5E894(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v11 = BLJaliscoLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      *buf = 138412546;
      v25 = v12;
      v26 = 2112;
      v27 = v7;
      _os_log_impl(&dword_241D1F000, v11, OS_LOG_TYPE_ERROR, "Error with BLURLRequestEncoder creating request %@ %@", buf, 0x16u);
    }

    if (!v7)
    {
      v9 = 0;
      v10 = @"AMS error - nil request %@";
      goto LABEL_9;
    }

    v22 = @"Underlying Error Description";
    v8 = [v7 description];
    v23 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v10 = @"AMS error - nil request %@";
LABEL_8:

LABEL_9:
    v13 = MEMORY[0x277CCACA8];
    v14 = [*(a1 + 32) description];
    v15 = [v13 stringWithFormat:v10, v14];
    v16 = BLErrorWithUserInfo(3, 0, v15, v9);

    goto LABEL_11;
  }

  if (v6)
  {
    v20 = @"Underlying Error Description";
    v8 = [v6 description];
    v21 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v10 = @"AMS error with creating request in %@";
    goto LABEL_8;
  }

  v16 = 0;
LABEL_11:
  v17 = MEMORY[0x245CFF560](*(a1 + 40));
  v18 = v17;
  if (v17)
  {
    (*(v17 + 16))(v17, v5, v16);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_241D5EBCC(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = +[BLPurchaseDAAPServer sharedSession];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = sub_241D5ED84;
    v17 = &unk_278D17FF8;
    v18 = v5;
    v19 = *(a1 + 40);
    v8 = [v7 dataTaskWithRequest:v18 completionHandler:&v14];

    [v8 resume];
    v9 = v18;
  }

  else
  {
    v10 = BLJaliscoLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138412546;
      v21 = v11;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_241D1F000, v10, OS_LOG_TYPE_ERROR, "%@: Cannot execute request because request is nil %@", buf, 0x16u);
    }

    v12 = MEMORY[0x245CFF560](*(a1 + 40));
    v9 = v12;
    if (v12)
    {
      (*(v12 + 16))(v12, 0, v6);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_241D5ED84(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = BLJaliscoLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_241D1F000, v7, OS_LOG_TYPE_ERROR, "daapURL request failed - Request %@, error:  %@", &v14, 0x16u);
    }

    v9 = MEMORY[0x245CFF560](*(a1 + 40));
    v10 = v9;
    if (v9)
    {
      v11 = *(v9 + 16);
LABEL_8:
      v11();
    }
  }

  else
  {
    v12 = MEMORY[0x245CFF560](*(a1 + 40));
    v10 = v12;
    if (v12)
    {
      v11 = *(v12 + 16);
      goto LABEL_8;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_241D5F02C(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x245CFF560](*(a1 + 40));
    if (v6)
    {
      v7 = [MEMORY[0x277CBEBC0] URLWithString:v13];
      (v6)[2](v6, v7, v5);
    }
  }

  else
  {
    if (*(a1 + 48) == 1)
    {
      v8 = [MEMORY[0x277CF32F0] sharedProvider];
      v9 = [v8 isUserSignedInToiTunes];

      if (v9)
      {
        v10 = *(a1 + 32);
        v11 = *(v10 + 8);
        *(v10 + 8) = 0;

        [*(a1 + 32) _URLWithRetry:0 completion:*(a1 + 40)];
        goto LABEL_10;
      }
    }

    v12 = MEMORY[0x245CFF560](*(a1 + 40));
    v6 = v12;
    if (v12)
    {
      (*(v12 + 16))(v12, 0, v5);
    }
  }

LABEL_10:
}

void sub_241D5F224(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (v11)
  {
    v6 = [@"iBooks-" stringByAppendingString:*(a1 + 32)];
    v7 = [v11 objectForKey:v6];

    if (!v7)
    {
      v7 = [v11 objectForKey:*(a1 + 32)];
    }

    v8 = MEMORY[0x245CFF560](*(a1 + 40));
    v9 = v8;
    if (v8)
    {
      (*(v8 + 16))(v8, v7, v5);
    }
  }

  else
  {
    v10 = MEMORY[0x245CFF560](*(a1 + 40));
    v7 = v10;
    if (v10)
    {
      (*(v10 + 16))(v10, 0, v5);
    }
  }
}

void sub_241D5F3FC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  if (!v6)
  {
    v8 = BLJaliscoLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412546;
      v13 = @"purchase-daap";
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_ERROR, "Error fetching %@:  %@", &v12, 0x16u);
    }
  }

  v9 = MEMORY[0x245CFF560](*(a1 + 32));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, v6, v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t BLBookTypeFromPathExtension(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([@"pdf" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"epub" isEqualToString:v1])
  {
    v2 = 0;
  }

  else if ([@"ibooks" isEqualToString:v1])
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  return v2;
}

void sub_241D60B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241D60BC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_241D60BD8(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void sub_241D61120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241D61158(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) path];
  v3 = [v1 writeToFile:v2 atomically:1];

  return v3;
}

void sub_241D611A0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) path];
  *(*(*(a1 + 48) + 8) + 24) = (*(v2 + 16))(v2, v3);
}

void sub_241D6120C(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAA00];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = *(*(a1 + 32) + 8);
  obj = *(v6 + 40);
  [v5 removeItemAtURL:v4 error:&obj];

  objc_storeStrong((v6 + 40), obj);
}

__CFString *BLPathExtensionFromBookType(unint64_t a1)
{
  if (a1 > 2)
  {
    return &stru_2853E2EC8;
  }

  else
  {
    return off_278D181C8[a1];
  }
}

void sub_241D61F14()
{
  v3 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  [v3 setTimeoutIntervalForRequest:90.0];
  [v3 setTimeoutIntervalForResource:90.0];
  v0 = +[BLPurchaseDAAPServer _clientIdentifier];
  [v3 set_sourceApplicationBundleIdentifier:v0];

  v1 = [objc_alloc(MEMORY[0x277CEE6F0]) initWithConfiguration:v3];
  v2 = qword_280BC5870;
  qword_280BC5870 = v1;
}

void sub_241D620D8(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v3 = [@"iBooks-" stringByAppendingString:*(a1 + 32)];
    v4 = [v5 objectForKey:v3];

    if (!v4)
    {
      v4 = [v5 objectForKey:*(a1 + 32)];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_241D6228C(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *(a1 + 32);
  v5.n128_u64[0] = 0;
  if (isKindOfClass)
  {
    [v6 doubleValue];
  }

  (*(v4 + 16))(v4, v5);
}

void sub_241D623D4(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *(a1 + 32);
  if (isKindOfClass)
  {
    v5 = [v6 BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  (*(v4 + 16))(v4, v5);
}

uint64_t sub_241D62524(uint64_t a1, double a2)
{
  if (a2 <= 0.0)
  {
    return [*(a1 + 32) timeIntervalFromDAAPBagKey:@"update-polling-frequency-secs" completion:*(a1 + 40)];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

void sub_241D62604(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *(a1 + 32);
  if (isKindOfClass)
  {
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v5);
}

uint64_t sub_241D627D4(uint64_t a1)
{
  [*(a1 + 32) setIsServerSetup:0];
  [*(a1 + 32) setIsServerSetupPending:0];
  v2 = *(a1 + 32);

  return [v2 _setSessionID:0];
}

void sub_241D62920(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = BLJaliscoLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412546;
      v11 = @"purchase-daap";
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_ERROR, "Error fetching %@:  %@", &v10, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_241D6319C(uint64_t a1, int a2)
{
  if (a2)
  {
    if ([*(a1 + 32) isServerSetup])
    {
      v3 = [*(a1 + 32) bagDatabaseID];

      if (v3)
      {
        v4 = [*(a1 + 32) _dataForArtRequest:*(a1 + 56)];
        if (v4)
        {
          v5 = [BLDAAPArtRequest alloc];
          v6 = [*(a1 + 32) dsid];
          v7 = [*(a1 + 32) bagDatabaseID];
          v8 = [(BLDAAPArtRequest *)v5 initWithDSID:v6 databaseID:v7 body:v4];

          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = sub_241D63478;
          v16[3] = &unk_278D18328;
          objc_copyWeak(&v18, (a1 + 48));
          v19 = *(a1 + 56);
          v9 = *(a1 + 40);
          v16[4] = *(a1 + 32);
          v17 = v9;
          [(BLDAAPURLRequest *)v8 executeWithCompletionHandler:v16];

          objc_destroyWeak(&v18);
        }

        else
        {
          v15 = MEMORY[0x245CFF560](*(a1 + 40));
          v8 = v15;
          if (v15)
          {
            (*(v15 + 16))(v15);
          }
        }

        goto LABEL_22;
      }
    }
  }

  else
  {
    v10 = BLJaliscoLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v10, OS_LOG_TYPE_DEBUG, "Art Request: will not make request", buf, 2u);
    }
  }

  if (([*(a1 + 32) isServerSetup] & 1) == 0)
  {
    v11 = BLJaliscoLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v11, OS_LOG_TYPE_DEBUG, "Art Request: Server isn't setup. Can't do this right now.", buf, 2u);
    }
  }

  v12 = [*(a1 + 32) bagDatabaseID];

  if (!v12)
  {
    v13 = BLJaliscoLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v13, OS_LOG_TYPE_DEBUG, "Art Request: Can't make request. No DB ID.", buf, 2u);
    }
  }

  v14 = MEMORY[0x245CFF560](*(a1 + 40));
  v4 = v14;
  if (v14)
  {
    (*(v14 + 16))(v14);
  }

LABEL_22:
}

void sub_241D63478(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = objc_autoreleasePoolPush();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_241D635C4;
  v12[3] = &unk_278D18300;
  v12[4] = WeakRetained;
  v17 = *(a1 + 56);
  v9 = *(a1 + 40);
  v13 = v6;
  v14 = v5;
  v15 = *(a1 + 32);
  v16 = v9;
  v10 = v5;
  v11 = v6;
  [WeakRetained _preProcessResponse:v10 error:v11 responseBlock:v12];

  objc_autoreleasePoolPop(v8);
}

void sub_241D635C4(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 2:
      v8 = BLJaliscoLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [*(a1 + 32) dsid];
        *buf = 138412290;
        v26 = v9;
        _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_INFO, "Art Request: dsid: %@ succeeded", buf, 0xCu);
      }

      v10 = *(a1 + 32);
      v11 = [*(a1 + 48) data];
      v12 = [v10 _processResponse:v11];

      if (v12)
      {
        v13 = +[BLJaliscoServerSource sharedSource];
        v14 = [v13 newManagedObjectContext];

        v15 = objc_autoreleasePoolPush();
        v16 = *(a1 + 56);
        v17 = *(v16 + 64);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_241D63904;
        block[3] = &unk_278D182D8;
        block[4] = v16;
        v23 = v14;
        v5 = v12;
        v24 = v5;
        v18 = v14;
        dispatch_async(v17, block);

        objc_autoreleasePoolPop(v15);
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_14;
    case 1:
      v5 = BLJaliscoLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [*(a1 + 32) dsid];
        v7 = *(a1 + 40);
        *buf = 138412546;
        v26 = v6;
        v27 = 2112;
        v28 = v7;
        _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_ERROR, "Art Request: %@, Error getting response:  %@", buf, 0x16u);
      }

LABEL_14:

      break;
    case 0:
      v3 = BLJaliscoLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v4 = [*(a1 + 32) dsid];
        *buf = 138412290;
        v26 = v4;
        _os_log_impl(&dword_241D1F000, v3, OS_LOG_TYPE_DEBUG, "Art Request: dsid: %@, RETRY", buf, 0xCu);
      }

      [*(a1 + 32) updateItemImageURLsIgnoringCache:*(a1 + 72) completion:*(a1 + 64)];
      goto LABEL_18;
  }

  v19 = MEMORY[0x245CFF560](*(a1 + 64));
  v20 = v19;
  if (v19)
  {
    (*(v19 + 16))(v19);
  }

LABEL_18:
  v21 = *MEMORY[0x277D85DE8];
}

void sub_241D63904(uint64_t a1)
{
  v55[1] = *MEMORY[0x277D85DE8];
  v1 = +[BLJaliscoServerSource sharedSource];
  v2 = [*(a1 + 32) dsid];
  v55[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:1];
  v38 = [v1 itemsFetchRequestForDSIDs:v3];

  v4 = *(a1 + 40);
  v49 = 0;
  v5 = [v4 executeFetchRequest:v38 error:&v49];
  v36 = v49;
  v37 = v5;
  if (v5)
  {
    v35 = [*(a1 + 48) objectForKey:@"dmap.listing"];
    v6 = MEMORY[0x277CBEAC0];
    v7 = [v37 valueForKey:@"cloudID"];
    v42 = [v6 dictionaryWithObjects:v37 forKeys:v7];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v8 = v35;
    obj = v8;
    v9 = [v8 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v9)
    {
      v10 = 0;
      v41 = *v46;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v46 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v45 + 1) + 8 * i);
          v13 = [v12 itemID];
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", v13];
          v15 = [v42 objectForKey:v14];

          if (v15)
          {
            v16 = [v12 objectForKey:@"full-token"];
            v17 = [v12 objectForKey:@"full-url"];
            if ([v16 length] && objc_msgSend(v17, "length"))
            {
              v18 = [v15 artworkTokenCode];
              if (v18)
              {
                v19 = [v15 artworkTokenCode];
                v20 = [v19 isEqualToString:v16];

                if ((v20 & 1) == 0)
                {
                  v21 = +[BLJaliscoDAAPClient sharedClient];
                  v22 = [v21 imageManagerDelegate];
                  v23 = [v15 storeID];
                  v44 = 0;
                  v24 = [v22 removeImageForStoreID:v23 error:&v44];
                  v25 = v44;

                  if ((v24 & 1) == 0)
                  {
                    v26 = BLJaliscoLog();
                    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v51 = v25;
                      _os_log_impl(&dword_241D1F000, v26, OS_LOG_TYPE_ERROR, "ERROR removing time-bombed artwork:  %@", buf, 0xCu);
                    }
                  }
                }
              }

              [v15 setArtworkTokenCode:v16];
              [v15 setArtworkURLString:v17];
              v10 = 1;
            }

            else
            {
              v27 = BLJaliscoLog();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                v28 = [v15 storeID];
                v29 = [v12 additionalInfo];
                *buf = 138412546;
                v51 = v28;
                v52 = 2112;
                v53 = v29;
                _os_log_impl(&dword_241D1F000, v27, OS_LOG_TYPE_DEBUG, "Incomplete artwork response for %@ -- %@", buf, 0x16u);
              }
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v9);

      if ((v10 & 1) == 0)
      {
        goto LABEL_30;
      }

      v30 = *(a1 + 32);
      v31 = *(a1 + 40);
      v43 = 0;
      v32 = [v30 _saveInMoc:v31 error:&v43];
      v8 = v43;
      if ((v32 & 1) == 0)
      {
        v33 = BLJaliscoLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v51 = v8;
          _os_log_impl(&dword_241D1F000, v33, OS_LOG_TYPE_ERROR, "Error saving artwork state %@", buf, 0xCu);
        }
      }
    }

LABEL_30:
  }

  v34 = *MEMORY[0x277D85DE8];
}

void sub_241D6475C(id *a1, int a2)
{
  if (a2)
  {
    if ([a1[4] isServerSetup])
    {
      v3 = [a1[4] bagDatabaseID];

      if (v3)
      {
        v4 = [a1[4] _dataForHideItemsRequestWithStoreIDs:a1[5]];
        if (v4)
        {
          WeakRetained = objc_loadWeakRetained(a1 + 7);
          v6 = [BLDAAPHideItemsRequest alloc];
          v7 = [WeakRetained dsid];
          v8 = [WeakRetained bagDatabaseID];
          v9 = [(BLDAAPHideItemsRequest *)v6 initWithDSID:v7 databaseID:v8 body:v4];

          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = sub_241D64A90;
          v17[3] = &unk_278D183A0;
          v17[4] = WeakRetained;
          v18 = a1[5];
          v19 = a1[6];
          [(BLDAAPURLRequest *)v9 executeWithCompletionHandler:v17];
        }

        else
        {
          v15 = BLJaliscoLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_241D1F000, v15, OS_LOG_TYPE_DEBUG, "HideItems: Can't make request. Can't create request body", buf, 2u);
          }

          v16 = MEMORY[0x245CFF560](a1[6]);
          WeakRetained = v16;
          if (v16)
          {
            (*(v16 + 16))(v16, 0);
          }
        }

        goto LABEL_24;
      }
    }
  }

  else
  {
    v10 = BLJaliscoLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v10, OS_LOG_TYPE_DEBUG, "HideItems: will not make request", buf, 2u);
    }
  }

  if (([a1[4] isServerSetup] & 1) == 0)
  {
    v11 = BLJaliscoLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v11, OS_LOG_TYPE_DEBUG, "HideItems: Server isn't setup. Can't do this right now.", buf, 2u);
    }
  }

  v12 = [a1[4] bagDatabaseID];

  if (!v12)
  {
    v13 = BLJaliscoLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v13, OS_LOG_TYPE_DEBUG, "HideItems: Can't make request. No DB ID.", buf, 2u);
    }
  }

  v14 = MEMORY[0x245CFF560](a1[6]);
  v4 = v14;
  if (v14)
  {
    (*(v14 + 16))(v14, 0);
  }

LABEL_24:
}

void sub_241D64A90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D64BBC;
  v11[3] = &unk_278D18378;
  v11[4] = v7;
  v12 = *(a1 + 40);
  v8 = *(a1 + 48);
  v14 = v5;
  v15 = v8;
  v13 = v6;
  v9 = v5;
  v10 = v6;
  [v7 _preProcessResponse:v9 error:v10 responseBlock:v11];
}

void sub_241D64BBC(uint64_t a1, uint64_t a2)
{
  v60 = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 2:
      v5 = *(a1 + 32);
      v6 = [*(a1 + 56) data];
      v7 = [v5 _processResponse:v6];

      oslog = v7;
      [*(a1 + 32) _updateVersionAfterHideRequest:v7];
      v8 = [v7 objectForKey:@"dmap.listing"];
      v9 = objc_opt_new();
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v51 objects:v57 count:{16, v8}];
      if (v11)
      {
        v12 = *v52;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v52 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v51 + 1) + 8 * i);
            v15 = [v14 additionalInfo];
            v16 = [v15 objectForKey:@"dmap.status"];

            if ([v16 unsignedIntegerValue] == 200)
            {
              v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v14, "itemID")}];
              [v9 addObject:v17];
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v51 objects:v57 count:16];
        }

        while (v11);
      }

      v18 = +[BLJaliscoServerSource sharedSource];
      v19 = [v18 newManagedObjectContext];

      v3 = objc_opt_new();
      if ([v9 count])
      {
        v20 = BLJaliscoLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v59 = v9;
          _os_log_impl(&dword_241D1F000, v20, OS_LOG_TYPE_DEFAULT, "HideItems: Finding corresponding jalisco items with cloudIDs(%@)", buf, 0xCu);
        }

        v21 = +[BLJaliscoServerSource sharedSource];
        v22 = [*(a1 + 32) dsid];
        v56 = v22;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
        v42 = [v21 fetchRequestForAllCloudIDs:v9 dsids:v23];

        v50 = 0;
        v24 = [v19 executeFetchRequest:v42 error:&v50];
        v41 = v50;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v25 = v24;
        v26 = [v25 countByEnumeratingWithState:&v46 objects:v55 count:16];
        if (v26)
        {
          v27 = *v47;
          v28 = MEMORY[0x277CBEC38];
          do
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v47 != v27)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v46 + 1) + 8 * j);
              [v30 setIsHidden:v28];
              v31 = [v30 storeID];
              if (v31)
              {
                [v3 addObject:v31];
              }
            }

            v26 = [v25 countByEnumeratingWithState:&v46 objects:v55 count:16];
          }

          while (v26);
        }

        if ([v19 hasChanges])
        {
          v32 = BLJaliscoLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v59 = v3;
            _os_log_impl(&dword_241D1F000, v32, OS_LOG_TYPE_DEFAULT, "HideItems: Hiding items locally in database:(%@)", buf, 0xCu);
          }

          v33 = *(a1 + 32);
          v45 = 0;
          v34 = [v33 _saveInMoc:v19 error:&v45];
          v35 = v45;
          if ((v34 & 1) == 0)
          {
            v36 = BLJaliscoLog();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v59 = v35;
              _os_log_impl(&dword_241D1F000, v36, OS_LOG_TYPE_ERROR, "Error saving items after hiding.  %@", buf, 0xCu);
            }
          }
        }
      }

      v37 = BLJaliscoLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v59 = v3;
        _os_log_impl(&dword_241D1F000, v37, OS_LOG_TYPE_DEFAULT, "HideItems: success %@", buf, 0xCu);
      }

      goto LABEL_44;
    case 1:
      oslog = BLJaliscoLog();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v4 = *(a1 + 48);
        *buf = 138412290;
        v59 = v4;
        _os_log_impl(&dword_241D1F000, oslog, OS_LOG_TYPE_ERROR, "HideItems: Error getting response:  %@", buf, 0xCu);
      }

      v3 = 0;
LABEL_44:

      goto LABEL_45;
    case 0:
      v2 = BLJaliscoLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_241D1F000, v2, OS_LOG_TYPE_DEBUG, "HideItems: retry", buf, 2u);
      }

      [*(a1 + 32) hideItemsWithStoreIDs:*(a1 + 40) completion:*(a1 + 64)];
      break;
  }

  v3 = 0;
LABEL_45:
  v38 = MEMORY[0x245CFF560](*(a1 + 64));
  v39 = v38;
  if (v38)
  {
    (*(v38 + 16))(v38, v3);
  }

  v40 = *MEMORY[0x277D85DE8];
}

void sub_241D653E8(uint64_t a1)
{
  v2 = [*(a1 + 32) isServerSetup];
  v3 = *(a1 + 48);
  if (v2)
  {
    v13 = MEMORY[0x245CFF560](v3);
    if (v13)
    {
      v13[2](v13, 1);
    }
  }

  else
  {
    if (v3)
    {
      v4 = *(*(a1 + 32) + 40);
      if (!v4)
      {
        v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
        v6 = *(a1 + 32);
        v7 = *(v6 + 40);
        *(v6 + 40) = v5;

        v4 = *(*(a1 + 32) + 40);
        v3 = *(a1 + 48);
      }

      v8 = [v3 copy];
      [v4 addObject:v8];
    }

    if (([*(a1 + 32) isServerSetupPending] & 1) == 0)
    {
      [*(a1 + 32) setIsServerSetupPending:1];
      v9 = *(a1 + 56);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = sub_241D6558C;
      v14[3] = &unk_278D18468;
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = *(a1 + 32);
      v15 = v11;
      v16 = v12;
      v17 = *(a1 + 56);
      [v10 _configureWithReason:v9 completion:v14];
    }
  }
}

void sub_241D6558C(int8x16_t *a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D65624;
  block[3] = &unk_278D18440;
  v6 = a2;
  v5 = a1[3].i64[0];
  v2 = a1[2];
  v4 = vextq_s8(v2, v2, 8uLL);
  dispatch_async(v2.i64[0], block);
}

void sub_241D65624(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 48);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_241D65738;
    v8[3] = &unk_278D18418;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    v9 = v4;
    v10 = v5;
    [v3 _loginWithReason:v2 completion:v8];
  }

  else
  {
    v6 = BLJaliscoLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_241D1F000, v6, OS_LOG_TYPE_ERROR, "DAAP Server-Info failed.", v7, 2u);
    }

    [*(a1 + 32) _sendSetupConfigurationHandlersWithSuccess:0];
  }
}

void sub_241D65738(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_241D657B0;
  v3[3] = &unk_278D183F0;
  v4 = a2;
  v2 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  dispatch_async(v2, v3);
}

uint64_t sub_241D657B0(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = BLJaliscoLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) dsid];
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_241D1F000, v4, OS_LOG_TYPE_INFO, "DAAP Login success for dsid: %@. Kicking off artwork fetch..", &v9, 0xCu);
    }

    v4 = +[BLJaliscoDAAPClient sharedClient];
    v6 = [v4 imageManagerDelegate];
    [v6 fetchAllImageAssetsIgnoringLocalCache:0];
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_241D1F000, v4, OS_LOG_TYPE_ERROR, "DAAP Login failed.", &v9, 2u);
  }

  result = [*(a1 + 32) _sendSetupConfigurationHandlersWithSuccess:v2];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_241D65AD4(uint64_t a1)
{
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v35[3] = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v32[3] = 0;
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v3 = *(a1 + 32);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_241D65E3C;
  v29[3] = &unk_278D184B8;
  v31 = v33;
  v4 = v2;
  v30 = v4;
  [v3 appRefreshesOnLaunchWithCompletionHandler:v29];
  dispatch_group_enter(v4);
  v5 = *(a1 + 32);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_241D65E50;
  v26[3] = &unk_278D184E0;
  v28 = v35;
  v6 = v4;
  v27 = v6;
  [v5 forcedRefreshFrequencyWithCompletionHandler:v26];
  dispatch_group_enter(v6);
  v7 = *(a1 + 32);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_241D65E64;
  v23[3] = &unk_278D184E0;
  v25 = v32;
  v8 = v6;
  v24 = v8;
  [v7 pollingFrequencyWithCompletionHandler:v23];
  dispatch_group_enter(v8);
  v9 = *(a1 + 32);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_241D65E78;
  v21[3] = &unk_278D18508;
  v21[4] = v9;
  v10 = v8;
  v22 = v10;
  [v9 databaseIDWithCompletionHandler:v21];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_241D65EB8;
  v13[3] = &unk_278D18670;
  v11 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v16 = v32;
  v17 = v35;
  v18 = v33;
  v12 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v15 = v12;
  v14 = *(a1 + 40);
  dispatch_group_notify(v10, v11, v13);

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v33, 8);
  _Block_object_dispose(v35, 8);
}

void sub_241D65DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37)
{
  _Block_object_dispose((v38 - 176), 8);
  _Block_object_dispose((v38 - 144), 8);
  _Block_object_dispose((v38 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_241D65E78(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setBagDatabaseID:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void sub_241D65EB8(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dsid];
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 objectForKey:@"kJaliscoDAAPClientLastSuccessfulFullUpdateDateDictionary"];
  v5 = [v2 stringValue];
  v6 = [v4 objectForKey:v5];

  v7 = [*(*(a1 + 32) + 8) dateByAddingTimeInterval:*(*(*(a1 + 56) + 8) + 24)];
  v8 = [v6 dateByAddingTimeInterval:*(*(*(a1 + 64) + 8) + 24)];
  v9 = v8;
  if (!v7 || *(*(*(a1 + 72) + 8) + 24) == 1 && *(*(*(a1 + 80) + 8) + 24) == 7)
  {
    v10 = 1;
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = [MEMORY[0x277CBEAA8] date];
    v10 = [v7 compare:v11] == -1;

    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v12 = [MEMORY[0x277CBEAA8] date];
  v13 = [v9 compare:v12];

  if (v13 != -1)
  {
    v14 = 0;
    goto LABEL_10;
  }

LABEL_9:
  *(*(*(a1 + 80) + 8) + 24) = 5;
  v14 = 1;
LABEL_10:
  v15 = BLJaliscoLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [*(a1 + 32) dsid];
    *buf = 138413058;
    v36 = v6;
    v37 = 2112;
    v38 = v7;
    v39 = 2112;
    v40 = v9;
    v41 = 2112;
    v42 = v16;
    _os_log_impl(&dword_241D1F000, v15, OS_LOG_TYPE_DEFAULT, "1. [BLPurchaseDAAPServer] FetchItemsPolitely: dsid:%@ lastFullRefreshedAt:%@ nextUpdateAt:%@ nextFullRefreshAt:%@", buf, 0x2Au);
  }

  if (v14 & 1 | (v10 || (*(a1 + 88) & 1) == 0))
  {
    v17 = *(*(*(a1 + 80) + 8) + 24);
    v19 = *(a1 + 32);
    v18 = *(a1 + 40);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_241D6632C;
    v27[3] = &unk_278D18648;
    v20 = v18;
    v21 = *(a1 + 32);
    v28 = v20;
    v29 = v21;
    v32 = *(a1 + 80);
    v33 = v14;
    v34 = *(a1 + 88);
    v31 = *(a1 + 48);
    v30 = v2;
    [v19 setupWithReason:v17 queue:v20 completion:v27];

    v22 = v28;
  }

  else
  {
    v23 = BLJaliscoLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [MEMORY[0x277CBEAA8] date];
      *buf = 138412546;
      v36 = v7;
      v37 = 2112;
      v38 = v24;
      _os_log_impl(&dword_241D1F000, v23, OS_LOG_TYPE_DEFAULT, "[BLPurchaseDAAPServer] FetchItemsPolitely: Being polite and NOT updating at the current time. %@ > %@", buf, 0x16u);
    }

    v25 = MEMORY[0x245CFF560](*(a1 + 48));
    v22 = v25;
    if (v25)
    {
      (*(v25 + 16))(v25, 1);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void sub_241D6632C(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D66408;
  block[3] = &unk_278D18620;
  v10 = a2;
  v9 = *(a1 + 64);
  v4 = *(a1 + 32);
  v3 = v4.i64[0];
  v6 = vextq_s8(v4, v4, 8uLL);
  v11 = *(a1 + 72);
  v8 = *(a1 + 56);
  v7 = *(a1 + 48);
  dispatch_async(v3, block);
}

void sub_241D66408(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 72);
  v3 = BLJaliscoLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) dsid];
      v6 = *(*(*(a1 + 64) + 8) + 24);
      *buf = 138412546;
      v24 = v5;
      v25 = 2048;
      v26 = v6;
      _os_log_impl(&dword_241D1F000, v4, OS_LOG_TYPE_DEFAULT, "2. [BLPurchaseDAAPServer] dsid: %@ Setup server with reason %ld. Now polling", buf, 0x16u);
    }

    v7 = *(*(*(a1 + 64) + 8) + 24);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_241D66664;
    v17[3] = &unk_278D185F8;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v18 = v9;
    v19 = v10;
    v22 = *(a1 + 73);
    v16 = *(a1 + 56);
    v11 = v16;
    v21 = v16;
    v20 = *(a1 + 48);
    [v8 _pollLatestRevisionWithReason:v7 completion:v17];

    v12 = v18;
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 32) dsid];
      *buf = 138412290;
      v24 = v13;
      _os_log_impl(&dword_241D1F000, v4, OS_LOG_TYPE_ERROR, "[BLPurchaseDAAPServer] FetchItemsPolitely fail for %@", buf, 0xCu);
    }

    v14 = MEMORY[0x245CFF560](*(a1 + 56));
    v12 = v14;
    if (v14)
    {
      (*(v14 + 16))(v14, 0);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_241D66664(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D66758;
  block[3] = &unk_278D185D0;
  v14 = a2;
  v6 = *(a1 + 32);
  block[4] = *(a1 + 40);
  v9 = v5;
  v15 = *(a1 + 72);
  v13 = *(a1 + 64);
  v10 = v6;
  v12 = *(a1 + 56);
  v11 = *(a1 + 48);
  v7 = v5;
  dispatch_async(v6, block);
}

void sub_241D66758(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  if (*(a1 + 80) == 1)
  {
    v2 = +[BLJaliscoServerSource sharedSource];
    v3 = [v2 newManagedObjectContext];

    v4 = [*(a1 + 32) _localServerDatabaseRevisionInMoc:v3];
    v5 = BLJaliscoLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) dsid];
      v7 = *(a1 + 40);
      v8 = *(*(a1 + 32) + 8);
      *buf = 138413058;
      v41 = v6;
      v42 = 2112;
      *v43 = v8;
      *&v43[8] = 2114;
      *&v43[10] = v7;
      v44 = 2114;
      v45 = v4;
      _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEFAULT, "3. [BLPurchaseDAAPServer] dsid: %@ Last poll before this at:(%@). Finished POLLING, latestVersion:%{public}@ localServerRevision:%{public}@ Fetching database", buf, 0x2Au);
    }

    v9 = [MEMORY[0x277CBEAA8] date];
    v10 = *(a1 + 32);
    v11 = *(v10 + 8);
    *(v10 + 8) = v9;

    if (*(a1 + 81) & 1) == 0 && *(a1 + 82) == 1 && *(a1 + 40) && ([v4 isEqualToNumber:?])
    {
      v12 = BLJaliscoLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(a1 + 32) dsid];
        v14 = *(a1 + 40);
        *buf = 138412802;
        v41 = v13;
        v42 = 2114;
        *v43 = v14;
        *&v43[8] = 2114;
        *&v43[10] = v4;
        _os_log_impl(&dword_241D1F000, v12, OS_LOG_TYPE_DEFAULT, "4b. [BLPurchaseDAAPServer] FetchItemsPolitely No update required, we have the latest revision for dsid:(%@): latest:%{public}@ -- local:%{public}@", buf, 0x20u);
      }

      v15 = MEMORY[0x245CFF560](*(a1 + 64));
      v16 = v15;
      if (v15)
      {
        (*(v15 + 16))(v15, 1);
      }
    }

    else
    {
      v20 = BLJaliscoLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [*(a1 + 32) dsid];
        v22 = *(a1 + 82);
        *buf = 138412802;
        v41 = v21;
        v42 = 1024;
        *v43 = v22;
        *&v43[4] = 2112;
        *&v43[6] = v4;
        _os_log_impl(&dword_241D1F000, v20, OS_LOG_TYPE_DEFAULT, "4a. [BLPurchaseDAAPServer] dsid: %@ Need to fetch a new database politely:%{BOOL}d localServerRevision %@", buf, 0x1Cu);
      }

      v23 = *(*(*(a1 + 72) + 8) + 24);
      v25 = *(a1 + 32);
      v24 = *(a1 + 40);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = sub_241D66C38;
      v31[3] = &unk_278D185A8;
      v26 = *(a1 + 48);
      v27 = *(a1 + 32);
      v32 = v26;
      v33 = v27;
      v34 = v3;
      v38 = *(a1 + 64);
      v35 = v4;
      v28 = *(a1 + 40);
      v29 = *(a1 + 72);
      v36 = v28;
      v39 = v29;
      v37 = *(a1 + 56);
      [v25 _fetchDatabaseWithReason:v23 localServerRevision:v35 latestVersion:v24 completionHandler:v31];

      v16 = v32;
    }
  }

  else
  {
    v17 = BLJaliscoLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [*(a1 + 32) dsid];
      *buf = 138412290;
      v41 = v18;
      _os_log_impl(&dword_241D1F000, v17, OS_LOG_TYPE_ERROR, "[BLPurchaseDAAPServer] FetchItemsPolitely Error polling latest version for dsid:%@.", buf, 0xCu);
    }

    v19 = MEMORY[0x245CFF560](*(a1 + 64));
    v3 = v19;
    if (v19)
    {
      (*(v19 + 16))(v19, 0);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void sub_241D66C38(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D66D64;
  v11[3] = &unk_278D18580;
  v20 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v11[4] = *(a1 + 40);
  v12 = v5;
  v13 = v7;
  v18 = *(a1 + 80);
  v14 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 88);
  v15 = v8;
  v19 = v9;
  v16 = *(a1 + 32);
  v17 = *(a1 + 72);
  v10 = v5;
  dispatch_async(v6, v11);
}

void sub_241D66D64(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 104);
  v2 = BLJaliscoLog();
  v3 = v2;
  if (v1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) dsid];
      v5 = *(a1 + 40);
      *buf = 138412546;
      v58 = v4;
      v59 = 2112;
      v60 = v5;
      _os_log_impl(&dword_241D1F000, v3, OS_LOG_TYPE_DEFAULT, "5. [BLPurchaseDAAPServer] dsid: %@ Got database %@", buf, 0x16u);
    }

    v6 = +[BLJaliscoServerSource sharedSource];
    v7 = [*(a1 + 32) dsid];
    v56 = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
    v40 = [v6 itemsFetchRequestForDSIDs:v8];

    v41 = [MEMORY[0x277CBEB58] set];
    v55[0] = @"purchasedTokenCode";
    v55[1] = @"cloudID";
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
    [v40 setPropertiesToFetch:v9];

    v10 = *(a1 + 48);
    v53 = 0;
    v11 = [v10 executeFetchRequest:v40 error:&v53];
    v37 = v11;
    v38 = v53;
    if (v11)
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v49 objects:v54 count:16];
      if (v13)
      {
        v14 = *v50;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v50 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v49 + 1) + 8 * i);
            v17 = [v16 cloudID];
            v18 = v17 == 0;

            if (!v18)
            {
              v19 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
              v20 = [v16 purchasedTokenCode];
              v21 = v20 == 0;

              if (!v21)
              {
                v22 = [v16 purchasedTokenCode];
                [v19 setObject:v22 forKey:@"tokenCode"];
              }

              v23 = [v16 cloudID];
              [v19 setObject:v23 forKey:@"clientID"];

              [v41 addObject:v19];
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v49 objects:v54 count:16];
        }

        while (v13);
      }

      v24 = BLJaliscoLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [*(a1 + 32) dsid];
        *buf = 138412546;
        v58 = v25;
        v59 = 2112;
        v60 = v41;
        _os_log_impl(&dword_241D1F000, v24, OS_LOG_TYPE_DEFAULT, "6. [BLPurchaseDAAPServer] dsid: %@ Fetching items _fetchItemsWithLocalVersion with pairs:%@", buf, 0x16u);
      }

      v26 = *(a1 + 32);
      v27 = *(a1 + 56);
      v28 = *(a1 + 64);
      v29 = *(*(*(a1 + 96) + 8) + 24);
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = sub_241D67408;
      v42[3] = &unk_278D18558;
      v30 = *(a1 + 72);
      v31 = *(a1 + 32);
      v43 = v30;
      v44 = v31;
      v45 = *(a1 + 64);
      v46 = *(a1 + 40);
      v48 = *(a1 + 88);
      v47 = *(a1 + 80);
      [v26 _fetchItemsWithLocalVersion:v27 serverVersion:v28 reason:v29 tokenPairs:v41 completionHandler:v42];

      v32 = v43;
    }

    else
    {
      v34 = BLJaliscoLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v58 = v38;
        _os_log_impl(&dword_241D1F000, v34, OS_LOG_TYPE_ERROR, "Couldn't find existing items.  %@", buf, 0xCu);
      }

      v35 = MEMORY[0x245CFF560](*(a1 + 88));
      v32 = v35;
      if (v35)
      {
        (*(v35 + 16))(v35, 0);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v3, OS_LOG_TYPE_ERROR, "[BLPurchaseDAAPServer] FetchItemsPolitely DAAP Database failed", buf, 2u);
    }

    v33 = MEMORY[0x245CFF560](*(a1 + 88));
    v40 = v33;
    if (v33)
    {
      (*(v33 + 16))(v33, 0);
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

void sub_241D67408(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D67504;
  block[3] = &unk_278D18530;
  v15 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v10 = v7;
  v11 = *(a1 + 56);
  v12 = v5;
  v14 = *(a1 + 72);
  v13 = *(a1 + 64);
  v8 = v5;
  dispatch_async(v6, block);
}

void sub_241D67504(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  if (*(a1 + 80) == 1)
  {
    v2 = BLJaliscoLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) dsid];
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      v6 = *(a1 + 56);
      *buf = 138413058;
      v39 = v3;
      v40 = 2112;
      v41 = v4;
      v42 = 2112;
      v43 = v5;
      v44 = 2112;
      v45 = v6;
      _os_log_impl(&dword_241D1F000, v2, OS_LOG_TYPE_DEFAULT, "7. [BLPurchaseDAAPServer] dsid: %@ Fetch items succesful. Saving latestVersion:%@ database:%@ items:%@", buf, 0x2Au);
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v37 = 0;
    v11 = [v7 _updatePersistentServerRevision:v8 database:v9 items:v10 error:&v37];
    v12 = v37;
    if ((v11 & 1) == 0)
    {
      v29 = BLJaliscoLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v39 = v12;
        _os_log_impl(&dword_241D1F000, v29, OS_LOG_TYPE_ERROR, "Error updating database. %@", buf, 0xCu);
      }

      [v12 logRecursively];
      v30 = MEMORY[0x245CFF560](*(a1 + 72));
      v31 = v30;
      if (v30)
      {
        (*(v30 + 16))(v30, 0);
      }

      goto LABEL_28;
    }

    v13 = BLJaliscoLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 32) dsid];
      *buf = 138412546;
      v39 = v14;
      v40 = 2112;
      v41 = v12;
      _os_log_impl(&dword_241D1F000, v13, OS_LOG_TYPE_DEFAULT, "7. [BLPurchaseDAAPServer] dsid: %@ CoreData Save items sucess! %@", buf, 0x16u);
    }

    v15 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v16 = [v15 objectForKey:@"kJaliscoDAAPClientLastSuccessfulFullUpdateDateDictionary"];
    v17 = [v16 mutableCopy];

    v18 = [*(a1 + 64) stringValue];
    LOBYTE(v15) = v18 == 0;

    if ((v15 & 1) == 0)
    {
      v19 = [MEMORY[0x277CBEAA8] date];
      v20 = [*(a1 + 64) stringValue];
      [v17 setObject:v19 forKey:v20];
    }

    v21 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v21 setObject:v17 forKey:@"kJaliscoDAAPClientLastSuccessfulFullUpdateDateDictionary"];

    v22 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    LOBYTE(v21) = [v22 synchronize];

    if (v21)
    {
      v23 = BLJaliscoLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = v17;
        v24 = "8. FetchItemsPolitely: Updated kJaliscoDAAPClientLastSuccessfulFullUpdateDateDictionary user default to %@";
        v25 = v23;
        v26 = OS_LOG_TYPE_DEFAULT;
        v27 = 12;
LABEL_23:
        _os_log_impl(&dword_241D1F000, v25, v26, v24, buf, v27);
      }
    }

    else
    {
      v23 = BLJaliscoLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v24 = "Error writing kJaliscoDAAPClientLastSuccessfulFullUpdateDateDictionary to preferences.";
        v25 = v23;
        v26 = OS_LOG_TYPE_ERROR;
        v27 = 2;
        goto LABEL_23;
      }
    }

    v32 = BLJaliscoLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [*(a1 + 32) dsid];
      *buf = 138412290;
      v39 = v33;
      _os_log_impl(&dword_241D1F000, v32, OS_LOG_TYPE_DEFAULT, "FetchItemsPolitely %@ completed!", buf, 0xCu);
    }

    v34 = MEMORY[0x245CFF560](*(a1 + 72));
    v31 = v34;
    if (v34)
    {
      (*(v34 + 16))(v34, 1);
    }

LABEL_28:

    v35 = *MEMORY[0x277D85DE8];
    return;
  }

  v36 = MEMORY[0x245CFF560](*(a1 + 72));
  if (v36)
  {
    v36[2](v36, 0);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_241D67C38(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void sub_241D67D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = BLPurchaseDAAPServer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_241D68310(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241D68328(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [*(a1 + 32) objectForKey:@"dmap.serverrevision"];
    if (v3)
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v3);
    }
  }

  v4 = +[BLJaliscoServerSource sharedSource];
  v5 = [v4 newManagedObjectContext];

  v6 = *(a1 + 40);
  v7 = *(*(*(a1 + 56) + 8) + 40);
  v28 = 0;
  v8 = [v6 _updatePersistentServerRevision:v7 moc:v5 error:&v28];
  v9 = v28;
  v10 = v9;
  if (v8)
  {
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v27 = v10;
    v13 = [v11 _updatePersistentDatabase:v12 server:v8 moc:v5 error:&v27];
    v14 = v27;

    if (v13)
    {
      v16 = *(a1 + 32);
      v15 = *(a1 + 40);
      v26 = v14;
      v17 = [v15 _updatePersistentItems:v16 moc:v5 database:v13 error:&v26];
      v18 = v26;

      v19 = BLJaliscoLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v17;
        _os_log_impl(&dword_241D1F000, v19, OS_LOG_TYPE_DEFAULT, "_updatePersistentServerRevision updating local db with items %@", buf, 0xCu);
      }

      if (v17)
      {
        *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 40) _saveInMoc:v5 error:*(a1 + 72)];
        if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
        {
          v20 = BLJaliscoLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = **(a1 + 72);
            *buf = 138412290;
            v30 = v21;
            _os_log_impl(&dword_241D1F000, v20, OS_LOG_TYPE_ERROR, "_updatePersistentServerRevision failed %@", buf, 0xCu);
          }
        }
      }

      else
      {
        if (*(a1 + 72))
        {
          v24 = v18;
          **(a1 + 72) = v18;
        }

        *(*(*(a1 + 64) + 8) + 24) = 0;
      }

      v14 = v18;
    }

    else
    {
      if (*(a1 + 72))
      {
        v23 = v14;
        **(a1 + 72) = v14;
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
    }

    v10 = v14;
  }

  else
  {
    if (*(a1 + 72))
    {
      v22 = v9;
      **(a1 + 72) = v10;
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_241D687CC(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_241D6A14C(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2[6])
  {
    goto LABEL_4;
  }

  if ([v2[6] hasBackedOff])
  {
    v2 = *(a1 + 32);
LABEL_4:
    if ([v2 _isGDPRPrivacyAcknowledgementRequired])
    {
      v11 = [*(a1 + 32) delegate];
      if (v11)
      {
        [v11 purchaseServerRequestGDPRPrivacyAcknowledgementRequired];
      }

      v3 = MEMORY[0x245CFF560](*(a1 + 40));
      v4 = v3;
      if (v3)
      {
        (*(v3 + 16))(v3, 0);
      }
    }

    else
    {
      v11 = MEMORY[0x245CFF560](*(a1 + 40));
      if (v11)
      {
        (*(v11 + 2))(v11, [*(a1 + 32) _canMakeDAAPRequest]);
      }
    }

    v5 = *MEMORY[0x277D85DE8];

    return;
  }

  v6 = BLJaliscoLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [*(*(a1 + 32) + 48) backoffUntil];
    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&dword_241D1F000, v6, OS_LOG_TYPE_INFO, "Ignoring request due to backoff being in effect. Will resume %@", buf, 0xCu);
  }

  v8 = MEMORY[0x245CFF560](*(a1 + 40));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, 0);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_241D6A438(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) response];
  v3 = [*(a1 + 40) domain];
  if ([v3 isEqualToString:*MEMORY[0x277CCA738]])
  {
    v4 = [*(a1 + 40) code] == -1001;
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 32) responseStatusCode] >= 500 && objc_msgSend(*(a1 + 32), "responseStatusCode") < 600;
  if ([*(a1 + 32) responseStatusCode] == 403)
  {
    v6 = [v2 allHeaderFields];
    v7 = [v6 objectForKey:@"retry-after"];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  if ([v2 statusCode] == 403)
  {
    v9 = [v2 allHeaderFields];
    v10 = [v9 objectForKey:@"cloud-daap-client-expired"];
    v11 = v10 != 0;
  }

  else
  {
    v11 = 0;
  }

  if ([v2 statusCode] == 401)
  {
    v12 = 1;
  }

  else
  {
    v12 = [*(a1 + 40) bl_isAMSStatusCode401];
  }

  v13 = [*(a1 + 40) domain];
  v14 = v13 == @"BLErrorDomain" && [*(a1 + 40) code] == 3;

  if (*(a1 + 40))
  {
    v15 = BLJaliscoLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = &stru_2853E2EC8;
      v17 = *(a1 + 40);
      if (v14)
      {
        v16 = @"invalid request";
      }

      *buf = 138412546;
      v54 = v16;
      v55 = 2112;
      v56 = v17;
      _os_log_impl(&dword_241D1F000, v15, OS_LOG_TYPE_ERROR, "failed with error: %@ %@", buf, 0x16u);
    }
  }

  if (v4 || v5 || v14)
  {
    [*(*(a1 + 48) + 48) failureIntervals:1];
    v18 = [*(*(a1 + 48) + 48) hasBackedOff];
    v19 = MEMORY[0x245CFF560](*(a1 + 56));
    v20 = v19;
    if (v18)
    {
      if (v19)
      {
        (*(v19 + 16))(v19, 0);
      }

      goto LABEL_71;
    }

    if (!v19)
    {
      goto LABEL_71;
    }

LABEL_31:
    (*(v19 + 16))(v19, 1);
    goto LABEL_71;
  }

  if (v11)
  {
    [*(a1 + 48) handleClientExpired];
    v19 = MEMORY[0x245CFF560](*(a1 + 56));
    v20 = v19;
    if (!v19)
    {
      goto LABEL_71;
    }

    goto LABEL_31;
  }

  if (v8)
  {
    v21 = [v2 allHeaderFields];
    v20 = [v21 objectForKey:@"retry-after"];

    if (v20)
    {
      [v20 doubleValue];
      if (v22 > 0.0)
      {
        v23 = objc_alloc(MEMORY[0x277CBEAA8]);
        [v20 doubleValue];
        v24 = [v23 initWithTimeIntervalSinceNow:?];
        v25 = *(a1 + 48);
        v26 = *(v25 + 16);
        *(v25 + 16) = v24;
      }
    }

    v27 = BLJaliscoLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = *(*(a1 + 48) + 16);
      *buf = 138412290;
      v54 = v28;
      _os_log_impl(&dword_241D1F000, v27, OS_LOG_TYPE_INFO, "Server requested backoff. Trying again at %@", buf, 0xCu);
    }

    v29 = MEMORY[0x245CFF560](*(a1 + 56));
    v30 = v29;
    if (!v29)
    {
      goto LABEL_70;
    }

LABEL_39:
    (*(v29 + 16))(v29, 1);
LABEL_70:

    goto LABEL_71;
  }

  v31 = *(*(a1 + 48) + 48);
  if (v12)
  {
    [v31 clear];
    v20 = [*(a1 + 48) delegate];
    if (![*(a1 + 48) isPrimaryAccount])
    {
      v29 = MEMORY[0x245CFF560](*(a1 + 56));
      v30 = v29;
      if (!v29)
      {
        goto LABEL_70;
      }

      goto LABEL_39;
    }

    v32 = BLJaliscoLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [*(a1 + 48) dsid];
      *buf = 138412290;
      v54 = v33;
      _os_log_impl(&dword_241D1F000, v32, OS_LOG_TYPE_DEFAULT, "Requestenting silent auth for %@", buf, 0xCu);
    }

    v34 = [MEMORY[0x277CF32F0] sharedProvider];
    v35 = [v34 activeStoreAccount];
    v30 = [v35 username];

    v36 = [*(a1 + 48) _newDefaultAuthenticateOptions];
    v37 = objc_alloc(MEMORY[0x277CEE3E0]);
    v38 = [*(a1 + 48) dsid];
    v39 = [v37 initWithDSID:v38 altDSID:0 username:v30 options:v36];

    v40 = [objc_alloc(MEMORY[0x277CEE3E8]) initWithRequest:v39];
    v41 = [v40 performAuthentication];
    v52 = 0;
    v42 = [v41 resultWithTimeout:&v52 error:90.0];
    v43 = v52;

    v44 = BLJaliscoLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      if (v42)
      {
        v45 = v43 == 0;
      }

      else
      {
        v45 = 0;
      }

      v46 = v45;
      *buf = 67109120;
      LODWORD(v54) = v46;
      _os_log_impl(&dword_241D1F000, v44, OS_LOG_TYPE_DEFAULT, "Silent auth returned: %{BOOL}d", buf, 8u);
    }

    if (!v42 || v43)
    {
      if (!v20)
      {
        v50 = BLJaliscoLog();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_241D1F000, v50, OS_LOG_TYPE_ERROR, "No fallback for authentication", buf, 2u);
        }

        v47 = MEMORY[0x245CFF560](*(a1 + 56));
        v48 = v47;
        if (!v47)
        {
          goto LABEL_69;
        }

        goto LABEL_68;
      }

      [v20 purchaseServerRequestITunesAuthentication];
      v47 = MEMORY[0x245CFF560](*(a1 + 56));
      v48 = v47;
      if (v47)
      {
LABEL_68:
        (*(v47 + 16))(v47, 1);
      }
    }

    else
    {
      v47 = MEMORY[0x245CFF560](*(a1 + 56));
      v48 = v47;
      if (v47)
      {
        goto LABEL_68;
      }
    }

LABEL_69:

    goto LABEL_70;
  }

  [v31 clear];
  v49 = MEMORY[0x245CFF560](*(a1 + 56));
  v20 = v49;
  if (v49)
  {
    (*(v49 + 16))(v49, 2);
  }

LABEL_71:

  v51 = *MEMORY[0x277D85DE8];
}

void sub_241D6AB30(_Unwind_Exception *a1)
{
  v10 = v3;

  _Unwind_Resume(a1);
}

void sub_241D6B200(uint64_t a1, char a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [BLDAAPServerInfoRequest alloc];
    v4 = [*(a1 + 40) dsid];
    v5 = [(BLDAAPServerInfoRequest *)v3 initWithDSID:v4 reason:*(a1 + 56)];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_241D6B3D8;
    v13[3] = &unk_278D18760;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v14 = v6;
    v15 = v7;
    v17 = *(a1 + 56);
    v16 = v8;
    [(BLDAAPURLRequest *)v5 executeWithCompletionHandler:v13];
  }

  else
  {
    v9 = BLJaliscoLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      *buf = 138412290;
      v19 = v10;
      _os_log_impl(&dword_241D1F000, v9, OS_LOG_TYPE_DEBUG, "%@ will not make request", buf, 0xCu);
    }

    v11 = MEMORY[0x245CFF560](*(a1 + 48));
    v5 = v11;
    if (v11)
    {
      (*(v11 + 16))(v11, 0);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_241D6B3D8(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = BLJaliscoLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) dsid];
    v10 = *(a1 + 56);
    *buf = 138412802;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    v29 = 2048;
    v30 = v10;
    _os_log_impl(&dword_241D1F000, v7, OS_LOG_TYPE_DEBUG, "%@ dsid:%@ reason:%ld", buf, 0x20u);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_241D6B5D8;
  v18[3] = &unk_278D18738;
  v11 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v19 = v12;
  v20 = v13;
  v24 = *(a1 + 56);
  v23 = v14;
  v15 = v6;
  v21 = v15;
  v16 = v5;
  v22 = v16;
  [v11 _preProcessResponse:v16 error:v15 responseBlock:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void sub_241D6B5D8(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 2:
      v8 = *(a1 + 40);
      v9 = [*(a1 + 56) data];
      v5 = [v8 _processResponse:v9];

      v10 = v5 != 0;
      if (v5)
      {
LABEL_14:

        goto LABEL_16;
      }

      v11 = BLJaliscoLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 32);
        v20 = 138412290;
        v21 = v12;
        _os_log_impl(&dword_241D1F000, v11, OS_LOG_TYPE_ERROR, "%@ Error no response data", &v20, 0xCu);
      }

LABEL_13:
      v10 = 0;
      goto LABEL_14;
    case 1:
      v5 = BLJaliscoLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 32);
        v7 = *(a1 + 48);
        v20 = 138412546;
        v21 = v6;
        v22 = 2112;
        v23 = v7;
        _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_ERROR, "%@ Error getting response:  %@", &v20, 0x16u);
      }

      goto LABEL_13;
    case 0:
      v3 = BLJaliscoLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v4 = *(a1 + 32);
        v20 = 138412290;
        v21 = v4;
        _os_log_impl(&dword_241D1F000, v3, OS_LOG_TYPE_DEBUG, "%@ retry", &v20, 0xCu);
      }

      [*(a1 + 40) _configureWithReason:*(a1 + 72) completion:*(a1 + 64)];
      goto LABEL_23;
  }

  v10 = 0;
LABEL_16:
  v13 = BLJaliscoLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [*(a1 + 40) dsid];
    v15 = v14;
    v16 = @"with error";
    if (v10)
    {
      v16 = @"successfully";
    }

    v20 = 138543618;
    v21 = v16;
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&dword_241D1F000, v13, OS_LOG_TYPE_INFO, "PurchaseDAAPServer Server Info request completed %{public}@ for (%@)", &v20, 0x16u);
  }

  v17 = MEMORY[0x245CFF560](*(a1 + 64));
  v18 = v17;
  if (v17)
  {
    (*(v17 + 16))(v17, v10);
  }

LABEL_23:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_241D6BA3C(uint64_t a1, char a2)
{
  if (a2)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_241D6BB8C;
    v8[3] = &unk_278D183A0;
    v7 = *(a1 + 32);
    v3 = v7.i64[0];
    v9 = vextq_s8(v7, v7, 8uLL);
    v10 = *(a1 + 48);
    [v3 executeWithCompletionHandler:v8];
  }

  else
  {
    v4 = BLJaliscoLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_241D1F000, v4, OS_LOG_TYPE_DEBUG, "Configure(login) will not make request", buf, 2u);
    }

    v5 = MEMORY[0x245CFF560](*(a1 + 48));
    v6 = v5;
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }
  }
}

void sub_241D6BB8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_241D6BCB4;
  v13[3] = &unk_278D18378;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v14 = v8;
  v15 = v9;
  v10 = *(a1 + 48);
  v17 = v5;
  v18 = v10;
  v16 = v6;
  v11 = v5;
  v12 = v6;
  [v7 _preProcessResponse:v11 error:v12 responseBlock:v13];
}

void sub_241D6BCB4(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 2:
      v10 = [*(a1 + 56) data];
      v6 = [BLPurchaseDAAPParser decodeData:v10];

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        [*(a1 + 40) _setSessionID:v6];
      }

      else
      {
        v11 = BLJaliscoLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = *(a1 + 48);
          v20 = 138412546;
          v21 = v6;
          v22 = 2112;
          v23 = v12;
          _os_log_impl(&dword_241D1F000, v11, OS_LOG_TYPE_ERROR, "Configure(login) parsed data unrecognized %@ %@", &v20, 0x16u);
        }
      }

      goto LABEL_16;
    case 1:
      v6 = BLJaliscoLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [*(a1 + 40) dsid];
        v8 = *(a1 + 48);
        v20 = 138412546;
        v21 = v7;
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&dword_241D1F000, v6, OS_LOG_TYPE_ERROR, "Configure(login) dsid: %@, Error getting response %@", &v20, 0x16u);
      }

      isKindOfClass = 0;
LABEL_16:

      goto LABEL_17;
    case 0:
      v3 = BLJaliscoLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v4 = [*(a1 + 32) DSID];
        v5 = [*(a1 + 32) reason];
        v20 = 138412546;
        v21 = v4;
        v22 = 2048;
        v23 = v5;
        _os_log_impl(&dword_241D1F000, v3, OS_LOG_TYPE_DEBUG, "Configure(login) dsid: %@, Reason: %ld RETRY", &v20, 0x16u);
      }

      [*(a1 + 40) _loginWithRequest:*(a1 + 32) completion:*(a1 + 64)];
      goto LABEL_24;
  }

  isKindOfClass = 0;
LABEL_17:
  v13 = BLJaliscoLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [*(a1 + 40) dsid];
    v15 = v14;
    v16 = @"with error";
    if (isKindOfClass)
    {
      v16 = @"successfully";
    }

    v20 = 138543618;
    v21 = v16;
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&dword_241D1F000, v13, OS_LOG_TYPE_INFO, "PurchaseDAAPServer login request completed %{public}@ for (%@)", &v20, 0x16u);
  }

  v17 = MEMORY[0x245CFF560](*(a1 + 64));
  v18 = v17;
  if (v17)
  {
    (*(v17 + 16))(v17, isKindOfClass & 1);
  }

LABEL_24:
  v19 = *MEMORY[0x277D85DE8];
}