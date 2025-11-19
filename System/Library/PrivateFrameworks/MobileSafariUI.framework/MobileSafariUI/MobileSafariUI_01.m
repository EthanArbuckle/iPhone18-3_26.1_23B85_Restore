uint64_t ___ZL29SiriReaderServicesLibraryCorePPc_block_invoke_0()
{
  result = _sl_dlopen();
  SiriReaderServicesLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void sub_215992148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215992C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);

  _Unwind_Resume(a1);
}

void sub_21599521C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21599850C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = URLCompletionProvider;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2159991E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id a49)
{
  _Block_object_dispose(&a38, 8);

  _Block_object_dispose(&a44, 8);
  _Unwind_Resume(a1);
}

void sub_2159997F0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_215999B10(_Unwind_Exception *a1)
{
  v8 = v5;

  _Unwind_Resume(a1);
}

void sub_215999BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = URLCompletionDatabase;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id matchDataWithBookmark(WebBookmark *a1, NSString *a2, WBSHistory *a3)
{
  v3 = a1;
  v4 = [objc_alloc(MEMORY[0x277D28E80]) initWithBookmark:v3];

  return v4;
}

void sub_21599AAE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_21599C7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t isAcceptableReadingListDragItem(void *a1)
{
  v1 = a1;
  v2 = [v1 _sf_localBookmark];
  v3 = [v2 isReadingListItem];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [v1 _sf_localURL];
    if (v5)
    {
      v6 = v5;
      v4 = 1;
    }

    else
    {
      v6 = [v1 itemProvider];
      v4 = [v6 canLoadObjectOfClass:objc_opt_class()];
    }
  }

  return v4 & 1;
}

void sub_21599D478(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_21599F75C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2159A0098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2159A0334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2159A0480(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2159A1C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2159A1E14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2159A229C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2159A28BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2159A2B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2159A3234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 40));
  objc_destroyWeak(&a31);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2159A3C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2159A3F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id tabViewFromInteraction(void *a1)
{
  v1 = a1;
  v2 = [v1 view];
  if (objc_opt_respondsToSelector())
  {
    v3 = v2;
  }

  else
  {
    v4 = WBS_LOG_CHANNEL_PREFIXTabView();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      tabViewFromInteraction_cold_1(v1, v2, v4);
    }

    v3 = 0;
  }

  return v3;
}

void sub_2159A97E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2159AB514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2159AD480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_2159AE840(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_2159AEE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(va);

  _Unwind_Resume(a1);
}

void sub_2159AF55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(&a26);

  _Unwind_Resume(a1);
}

void SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(id *this)
{
  SafariShared::SuddenTerminationDisabler::enableSuddenTermination(this);
}

void sub_2159AF990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2159AFDB4(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_2159B2940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2159B2B20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2159B2C84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id stringForBarItems(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  for (i = 0; i != 17; ++i)
  {
    if (*(a1 + i) == 1)
    {
      v4 = _SFStringForBarItem();
      [v2 addObject:v4];
    }
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = [v2 componentsJoinedByString:{@", "}];
  v7 = [v5 stringWithFormat:@"[ %@ ]", v6];

  return v7;
}

void webCryptoMasterKey(void *a1)
{
  v1 = a1;
  if (singletonMasterKeyFetchQueue_onceToken != -1)
  {
    webCryptoMasterKey_cold_1();
  }

  v2 = singletonMasterKeyFetchQueue_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __webCryptoMasterKey_block_invoke;
  block[3] = &unk_2781D4D90;
  v5 = v1;
  v3 = v1;
  dispatch_async(v2, block);
}

void __webCryptoMasterKey_block_invoke(uint64_t a1)
{
  result[2] = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277CDC228];
  v2 = *MEMORY[0x277CDC238];
  v3 = *MEMORY[0x277CDBEC8];
  v20 = *MEMORY[0x277CDC228];
  v21 = v3;
  v25 = v2;
  v26 = @"com.apple.safari.WebCrypto.master";
  v4 = *MEMORY[0x277CDC120];
  v5 = *MEMORY[0x277CDC140];
  v6 = MEMORY[0x277CBEC28];
  v22 = *MEMORY[0x277CDC120];
  v23 = v5;
  v27 = @"WebCryptoMasterKey";
  v28 = MEMORY[0x277CBEC28];
  v24 = *MEMORY[0x277CDC558];
  v29 = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v20 count:5];
  result[0] = 0;
  v8 = SecItemCopyMatching(v7, result);
  if (v8 == -25300 || v8 == -128)
  {
    goto LABEL_7;
  }

  if (v8)
  {
    WTFLogAlways();
LABEL_7:

    goto LABEL_8;
  }

  v9 = result[0];
  v10 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedData:result[0] options:0];

  if (v10)
  {
LABEL_13:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __webCryptoMasterKey_block_invoke_2;
    block[3] = &unk_2781D5D28;
    v14 = *(a1 + 32);
    v18 = v10;
    v19 = v14;
    v15 = v10;
    dispatch_async(MEMORY[0x277D85CD0], block);

    return;
  }

LABEL_8:
  if (!CCRandomGenerateBytes(result, 0x10uLL))
  {
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:result length:16];
    v20 = v1;
    v21 = v3;
    v25 = v2;
    v26 = @"com.apple.safari.WebCrypto.master";
    v22 = v4;
    v23 = v5;
    v27 = @"WebCryptoMasterKey";
    v28 = v6;
    v24 = *MEMORY[0x277CDC5E8];
    v12 = [v11 base64EncodedDataWithOptions:0];
    v29 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v20 count:5];

    if (SecItemAdd(v13, 0))
    {
      WTFLogAlways();
      v10 = 0;
    }

    else
    {
      v10 = v11;
    }

    goto LABEL_13;
  }

  __break(0xC471u);
}

void __singletonMasterKeyFetchQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.mobilesafari.WebCryptoMasterKeyFetchQueue", 0);
  v1 = singletonMasterKeyFetchQueue_queue;
  singletonMasterKeyFetchQueue_queue = v0;
}

void sub_2159B3640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = SpotlightBookmarksDonationWriter;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2159B3CC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id CompletionListTableItemEqualityInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:a1];
  for (i = &a9; v9; --v9)
  {
    v11 = i++;
    v12 = [*v11 copy];
    if (v12)
    {
      [v10 addObject:v12];
    }

    else
    {
      v13 = [MEMORY[0x277CBEB68] null];
      [v10 addObject:v13];
    }
  }

  return v10;
}

__CFString *startPageSectionIdentifierForCollectionType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"BookmarksCollection"])
  {
    v2 = MEMORY[0x277D4A4B0];
LABEL_9:
    v3 = *v2;
    goto LABEL_10;
  }

  if ([v1 isEqualToString:@"CloudTabsCollection"])
  {
    v2 = MEMORY[0x277D4A4A8];
    goto LABEL_9;
  }

  [v1 isEqualToString:@"HistoryCollection"];
  if ([v1 isEqualToString:@"ReadingListCollection"])
  {
    v2 = MEMORY[0x277D4A500];
    goto LABEL_9;
  }

  if ([v1 isEqualToString:@"SharedWithYouCollection"])
  {
    v2 = MEMORY[0x277D4A4C0];
    goto LABEL_9;
  }

  v3 = &stru_2827BF158;
LABEL_10:

  return v3;
}

id startPageTitleForCollectionType(void *a1)
{
  v1 = startPageSectionIdentifierForCollectionType(a1);
  v2 = WBSStartPageSectionIdentifierTitle();

  return v2;
}

void sub_2159B7B48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2159B7FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2159B96D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2159B9AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2159BE4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2159BFA6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2159C17BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 96));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_2159C24D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

void sub_2159C50A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double imageSizeOnScreen(void *a1)
{
  v1 = a1;
  [v1 size];
  v3 = v2;
  [v1 scale];
  v5 = v4;

  _SFScreenScale();
  return v3 * (v5 / v6);
}

void sub_2159C9A90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2159CA5D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

double headerLabelHeight()
{
  v0 = [MEMORY[0x277D74300] defaultFontForTextStyle:*MEMORY[0x277D76918]];
  [v0 lineHeight];
  _SFRoundFloatToPixels();
  v2 = v1;

  return v2;
}

void sub_2159D1460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getSearchUITableViewCellClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSearchUITableViewCellClass_softClass_0;
  v7 = getSearchUITableViewCellClass_softClass_0;
  if (!getSearchUITableViewCellClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSearchUITableViewCellClass_block_invoke_0;
    v3[3] = &unk_2781D4BD8;
    v3[4] = &v4;
    __getSearchUITableViewCellClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2159D3440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSearchUIClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSearchUIClass_softClass_1;
  v7 = getSearchUIClass_softClass_1;
  if (!getSearchUIClass_softClass_1)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSearchUIClass_block_invoke_1;
    v3[3] = &unk_2781D4BD8;
    v3[4] = &v4;
    __getSearchUIClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2159D3C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2159D5D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2159D81D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2159D8D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSearchUITableViewCellClass_block_invoke_0(uint64_t a1)
{
  SearchUILibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SearchUITableViewCell");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSearchUITableViewCellClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSearchUITableViewCellClass_block_invoke_cold_1();
    SearchUILibrary_1();
  }
}

void SearchUILibrary_1()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!SearchUILibraryCore_frameworkLibrary_2)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __SearchUILibraryCore_block_invoke_2;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_2781DC758;
    v3 = 0;
    SearchUILibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!SearchUILibraryCore_frameworkLibrary_2)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __SearchUILibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  SearchUILibraryCore_frameworkLibrary_2 = result;
  return result;
}

Class __getSearchUIClass_block_invoke_1(uint64_t a1)
{
  SearchUILibrary_1();
  result = objc_getClass("SearchUI");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSearchUIClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSearchUIClass_block_invoke_cold_1();
    return __getIASignalAnalyticsClass_block_invoke(v3);
  }

  return result;
}

Class __getIASignalAnalyticsClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!InputAnalyticsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __InputAnalyticsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2781DC770;
    v6 = 0;
    InputAnalyticsLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (InputAnalyticsLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("IASignalAnalytics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getIASignalAnalyticsClass_block_invoke_cold_1();
  }

  getIASignalAnalyticsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __InputAnalyticsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  InputAnalyticsLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_2159DEB1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  v26 = v23;
  objc_destroyWeak((v24 + 32));

  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2159DEDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v12 = v9;

  a9.super_class = StartPageController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2159DF6E0(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

id emptyBookmarksSection(void)
{
  v0 = emptyBookmarksSection(void)::section;
  if (!emptyBookmarksSection(void)::section)
  {
    v1 = [MEMORY[0x277D4A838] iconSectionWithIdentifier:&stru_2827BF158 title:&stru_2827BF158 actions:MEMORY[0x277CBEBF8] banner:0 supplementaryAction:0 identifiers:MEMORY[0x277CBEBF8] configurationProvider:&__block_literal_global_802];
    v2 = emptyBookmarksSection(void)::section;
    emptyBookmarksSection(void)::section = v1;

    v0 = emptyBookmarksSection(void)::section;
  }

  return v0;
}

void sub_2159E0360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v16 + 40));

  _Unwind_Resume(a1);
}

void sub_2159E0814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16)
{
  objc_destroyWeak((v18 + 56));

  _Unwind_Resume(a1);
}

void sub_2159E1CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

void sub_2159E2040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20)
{
  objc_destroyWeak((v23 + 40));

  objc_destroyWeak((v22 + 48));
  objc_destroyWeak((v24 - 72));

  _Unwind_Resume(a1);
}

void sub_2159E24B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id a19)
{
  objc_destroyWeak(&a14);

  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v22 - 56));

  _Unwind_Resume(a1);
}

void sub_2159E2650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2159E348C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2159E3578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_2159E3788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_2159E3CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  objc_destroyWeak((v21 + 40));

  objc_destroyWeak((v20 + 40));
  _Unwind_Resume(a1);
}

void sub_2159E3DE4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2159E44E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, id a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42)
{
  objc_destroyWeak((v47 + 40));

  objc_destroyWeak(&a27);
  objc_destroyWeak((v48 - 176));

  _Unwind_Resume(a1);
}

void sub_2159E4930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2159E49F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2159E4CB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v16 = v14;

  objc_destroyWeak((v15 + 40));
  _Unwind_Resume(a1);
}

void sub_2159E4EA4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2159E5500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_2159E5BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2159E6038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2159E696C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2159E6BF4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2159E6DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v16 = v14;

  objc_destroyWeak((v15 + 40));
  _Unwind_Resume(a1);
}

void sub_2159E71AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  objc_destroyWeak((v25 + 56));

  objc_destroyWeak((v24 + 40));
  _Unwind_Resume(a1);
}

void sub_2159E79C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26, id a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42)
{
  objc_destroyWeak((v44 + 48));

  objc_destroyWeak(&a27);
  objc_destroyWeak((v46 - 176));
  _Unwind_Resume(a1);
}

void sub_2159E7C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2159E7D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2159E8404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2159E8724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2159E8CD4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));

  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v6 - 104));
  _Unwind_Resume(a1);
}

id titleForSiriSuggestion(void *a1)
{
  v1 = a1;
  v2 = [v1 title];
  if ([v2 length])
  {
    v3 = [v1 title];
  }

  else
  {
    v4 = [v1 pageURL];
    v3 = [v4 absoluteString];
  }

  return v3;
}

void sub_2159E9154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  objc_destroyWeak((v21 + 40));

  objc_destroyWeak((v20 + 40));
  _Unwind_Resume(a1);
}

void sub_2159E9244(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2159E97F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2159E99A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_2159EA228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, id location)
{
  objc_destroyWeak((v33 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2159EA584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2159EA84C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2159EAAF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2159EAD94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2159EB264(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_2159EB4BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2159EB6C8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2159EB8CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2159EBA18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2159EBC14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2159EC204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak((v33 - 96));

  _Unwind_Resume(a1);
}

void sub_2159EC840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  objc_destroyWeak((v25 + 48));

  objc_destroyWeak((v24 + 40));
  _Unwind_Resume(a1);
}

void sub_2159ED0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, id a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id a56, id a57, id a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a36, 8);

  objc_destroyWeak(&a58);
  _Unwind_Resume(a1);
}

void sub_2159ED424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

void sub_2159ED690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, void *a17)
{
  v22 = v21;

  _Unwind_Resume(a1);
}

void sub_2159ED8B4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2159EE370(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2159EED34(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2159EF248(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_2159F0004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  objc_destroyWeak((v14 + 48));

  _Unwind_Resume(a1);
}

void sub_2159F04DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

Class ___ZL26getOBPrivacyPresenterClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!OnBoardingKitLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = ___ZL24OnBoardingKitLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2781DD498;
    v6 = 0;
    OnBoardingKitLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (OnBoardingKitLibraryCore(char **)::frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("OBPrivacyPresenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    ___ZL26getOBPrivacyPresenterClassv_block_invoke_cold_1();
  }

  getOBPrivacyPresenterClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL24OnBoardingKitLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  OnBoardingKitLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void *___ZL39getSLHideContextMenuIdentifierSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = SocialLayerLibrary();
  result = dlsym(v2, "SLHideContextMenuIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSLHideContextMenuIdentifierSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SocialLayerLibrary(void)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!SocialLayerLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = ___ZL22SocialLayerLibraryCorePPc_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2781DD4B0;
    v5 = 0;
    SocialLayerLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = SocialLayerLibraryCore(char **)::frameworkLibrary;
  v1 = v3[0];
  if (!SocialLayerLibraryCore(char **)::frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t ___ZL22SocialLayerLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  SocialLayerLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

Class ___ZL19getSLHighlightClassv_block_invoke(uint64_t a1)
{
  SocialLayerLibrary();
  result = objc_getClass("SLHighlight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    ___ZL19getSLHighlightClassv_block_invoke_cold_1();
  }

  getSLHighlightClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2159F3A70(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2159F3A90(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2159F3AF0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2159F3B10(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_2159F3B94(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2159F3BB4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

float sub_2159F3C50@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_2159F3C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, int *))
{
  v9 = 0;
  v10 = 1;
  result = a5(a1, &v9);
  v7 = v9;
  v8 = v10;
  if (v10)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 4) = v8;
  return result;
}

uint64_t sub_2159F3CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, int *))
{
  v10 = 0;
  v11 = 1;
  v6 = a5(a1, &v10);
  v7 = v10;
  v8 = v11;
  if (v11)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 4) = v8;
  return v6 & 1;
}

uint64_t sub_2159F3D48@<X0>(_DWORD *a1@<X8>)
{
  result = sub_215A70DF0();
  *a1 = result;
  return result;
}

uint64_t sub_2159F3D70(uint64_t a1, id *a2)
{
  result = sub_215A70520();
  *a2 = 0;
  return result;
}

uint64_t sub_2159F3DE8(uint64_t a1, id *a2)
{
  v3 = sub_215A70530();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2159F3E68@<X0>(uint64_t *a1@<X8>)
{
  sub_215A70540();
  v2 = sub_215A70500();

  *a1 = v2;
  return result;
}

uint64_t sub_2159F3EB8()
{
  v1 = *v0;
  sub_215A70E20();
  MEMORY[0x216073910](v1);
  return sub_215A70E50();
}

uint64_t sub_2159F3F00()
{
  v1 = *v0;
  sub_215A70E20();
  MEMORY[0x216073910](v1);
  return sub_215A70E50();
}

uint64_t sub_2159F3F58()
{
  sub_2158288C4(&qword_27CA7DAA8, type metadata accessor for UILayoutPriority);
  sub_2158288C4(&unk_27CA7DAB0, type metadata accessor for UILayoutPriority);
  return sub_215A70D30();
}

uint64_t sub_2159F4014()
{
  sub_2158288C4(&qword_27CA7DA98, type metadata accessor for ID);
  sub_2158288C4(&qword_27CA7DAA0, type metadata accessor for ID);
  return sub_215A70D30();
}

uint64_t sub_2159F40D0()
{
  sub_2158288C4(&qword_27CA7DA88, type metadata accessor for BookmarksCollectionType);
  sub_2158288C4(&qword_27CA7DA90, type metadata accessor for BookmarksCollectionType);

  return sub_215A70D30();
}

uint64_t sub_2159F418C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_215A70500();

  *a1 = v2;
  return result;
}

uint64_t sub_2159F41D4()
{
  sub_2158288C4(&qword_27CA7DA08, type metadata accessor for Identifier);
  sub_2158288C4(&qword_27CA7DA10, type metadata accessor for Identifier);

  return sub_215A70D30();
}

uint64_t sub_2159F43C0()
{
  v0 = sub_215A70540();
  v1 = MEMORY[0x216073090](v0);

  return v1;
}

uint64_t sub_2159F43FC()
{
  sub_215A70540();
  sub_215A70580();
}

uint64_t sub_2159F4450()
{
  sub_215A70540();
  sub_215A70E20();
  sub_215A70580();
  v0 = sub_215A70E50();

  return v0;
}

uint64_t sub_2159F44D8()
{
  v0 = sub_215A70540();
  v2 = v1;
  if (v0 == sub_215A70540() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_215A70D90();
  }

  return v5 & 1;
}

void sub_2159F4620(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t SaveForLaterUIActivity.activityType.getter()
{
  v0 = *MEMORY[0x277CDB940];
  v1 = *MEMORY[0x277CDB940];
  return v0;
}

Swift::String_optional __swiftcall SaveForLaterUIActivity._systemImageName()()
{
  v0 = 0x6B72616D6B6F6F62;
  v1 = 0xE800000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall SaveForLaterUIActivity.perform(with:)(TabDocument *with)
{
  v3 = [(TabDocument *)with browserController];
  if (!v3)
  {
LABEL_4:

    [v1 activityDidFinish_];
    return;
  }

  v4 = v3;
  if ([(BrowserController *)v3 showDemoModeFeatureDisabledAlert])
  {

    goto LABEL_4;
  }

  [(BrowserController *)v4 fastAddBookmarkForTabDocument:with];
  [v1 activityDidFinish_];
}

void __swiftcall SaveForLaterUIActivity.init()(SaveForLaterUIActivity *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t _sSo22SaveForLaterUIActivityC14MobileSafariUIE13activityTitleSSSgvg_0()
{
  v0 = sub_215A6FA60();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() sharedManager];
  v5 = [v4 destinationFolderTitle];

  v6 = sub_215A70540();
  v8 = v7;

  sub_215A6FA50();
  sub_215A6FA40();
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7E220);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_215A96960;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_2159F501C();
  *(v9 + 32) = v6;
  *(v9 + 40) = v8;
  v10 = sub_215A70510();

  return v10;
}

uint64_t _sSo22SaveForLaterUIActivityC14MobileSafariUIE10canPerform4withSbSo11TabDocumentC_tF_0(void *a1)
{
  v2 = [objc_opt_self() sharedFeatureManager];
  v3 = [v2 isBookmarksAvailable];

  if (v3 && (v4 = [objc_opt_self() sharedWebFilterSettings], v5 = objc_msgSend(v4, sel_usesAllowedSitesOnly), v4, (v5 & 1) == 0))
  {
    return [a1 isBlank] ^ 1;
  }

  else
  {
    return 0;
  }
}

unint64_t type metadata accessor for SaveForLaterUIActivity()
{
  result = qword_27CA7DC40;
  if (!qword_27CA7DC40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA7DC40);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2159F501C()
{
  result = qword_2811A2990;
  if (!qword_2811A2990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811A2990);
  }

  return result;
}

id BrowserSplitViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void BrowserSplitViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR___BrowserSplitViewController____lazy_storage___sidebarButtonItem) = 0;
  *(v0 + OBJC_IVAR___BrowserSplitViewController____lazy_storage___newTabGroupButtonItem) = 0;
  swift_unknownObjectWeakInit();
  sub_215A70CB0();
  __break(1u);
}

id sub_2159F5270(void *a1)
{
  v2 = sub_215A6FA60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2159F7DA8(0, &qword_2811A22B8);
  sub_215A6FA50();
  sub_215A6FA40();
  (*(v3 + 8))(v5, v2);
  v6 = sub_215A70500();
  v7 = [objc_opt_self() systemImageNamed_];

  v8 = [a1 browserController];
  v9 = [v8 sidebarAction];

  v10 = [objc_opt_self() sf_bookmarkMenu];
  v11 = sub_215A70920();
  v12 = _SFAccessibilityIdentifierForBarItem();
  if (!v12)
  {
    sub_215A70540();
    v12 = sub_215A70500();
  }

  [v11 setAccessibilityIdentifier_];

  return v11;
}

id sub_2159F54FC(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_2159F55A8()
{
  v0 = sub_215A6FA60();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - v5;
  sub_2159F7DA8(0, &qword_2811A22B8);
  sub_215A6FA50();
  sub_215A6FA50();
  sub_215A6FA30();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v7(v6, v0);
  v8 = sub_215A70500();
  v9 = [objc_opt_self() systemImageNamed_];

  v10 = objc_opt_self();
  v11 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  aBlock[4] = sub_2159F7DA0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2159F5A18;
  aBlock[3] = &block_descriptor_32;
  v12 = _Block_copy(aBlock);

  v13 = [v10 safari:v12 menuWithUncachedChildrenProvider:?];
  _Block_release(v12);
  v14 = sub_215A70920();
  v15 = sub_215A70500();
  [v14 setAccessibilityIdentifier_];

  return v14;
}

void sub_2159F58A8()
{
  v0 = [objc_opt_self() sharedLogger];
  if (v0)
  {
    v1 = v0;
    Strong = swift_unknownObjectUnownedLoadStrong();
    v3 = [Strong browserController];

    v4 = [v3 analyticsLayoutProvenance];
    [v1 reportIOSToolbarButtonUsage:6 withLayout:v4];
  }

  v5 = swift_unknownObjectUnownedLoadStrong();
  v6 = [v5 browserController];

  v7 = [v6 tabController];
  if (v7)
  {
    v8 = [v7 newTabGroupMenu];

    if (v8)
    {
      v9 = [v8 children];

      sub_2159F7DA8(0, &unk_2811A25B0);
      sub_215A705E0();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_2159F5A18(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  sub_2159F7DA8(0, &unk_2811A25B0);
  v3 = sub_215A705D0();

  return v3;
}

void BrowserSplitViewController.safari_wantsTransparentApplicationBackground.getter()
{
  v1 = [v0 browserController];
  v2 = [v1 rootViewController];

  if (v2)
  {
    [v2 safari_wantsTransparentApplicationBackground];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall BrowserSplitViewController.viewDidLayoutSubviews()()
{
  v1.super_class = BrowserSplitViewController;
  objc_msgSendSuper2(&v1, sel_viewDidLayoutSubviews);
  [v0 primaryColumnWidth];
  [v0 setCurrentSidebarWidth_];
}

id BrowserSplitViewController.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  v7 = sub_215A700D0();
  MEMORY[0x28223BE20](v7);
  _SFSizeClassForWidth();
  sub_215A70970();
  sub_215A700C0();
  sub_215A70980();
  v9.receiver = v3;
  v9.super_class = BrowserSplitViewController;
  return objc_msgSendSuper2(&v9, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
}

id BrowserSplitViewController.canBecomeFirstResponder.getter()
{
  v1 = [v0 browserController];
  v2 = [v1 canBecomeFirstResponder];

  return v2;
}

Swift::Bool __swiftcall BrowserSplitViewController.becomeFirstResponder()()
{
  v1 = [v0 canBecomeFirstResponder];
  if (v1)
  {
    v2 = [v0 browserController];
    v3 = [v2 becomeFirstResponder];

    if (v3)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      v5.receiver = v0;
      v5.super_class = BrowserSplitViewController;
      LOBYTE(v1) = objc_msgSendSuper2(&v5, sel_becomeFirstResponder);
    }
  }

  return v1;
}

id BrowserSplitViewController.childForStatusBarStyle.getter()
{
  v1 = [v0 browserController];
  v2 = [v1 rootViewController];

  return v2;
}

uint64_t BrowserSplitViewController.canPerformAction(_:withSender:)(uint64_t a1, uint64_t a2)
{
  v5 = [v2 browserController];
  v6 = [v5 respondsToSelector_];

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = [v2 browserController];
  sub_21583FD1C(a2, v24);
  v8 = v25;
  if (v25)
  {
    v9 = __swift_project_boxed_opaque_existential_0(v24, v25);
    v10 = *(v8 - 8);
    MEMORY[0x28223BE20](v9);
    v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = sub_215A70D80();
    (*(v10 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_0(v24);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v7 canPerformAction:a1 withSender:v13];

  swift_unknownObjectRelease();
  if (v14)
  {
    return 1;
  }

LABEL_7:
  sub_21583FD1C(a2, v24);
  v16 = v25;
  if (v25)
  {
    v17 = __swift_project_boxed_opaque_existential_0(v24, v25);
    v18 = *(v16 - 8);
    MEMORY[0x28223BE20](v17);
    v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v20);
    v21 = sub_215A70D80();
    (*(v18 + 8))(v20, v16);
    __swift_destroy_boxed_opaque_existential_0(v24);
  }

  else
  {
    v21 = 0;
  }

  v23.receiver = v2;
  v23.super_class = BrowserSplitViewController;
  v15 = objc_msgSendSuper2(&v23, sel_canPerformAction_withSender_, a1, v21);
  swift_unknownObjectRelease();
  return v15;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

Swift::Void __swiftcall BrowserSplitViewController.validate(_:)(UICommand a1)
{
  v4.super_class = BrowserSplitViewController;
  objc_msgSendSuper2(&v4, sel_validateCommand_, a1.super.super.isa);
  v3 = [v1 browserController];
  [v3 validateCommand_];
}

double BrowserSplitViewController.forwardingTarget(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && (v5 = [v2 browserController], v6 = objc_msgSend(v5, sel_respondsToSelector_, a1), v5, v6))
  {
    v7 = [v2 browserController];
    *(a2 + 24) = sub_2159F7DA8(0, &qword_27CA7DC70);
    *a2 = v7;
  }

  else
  {
    v11.receiver = v2;
    v11.super_class = BrowserSplitViewController;
    if (objc_msgSendSuper2(&v11, sel_forwardingTargetForSelector_, a1))
    {
      sub_215A70B70();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    result = *&v9;
    *a2 = v9;
    *(a2 + 16) = v10;
  }

  return result;
}

id sub_2159F6C60()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75780]) init];
  v2 = [objc_allocWithZone(MEMORY[0x277D757A8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_215A96980;
  *(v3 + 32) = [objc_opt_self() flexibleSpaceItem];
  *(v3 + 40) = [v0 sidebarButtonItem];
  sub_2159F7DA8(0, &qword_2811A22B8);
  v4 = sub_215A705D0();

  [v2 setRightBarButtonItems_];

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_215A96990;
  *(v5 + 32) = v2;
  sub_2159F7DA8(0, &qword_27CA7DD00);
  v6 = v2;
  v7 = sub_215A705D0();

  [v1 setItems_];

  return v1;
}

void sub_2159F6E08(char a1, void (*a2)(void), uint64_t a3)
{
  if ([v3 isCollapsed])
  {
    if (a2)
    {
      a2(0);
    }
  }

  else
  {
    if (a1)
    {
      [v3 setUpSidebarContentIfNeeded];
      v7 = &selRef_showColumn_;
    }

    else
    {
      v7 = &selRef_hideColumn_;
    }

    [v3 *v7];
    [v3 setShowsSidebarByDefault_];
    if (a2)
    {
      v8[4] = a2;
      v8[5] = a3;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 1107296256;
      v8[2] = sub_2159F6F40;
      v8[3] = &block_descriptor_26;
      a2 = _Block_copy(v8);
    }

    [v3 sidebarVisibilityWillChangeWithCompletion_];
    _Block_release(a2);
  }
}

uint64_t sub_2159F6F40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_2159F7050(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  result = [v3 transitionCoordinator];
  if (result)
  {
    v7 = result;
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    v17 = sub_2159F7D54;
    v18 = v8;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_2159F73AC;
    v16 = &block_descriptor_13;
    v9 = _Block_copy(&v13);
    v10 = v3;

    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    v17 = sub_2159F7D5C;
    v18 = v11;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_2159F73AC;
    v16 = &block_descriptor_19;
    v12 = _Block_copy(&v13);
    sub_2159F7D90(a1);

    [v7 animateAlongsideTransition:v9 completion:v12];
    _Block_release(v12);
    _Block_release(v9);
    return swift_unknownObjectRelease();
  }

  else if (a1)
  {
    return a1(0);
  }

  return result;
}

void sub_2159F7214(int a1, id a2)
{
  v3 = [a2 browserController];
  [v3 updateTabGroupButtonsVisibility];

  v4 = [a2 browserController];
  v5 = [v4 rootViewController];

  if (!v5)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v6 = [v5 catalogViewController];

  if (v6)
  {
    [v6 reloadNavigationItemAnimated_];
  }

  v7 = [a2 browserController];
  v8 = [v7 rootViewController];

  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = [v8 tabBarManager];

  v10 = [v9 standaloneTabBar];
  if (v10)
  {
    [v10 updateLayout];
  }
}

uint64_t sub_2159F73AC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_2159F74C4()
{
  v1 = [v0 browserController];
  v4 = [v1 rootViewController];

  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = [v0 view];
  if (!v2)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v3 = v2;
  [v2 _sf_usesLeftToRightLayout];

  UIEdgeInsetsMakeWithEdges();
  [v4 setAdditionalSafeAreaInsets_];
}

void BrowserSplitViewController.present(_:animated:completion:)(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  v5 = v4;
  if (![objc_opt_self() isSolariumEnabled])
  {
    goto LABEL_11;
  }

  v10 = [v5 browserController];
  v11 = [v10 rootViewController];

  if (!v11)
  {
    __break(1u);
    goto LABEL_16;
  }

  v12 = [v11 catalogViewController];

  if (v12)
  {
    v13 = [v12 popoverIsShowing];

    if (v13)
    {
LABEL_7:
      v17 = [v5 browserController];
      v18 = [v17 rootViewController];

      if (v18)
      {
        if (a3)
        {
          v23 = a3;
          v24 = a4;
          v19 = MEMORY[0x277D85DD0];
          v20 = 1107296256;
          v21 = sub_2159F7E08;
          v22 = &block_descriptor_3;
          a3 = _Block_copy(&v19);
        }

        [v18 _sf_presentViewControllerOnTopOfPresentedViewController_animated_completion_];
        _Block_release(a3);

        return;
      }

LABEL_17:
      __break(1u);
      return;
    }
  }

  v14 = [v5 browserController];
  v15 = [v14 rootViewController];

  if (!v15)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = [v15 viewControllerIsKindOfSKStoreProductViewControllerClass_];

  if (v16)
  {
    goto LABEL_7;
  }

LABEL_11:
  if (a3)
  {
    v23 = a3;
    v24 = a4;
    v19 = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_2159F7E08;
    v22 = &block_descriptor;
    a3 = _Block_copy(&v19);
  }

  v25.receiver = v5;
  v25.super_class = BrowserSplitViewController;
  objc_msgSendSuper2(&v25, sel_presentViewController_animated_completion_, a1, a2 & 1, a3);
  _Block_release(a3);
}

uint64_t sub_2159F78E0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id BrowserSplitViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_215A70500();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

id BrowserSplitViewController.init(style:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithStyle_];
}

Swift::Void __swiftcall BrowserSplitViewController.splitViewController(_:willHide:)(UISplitViewController *_, UISplitViewControllerColumn willHide)
{
  if (willHide == UISplitViewControllerColumnPrimary)
  {
    [v2 sidebarVisibilityWillChangeWithCompletion_];
  }
}

uint64_t sub_2159F7CC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a1;
  [v7 updateAdditionalSafeAreaInsetsFor:objc_msgSend(v7 isCollapsed:{sel_displayMode), a5 & 1}];

  return a4;
}

uint64_t sub_2159F7D5C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(1);
  }

  return result;
}

uint64_t sub_2159F7D90(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2159F7DA8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_2159F7E2C(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  *&v4[OBJC_IVAR____TtCC14MobileSafariUI28LibraryContentViewController17ProfilePickerCell_profile] = 0;
  *&v4[OBJC_IVAR____TtCC14MobileSafariUI28LibraryContentViewController17ProfilePickerCell_menu] = 0;
  v17.receiver = v4;
  v17.super_class = _s17ProfilePickerCellCMa();
  v9 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = objc_allocWithZone(MEMORY[0x277D75B80]);
  v11 = v9;
  v12 = [v10 initWithTarget:v11 action:sel_handleTap];
  [v11 addGestureRecognizer_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7DD28);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_215A96960;
  v14 = sub_215A70380();
  v15 = MEMORY[0x277D74DB8];
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;
  sub_215A70A70();

  swift_unknownObjectRelease();

  return v11;
}

void sub_2159F8038()
{
  v1 = [v0 subviews];
  sub_2159F7DA8(0, qword_2811A2380);
  v2 = sub_215A705E0();

  if (v2 >> 62)
  {
LABEL_19:
    v3 = sub_215A70CD0();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:

    return;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = 0;
  while ((v2 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x216073710](v4, v2);
    v6 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_12;
    }

LABEL_7:
    v8 = v5;
    sub_2159F7DA8(0, &qword_27CA7DD20);
    if ([v8 isKindOfClass_])
    {
      goto LABEL_13;
    }

    ++v4;
    if (v6 == v3)
    {
      goto LABEL_20;
    }
  }

  if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = *(v2 + 8 * v4 + 32);
  v6 = v4 + 1;
  if (!__OFADD__(v4, 1))
  {
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
LABEL_13:

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    [v7 performPrimaryAction];
  }
}

uint64_t sub_2159F839C()
{
  v1 = v0;
  v2 = sub_215A6FA60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_215A70180();
  sub_215A70170();
  sub_215A70160();
  v6 = OBJC_IVAR____TtCC14MobileSafariUI28LibraryContentViewController17ProfilePickerCell_profile;
  v7 = *&v0[OBJC_IVAR____TtCC14MobileSafariUI28LibraryContentViewController17ProfilePickerCell_profile];
  if (!v7 || ![v7 symbolImage])
  {
    v8 = sub_215A70500();
    [objc_opt_self() systemImageNamed_];
  }

  sub_215A701A0();
  v9 = sub_215A70140();
  sub_215A70130();
  v9(v15, 0);
  sub_215A70150();
  sub_215A6FA50();
  sub_215A6FA40();
  (*(v3 + 8))(v5, v2);
  sub_215A70190();
  v10 = [v1 traitCollection];
  v11 = [v10 preferredContentSizeCategory];

  LOBYTE(v10) = sub_215A70A10();
  if (v10)
  {
    v12 = *&v1[v6];
    if (v12)
    {
      v13 = [v12 title];
      sub_215A70540();
    }
  }

  return sub_215A70120();
}

void *sub_2159F863C()
{
  v1 = sub_215A70060();
  v37 = *(v1 - 8);
  v38 = v1;
  MEMORY[0x28223BE20](v1);
  v36 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7DD18);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = &v33 - v4;
  v5 = sub_215A70020();
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_215A70030();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_215A70090();
  v12 = *(v40 - 8);
  v13 = MEMORY[0x28223BE20](v40);
  v35 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - v15;
  v17 = [v0 traitCollection];
  v18 = [v17 preferredContentSizeCategory];

  LOBYTE(v17) = sub_215A70A10();
  if ((v17 & 1) != 0 || (v19 = *&v0[OBJC_IVAR____TtCC14MobileSafariUI28LibraryContentViewController17ProfilePickerCell_profile]) == 0)
  {
    v22 = MEMORY[0x277D84F90];
  }

  else
  {
    v20 = [v19 title];
    v33 = sub_215A70540();

    (*(v9 + 104))(v11, *MEMORY[0x277D74A98], v8);
    v21 = sub_215A70040();
    (*(*(v21 - 8) + 56))(v39, 1, 1, v21);
    sub_215A70010();
    sub_215A70070();

    (*(v34 + 8))(v7, v5);
    (*(v9 + 8))(v11, v8);
    v22 = sub_215A38DA8(0, 1, 1, MEMORY[0x277D84F90]);
    v24 = v22[2];
    v23 = v22[3];
    if (v24 >= v23 >> 1)
    {
      v22 = sub_215A38DA8(v23 > 1, v24 + 1, 1, v22);
    }

    v22[2] = v24 + 1;
    (*(v12 + 32))(v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v24, v16, v40);
  }

  v25 = *&v0[OBJC_IVAR____TtCC14MobileSafariUI28LibraryContentViewController17ProfilePickerCell_menu];
  if (v25)
  {
    (*(v9 + 104))(v11, *MEMORY[0x277D74A98], v8);
    v26 = sub_215A70040();
    (*(*(v26 - 8) + 56))(v39, 1, 1, v26);
    v27 = v25;
    v28 = v36;
    sub_215A70050();
    v29 = v35;
    sub_215A70080();
    (*(v37 + 8))(v28, v38);
    (*(v9 + 8))(v11, v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_215A38DA8(0, v22[2] + 1, 1, v22);
    }

    v31 = v22[2];
    v30 = v22[3];
    if (v31 >= v30 >> 1)
    {
      v22 = sub_215A38DA8(v30 > 1, v31 + 1, 1, v22);
    }

    v22[2] = v31 + 1;
    (*(v12 + 32))(v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v31, v29, v40);
  }

  return v22;
}

id sub_2159F8C4C()
{
  v2.receiver = v0;
  v2.super_class = _s17ProfilePickerCellCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_2159F8D30(void *a1, void *a2)
{
  v4 = [a1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  LODWORD(v4) = sub_215A70A10() & 1;
  v6 = [a2 preferredContentSizeCategory];
  LODWORD(v5) = sub_215A70A10() & 1;

  if (v4 != v5)
  {

    [a1 setNeedsUpdateConfiguration];
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2159F8F10(uint64_t a1, uint64_t *a2)
{
  v3 = sub_215A70000();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_215A6FFF0();
}

uint64_t RecentlyClosedTabsMenuProvider.makeMenuElements(for:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_215A96990;
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v8[4] = sub_2159F92E0;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2159F92E8;
  v8[3] = &block_descriptor_0;
  v4 = _Block_copy(v8);
  v5 = v0;

  v6 = [v2 elementWithUncachedProvider_];
  _Block_release(v4);
  *(v1 + 32) = v6;
  return v1;
}

void sub_2159F90B8(void (*a1)(uint64_t))
{
  sub_2159F960C();
  if (!v2)
  {
    a1(MEMORY[0x277D84F90]);
    return;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 sharedApplication];
  v6 = [v4 sharedApplication];
  if (!v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v6 tabGroupManager];

  if (!v8)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v9 = objc_opt_self();
  v10 = [v8 allProfileIdentifiers];

  v11 = sub_215A70740();
  v12 = *(v11 + 16);

  v13 = v12 > 1;
  v14 = sub_215A70500();
  v15 = [objc_opt_self() systemImageNamed_];

  v16 = [v9 safari:v3 recentlyClosedTabsMenuForProfile:v13 showProfileTitle:0 displayInline:0 openInTabGroupWithUUID:v15 image:?];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_215A96990;
  *(v17 + 32) = v16;
  v18 = v16;
  a1(v17);
}

uint64_t sub_2159F92E8(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_2159F9604, v4);
}

void sub_2159F9384(uint64_t a1, uint64_t a2)
{
  sub_2159F7DA8(0, &unk_2811A25B0);
  v3 = sub_215A705D0();
  (*(a2 + 16))(a2, v3);
}

RecentlyClosedTabsMenuProvider __swiftcall RecentlyClosedTabsMenuProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_2159F960C()
{
  v1 = objc_opt_self();
  v2 = [v1 sharedApplication];
  if (!v2)
  {
    __break(1u);
LABEL_7:

    __break(1u);
    return;
  }

  v3 = v2;
  v0 = [v2 lastActiveProfileIdentifier];

  if (v0)
  {
    v4 = [v1 sharedApplication];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 tabGroupManager];

      [v6 profileWithIdentifier_];
      return;
    }

    goto LABEL_7;
  }
}

char *sub_2159F9700(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC14MobileSafariUI18SFMinibarButtonBar_currentVisibilityTransition] = 0;
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC14MobileSafariUI18SFMinibarButtonBar_sizeUpdateHandler];
  *v9 = CGSizeMake;
  *(v9 + 1) = 0;
  v10 = OBJC_IVAR____TtC14MobileSafariUI18SFMinibarButtonBar_stackView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v11 = &v4[OBJC_IVAR____TtC14MobileSafariUI18SFMinibarButtonBar_layoutSizeCache];
  *(v11 + 4) = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v11[40] = 1;
  v31.receiver = v4;
  v31.super_class = type metadata accessor for SFMinibarButtonBar();
  v12 = objc_msgSendSuper2(&v31, sel_initWithFrame_, a1, a2, a3, a4);
  [v12 safari:1 setFlexibleGlassBackgroundEnabled:?];
  v13 = SFCapsuleCollectionViewMaximumContentSizeCategoryForToolbarButtons();
  [v12 setMaximumContentSizeCategory_];

  v14 = OBJC_IVAR____TtC14MobileSafariUI18SFMinibarButtonBar_stackView;
  [*&v12[OBJC_IVAR____TtC14MobileSafariUI18SFMinibarButtonBar_stackView] setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 addSubview_];
  v15 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_215A969E0;
  v17 = [*&v12[v14] centerXAnchor];
  v18 = [v12 centerXAnchor];

  v19 = [v17 constraintEqualToAnchor_];
  *(v16 + 32) = v19;
  v20 = [*&v12[v14] centerYAnchor];
  v21 = [v12 centerYAnchor];

  v22 = [v20 constraintEqualToAnchor_];
  *(v16 + 40) = v22;
  v23 = [*&v12[v14] widthAnchor];
  v24 = [v12 widthAnchor];

  v25 = [v23 constraintEqualToAnchor_];
  *(v16 + 48) = v25;
  v26 = [*&v12[v14] heightAnchor];
  v27 = [v12 heightAnchor];

  v28 = [v26 constraintEqualToAnchor_];
  *(v16 + 56) = v28;
  sub_2159F7DA8(0, &qword_2811A2478);
  v29 = sub_215A705D0();

  [v15 activateConstraints_];

  return v12;
}

void sub_2159F9AFC(double a1, double a2, float a3, float a4)
{
  v9 = &v4[OBJC_IVAR____TtC14MobileSafariUI18SFMinibarButtonBar_layoutSizeCache];
  if ((v4[OBJC_IVAR____TtC14MobileSafariUI18SFMinibarButtonBar_layoutSizeCache + 40] & 1) != 0 || (*(v9 + 2) == a1 ? (v10 = *(v9 + 3) == a2) : (v10 = 0), v10 ? (v11 = *(v9 + 8) == a3) : (v11 = 0), v11 ? (v12 = *(v9 + 9) == a4) : (v12 = 0), !v12))
  {
    v17.receiver = v4;
    v17.super_class = type metadata accessor for SFMinibarButtonBar();
    *&v13 = a3;
    *&v14 = a4;
    objc_msgSendSuper2(&v17, sel_systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority_, a1, a2, v13, v14);
    *v9 = v15;
    *(v9 + 1) = v16;
    *(v9 + 2) = a1;
    *(v9 + 3) = a2;
    *(v9 + 4) = LODWORD(a3) | (LODWORD(a4) << 32);
    v9[40] = 0;
  }
}

uint64_t sub_2159F9C28(unint64_t a1, int a2)
{
  v41 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7DEF0);
  v45 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v44 = &v40[-v5];
  v6 = &v2[OBJC_IVAR____TtC14MobileSafariUI18SFMinibarButtonBar_layoutSizeCache];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v6[40] = 1;
  v47 = v2;
  v43 = *&v2[OBJC_IVAR____TtC14MobileSafariUI18SFMinibarButtonBar_stackView];
  v7 = [v43 arrangedSubviews];
  v42 = sub_2159F7DA8(0, qword_2811A2380);
  v8 = sub_215A705E0();

  aBlock[0] = MEMORY[0x277D84F90];
  v9 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_215A70CD0())
  {
    v46 = v4;
    if (i)
    {
      v11 = 0;
      v4 = 0;
      v48 = MEMORY[0x277D84F90];
      do
      {
        v12 = v11;
        while (1)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x216073710](v12, v8);
          }

          else
          {
            if (v12 >= *(v9 + 16))
            {
              goto LABEL_38;
            }

            v13 = *(v8 + 8 * v12 + 32);
          }

          v14 = v13;
          v11 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v50 = v13;
          MEMORY[0x28223BE20](v13);
          *&v40[-16] = &v50;
          if (sub_215A26410(sub_2159FB3CC, &v40[-32], a1))
          {
            break;
          }

          ++v12;
          if (v11 == i)
          {
            goto LABEL_19;
          }
        }

        MEMORY[0x2160730A0]();
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_215A70640();
        }

        sub_215A70660();
        v48 = aBlock[0];
      }

      while (v11 != i);
    }

    else
    {
      v4 = 0;
      v48 = MEMORY[0x277D84F90];
    }

LABEL_19:

    v15 = *&v47[OBJC_IVAR____TtC14MobileSafariUI18SFMinibarButtonBar_currentVisibilityTransition];
    if (v15)
    {
      v16 = OBJC_IVAR____TtCC14MobileSafariUI18SFMinibarButtonBar20VisibilityTransition_finalViews;
      *(v15 + OBJC_IVAR____TtCC14MobileSafariUI18SFMinibarButtonBar20VisibilityTransition_finalViews) = v48;

      aBlock[0] = *(v15 + v16);
      v50 = *(v15 + OBJC_IVAR____TtCC14MobileSafariUI18SFMinibarButtonBar20VisibilityTransition_initialViews);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7DF08);
      sub_2159FB2D8(&qword_2811A2460, &qword_27CA7DF08);
      sub_2159FB320();
      v17 = v44;
      sub_215A704D0();
      v18 = OBJC_IVAR____TtCC14MobileSafariUI18SFMinibarButtonBar20VisibilityTransition_difference;
      swift_beginAccess();
      (*(v45 + 40))(v15 + v18, v17, v46);
      swift_endAccess();
    }

    v19 = [v43 arrangedSubviews];
    a1 = sub_215A705E0();

    aBlock[0] = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
      break;
    }

    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_43;
    }

LABEL_23:
    v21 = 0;
    v9 = MEMORY[0x277D84F90];
    v8 = &selRef_isAllowFavoritesInFrequentlyVisitedEnabled;
LABEL_24:
    v22 = v21;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x216073710](v22, a1);
      }

      else
      {
        if (v22 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v23 = *(a1 + 8 * v22 + 32);
      }

      v24 = v23;
      v21 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (![v23 isHidden])
      {
        MEMORY[0x2160730A0]();
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_215A70640();
        }

        sub_215A70660();
        v9 = aBlock[0];
        if (v21 != v20)
        {
          goto LABEL_24;
        }

        goto LABEL_44;
      }

      ++v22;
      if (v21 == v20)
      {
        goto LABEL_44;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

  v20 = sub_215A70CD0();
  if (v20)
  {
    goto LABEL_23;
  }

LABEL_43:
  v9 = MEMORY[0x277D84F90];
LABEL_44:

  v25 = v47;
  v26 = [v47 window];
  if (v26)
  {

    v27 = *&v25[OBJC_IVAR____TtC14MobileSafariUI18SFMinibarButtonBar_sizeUpdateHandler];
    v28 = *&v25[OBJC_IVAR____TtC14MobileSafariUI18SFMinibarButtonBar_sizeUpdateHandler + 8];
  }

  else
  {
    v27 = CGSizeMake;
    v28 = 0;
  }

  v30 = v45;
  v29 = v46;
  v31 = v44;
  v32 = v48;
  type metadata accessor for SFMinibarButtonBar.VisibilityTransition();
  v33 = swift_allocObject();
  v34 = OBJC_IVAR____TtCC14MobileSafariUI18SFMinibarButtonBar20VisibilityTransition_finalViews;
  *(v33 + OBJC_IVAR____TtCC14MobileSafariUI18SFMinibarButtonBar20VisibilityTransition_initialViews) = v9;
  *(v33 + v34) = v32;
  aBlock[0] = v32;
  v50 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7DF08);
  sub_2159FB2D8(&qword_2811A2460, &qword_27CA7DF08);
  sub_2159FB320();
  sub_215A704D0();
  (*(v30 + 32))(v33 + OBJC_IVAR____TtCC14MobileSafariUI18SFMinibarButtonBar20VisibilityTransition_difference, v31, v29);
  v35 = (v33 + OBJC_IVAR____TtCC14MobileSafariUI18SFMinibarButtonBar20VisibilityTransition_sizeUpdateHandler);
  *v35 = v27;
  v35[1] = v28;
  v36 = OBJC_IVAR____TtCC14MobileSafariUI18SFMinibarButtonBar20VisibilityTransition_difference;
  swift_beginAccess();
  (*(v30 + 16))(v31, v33 + v36, v29);
  sub_2159FB2D8(&unk_2811A2450, &qword_27CA7DEF0);
  sub_215A70750();
  sub_215A70760();
  (*(v30 + 8))(v31, v29);
  if (aBlock[0] != aBlock[6])
  {
    v37 = objc_opt_self();
    aBlock[4] = sub_2159FB434;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2159F7E08;
    aBlock[3] = &block_descriptor_31;
    v38 = _Block_copy(aBlock);

    [v37 sf:v41 & 1 animate:2 usingDefaultTimingWithOptions:v38 animations:0 completion:?];
    _Block_release(v38);
  }
}

void sub_2159FA3E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5, double a6, double a7, double a8, double a9)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if ([Strong respondsToSelector_])
    {
      v20 = [v19 viewForBarItem_];
      Strong = swift_unknownObjectRelease();
      if (v20)
      {
        [v20 bounds];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;
        if (a4)
        {
          v32[4] = a4;
          v32[5] = a5;
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 1107296256;
          v32[2] = sub_2159F7E08;
          v32[3] = &block_descriptor_28;
          v29 = _Block_copy(v32);
          v30 = v20;
          sub_2159F7D90(a4);
        }

        else
        {
          v31 = v20;
          v29 = 0;
        }

        [objc_opt_self() _sf_animateLinkImage_withAnimation_fromRect_inView_toRect_inView_afterImageDisappearsBlock_afterDestinationLayerBouncesBlock_];
        _Block_release(v29);

        return;
      }
    }

    else
    {
      Strong = swift_unknownObjectRelease();
    }
  }

  if (a4)
  {
    a4(Strong);
  }
}

uint64_t sub_2159FA6FC(void *a1)
{
  v2 = v1;
  v27 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7DEF0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v23 - v4;
  v5 = [*&v1[OBJC_IVAR____TtC14MobileSafariUI18SFMinibarButtonBar_stackView] arrangedSubviews];
  sub_2159F7DA8(0, qword_2811A2380);
  v6 = sub_215A705E0();

  aBlock[0] = MEMORY[0x277D84F90];
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_20:
    v9 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

LABEL_19:
  v7 = sub_215A70CD0();
  if (!v7)
  {
    goto LABEL_20;
  }

LABEL_3:
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  do
  {
    v10 = v8;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x216073710](v10, v6);
      }

      else
      {
        if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v11 = *(v6 + 8 * v10 + 32);
      }

      v12 = v11;
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (![v11 isHidden])
      {
        break;
      }

      ++v10;
      if (v8 == v7)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x2160730A0]();
    if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_215A70640();
    }

    sub_215A70660();
    v9 = aBlock[0];
  }

  while (v8 != v7);
LABEL_21:

  v13 = *&v2[OBJC_IVAR____TtC14MobileSafariUI18SFMinibarButtonBar_sizeUpdateHandler];
  v14 = *&v2[OBJC_IVAR____TtC14MobileSafariUI18SFMinibarButtonBar_sizeUpdateHandler + 8];
  type metadata accessor for SFMinibarButtonBar.VisibilityTransition();
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtCC14MobileSafariUI18SFMinibarButtonBar20VisibilityTransition_finalViews;
  *(v15 + OBJC_IVAR____TtCC14MobileSafariUI18SFMinibarButtonBar20VisibilityTransition_initialViews) = v9;
  *(v15 + v16) = v9;
  aBlock[0] = v9;
  aBlock[6] = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7DF08);
  sub_2159FB2D8(&qword_2811A2460, &qword_27CA7DF08);
  sub_2159FB320();
  v17 = v24;
  sub_215A704D0();
  (*(v25 + 32))(v15 + OBJC_IVAR____TtCC14MobileSafariUI18SFMinibarButtonBar20VisibilityTransition_difference, v17, v26);
  v18 = (v15 + OBJC_IVAR____TtCC14MobileSafariUI18SFMinibarButtonBar20VisibilityTransition_sizeUpdateHandler);
  *v18 = v13;
  v18[1] = v14;
  *&v2[OBJC_IVAR____TtC14MobileSafariUI18SFMinibarButtonBar_currentVisibilityTransition] = v15;

  v19 = swift_allocObject();
  *(v19 + 16) = v2;
  *(v19 + 24) = v15;
  aBlock[4] = sub_2159FB388;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2159F73AC;
  aBlock[3] = &block_descriptor_1;
  v20 = _Block_copy(aBlock);

  v21 = v2;

  [v27 addAnimations_];
  _Block_release(v20);
}

id sub_2159FAB74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFMinibarButtonBar();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2159FAC3C(int a1)
{
  v23 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7DEF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DEF8);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v10 = OBJC_IVAR____TtCC14MobileSafariUI18SFMinibarButtonBar20VisibilityTransition_difference;
  swift_beginAccess();
  v11 = *(v3 + 16);
  v22 = v1;
  v11(v5, v1 + v10, v2);
  v11(v9, v5, v2);
  v12 = *(v7 + 44);
  sub_2159FB2D8(&unk_2811A2450, &qword_27CA7DEF0);
  sub_215A70750();
  (*(v3 + 8))(v5, v2);
  while (1)
  {
    sub_215A70760();
    if (*&v9[v12] == v24[0])
    {
      break;
    }

    v13 = sub_215A70780();
    v15 = *(v14 + 8);
    v16 = *(v14 + 25);
    v17 = v15;
    v13(v24, 0);
    sub_215A70770();
    v18 = v15;
    v19 = v18;
    if (v16)
    {
      [v18 setAlpha_];
      [v19 setHidden_];
    }

    else
    {
      [v18 setHidden_];
      [v19 setAlpha_];
    }
  }

  result = sub_2159FB270(v9);
  if (v23)
  {
    return (*(v22 + OBJC_IVAR____TtCC14MobileSafariUI18SFMinibarButtonBar20VisibilityTransition_sizeUpdateHandler))(result);
  }

  return result;
}

uint64_t sub_2159FAF64()
{
  v1 = OBJC_IVAR____TtCC14MobileSafariUI18SFMinibarButtonBar20VisibilityTransition_difference;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7DEF0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SFMinibarButtonBar.VisibilityTransition()
{
  result = qword_2811A2368;
  if (!qword_2811A2368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2159FB094()
{
  sub_2159FB140();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2159FB140()
{
  if (!qword_2811A2378)
  {
    sub_2159F7DA8(255, qword_2811A2380);
    v0 = sub_215A70D20();
    if (!v1)
    {
      atomic_store(v0, &qword_2811A2378);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2159FB1BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2159FB1DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2159FB270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DEF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2159FB2D8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2159FB320()
{
  result = qword_2811A2468;
  if (!qword_2811A2468)
  {
    sub_2159F7DA8(255, qword_2811A2380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811A2468);
  }

  return result;
}

uint64_t sub_2159FB388()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC14MobileSafariUI18SFMinibarButtonBar_currentVisibilityTransition) = 0;

  return sub_2159FAC3C(0);
}

void sub_2159FB43C()
{
  *(v0 + OBJC_IVAR____TtC14MobileSafariUI18SFMinibarButtonBar_currentVisibilityTransition) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC14MobileSafariUI18SFMinibarButtonBar_sizeUpdateHandler);
  *v1 = CGSizeMake;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC14MobileSafariUI18SFMinibarButtonBar_stackView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v3 = v0 + OBJC_IVAR____TtC14MobileSafariUI18SFMinibarButtonBar_layoutSizeCache;
  *(v3 + 32) = 0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 40) = 1;
  sub_215A70CB0();
  __break(1u);
}

id sub_2159FB594()
{
  v1 = OBJC_IVAR___BookmarksLibraryItemController____lazy_storage___rootViewController;
  v2 = *(v0 + OBJC_IVAR___BookmarksLibraryItemController____lazy_storage___rootViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___BookmarksLibraryItemController____lazy_storage___rootViewController);
  }

  else
  {
    v4 = sub_2159FB63C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_2159FB63C()
{
  v1 = v0;
  v2 = sub_215A6FD60();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = (&v32 - v7);
  v9 = [v0 rootFolder];
  sub_2159F7DA8(0, &unk_2811A2530);
  v10 = [v0 rootFolder];
  v11 = [v0 bookmarkCollection];
  v12 = [v11 readingListFolder];

  v13 = sub_215A70A80();
  if (v13)
  {
    v14 = MEMORY[0x277D28B50];
  }

  else
  {
    *v8 = *MEMORY[0x277D7B510];
    v14 = MEMORY[0x277D28B60];
  }

  (*(v3 + 104))(v8, *v14, v2);
  (*(v3 + 16))(v6, v8, v2);
  sub_2159FFD34();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v9;
  v17 = objc_allocWithZone(sub_215A6FF90());
  v18 = v9;
  v19 = v1;
  v20 = sub_215A6FD70();
  *(swift_allocObject() + 16) = v18;
  v21 = v18;
  sub_215A6FBE0();
  sub_215A6FC10();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = v21;
  v33 = v21;

  sub_215A6FCF0();

  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v26 + 24) = v25;

  sub_215A6FD40();

  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v28;

  sub_215A6FD20();

  v30 = [v20 navigationItem];
  [v30 setLargeTitleDisplayMode_];

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_215A6FC30();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_215A6FAD0();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_215A6FD10();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_215A6FDB0();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_215A6FCB0();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_215A6FAE0();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_215A6FDA0();

  (*(v3 + 8))(v8, v2);

  return v20;
}

id BookmarksLibraryItemController.viewController.getter()
{
  v1 = [v0 rootViewController];

  return v1;
}

unint64_t BookmarksLibraryItemController.accessibilityIdentifier.getter()
{
  sub_2159F7DA8(0, &unk_2811A2530);
  v1 = [v0 rootFolder];
  v2 = [v0 bookmarkCollection];
  v3 = [v2 readingListFolder];

  v4 = sub_215A70A80();
  if (v4)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t BookmarksLibraryItemController.sidebarSelectionAnalyticsAction.getter()
{
  sub_2159F7DA8(0, &unk_2811A2530);
  v1 = [v0 rootFolder];
  v2 = [v0 bookmarkCollection];
  v3 = [v2 readingListFolder];

  v4 = sub_215A70A80();
  if (v4)
  {
    return 7;
  }

  else
  {
    return 6;
  }
}

id BookmarksLibraryItemController.dropOperation(for:)(void *a1)
{
  v2 = v1;
  sub_2159F7DA8(0, &unk_2811A2530);
  v4 = [v1 rootFolder];
  v5 = [v1 bookmarkCollection];
  v6 = [v5 readingListFolder];

  v7 = sub_215A70A80();
  if (v7)
  {
    v8 = [v2 bookmarkCollection];
    v9 = [(WebBookmarkCollection *)v8 dropOperationForReadingListDropSession:a1];

    return v9;
  }

  else
  {
    v11 = objc_opt_self();

    return [v11 _sf_operationForDropSession_];
  }
}

void BookmarksLibraryItemController.performDrop(with:session:in:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  sub_2159F7DA8(0, &unk_2811A2530);
  v8 = [v3 rootFolder];
  v9 = [v3 bookmarkCollection];
  v10 = [v9 readingListFolder];

  v11 = sub_215A70A80();
  if (v11)
  {
    v12 = [v4 bookmarkCollection];
    v13 = [a2 items];
    if (!v13)
    {
      sub_2159F7DA8(0, &qword_27CA7E2B0);
      sub_215A705E0();
      v32 = sub_215A705D0();

      v13 = v32;
    }

    v33 = v13;
    [(WebBookmarkCollection *)v12 dropDragItemsInReadingList:v13];

    goto LABEL_5;
  }

  v15 = [a1 operation];
  if (v15 == 2)
  {
    v26 = objc_opt_self();
    v27 = swift_allocObject();
    *(v27 + 16) = v4;
    *(v27 + 24) = a3;
    aBlock[4] = sub_2159FC89C;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2159FC8A4;
    aBlock[3] = &block_descriptor_2;
    v28 = _Block_copy(aBlock);
    v29 = v4;
    v30 = a3;

    [v26 _sf_webBookmarksFromDropSession_completionHandler_];
    _Block_release(v28);
    return;
  }

  if (v15 != 3)
  {
    return;
  }

  v16 = [a2 items];
  sub_2159F7DA8(0, &qword_27CA7E2B0);
  v17 = sub_215A705E0();

  if (v17 >> 62)
  {
    if (sub_215A70CD0())
    {
LABEL_13:
      if ((v17 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x216073710](0, v17);
      }

      else
      {
        if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v18 = *(v17 + 32);
      }

      v33 = v18;

      v19 = [v33 _sf_localBookmark];
      if (v19)
      {
        v20 = v19;
        v21 = [v4 bookmarkCollection];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_215A96990;
        *(v22 + 32) = v20;
        sub_2159F7DA8(0, &unk_2811A28A0);
        v23 = v20;
        v31 = sub_215A705D0();

        v24 = [v4 rootFolder];
        v25 = [v24 identifier];

        [(WebBookmarkCollection *)v21 dropBookmarks:v31 inFolderWithID:v25 presentingViewController:a3 isAddingBookmark:0];
        v14 = v31;
        goto LABEL_6;
      }

LABEL_5:
      v14 = v33;
LABEL_6:

      return;
    }
  }

  else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }
}

void sub_2159FC774(int a1, id a2, void *a3)
{
  v5 = [a2 bookmarkCollection];
  sub_2159F7DA8(0, &unk_2811A28A0);
  v6 = sub_215A705D0();
  v7 = [a2 rootFolder];
  v8 = [v7 identifier];

  [(WebBookmarkCollection *)v5 dropBookmarks:v6 inFolderWithID:v8 presentingViewController:a3 isAddingBookmark:1];
  sub_215A2877C();
  v9 = [a2 rootViewController];
  sub_215A6FAC0();
}

uint64_t sub_2159FC8A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_2159F7DA8(0, &unk_2811A28A0);
  v2 = sub_215A705E0();

  v1(v2);
}

Swift::Void __swiftcall BookmarksLibraryItemController.updateListContentConfiguration(_:)(UIListContentConfiguration a1)
{
  v2 = v1;
  v4 = sub_215A6FA60();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2159F7DA8(0, &unk_2811A2530);
  v8 = [v1 rootFolder];
  v9 = [v1 bookmarkCollection];
  v10 = [v9 readingListFolder];

  v11 = sub_215A70A80();
  if (v11)
  {
    sub_215A6FA50();
    sub_215A6FA40();
    (*(v5 + 8))(v7, v4);
    v12 = sub_215A70500();

    [(objc_class *)a1.super.isa setText:v12];

    v13 = sub_215A70500();
    v14 = [objc_opt_self() systemImageNamed_];

    [(objc_class *)a1.super.isa setImage:v14];
  }

  else
  {
    v15 = [v2 rootFolder];
    v16 = [v15 localizedTitle];

    if (!v16)
    {
      sub_215A70540();
      v16 = sub_215A70500();
    }

    [(objc_class *)a1.super.isa setText:v16];

    v17 = sub_215A70500();
    v20 = [objc_opt_self() systemImageNamed_];

    [(objc_class *)a1.super.isa setImage:v20];
    v18 = v20;
  }
}

void sub_2159FCD5C()
{
  v1 = v0;
  v2 = [v0 rootViewController];
  v21 = [v2 navigationController];

  if (v21)
  {
    v3 = [v21 viewControllers];
    sub_2159F7DA8(0, &qword_2811A24F0);
    v4 = sub_215A705E0();

    if (!(v4 >> 62))
    {
LABEL_3:
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_3;
    }
  }

  v5 = sub_215A70CD0();
LABEL_4:

  if (!v5)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_215A96990;
    *(v4 + 32) = [v1 rootViewController];
  }

  v6 = v21;
  if (v4 >> 62)
  {
LABEL_40:
    v7 = sub_215A70CD0();
    v6 = v21;
    if (!v7)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_30;
    }
  }

  v20 = v1;
  v8 = 0;
  v9 = v4 & 0xC000000000000001;
  do
  {
    if (v9)
    {
      v10 = MEMORY[0x216073710](v8, v4);
    }

    else
    {
      if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v10 = *(v4 + 8 * v8 + 32);
    }

    v11 = v10;
    v1 = (v8 + 1);
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    sub_215A6FF90();
    if (swift_dynamicCastClass())
    {
      v12 = sub_215A6FCE0();
      v13 = v12();

      if ((v13 & 1) == 0)
      {

        if (v21)
        {
          v17 = v21;
          v18 = [v20 rootViewController];
        }

        v19 = [v20 rootViewController];
        sub_215A6FAC0();

        return;
      }
    }

    else
    {
    }

    ++v8;
  }

  while (v1 != v7);
  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v7; ++i)
  {
    if (v9)
    {
      v15 = MEMORY[0x216073710](i, v4);
    }

    else
    {
      v15 = *(v4 + 8 * i + 32);
    }

    v16 = v15;
    if (swift_dynamicCastClass())
    {
      sub_215A6FAC0();
    }
  }

  v6 = v21;
LABEL_30:
}

void sub_2159FD134(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_2159F7DA8(0, &unk_2811A2530);
    v11 = [v10 rootFolder];
    v12 = [v10 bookmarkCollection];
    v13 = [v12 readingListFolder];

    LOBYTE(v12) = sub_215A70A80();
    if ((v12 & 1) == 0)
    {
      v18 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v18 = a1 & 0xFFFFFFFFFFFFLL;
      }

      if (!v18)
      {
        v19 = *&v10[OBJC_IVAR___BookmarksLibraryItemController_contentProvider];
        sub_215A28918(a3, 0);
      }

      v20 = *&v10[OBJC_IVAR___BookmarksLibraryItemController_contentProvider];
      v21 = [objc_opt_self() safari_browserDefaults];
      v22 = sub_215A708D0();

      if (v22 == 1)
      {
        v24 = [*(v20 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection) rootBookmark];
        sub_215A3FA7C(a3, v24, a1, a2, 0);
      }

      else if (!v22)
      {
        v23 = [*(v20 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection) rootBookmark];
        sub_215A2C98C(a3, v23, 0, 0, a1, a2, 0);
      }

      goto LABEL_16;
    }

    v14 = [*(*&v10[OBJC_IVAR___BookmarksLibraryItemController_contentProvider] + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_bookmarkCollection) readingListFolder];
    v15 = sub_215A70A80();

    if (v15)
    {
      goto LABEL_6;
    }

    v16 = [objc_opt_self() safari_browserDefaults];
    v17 = sub_215A708D0();

    if (v17 == 1)
    {
      sub_215A3FA7C(a3, a5, a1, a2, 0);
      goto LABEL_16;
    }

    if (!v17)
    {
LABEL_6:
      sub_215A2C98C(a3, a5, 0, 0, a1, a2, 0);
    }

LABEL_16:
  }
}

uint64_t sub_2159FD420(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = [result bookmarkCollection];

    v6 = [v5 bookmarkWithID_];
    if (v6)
    {

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2159FD4DC(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = Strong;
  v4 = swift_unknownObjectUnownedLoadStrong();
  v5 = v4;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_215A96990;
    sub_2159F7DA8(0, &qword_2811A22B8);
    sub_2159F7DA8(0, &unk_2811A2520);
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v8 = v5;
    sub_215A70A90();
    v9 = sub_215A70910();
    v10 = sub_215A70500();
    [v9 setAccessibilityIdentifier_];

    *(v6 + 32) = v9;
  }

  else
  {
    v11 = sub_2159FE92C(v4);
    if (v11)
    {
      v12 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_215A96980;
      *(v6 + 32) = [objc_opt_self() flexibleSpaceItem];
      *(v6 + 40) = v12;
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }
  }

  return v6;
}

uint64_t sub_2159FD704(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = Strong;
  v6 = swift_unknownObjectUnownedLoadStrong();
  v7 = sub_2159FD79C(v6, a1 & 1, a2);

  return v7;
}

uint64_t sub_2159FD79C(char **a1, char a2, uint64_t a3)
{
  v7 = sub_215A6FD60();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_215A6FED0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x277D84F90];
  if ((a2 & 1) == 0)
  {
    return result;
  }

  v64 = v10;
  v65 = v8;
  v66 = v7;
  v67 = a1;
  v68 = v3;
  v71 = MEMORY[0x277D84F90];
  v16 = *(a3 + 16);
  if (v16)
  {
    v19 = *(v12 + 16);
    v17 = v12 + 16;
    v18 = v19;
    v20 = a3 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v21 = *(v17 + 56);
    v69 = MEMORY[0x277D84F90];
    v19(v14, v20, v11);
    while (1)
    {
      v22 = sub_215A6FEB0();
      v23 = (*(v17 - 8))(v14, v11);
      if (v22)
      {
        MEMORY[0x2160730A0](v23);
        if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v69 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_215A70640();
        }

        sub_215A70660();
        v69 = v71;
      }

      v20 += v21;
      if (!--v16)
      {
        break;
      }

      v18(v14, v20, v11);
    }
  }

  else
  {
    v69 = MEMORY[0x277D84F90];
  }

  v24 = v68;
  v25 = [v68 rootViewController];

  v26 = v67;
  if (v25 == v67)
  {
    sub_2159F7DA8(0, &unk_2811A2530);
    v34 = [v24 rootFolder];
    v35 = [v24 bookmarkCollection];
    v36 = [v35 readingListFolder];

    v37 = sub_215A70A80();
    if (v37)
    {
      v38 = v69;
      v70[4] = sub_215A29EE8(v69, v26);
      v39 = sub_215A4095C(v38, 0xD00000000000001ALL, 0x8000000215AC1170);

      v40 = 0;
      v70[5] = v39;
      v41 = MEMORY[0x277D84F90];
      v71 = MEMORY[0x277D84F90];
      while (v40 != 2)
      {
        v42 = v70[v40++ + 4];
        if (v42)
        {
          v43 = v42;
          MEMORY[0x2160730A0]();
          if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_215A70640();
          }

          sub_215A70660();
          v41 = v71;
        }
      }

      v45 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7DF38);
      swift_arrayDestroy();
      return v45;
    }

    v44 = v69;
    if (v69 >> 62)
    {
      if (sub_215A70CD0())
      {
        goto LABEL_26;
      }
    }

    else if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_26:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_215A96990;
      v33 = sub_215A4095C(v44, 0, 0);
      goto LABEL_27;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_215A96990;
    v55 = [v24 bookmarkCollection];
    v56 = [v55 rootBookmark];

    sub_2159F7DA8(0, &qword_2811A22B8);
    v57 = sub_215A70500();
    v58 = [objc_opt_self() systemImageNamed_];

    sub_2159F7DA8(0, &unk_2811A2520);
    v59 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    *(v60 + 24) = v56;
    v61 = v56;
    sub_215A70A90();
    v62 = sub_215A70920();

    result = v54;
    *(v54 + 32) = v62;
    return result;
  }

  v27 = v64;
  sub_215A6FD80();
  v29 = v65;
  v28 = v66;
  if ((*(v65 + 88))(v27, v66) != *MEMORY[0x277D28B60])
  {

    (*(v29 + 8))(v27, v28);
    return MEMORY[0x277D84F90];
  }

  (*(v29 + 96))(v27, v28);
  v30 = *v27;
  v31 = v69;
  if (v69 >> 62)
  {
    if (sub_215A70CD0())
    {
      goto LABEL_15;
    }
  }

  else if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_215A96990;
    v33 = sub_215A4095C(v31, 0, 0);
LABEL_27:

    result = v32;
    *(v32 + 32) = v33;
    return result;
  }

  v46 = [v24 bookmarkCollection];
  v47 = [v46 bookmarkWithID_];

  if (!v47)
  {
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_215A96990;
  sub_2159F7DA8(0, &qword_2811A22B8);
  v49 = sub_215A70500();
  v50 = [objc_opt_self() systemImageNamed_];

  sub_2159F7DA8(0, &unk_2811A2520);
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = swift_allocObject();
  *(v52 + 16) = v51;
  *(v52 + 24) = v47;
  v53 = v47;
  sub_215A70A90();
  *(v48 + 32) = sub_215A70920();

  return v48;
}

void sub_2159FE0AC(void *a1, int64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR___BookmarksLibraryItemController_contentProvider);
    v7 = [v5 rootFolder];
    sub_215A28FB4(a1, a2, v7);
  }
}

BOOL sub_2159FE160(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_215A2E3E8();
    v5 = sub_215A449C4(a1, v4);

    return !v5;
  }

  else
  {
    return 0;
  }
}

id sub_2159FE1F8(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  sub_2159F7DA8(0, &unk_2811A2530);
  v4 = [v3 rootFolder];
  v5 = [v3 bookmarkCollection];
  v6 = [v5 readingListFolder];

  v7 = sub_215A70A80();
  if (v7)
  {
    v8 = [v3 bookmarkCollection];
    v9 = [(WebBookmarkCollection *)v8 dropOperationForReadingListDropSession:a1];

    v3 = v8;
  }

  else
  {
    v10 = [objc_opt_self() safari_browserDefaults];
    v11 = sub_215A708F0();

    if (v11)
    {
      v9 = 0;
    }

    else
    {
      v9 = [objc_opt_self() _sf_operationForDropSession_];
    }
  }

  return v9;
}

id sub_2159FE388(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  sub_2159F7DA8(0, &unk_2811A2530);
  v4 = [v3 rootFolder];
  v5 = [v3 bookmarkCollection];
  v6 = [v5 readingListFolder];

  v7 = sub_215A70A80();
  if (v7)
  {
    v8 = [v3 bookmarkCollection];
    v9 = [(WebBookmarkCollection *)v8 dropOperationForReadingListDropSession:a1];

    v3 = v8;
  }

  else
  {
    v9 = [objc_opt_self() _sf_operationForDropSession_];
  }

  return v9;
}

uint64_t sub_2159FE4DC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [objc_opt_self() safari_browserDefaults];
    v3 = sub_215A708F0();

    return v3 == 0;
  }

  return result;
}

void sub_2159FE56C(void *a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_2159F7DA8(0, &unk_2811A2530);
    v6 = [v5 rootFolder];
    v7 = [v5 bookmarkCollection];
    v8 = [v7 readingListFolder];

    v9 = sub_215A70A80();
    if (v9)
    {
      v10 = [v5 bookmarkCollection];
      v11 = [objc_msgSend(a1 session)];
      swift_unknownObjectRelease();
      if (!v11)
      {
        sub_2159F7DA8(0, &qword_27CA7E2B0);
        sub_215A705E0();
        v11 = sub_215A705D0();
      }

      [(WebBookmarkCollection *)v10 dropDragItemsInReadingList:v11];
    }

    else
    {
      if (a2)
      {
        v10 = a2;
      }

      else
      {
        v10 = [v5 rootFolder];
      }

      v12 = a2;
      v11 = [v5 rootFolder];
      sub_215A29234(a1, v10, v11);
    }
  }
}

void sub_2159FE77C(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_2159F7DA8(0, &unk_2811A2530);
    v4 = [v3 rootFolder];
    v5 = [v3 bookmarkCollection];
    v6 = [v5 readingListFolder];

    v7 = sub_215A70A80();
    if (v7)
    {
      sub_215A70210();

      v8 = sub_215A70220();
      (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
    }

    else
    {
      v10 = sub_215A70220();
      (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
    }
  }

  else
  {
    v9 = sub_215A70220();
    (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }
}

id sub_2159FE92C(void *a1)
{
  v2 = v1;
  v4 = sub_215A6FD60();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([a1 isEditing])
  {
    return 0;
  }

  sub_2159F7DA8(0, &unk_2811A2530);
  v9 = [v1 rootViewController];
  v10 = sub_215A70A80();

  if ((v10 & 1) == 0)
  {
    sub_215A6FD80();
    v23 = (*(v5 + 88))(v7, v4);
    if (v23 == *MEMORY[0x277D28B60])
    {
      (*(v5 + 96))(v7, v4);
      v24 = *v7;
      v25 = [v2 bookmarkCollection];
      v26 = [v25 bookmarkWithID_];

      if (v26)
      {
        v21 = sub_215A29A1C(v26, a1);

        return v21;
      }
    }

    else
    {
      if (v23 == *MEMORY[0x277D28B58])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_215A96990;
        *(v28 + 32) = sub_215A34D78(0);
        sub_2159F7DA8(0, &unk_2811A26B0);
        v29 = sub_215A70A50();
        v30 = sub_215A70500();
        [v29 setAccessibilityIdentifier_];

        sub_2159F7DA8(0, &qword_2811A22B8);
        v31 = sub_215A70500();
        v32 = [objc_opt_self() systemImageNamed_];

        v27 = v29;
        v21 = sub_215A70920();
        [v21 setPreferredMenuElementOrder_];
        goto LABEL_12;
      }

      (*(v5 + 8))(v7, v4);
    }

    return 0;
  }

  v11 = [v1 rootFolder];
  v12 = [v1 bookmarkCollection];
  v13 = [v12 readingListFolder];

  LOBYTE(v12) = sub_215A70A80();
  if ((v12 & 1) == 0)
  {
    v27 = [v1 rootFolder];
    v21 = sub_215A29A1C(v27, a1);
LABEL_12:

    return v21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_215A96A80;
  *(v14 + 32) = sub_215A34D78(1);
  *(v14 + 40) = sub_215A35238();
  *(v14 + 48) = sub_215A40418(a1);
  sub_2159F7DA8(0, &unk_2811A26B0);
  v15 = sub_215A70A50();
  v16 = sub_215A70500();
  [v15 setAccessibilityIdentifier_];

  sub_2159F7DA8(0, &qword_2811A22B8);
  v17 = sub_215A70500();
  v18 = [objc_opt_self() systemImageNamed_];

  v19 = v15;
  v20 = sub_215A70920();
  [v20 setPreferredMenuElementOrder_];

  v21 = v20;
  v22 = sub_215A70500();
  [v21 setAccessibilityIdentifier_];

  return v21;
}

void sub_2159FEF18()
{
  v1 = v0;
  v2 = [v0 rootViewController];
  sub_215A6FAC0();

  sub_2159F7DA8(0, &unk_2811A2530);
  v3 = [v1 rootFolder];
  v4 = [v1 bookmarkCollection];
  v5 = [v4 readingListFolder];

  LOBYTE(v2) = sub_215A70A80();
  if (v2)
  {
    v6 = [v1 bookmarkNavigationControllerDelegate];
    if (v6)
    {
      v7 = v6;
      if ([v6 respondsToSelector_])
      {
        v8 = [v7 bookmarksNavigationControllerCurrentContinuousReadingItem_];
        swift_unknownObjectRelease();
        if (v8)
        {
          v9 = [v8 readingListBookmark];

          if (v9)
          {
            v10 = [v1 rootViewController];
            sub_215A6FAF0();
          }
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

id BookmarksLibraryItemController.init(configuration:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration_];

  return v2;
}

Swift::Void __swiftcall BookmarksLibraryItemController.commitPreview(viewController:)(UIViewController *viewController)
{
  v3 = [v1 configuration];
  v4 = [v3 linkPreviewProvider];

  if (v4)
  {
    [v4 commitLinkPreviewViewController_];

    swift_unknownObjectRelease();
  }
}

void sub_2159FF318(uint64_t a1)
{
  v3 = [v1 configuration];
  v4 = [v3 linkPreviewProvider];

  if (v4)
  {
    [v4 commitLinkPreviewViewController_];

    swift_unknownObjectRelease();
  }
}

void BookmarksLibraryItemController.pushBookmarksViewController(_:)(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;

  v6 = a1;
  sub_215A6FD40();

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v9 = v6;

  sub_215A6FD20();

  v10 = [v2 rootViewController];
  v11 = [v10 navigationController];

  if (v11)
  {
    [v11 pushViewController:v9 animated:1];
  }
}

uint64_t sub_2159FF56C(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = Strong;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_215A96990;
    sub_2159F7DA8(0, &qword_2811A22B8);
    sub_2159F7DA8(0, &unk_2811A2520);
    v9 = swift_allocObject();
    *(v9 + 16) = a4;
    v10 = a4;
    sub_215A70A90();
    v11 = sub_215A70910();
    v12 = sub_215A70500();
    [v11 setAccessibilityIdentifier_];

    *(v8 + 32) = v11;
  }

  else
  {
    v13 = sub_2159FE92C(a4);
    if (v13)
    {
      v14 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_215A96980;
      *(v8 + 32) = [objc_opt_self() flexibleSpaceItem];
      *(v8 + 40) = v14;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }
  }

  return v8;
}

uint64_t sub_2159FF790(char a1, uint64_t a2, uint64_t a3, char **a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = Strong;
  v9 = sub_2159FD79C(a4, a1 & 1, a2);

  return v9;
}

void BookmarksLibraryItemController.reconfigureItem(_:)()
{
  v1 = [v0 rootViewController];
  v2 = [v1 navigationController];

  if (v2)
  {
    v3 = [v2 viewControllers];
    sub_2159F7DA8(0, &qword_2811A24F0);
    v4 = sub_215A705E0();

    if (!(v4 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_14;
      }

      goto LABEL_4;
    }
  }

  v5 = sub_215A70CD0();
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x216073710](i, v4);
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    sub_215A6FF90();
    if (swift_dynamicCastClass())
    {
      sub_215A6FC20();
    }
  }

LABEL_14:
}

Swift::Void __swiftcall BookmarksLibraryItemController.recentlySavedBookmarksDidChange()()
{
  v1 = v0;
  v2 = sub_215A6FD60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 rootViewController];
  v7 = [v6 navigationController];

  if (v7)
  {
    v16 = [v7 topViewController];

    if (v16)
    {
      sub_215A6FF90();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = v8;
        sub_215A6FD80();
        v10 = (*(v3 + 88))(v5, v2);
        v11 = *MEMORY[0x277D28B58];
        (*(v3 + 8))(v5, v2);
        if (v10 == v11)
        {
          sub_215A6FAC0();
        }

        else
        {
          v13 = v16;
          v14 = [v1 rootViewController];

          if (v9 == v14)
          {
            sub_215A6FAC0();
          }
        }
      }

      else
      {
        v12 = v16;
      }
    }
  }
}

id sub_2159FFBE0()
{
  v1 = [v0 rootViewController];

  return v1;
}

uint64_t (*sub_2159FFC18(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x216073710](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2159FFE98;
  }

  __break(1u);
  return result;
}

void (*sub_2159FFCAC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x216073710](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2159FFD2C;
  }

  __break(1u);
  return result;
}

unint64_t sub_2159FFD34()
{
  result = qword_2811A24B0;
  if (!qword_2811A24B0)
  {
    type metadata accessor for BookmarksLibraryItemController(0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811A24B0);
  }

  return result;
}

uint64_t objectdestroy_27Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_5Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void BrowserController.windowScene(_:didActivateWebClip:)()
{
  v1 = sub_215A6F940();
  [v0 activateWebClipWithID_];
}

void sub_2159FFF00()
{
  v1 = sub_215A6F940();
  [v0 activateWebClipWithID_];
}

id sub_2159FFF9C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_215A00020(char *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, SEL *a7)
{
  v11 = *&a1[*a6];
  v12 = a3;
  v13 = a4;
  swift_unknownObjectRetain();
  v14 = a1;

  v11(a5);

  v15.receiver = v14;
  v15.super_class = type metadata accessor for SFMenuPresentingButton();
  objc_msgSendSuper2(&v15, *a7, v12, v13, a5);

  swift_unknownObjectRelease();
}

id sub_215A00250()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFMenuPresentingButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LibraryContentController.isSelectingItem.getter()
{
  v1 = [v0 libraryViewController];
  v2 = v1[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_isSelectingItem];

  return v2;
}

id LibraryContentController.viewController.getter()
{
  v1 = [v0 navigationController];

  return v1;
}

__CFString *sub_215A004E4()
{
  v25[5] = @"BookmarksCollection";
  v26 = @"ReadingListCollection";
  v27 = @"HistoryCollection";
  v1 = @"BookmarksCollection";
  v2 = @"ReadingListCollection";
  v3 = @"HistoryCollection";
  v4 = [v0 navigationController];
  v5 = [v4 viewControllers];

  sub_2159F7DA8(0, &qword_2811A24F0);
  v6 = sub_215A705E0();

  v7 = v1;
  v8 = [v0 savedSection];
  v9 = [v8 viewControllerForCollectionType_];

  if (v9 && (v25[0] = v9, MEMORY[0x28223BE20](v10), v24 = v25, v11 = sub_215A26410(sub_215A033FC, v23, v6), v9, (v11 & 1) != 0) || (v7, v7 = v26, v12 = [v0 savedSection], v13 = objc_msgSend(v12, sel_viewControllerForCollectionType_, v7), v12, v13) && (v25[0] = v13, MEMORY[0x28223BE20](v14), v24 = v25, v15 = sub_215A26410(sub_215A033FC, v23, v6), v13, (v15 & 1) != 0) || (v7, v7 = v27, v16 = objc_msgSend(v0, sel_savedSection), v17 = objc_msgSend(v16, sel_viewControllerForCollectionType_, v7), v16, v17) && (v25[0] = v17, MEMORY[0x28223BE20](v18), v24 = v25, v19 = sub_215A26410(sub_215A033FC, v23, v6), v17, (v19 & 1) != 0))
  {

    type metadata accessor for BookmarksCollectionType(0);
    swift_arrayDestroy();
  }

  else
  {

    type metadata accessor for BookmarksCollectionType(0);
    swift_arrayDestroy();
    v20 = [v0 configuration];
    v21 = [v20 libraryItemOpenHandler];

    if (v21)
    {
      v7 = [v21 activeLibraryType];
      swift_unknownObjectRelease();
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

void sub_215A008CC(id a1)
{
  v2 = [v1 bookmarksCollectionType];
  if (v2)
  {
    if (!a1)
    {
LABEL_16:

      return;
    }

    v34 = v2;
    v3 = sub_215A70540();
    v5 = v4;
    if (v3 == sub_215A70540() && v5 == v6)
    {

LABEL_15:
      v2 = a1;
      goto LABEL_16;
    }

    v8 = sub_215A70D90();

    v2 = a1;
    if (v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v2 = a1;
    if (!a1)
    {
      return;
    }
  }

  v35 = v2;
  v9 = [v1 savedSection];
  v10 = [v9 viewControllerForCollectionType_];

  if (v10)
  {
    v11 = [v1 navigationController];
    v12 = [v11 viewControllers];

    sub_2159F7DA8(0, &qword_2811A24F0);
    v13 = sub_215A705E0();

    if (v13 >> 62)
    {
      v14 = sub_215A70CD0();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = [v1 navigationController];

    a1 = [v1 navigationController];
    [a1 pushViewController:v10 animated:v14 == 1];

    goto LABEL_15;
  }

  v16 = sub_215A70540();
  v18 = v17;
  if (v16 == sub_215A70540() && v18 == v19)
  {
  }

  else
  {
    v21 = sub_215A70D90();

    if ((v21 & 1) == 0)
    {
      v22 = sub_215A70540();
      v24 = v23;
      if (v22 == sub_215A70540() && v24 == v25)
      {

        goto LABEL_34;
      }

      v28 = sub_215A70D90();

      if (v28)
      {
LABEL_34:
        v29 = [v1 cloudTabsSection];
        v30 = [v29 itemControllers];

        sub_2159F7DA8(0, &qword_2811A2570);
        v31 = sub_215A705E0();

        if (v31 >> 62)
        {
          if (sub_215A70CD0())
          {
            goto LABEL_36;
          }
        }

        else if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_36:
          if ((v31 & 0xC000000000000001) != 0)
          {
            v32 = MEMORY[0x216073710](0, v31);
          }

          else
          {
            if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return;
            }

            v32 = *(v31 + 32);
          }

          v33 = v32;
          goto LABEL_44;
        }

        v33 = 0;
LABEL_44:

        [v33 didSelectItem];

        v2 = v35;
        goto LABEL_16;
      }

LABEL_40:
      v2 = v35;
      goto LABEL_16;
    }
  }

  v26 = [v1 configuration];
  v27 = [v26 libraryItemOpenHandler];

  if (!v27)
  {
    goto LABEL_40;
  }

  [v27 openSharedWithYouLibrary];

  swift_unknownObjectRelease();
}

void sub_215A00E0C(char a1, id a2)
{
  v3 = v2;
  if (a1)
  {
    v4 = [a2 uuid];
    v5 = sub_215A70540();
    v7 = v6;

    v8 = [v3 expandedTabGroupUUIDs];
    sub_215A70740();

    sub_215A52F8C(&v16, v5, v7);
  }

  else
  {
    v9 = [a2 uuid];
    v10 = sub_215A70540();
    v12 = v11;

    v13 = [v3 expandedTabGroupUUIDs];
    v14 = sub_215A70740();

    v16 = v14;
    sub_215A530DC(v10, v12);
  }

  v15 = sub_215A70730();

  [v3 setExpandedTabGroupUUIDs_];
}

void sub_215A01020(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t LibraryContentController.isTabGroupExpanded(_:)(void *a1)
{
  v3 = [v1 expandedTabGroupUUIDs];
  v4 = sub_215A70740();

  v5 = [a1 uuid];
  v6 = sub_215A70540();
  v8 = v7;

  LOBYTE(v5) = sub_21583CECC(v6, v8, v4);

  return v5 & 1;
}

uint64_t LibraryContentController.setExpanded(_:for:)(char a1, uint64_t a2)
{
  [v2 willSetExpanded:a1 & 1 for:a2];
  v3 = [v2 libraryViewController];
  if ([v3 isViewLoaded])
  {
    v4 = &v3[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_reloadFlags];
    v5 = v3[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_reloadFlags + 1];
    *v4 = 1;
    v4[1] = v5;
    v6 = [v3 view];
    if (!v6)
    {
      __break(1u);
      return MEMORY[0x2821F9730]();
    }

    v7 = v6;
    [v6 setNeedsLayout];
  }

  v8 = [v2 libraryViewController];
  v9 = &v8[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_reloadFlags];
  if (v8[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_reloadFlags] == 1)
  {
    v10 = v9[1];
    *v9 = 0;
    sub_21583DBA4(1, v10);
  }

  return MEMORY[0x2821F9730]();
}

Swift::Void __swiftcall LibraryContentController.updateAndScrollToCurrentSelectedItem()()
{
  v1 = [v0 savedSection];
  v2 = [v1 libraryItemControllerForCollectionType_];

  [v2 updateAndScrollToCurrentSelectedItem];
}

Swift::Void __swiftcall LibraryContentController.selectTabInEditMode(uuidString:)(Swift::String uuidString)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7DF78);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v22 - v4;
  v6 = sub_215A6FA10();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 navigationController];
  v11 = [v10 topViewController];

  v12 = [v2 libraryViewController];
  if (v11)
  {
    v22[0] = v12;
    sub_2159F7DA8(0, &qword_2811A24F0);
    v13 = sub_215A70A80();

    if (v13)
    {
      v14 = [v2 libraryViewController];
      [v14 setEditing_];

      v15 = [v2 libraryViewController];
      v16 = sub_215A70500();
      v17 = [v2 itemForTabWith_];

      v18 = sub_21583D558();
      v22[1] = v17;
      sub_215A702D0();

      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {

        sub_21583F14C(v5, &qword_27CA7DF78);
      }

      else
      {
        (*(v7 + 32))(v9, v5, v6);
        [v15 loadViewIfNeeded];
        v19 = *&v15[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController__collectionView];
        if (v19)
        {
          v20 = v19;
          v21 = sub_215A6F9B0();
          [v20 selectItemAtIndexPath:v21 animated:0 scrollPosition:0];

          (*(v7 + 8))(v9, v6);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  else
  {
  }
}

uint64_t sub_215A019AC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_215A70540();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

void sub_215A01A18(char a1)
{
  v2 = v1;
  v4 = [v1 libraryViewController];
  v5 = [v4 isEditing];

  if (v5)
  {
    sub_2159F7DA8(0, &qword_2811A22B8);
    sub_2159F7DA8(0, &unk_2811A2520);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = v6;
    sub_215A70A90();
    v7 = sub_215A70910();
    v8 = [v2 libraryViewController];
    v9 = [v8 navigationItem];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_215A96990;
    *(v10 + 32) = v7;
    v11 = v7;
    v16 = sub_215A705D0();

    [v9 setRightBarButtonItems:v16 animated:a1 & 1];
  }

  else
  {
    v12 = [v2 libraryViewController];
    v9 = [v12 navigationItem];

    v13 = [v2 sidebarUIProxy];
    if ([v13 respondsToSelector_])
    {
      v14 = [v13 trailingSidebarButtonItems];
      swift_unknownObjectRelease();
      sub_2159F7DA8(0, &qword_2811A22B8);
      sub_215A705E0();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_2159F7DA8(0, &qword_2811A22B8);
    v16 = sub_215A705D0();

    [v9 setRightBarButtonItems:v16 animated:a1 & 1];
  }
}

void sub_215A01D0C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong libraryViewController];

    [v2 setEditing_];
  }
}

uint64_t LibraryContentController.currentCollection.getter()
{
  v1 = [v0 bookmarksCollectionType];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_215A70540();

  return v3;
}

void LibraryContentController.currentCollection.setter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_215A70500();
  }

  else
  {
    v3 = 0;
  }

  [v2 setBookmarksCollectionType_];
}

Swift::Void __swiftcall LibraryContentController.setNeedsUpdateSelection()()
{
  v1 = [v0 libraryViewController];
  v1[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_needsUpdateSelection] = 1;
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    [v2 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall LibraryContentController.updateSelection()()
{
  v1 = [v0 libraryViewController];
  sub_21583C554();
}

Swift::Void __swiftcall LibraryContentController.reloadSectionControllersIfNeeded()()
{
  v1 = [v0 libraryViewController];
  v2 = &v1[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_reloadFlags];
  if (v1[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_reloadFlags] == 1)
  {
    v3 = v2[1];
    *v2 = 0;
    sub_21583DBA4(1, v3);
  }

  MEMORY[0x2821F9730]();
}

Swift::Void __swiftcall LibraryContentController.setNeedsReloadForProfileSwitcher()()
{
  v1 = [v0 libraryViewController];
  [v0 updateProfilePickerFor_];
}

Swift::Void __swiftcall LibraryContentController.didSwitchProfile()()
{
  v1 = v0;
  v2 = sub_215A70730();
  [v1 setExpandedTabGroupUUIDs_];

  v3 = [v1 libraryViewController];
  [v1 updateProfilePickerFor_];

  v4 = [v1 cloudTabsSection];
  sub_215A034B8();

  v5 = [v1 libraryViewController];
  if ([v5 isViewLoaded])
  {
    *&v5[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_reloadFlags] = 257;
    v6 = [v5 view];
    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = v6;
    [v6 setNeedsLayout];
  }

  v8 = [v1 bookmarksCollectionType];
  if (v8)
  {
    v9 = v8;
    v10 = sub_215A70540();
    v12 = v11;
    if (v10 == sub_215A70540() && v12 == v13)
    {
    }

    else
    {
      v14 = sub_215A70D90();

      if ((v14 & 1) == 0)
      {
        return;
      }
    }

    v15 = [v1 navigationController];
  }
}

Swift::Void __swiftcall LibraryContentController.toggleEditBookmarks()()
{
  v1 = sub_215A6FD60();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 savedSection];
  v6 = [v5 itemControllers];

  sub_2159F7DA8(0, &qword_2811A2570);
  v7 = sub_215A705E0();

  v26 = v2;
  if (v7 >> 62)
  {
LABEL_17:
    v8 = sub_215A70CD0();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x216073710](v9, v7);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            objc_opt_self();
            [swift_dynamicCastObjCClassUnconditional() toggleEditBookmarks];
            v12 = v27;

            return;
          }
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_17;
          }

          v10 = *(v7 + 8 * v9 + 32);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_12;
          }
        }

        v27 = v10;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        ++v9;
      }

      while (v11 != v8);
    }
  }

  v13 = [v0 navigationController];
  v14 = [v13 viewControllers];

  sub_2159F7DA8(0, &qword_2811A24F0);
  v15 = sub_215A705E0();

  v28 = v15;
  if (v15 >> 62)
  {
    goto LABEL_33;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_34:
    v22 = 0;
    goto LABEL_35;
  }

  while (1)
  {
    while (1)
    {
      if (__OFSUB__(v16--, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if ((v15 & 0xC000000000000001) != 0)
      {
        break;
      }

      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_31;
      }

      if (v16 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v18 = *(v15 + 32 + 8 * v16);
        goto LABEL_25;
      }

LABEL_32:
      __break(1u);
LABEL_33:
      v16 = sub_215A70CD0();
      if (!v16)
      {
        goto LABEL_34;
      }
    }

    v18 = MEMORY[0x216073710](v16, v15);
LABEL_25:
    v19 = v18;
    sub_215A6FF90();
    v20 = swift_dynamicCastClass();

    if (v20)
    {
      break;
    }

    if (!v16)
    {
      goto LABEL_34;
    }
  }

  MEMORY[0x28223BE20](v21);
  *(&v26 - 2) = &v28;
  v29 = v16;
  sub_215A02FD8(&v29, &v30);
  v22 = v30;
LABEL_35:

  if (v22)
  {
    sub_215A6FF90();
    v23 = swift_dynamicCastClassUnconditional();
    v24 = v22;
    sub_215A6FD80();
    v25 = v26;
    if ((*(v26 + 88))(v4, v1) == *MEMORY[0x277D28B60])
    {
      [v23 setEditing_];
    }

    else
    {

      (*(v25 + 8))(v4, v1);
    }
  }
}

id LibraryContentController.tabHoverPreviewController.getter()
{
  v1 = [v0 libraryViewController];
  v2 = *&v1[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_tabHoverPreviewController];

  return v2;
}

id LibraryContentController.viewForTabHoverPreviewItem(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DF80);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = [v2 configuration];
  v11 = [objc_allocWithZone(MEMORY[0x277D7B578]) initWithDeviceIdentifier_];
  v12 = [a1 UUID];
  if (v12)
  {
    v13 = v12;
    sub_215A6F950();

    v14 = sub_215A6F960();
    (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  }

  else
  {
    v14 = sub_215A6F960();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  }

  sub_215A02FF8(v7, v9);
  sub_215A6F960();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_21583F14C(v9, &unk_27CA7DF80);
    v16 = 0;
  }

  else
  {
    sub_215A6F930();
    (*(v15 + 8))(v9, v14);
    v16 = sub_215A70500();
  }

  v17 = [objc_allocWithZone(MEMORY[0x277D7B560]) initWithUUID:v16 deviceIdentifier:0];

  v18 = [objc_allocWithZone(TabLibraryItemController) initWithConfiguration:v10 tabGroup:v11 tab:v17];
  v19 = [v2 libraryViewController];
  v20 = sub_215A0DBD4(v18);

  return v20;
}

void *sub_215A02F14(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v4)
  {
    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_215A02F6C@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x216073710](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_215A02FF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DF80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void _sSo24LibraryContentControllerC14MobileSafariUIE010navigationC0_8willShow8animatedySo012UINavigationC0C_So06UIViewC0CSbtF_0(void *a1, void *a2)
{
  v3 = v2;
  sub_2159F7DA8(0, &unk_2811A2530);
  v6 = [v2 libraryViewController];
  v7 = sub_215A70A80();

  if (v7)
  {
    [v3 updateNavigationItemForRootWithAnimated_];
LABEL_5:
    v25 = [v3 libraryViewController];
    v26 = [v25 navigationItem];

    v27 = sub_215A70500();
    [v26 setAccessibilityIdentifier_];

    return;
  }

  [a1 setToolbarHidden:0 animated:1];
  v8 = [v3 savedSection];
  [v8 updateToolbarIfNeeded];

  v9 = [v3 sidebarUIProxy];
  if ([v9 respondsToSelector_])
  {
    v10 = [v9 topNavigationBar];
    swift_unknownObjectRelease();
    v11 = [a1 navigationBar];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v29.origin.x = v13;
    v29.origin.y = v15;
    v29.size.width = v17;
    v29.size.height = v19;
    Width = CGRectGetWidth(v29);
    v21 = CGSizeMake(Width);
    v22 = v10;
    [v22 setFrame_];
    [v22 setHidden_];
    v23 = [objc_allocWithZone(MEMORY[0x277D76118]) initWithContentView_];

    v24 = [a2 navigationItem];
    [v24 _setTopPalette_];

    goto LABEL_5;
  }

  swift_unknownObjectRelease();
}

void sub_215A03394(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong willSetExpanded:a2 & 1 for:a1];
}

void sub_215A03464()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong updateNavigationItemForRootWithAnimated_];
}

void sub_215A034B8()
{
  v1 = [v0 configuration];
  v2 = [v1 tabGroupProvider];

  if (v2 && (v3 = [v2 activeProfileIdentifier], swift_unknownObjectRelease(), v3))
  {
    sub_215A70540();
  }

  else
  {
    sub_215A70540();
  }

  v4 = [objc_opt_self() sharedApplication];
  if (v4)
  {
    v5 = v4;
    v6 = sub_215A70500();

    v7 = [v5 recentsStoreForProfileWithIdentifier_];

    v8 = *&v0[OBJC_IVAR____TtC14MobileSafariUI33CloudTabsLibrarySectionController_recentsStore];
    *&v0[OBJC_IVAR____TtC14MobileSafariUI33CloudTabsLibrarySectionController_recentsStore] = v7;
  }

  else
  {
    __break(1u);
  }
}

id sub_215A035FC(uint64_t a1, uint64_t a2)
{
  result = *&v2[OBJC_IVAR____TtC14MobileSafariUI33CloudTabsLibrarySectionController_recentsStore];
  if (result)
  {
    v6 = [result availableDevices];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DFB8);
    v7 = sub_215A705E0();

    v26 = v2;
    if (v7 >> 62)
    {
      goto LABEL_22;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      while (1)
      {
        v9 = 0;
        while ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x216073710](v9, v7);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_18:
            __break(1u);
LABEL_19:

LABEL_20:

            v22 = [v26 configuration];
            v23 = type metadata accessor for CloudDeviceLibraryItemController();
            v24 = objc_allocWithZone(v23);
            *&v24[OBJC_IVAR____TtC14MobileSafariUI32CloudDeviceLibraryItemController_device] = v10;
            v27.receiver = v24;
            v27.super_class = v23;
            v25 = objc_msgSendSuper2(&v27, sel_initWithConfiguration_, v22);

            return v25;
          }

LABEL_9:
          v12 = [v10 uuid];
          if (v12)
          {
            v13 = v12;
            v14 = a1;
            v15 = a2;
            v16 = sub_215A70540();
            v18 = v17;

            v19 = v16;
            a2 = v15;
            if (v19 == v14 && v18 == v15)
            {
              goto LABEL_19;
            }

            a1 = v14;
            v21 = sub_215A70D90();

            if (v21)
            {
              goto LABEL_20;
            }
          }

          swift_unknownObjectRelease();
          ++v9;
          if (v11 == v8)
          {
            goto LABEL_23;
          }
        }

        if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_22:
        v8 = sub_215A70CD0();
        if (!v8)
        {
          goto LABEL_23;
        }
      }

      v10 = *(v7 + 8 * v9 + 32);
      swift_unknownObjectRetain();
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_18;
      }

      goto LABEL_9;
    }

LABEL_23:

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_215A03840()
{
  v1 = OBJC_IVAR____TtC14MobileSafariUI33CloudTabsLibrarySectionController____lazy_storage____headerItemController;
  v2 = *&v0[OBJC_IVAR____TtC14MobileSafariUI33CloudTabsLibrarySectionController____lazy_storage____headerItemController];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC14MobileSafariUI33CloudTabsLibrarySectionController____lazy_storage____headerItemController];
  }

  else
  {
    v4 = [v0 configuration];
    v5 = [objc_allocWithZone(HeaderLibraryItemController) initWithConfiguration:v4 headerType:1];

    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_215A038E8()
{
  result = *(v0 + OBJC_IVAR____TtC14MobileSafariUI33CloudTabsLibrarySectionController_recentsStore);
  if (result)
  {
    v2 = [result availableDevices];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DFB8);
    v3 = sub_215A705E0();

    if (v3 >> 62)
    {
      v4 = sub_215A70CD0();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v4)
    {
      return sub_215A03840();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_215A039A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudTabsLibrarySectionController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_215A03A20(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E058);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  sub_215A07074(a1, &v11 - v4, &qword_27CA7E058);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E050);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_21583F14C(a1, &qword_27CA7E058);
    sub_21583F14C(v5, &qword_27CA7E058);
    v12 = 0u;
    v13 = 0u;
  }

  else
  {
    *(&v13 + 1) = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
    (*(v7 + 32))(boxed_opaque_existential_1, v5, v6);
    sub_21583F14C(a1, &qword_27CA7E058);
  }

  v9 = OBJC_IVAR___HistoryListMenuProvider__dataSourceContinuation;
  swift_beginAccess();
  sub_215A070DC(&v12, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_215A03BD0(void *a1)
{
  v2 = sub_215A6FA60();
  *&v84 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v73 = v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_215A6F9A0();
  v4 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v76 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_215A6F910();
  v6 = *(v79 - 8);
  v7 = MEMORY[0x28223BE20](v79);
  v75 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v78 = v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E070);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v64 - v12;
  v14 = MEMORY[0x277D84F90];
  v94 = MEMORY[0x277D84F90];
  v15 = a1;
  sub_215A707E0();

  v16 = *(v11 + 44);
  *&v13[v16] = 0;
  v74 = OBJC_IVAR___HistoryListMenuProvider_inlineRecentHistoryLimit;
  v17 = sub_215A6F830();
  v18 = sub_215A07310();
  v83 = v17;
  sub_215A70B50();
  if (!*(&v86 + 1))
  {
    v81 = v14;
    goto LABEL_43;
  }

  v67 = v2;
  v19 = 0;
  v70 = (v6 + 32);
  v69 = (v4 + 8);
  v68 = (v6 + 8);
  v66 = (v84 + 8);
  v81 = MEMORY[0x277D84F90];
  v72 = &v86;
  v20 = 7;
  v21 = &unk_27CA7E080;
  v71 = xmmword_215A96990;
  v82 = v16;
  while (2)
  {
    v22 = v19;
    while (1)
    {
      sub_215A07368(&aBlock, &v90);
      *&aBlock = v22;
      result = sub_215A07368(&v90, (&aBlock + 8));
      v19 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_48;
      }

      *&v13[v16] = v19;
      v91 = aBlock;
      v92 = v86;
      v93 = v87;
      if (!v87)
      {
        goto LABEL_44;
      }

      v84 = aBlock;
      sub_215A07368((&v91 + 8), &v90);
      if (v20 < v84)
      {
        __swift_destroy_boxed_opaque_existential_0(&v90);
        sub_21583F14C(v13, &qword_27CA7E070);
        return v81;
      }

      sub_215A07378(&v90, &aBlock);
      sub_2159F7DA8(0, v21);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0(&v90);
LABEL_5:
      sub_215A70B50();
      ++v22;
      if (!*(&v86 + 1))
      {
        goto LABEL_43;
      }
    }

    v24 = v18;
    v25 = v21;
    v26 = v89;
    v27 = [v89 historyItems];
    v28 = [v27 count];

    if (!v28)
    {
      __swift_destroy_boxed_opaque_existential_0(&v90);

      v21 = v25;
      v18 = v24;
      v16 = v82;
      goto LABEL_5;
    }

    v29 = [v26 historyItems];
    v30 = [v26 lastVisitedDate];
    v31 = v80;
    if (!v30)
    {
LABEL_22:
      v42 = [v26 title];
      v81 = sub_215A70540();
      v65 = v43;

      v44 = v29;
      v45 = sub_215A063F8(v44);
      *&v84 = v44;

      v46 = sub_215A44B14(v45);

      v64[1] = sub_2159F7DA8(0, &unk_2811A26B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
      v64[0] = swift_allocObject();
      *(v64[0] + 16) = v71;
      v47 = swift_allocObject();
      *(v47 + 16) = v46;
      *(v47 + 24) = v31;
      v87 = sub_215A073D4;
      v88 = v47;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v86 = sub_2159F92E8;
      *(&v86 + 1) = &block_descriptor_23;
      v48 = _Block_copy(&aBlock);
      v49 = objc_opt_self();
      v50 = v31;
      v51 = [v49 elementWithProvider_];
      _Block_release(v48);

      *(v64[0] + 32) = v51;
      sub_215A70A50();
      MEMORY[0x2160730A0]();
      if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_215A70640();
      }

      sub_215A70660();

      __swift_destroy_boxed_opaque_existential_0(&v90);
LABEL_25:
      v81 = v94;
      goto LABEL_26;
    }

    *&v84 = v29;
    v32 = v75;
    v33 = v30;
    sub_215A6F8E0();

    v34 = v78;
    (*v70)(v78, v32, v79);
    v35 = [objc_opt_self() currentCalendar];
    v36 = v76;
    sub_215A6F980();

    LOBYTE(v35) = sub_215A6F970();
    result = (*v69)(v36, v77);
    if ((v35 & 1) == 0)
    {
      (*v68)(v34, v79);
      v31 = v80;
      v29 = v84;
      goto LABEL_22;
    }

    v37 = *&v80[v74];
    if (v37 < 0)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v38 = v84;
    v39 = sub_215A06A24(v38, v37);
    *&v84 = v38;

    v40 = sub_215A047D0(v39);

    if (v40)
    {
      if (v40 >> 62)
      {
        if (!sub_215A70CD0())
        {
          goto LABEL_29;
        }

LABEL_18:
        v65 = v37;
        v81 = sub_215A048DC(0, 0xE000000000000000, 1, v40);

        MEMORY[0x2160730A0](v41);
        if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_215A70640();
        }

        sub_215A70660();
        v81 = v94;
        v37 = v65;
      }

      else
      {
        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

LABEL_29:
      }
    }

    v52 = v84;
    v53 = v37;
    v54 = v52;
    v55 = sub_215A0672C(v52, v53);

    v56 = sub_215A047D0(v55);

    if (!v56)
    {

      (*v68)(v78, v79);
      goto LABEL_41;
    }

    v57 = v79;
    if (v56 >> 62)
    {
      if (!sub_215A70CD0())
      {
        goto LABEL_40;
      }

LABEL_33:
      *&v84 = v54;
      v58 = v73;
      sub_215A6FA50();
      v81 = sub_215A6FA40();
      v60 = v59;
      (*v66)(v58, v67);
      v81 = sub_215A048DC(v81, v60, 0, v56);

      MEMORY[0x2160730A0](v61);
      if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_215A70640();
      }

      sub_215A70660();

      (*v68)(v78, v79);
      result = __swift_destroy_boxed_opaque_existential_0(&v90);
      if (!__OFSUB__(v20--, 1))
      {
        goto LABEL_25;
      }

LABEL_49:
      __break(1u);
      return result;
    }

    if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_33;
    }

LABEL_40:

    (*v68)(v78, v57);
LABEL_41:
    __swift_destroy_boxed_opaque_existential_0(&v90);
LABEL_26:
    v21 = v25;
    v18 = v24;
    sub_215A70B50();
    v16 = v82;
    if (*(&v86 + 1))
    {
      continue;
    }

    break;
  }

LABEL_43:
  sub_21583F14C(&aBlock, &qword_27CA7E2E0);
  v91 = 0u;
  v92 = 0u;
  v93 = 0;
LABEL_44:
  v63 = v81;
  sub_21583F14C(v13, &qword_27CA7E070);
  return v63;
}

uint64_t sub_215A047D0(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_215A70C80();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_215A07378(i, v5);
    sub_2159F7DA8(0, &qword_27CA7E098);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_215A70C60();
    sub_215A70C90();
    sub_215A70CA0();
    sub_215A70C70();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_215A048DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2159F7DA8(0, &unk_2811A26B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_215A96990;
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = v4;
  aBlock[4] = sub_215A07638;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2159F92E8;
  aBlock[3] = &block_descriptor_46;
  v8 = _Block_copy(aBlock);
  v9 = objc_opt_self();

  v10 = v4;
  v11 = [v9 elementWithProvider_];
  _Block_release(v8);

  *(v6 + 32) = v11;
  return sub_215A70A50();
}

uint64_t sub_215A04A7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E060);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_215A706E0();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_215A706C0();

  v12 = a4;

  v13 = sub_215A706B0();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = a3;
  v14[5] = v12;
  v14[6] = a1;
  v14[7] = a2;
  sub_215A20960(0, 0, v10, &unk_215A96C08, v14);
}

uint64_t sub_215A04BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_215A706C0();
  v7[6] = sub_215A706B0();
  v9 = sub_215A70670();
  v7[7] = v9;
  v7[8] = v8;

  return MEMORY[0x2822009F8](sub_215A04C70, v9, v8);
}

uint64_t sub_215A04C70()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  v0[9] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[10] = v4;
  v5 = sub_2159F7DA8(0, &qword_27CA7E098);
  v6 = sub_2159F7DA8(0, &unk_2811A25B0);
  *v4 = v0;
  v4[1] = sub_215A04D90;
  v7 = v0[2];

  return MEMORY[0x2821AAF50](&unk_215A96C18, v2, v7, v5, v6);
}

void sub_215A04D90(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {

    v4[11] = a1;
    v5 = v4[7];
    v6 = v4[8];

    MEMORY[0x2822009F8](sub_215A04ED0, v5, v6);
  }
}

uint64_t sub_215A04ED0()
{
  v1 = v0[11];
  v2 = v0[4];

  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_215A04F54(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[3] = a1;
  v2[4] = v3;
  v2[5] = sub_215A706C0();
  v2[6] = sub_215A706B0();

  return MEMORY[0x2822009F8](sub_215A04FD4, 0, 0);
}

uint64_t sub_215A04FD4()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7E0A8);
  *v3 = v0;
  v3[1] = sub_215A050DC;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0x286E6F6369766166, 0xED0000293A726F66, sub_215A07564, v2, v4);
}

uint64_t sub_215A050DC()
{

  return MEMORY[0x2822009F8](sub_215A051F4, 0, 0);
}

uint64_t sub_215A051F4()
{
  *(v0 + 72) = *(v0 + 16);
  v2 = sub_215A70670();

  return MEMORY[0x2822009F8](sub_215A05274, v2, v1);
}

id sub_215A05274()
{
  v1 = *(v0 + 32);

  result = [objc_opt_self() titleForHistoryItem_];
  if (result)
  {
    v3 = result;
    v4 = *(v0 + 72);
    sub_215A70540();

    if (!v4)
    {
      v5 = sub_215A70500();
      v6 = [objc_opt_self() systemImageNamed_];
    }

    v7 = *(v0 + 32);
    v8 = *(v0 + 72);
    v9 = [v7 urlString];
    if (v9)
    {
      v10 = v9;
      sub_215A70540();
    }

    v11 = *(v0 + 24);
    sub_2159F7DA8(0, &qword_2811A25C0);
    v12 = sub_215A70B30();

    *v11 = v12;
    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_215A05460(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E0B8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &aBlock - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E0C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &aBlock - v9;
  v11 = [a2 url];
  if (v11)
  {
    v12 = v11;
    sub_215A6F850();

    v13 = sub_215A6F870();
    v14 = *(v13 - 8);
    (*(v14 + 56))(v10, 0, 1, v13);
    v15 = *MEMORY[0x277D4A8E8];
    v16 = *(MEMORY[0x277D4A8E8] + 8);
    v17 = sub_215A6F840();
    (*(v14 + 8))(v10, v13);
  }

  else
  {
    v18 = sub_215A6F870();
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
    v17 = 0;
    v15 = *MEMORY[0x277D4A8E8];
    v16 = *(MEMORY[0x277D4A8E8] + 8);
  }

  v19 = [objc_allocWithZone(MEMORY[0x277D4A730]) initWithURL:v17 iconSize:1 fallbackType:{v15, v16}];

  v20 = [objc_opt_self() sharedSiteMetadataManager];
  (*(v5 + 16))(v7, a1, v4);
  v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v22 = swift_allocObject();
  (*(v5 + 32))(v22 + v21, v7, v4);
  v28 = sub_215A0756C;
  v29 = v22;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v27 = sub_215A2A290;
  *(&v27 + 1) = &block_descriptor_39;
  v23 = _Block_copy(&aBlock);

  v24 = [v20 registerOneTimeRequest:v19 priority:2 responseHandler:v23];
  _Block_release(v23);

  if (v24)
  {
    sub_215A70B70();

    swift_unknownObjectRelease();
  }

  else
  {

    aBlock = 0u;
    v27 = 0u;
  }

  return sub_21583F14C(&aBlock, &qword_27CA7E2E0);
}

void sub_215A0581C(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = a1;
  }

  [v2 favicon];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E0B8);
  sub_215A70680();
}

uint64_t HistoryListMenuProvider.makeMenuElements(for:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_215A96990;
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v8[4] = sub_215A05B54;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2159F92E8;
  v8[3] = &block_descriptor_4;
  v4 = _Block_copy(v8);
  v5 = v0;

  v6 = [v2 elementWithUncachedProvider_];
  _Block_release(v4);
  *(v1 + 32) = v6;
  return v1;
}

uint64_t sub_215A059E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E060);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_215A706E0();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_215A706C0();

  v9 = sub_215A706B0();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  v10[5] = a1;
  v10[6] = a2;

  sub_215A20960(0, 0, v6, &unk_215A96BE0, v10);
}

uint64_t sub_215A05B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v6[9] = sub_215A706C0();
  v6[10] = sub_215A706B0();
  v8 = sub_215A70670();
  v6[11] = v8;
  v6[12] = v7;

  return MEMORY[0x2822009F8](sub_215A05C04, v8, v7);
}

uint64_t sub_215A05C04()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_215A706B0();
    v0[14] = v3;
    v4 = swift_task_alloc();
    v0[15] = v4;
    *(v4 + 16) = v2;
    v5 = swift_task_alloc();
    v0[16] = v5;
    v6 = sub_2159F7DA8(0, &qword_27CA7E068);
    *v5 = v0;
    v5[1] = sub_215A05D9C;
    v7 = MEMORY[0x277D85700];

    return MEMORY[0x2822007B8](v0 + 5, v3, v7, 0xD000000000000016, 0x8000000215AC1770, sub_215A07308, v4, v6);
  }

  else
  {
    v8 = v0[7];

    v8(MEMORY[0x277D84F90]);
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_215A05D9C()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_215A05EFC, v3, v2);
}

uint64_t sub_215A05EFC()
{
  v1 = v0[13];
  v2 = v0[7];

  v3 = v0[5];
  sub_215A03BD0(v3);
  v2();

  v4 = v0[1];

  return v4();
}

id sub_215A05FA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E058);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E050);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_215A03A20(v6);
  v9 = sub_215A06C6C();
  v10 = [objc_allocWithZone(SFHistoryViewDataSource) initWithHistory_];

  v11 = OBJC_IVAR___HistoryListMenuProvider_dataSource;
  v12 = *(a2 + OBJC_IVAR___HistoryListMenuProvider_dataSource);
  *(a2 + OBJC_IVAR___HistoryListMenuProvider_dataSource) = v10;

  result = *(a2 + v11);
  if (result)
  {
    return [result setDelegate_];
  }

  return result;
}

void __swiftcall HistoryListMenuProvider.init()(HistoryListMenuProvider *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id HistoryListMenuProvider.init()()
{
  *(v0 + OBJC_IVAR___HistoryListMenuProvider_inlineRecentHistoryLimit) = 18;
  *(v0 + OBJC_IVAR___HistoryListMenuProvider_dataSource) = 0;
  v1 = (v0 + OBJC_IVAR___HistoryListMenuProvider__dataSourceContinuation);
  *v1 = 0u;
  v1[1] = 0u;
  v3.super_class = HistoryListMenuProvider;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_215A063F8(void *a1)
{
  v2 = sub_215A6F830();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 count];
  v7 = v6;
  if (v6)
  {
    if (v6 < 1)
    {
      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E090);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 1;
      }

      v8[2] = v7;
      v8[3] = 2 * (v10 >> 5);
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v11 = v8[3];

  result = sub_215A707E0();
  if (v7 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v13 = v11 >> 1;
  v14 = v8 + 4;
  if (v7)
  {
    v13 -= v7;
    sub_215A07310();
    do
    {
      result = sub_215A70B50();
      if (!v34)
      {
        goto LABEL_38;
      }

      sub_215A07368(&v33, v14);
      v14 += 2;
    }

    while (--v7);
  }

  v30 = v3;
  sub_215A07310();
  sub_215A70B50();
  if (v32)
  {
    while (1)
    {
      result = sub_215A07368(&v31, &v33);
      if (!v13)
      {
        v15 = v8[3];
        if (((v15 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E090);
        v18 = swift_allocObject();
        v19 = _swift_stdlib_malloc_size(v18);
        v20 = v19 - 32;
        if (v19 < 32)
        {
          v20 = v19 - 1;
        }

        v21 = v20 >> 5;
        v18[2] = v17;
        v18[3] = 2 * (v20 >> 5);
        v22 = (v18 + 4);
        v23 = v8[3] >> 1;
        if (v8[2])
        {
          v24 = v8 + 4;
          if (v18 != v8 || v22 >= v24 + 32 * v23)
          {
            memmove(v18 + 4, v24, 32 * v23);
          }

          v8[2] = 0;
        }

        v14 = (v22 + 32 * v23);
        v13 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;

        v8 = v18;
      }

      v25 = __OFSUB__(v13--, 1);
      if (v25)
      {
        break;
      }

      sub_215A07368(&v33, v14);
      v14 += 2;
      sub_215A70B50();
      if (!v32)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_30:
  (*(v30 + 8))(v5, v2);
  result = sub_21583F14C(&v31, &qword_27CA7E2E0);
  v26 = v8[3];
  if (v26 < 2)
  {
    return v8;
  }

  v27 = v26 >> 1;
  v25 = __OFSUB__(v27, v13);
  v28 = v27 - v13;
  if (!v25)
  {
    v8[2] = v28;
    return v8;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_215A0672C(uint64_t a1, uint64_t a2)
{
  v3 = sub_215A6F830();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  sub_215A707E0();
  v10 = a2 - 1;
  if (a2 >= 1)
  {
    sub_215A07310();
    do
    {
      sub_215A70B50();
      v11 = v36;
      sub_21583F14C(&v35, &qword_27CA7E2E0);
      if (v11)
      {
        v12 = v10 == 0;
      }

      else
      {
        v12 = 1;
      }

      --v10;
    }

    while (!v12);
  }

  v32 = v4;
  (*(v4 + 32))(v9, v7, v3);
  sub_215A07310();
  sub_215A70B50();
  v13 = MEMORY[0x277D84F90];
  v14 = 0;
  if (v34)
  {
    v15 = (MEMORY[0x277D84F90] + 32);
    while (1)
    {
      result = sub_215A07368(&v33, &v35);
      if (!v14)
      {
        v17 = v13[3];
        if (((v17 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_30;
        }

        v18 = v17 & 0xFFFFFFFFFFFFFFFELL;
        if (v18 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v18;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E090);
        v20 = swift_allocObject();
        v21 = _swift_stdlib_malloc_size(v20);
        v22 = v21 - 32;
        if (v21 < 32)
        {
          v22 = v21 - 1;
        }

        v23 = v22 >> 5;
        v20[2] = v19;
        v20[3] = 2 * (v22 >> 5);
        v24 = (v20 + 4);
        v25 = v13[3] >> 1;
        if (v13[2])
        {
          v26 = v13 + 4;
          if (v20 != v13 || v24 >= v26 + 32 * v25)
          {
            memmove(v20 + 4, v26, 32 * v25);
          }

          v13[2] = 0;
        }

        v15 = (v24 + 32 * v25);
        v14 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - v25;

        v13 = v20;
      }

      v27 = __OFSUB__(v14--, 1);
      if (v27)
      {
        break;
      }

      sub_215A07368(&v35, v15);
      v15 += 2;
      sub_215A70B50();
      if (!v34)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_25:
  (*(v32 + 8))(v9, v3);
  result = sub_21583F14C(&v33, &qword_27CA7E2E0);
  v28 = v13[3];
  if (v28 < 2)
  {
    return v13;
  }

  v29 = v28 >> 1;
  v27 = __OFSUB__(v29, v14);
  v30 = v29 - v14;
  if (!v27)
  {
    v13[2] = v30;
    return v13;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_215A06A24(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E0A0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - v5;
  sub_215A707E0();
  v7 = *(v4 + 44);
  *&v6[v7] = a2;
  v8 = MEMORY[0x277D84F90];
  if (a2)
  {
    sub_215A6F830();
    sub_215A07310();
    v9 = 0;
    v10 = v8 + 4;
    v11 = a2 - 1;
    while (1)
    {
      *&v6[v7] = v11;
      sub_215A70B50();
      if (!*(&v28 + 1))
      {
        break;
      }

      result = sub_215A07368(&v27, v29);
      if (!v9)
      {
        v13 = v8[3];
        if (((v13 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_27;
        }

        v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E090);
        v16 = swift_allocObject();
        v17 = _swift_stdlib_malloc_size(v16);
        v18 = v17 - 32;
        if (v17 < 32)
        {
          v18 = v17 - 1;
        }

        v19 = v18 >> 5;
        v16[2] = v15;
        v16[3] = 2 * (v18 >> 5);
        v20 = (v16 + 4);
        v21 = v8[3] >> 1;
        if (v8[2])
        {
          v22 = v8 + 4;
          if (v16 != v8 || v20 >= v22 + 32 * v21)
          {
            memmove(v16 + 4, v22, 32 * v21);
          }

          v8[2] = 0;
        }

        v10 = (v20 + 32 * v21);
        v9 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - v21;

        v8 = v16;
      }

      v23 = __OFSUB__(v9--, 1);
      if (v23)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      sub_215A07368(v29, v10);
      v10 += 2;
      if (--v11 == -1)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v9 = 0;
LABEL_21:
    v27 = 0u;
    v28 = 0u;
  }

  sub_21583F14C(v6, &qword_27CA7E0A0);
  result = sub_21583F14C(&v27, &qword_27CA7E2E0);
  v24 = v8[3];
  if (v24 < 2)
  {
    return v8;
  }

  v25 = v24 >> 1;
  v23 = __OFSUB__(v25, v9);
  v26 = v25 - v9;
  if (!v23)
  {
    v8[2] = v26;
    return v8;
  }

LABEL_28:
  __break(1u);
  return result;
}

id sub_215A06C6C()
{
  sub_2159F7DA8(0, &qword_27CA7E0C8);
  v0 = [swift_getObjCClassFromMetadata() sharedApplication];
  objc_opt_self();
  v1 = swift_dynamicCastObjCClassUnconditional();
  v2 = [v1 lastActiveProfileIdentifier];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 historyController];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 historyForProfileIdentifier:v3 loadIfNeeded:1];

      if (v6)
      {
LABEL_8:

        return v6;
      }
    }

    else
    {
    }
  }

  result = [objc_opt_self() sharedHistory];
  if (result)
  {
    v6 = result;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_215A06D90(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E050);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - v6 + 16;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E058);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v9);
  v13 = v20 - v12 + 16;
  v14 = OBJC_IVAR___HistoryListMenuProvider__dataSourceContinuation;
  swift_beginAccess();
  sub_215A07074(v2 + v14, v20, &qword_27CA7E2E0);
  if (v20[3])
  {
    v15 = swift_dynamicCast();
    v16 = *(v5 + 56);
    v16(v13, v15 ^ 1u, 1, v4);
  }

  else
  {
    sub_21583F14C(v20, &qword_27CA7E2E0);
    v16 = *(v5 + 56);
    v16(v13, 1, 1, v4);
  }

  if ((*(v5 + 48))(v13, 1, v4))
  {
    sub_21583F14C(v13, &qword_27CA7E058);
  }

  else
  {
    (*(v5 + 16))(v7, v13, v4);
    sub_21583F14C(v13, &qword_27CA7E058);
    v20[0] = a1;
    v17 = a1;
    sub_215A70680();
    (*(v5 + 8))(v7, v4);
  }

  v16(v11, 1, 1, v4);
  sub_215A03A20(v11);
  v18 = *(v2 + OBJC_IVAR___HistoryListMenuProvider_dataSource);
  *(v2 + OBJC_IVAR___HistoryListMenuProvider_dataSource) = 0;
}

uint64_t sub_215A07074(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_215A070DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E2E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_215A0714C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_215A07214;

  return sub_215A05B64(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_215A07214()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_215A07310()
{
  result = qword_27CA7E078;
  if (!qword_27CA7E078)
  {
    sub_215A6F830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA7E078);
  }

  return result;
}

_OWORD *sub_215A07368(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_215A07378(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_215A073E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_215A0763C;

  return sub_215A04BD4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_215A074B4(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_215A07214;

  return sub_215A04F54(a1, a2);
}

void sub_215A0756C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E0B8);

  sub_215A0581C(a1);
}

uint64_t objectdestroy_19Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_215A07654(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_addedToLabel;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v10 = OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_contentView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v11 = OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_chevronImageView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v12 = OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_folderIconView;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D28F50]) init];
  v13 = OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_folderNameLabel;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v4[OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_folder] = a1;
  v14 = &v4[OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_onTapHandler];
  *v14 = a2;
  *(v14 + 1) = a3;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v15 = a1;

  v16 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_215A077C4();

  return v16;
}

void sub_215A077C4()
{
  v1 = v0;
  v2 = sub_215A6FA60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() _sf_preferredFontForTextStyle_symbolicTraits_];
  [v0 setMaximumContentSizeCategory_];
  v7 = *&v0[OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_contentView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v8 = *&v0[OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_addedToLabel];
  sub_215A6FA50();
  sub_215A6FA40();
  (*(v3 + 8))(v5, v2);
  v9 = sub_215A70500();

  [v8 setText_];

  v10 = v6;
  [v8 setFont_];
  v11 = objc_opt_self();
  v12 = [v11 secondaryLabelColor];
  [v8 setTextColor_];

  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v90 = v8;
  [v8 setAdjustsFontForContentSizeCategory_];
  v13 = *&v1[OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_folderIconView];
  v14 = [v11 labelColor];
  [v13 setTintColor_];

  [v13 setImageContentMode_];
  [v13 _setContinuousCornerRadius_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = v1;
  v16 = *&v1[OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_folderNameLabel];
  [v16 setFont_];
  v88 = v10;

  v17 = [v11 labelColor];
  [v16 setTextColor_];

  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = v16;
  [v16 setAdjustsFontForContentSizeCategory_];
  v19 = sub_215A70500();
  v20 = [objc_opt_self() systemImageNamed_];

  if (v20)
  {
    v21 = [objc_opt_self() configurationWithFont:v88 scale:1];
    v22 = [v20 imageByApplyingSymbolConfiguration_];
    [*&v15[OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_chevronImageView] setImage_];
  }

  v23 = *&v15[OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_chevronImageView];
  v24 = [v11 labelColor];
  [v23 setTintColor_];

  [v23 setContentMode_];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  v89 = v23;
  [v23 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  v25 = v90;
  [v7 addSubview_];
  [v7 addSubview_];
  v85 = v18;
  [v7 addSubview_];
  [v7 addSubview_];
  v87 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_215A96C50;
  v27 = [v7 topAnchor];
  v28 = [v15 &selRef_unlockPrivateBrowsing];
  v29 = [v27 constraintEqualToAnchor_];

  *(v26 + 32) = v29;
  v30 = [v7 bottomAnchor];
  v31 = [v15 &selRef_browserControllerContentContainerViewFrameDidChange_ + 5];
  v32 = [v30 constraintEqualToAnchor_];

  *(v26 + 40) = v32;
  v33 = [v7 leadingAnchor];
  v86 = v15;
  v34 = [v15 &selRef_isPrivacyProxySetToTrackersAndWebsites + 1];
  v35 = [v33 constraintEqualToAnchor_];

  *(v26 + 48) = v35;
  v36 = [v7 trailingAnchor];
  v37 = [v15 &selRef_unregisterBarView_ + 4];
  v38 = [v36 constraintEqualToAnchor_];

  *(v26 + 56) = v38;
  v39 = [v13 widthAnchor];
  v40 = [v39 constraintEqualToConstant_];

  *(v26 + 64) = v40;
  v41 = [v13 heightAnchor];
  v42 = [v41 constraintEqualToConstant_];

  *(v26 + 72) = v42;
  v43 = v25;
  v44 = [v25 centerYAnchor];
  v45 = [v7 centerYAnchor];
  v46 = [v44 constraintEqualToAnchor_];

  *(v26 + 80) = v46;
  v47 = [v13 centerYAnchor];
  v48 = [v7 centerYAnchor];
  v49 = [v47 constraintEqualToAnchor_];

  *(v26 + 88) = v49;
  v50 = v13;
  v51 = v85;
  v52 = [v85 centerYAnchor];
  v53 = [v7 centerYAnchor];
  v54 = [v52 constraintEqualToAnchor_];

  *(v26 + 96) = v54;
  v55 = [v89 centerYAnchor];
  v56 = [v7 centerYAnchor];
  v57 = [v55 constraintEqualToAnchor_];

  *(v26 + 104) = v57;
  v58 = [v43 leadingAnchor];
  v59 = [v7 leadingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59 constant:22.0];

  *(v26 + 112) = v60;
  v61 = [v50 leadingAnchor];
  v62 = [v43 trailingAnchor];
  v63 = [v61 constraintEqualToAnchor:v62 constant:4.0];

  *(v26 + 120) = v63;
  v64 = v51;
  v65 = [v51 &selRef_isPrivacyProxySetToTrackersAndWebsites + 1];
  v66 = [v50 trailingAnchor];
  v67 = [v65 constraintEqualToAnchor:v66 constant:4.0];

  *(v26 + 128) = v67;
  v68 = v89;
  v69 = [v89 &selRef_isPrivacyProxySetToTrackersAndWebsites + 1];
  v70 = [v64 trailingAnchor];
  v71 = [v69 constraintEqualToAnchor:v70 constant:4.0];

  *(v26 + 136) = v71;
  v72 = [v68 trailingAnchor];
  v73 = [v7 trailingAnchor];
  v74 = [v72 constraintEqualToAnchor:v73 constant:-22.0];

  *(v26 + 144) = v74;
  v75 = v90;
  v76 = [v90 topAnchor];
  v77 = [v7 topAnchor];
  v78 = [v76 constraintGreaterThanOrEqualToAnchor:v77 constant:15.0];

  *(v26 + 152) = v78;
  v79 = [v75 bottomAnchor];
  v80 = [v7 bottomAnchor];
  v81 = [v79 constraintLessThanOrEqualToAnchor:v80 constant:-15.0];

  *(v26 + 160) = v81;
  sub_215A08A24();
  v82 = sub_215A705D0();

  [v87 activateConstraints_];

  v83 = v86;
  sub_215A083D8();
  v84 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v83 action:sel_didTapToast];
  [v83 addGestureRecognizer_];
}

id sub_215A083D8()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_folderNameLabel];
  v3 = OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_folder;
  v4 = [*&v1[OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_folder] localizedTitle];
  if (!v4)
  {
    sub_215A70540();
    v4 = sub_215A70500();
  }

  [v2 setText_];

  if (([*&v1[v3] folderType] || (v5 = objc_msgSend(*&v1[v3], sel_identifier), v5 == *MEMORY[0x277D7B510])) && (v6 = *&v1[v3], v7 = sub_215A70790(), v6, v7))
  {
    v8 = *&v1[OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_folderIconView];
    [v8 setCustomImageInset_];
    v9 = objc_opt_self();
    v10 = v7;
    v11 = [v9 systemBlueColor];
    v12 = [v11 colorWithAlphaComponent_];

    [v8 setImage:v10 withBackgroundColor:v12];
    v13 = [v9 systemBlueColor];
    [v8 setTintColor_];
  }

  else
  {
    v14 = *&v1[OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_folderIconView];
    v15 = *&v1[v3];
    v16 = objc_opt_self();
    v17 = v15;
    v18 = [v16 secondarySystemFillColor];
    [v14 setBookmark:v17 withBackgroundColor:v18];

    [v14 setCustomImageInset_];
    [v14 setTintColor_];
  }

  return [v1 invalidateIntrinsicContentSize];
}

double sub_215A0868C(double a1, double a2)
{
  [*(v2 + OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_addedToLabel) sizeThatFits_];
  v6 = v5;
  [*(v2 + OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_folderNameLabel) sizeThatFits_];
  v8 = v7;
  [*(v2 + OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_chevronImageView) sizeThatFits_];
  return v6 + 24.0 + v8 + v9 + 12.0 + 44.0;
}

void sub_215A08920()
{
  v1 = OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_addedToLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_contentView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v3 = OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_chevronImageView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v4 = OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_folderIconView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D28F50]) init];
  v5 = OBJC_IVAR____TtC14MobileSafariUI18AddedBookmarkToast_folderNameLabel;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_215A70CB0();
  __break(1u);
}

unint64_t sub_215A08A24()
{
  result = qword_2811A2478;
  if (!qword_2811A2478)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811A2478);
  }

  return result;
}

id sub_215A08B5C()
{
  v1 = v0;
  v2 = sub_215A6F910();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___BackgroundTaskExpirationObserver_shouldPrepareBackgroundTaskExpiration;
  v1[OBJC_IVAR___BackgroundTaskExpirationObserver_shouldPrepareBackgroundTaskExpiration] = 1;
  v7 = [v1 delegate];
  if (v7)
  {
    [v7 didChangeBackgroundTaskExpirationPreparation_];
    swift_unknownObjectRelease();
  }

  result = [v1 delegate];
  if (result)
  {
    v9 = result;
    sub_215A6F8F0();
    sub_215A6F8A0();
    v11 = v10;
    (*(v3 + 8))(v5, v2);
    [v9 bacgkroundTaskWillExpireWithTotalBackgroundTime_];
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t type metadata accessor for BackgroundTaskExpirationObserver()
{
  result = qword_27CA7E120;
  if (!qword_27CA7E120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA7E120);
  }

  return result;
}

void sub_215A09038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [*(Strong + OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_manager) barRegistration:Strong didReceiveTapForBarItem:a3];
  }
}

id sub_215A09188(uint64_t a1)
{
  v2 = v1;
  v4 = sub_215A70AF0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  v11 = OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration12LeadingToken_buttons;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (*(v12 + 16) && (v13 = sub_215828F04(a1), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);

    return v15;
  }

  else
  {
    v35 = v5;
    v17 = SFSystemImageNameForBarItemFilled();
    v36 = v4;
    if (v17)
    {
      v18 = v17;
      v19 = [objc_opt_self() systemImageNamed_];

      v20 = v19;
    }

    else
    {
      v19 = 0;
    }

    v21 = SFAccessibilityTitleForBarItem();
    sub_215A70540();

    sub_2159F7DA8(0, &unk_2811A2520);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = a1;
    v24 = sub_215A70A90();
    v25 = OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_enabledItems;
    swift_beginAccess();
    if (!sub_215828F0C(a1, *(v2 + v25)))
    {
      [v24 setAttributes_];
    }

    sub_215A70AE0();
    v26 = [v24 image];
    sub_215A70AD0();
    v27 = [objc_opt_self() clearColor];
    v28 = sub_215A70AB0();
    sub_215A70110();
    v28(v38, 0);
    sub_2159F7DA8(0, &unk_2811A26A0);
    v30 = v35;
    v29 = v36;
    (*(v35 + 16))(v8, v10, v36);
    v31 = sub_215A70B00();
    [v31 setPreferredMenuElementOrder_];
    [v31 addAction:v24 forControlEvents:0x2000];
    swift_beginAccess();
    v32 = v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v2 + v11);
    *(v2 + v11) = 0x8000000000000000;
    sub_215A3AE28(v32, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + v11) = v37;
    swift_endAccess();

    (*(v30 + 8))(v10, v29);
    return v32;
  }
}

unint64_t sub_215A095A8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_items);
  v7 = *(v6 + 16);
  v8 = (v6 + 32);
  while (v7)
  {
    v9 = *v8++;
    --v7;
    if (v9 == a1)
    {
      if (a2)
      {
        swift_beginAccess();
        sub_2158283F4(&v14, a1);
      }

      else
      {
        swift_beginAccess();
        sub_215828C20(a1);
      }

      swift_endAccess();
      break;
    }
  }

  v10 = OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration12LeadingToken_buttons;
  result = swift_beginAccess();
  v12 = *(v3 + v10);
  if (*(v12 + 16))
  {
    result = sub_215828F04(a1);
    if (v13)
    {
      return [*(*(v12 + 56) + 8 * result) setEnabled_];
    }
  }

  return result;
}

uint64_t sub_215A09858()
{
}

char *sub_215A098FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7E210);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  *(v4 + OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration13TrailingToken____lazy_storage___button) = 0;
  v15 = (v4 + OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration13TrailingToken_menuPresentationHandler);
  *v15 = CGSizeMake;
  v15[1] = 0;
  v16 = sub_215A0ACB8(a1, a2, a3, a4);
  v17 = *&v16[OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_buttonStack];
  v18 = v16;
  v19 = v17;
  v20 = sub_215A09BC4();
  [*&v19[OBJC_IVAR____TtC14MobileSafariUI18SFMinibarButtonBar_stackView] addArrangedSubview_];

  v21 = &v19[OBJC_IVAR____TtC14MobileSafariUI18SFMinibarButtonBar_layoutSizeCache];
  *(v21 + 4) = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v21[40] = 1;

  v22 = OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration13TrailingToken____lazy_storage___button;
  v23 = *&v18[OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration13TrailingToken____lazy_storage___button];
  v24 = sub_215A09EA0();
  [v23 setMenu_];

  [*&v18[v22] setPreferredMenuElementOrder_];
  [*&v18[v22] setShowsMenuAsPrimaryAction_];
  v25 = *&v18[v22];
  sub_215A70B10();
  v26 = sub_215A70AF0();
  if ((*(*(v26 - 8) + 48))(v14, 1, v26))
  {
    sub_215A0AE54(v14, v12);
    sub_215A70B20();

    sub_215A0AEC4(v14);
  }

  else
  {
    v27 = [*&v18[v22] menu];
    if (v27)
    {
      v28 = v27;
      v29 = [v27 image];
    }

    sub_215A70AD0();
    sub_215A70B20();
  }

  return v18;
}

id sub_215A09BC4()
{
  v1 = v0;
  v2 = sub_215A70AF0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v18[-v7];
  v9 = OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration13TrailingToken____lazy_storage___button;
  v10 = *(v0 + OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration13TrailingToken____lazy_storage___button);
  if (v10)
  {
    v11 = *(v0 + OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration13TrailingToken____lazy_storage___button);
  }

  else
  {
    sub_215A70AE0();
    v12 = [objc_opt_self() clearColor];
    v13 = sub_215A70AB0();
    sub_215A70110();
    v13(v18, 0);
    type metadata accessor for SFMenuPresentingButton();
    (*(v3 + 16))(v6, v8, v2);
    v14 = sub_215A70B00();
    (*(v3 + 8))(v8, v2);
    v15 = *(v1 + v9);
    *(v1 + v9) = v14;
    v11 = v14;

    v10 = 0;
  }

  v16 = v10;
  return v11;
}

uint64_t sub_215A09D90(uint64_t a1, uint64_t a2)
{
  v5 = sub_215A09BC4();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = &v5[OBJC_IVAR____TtC14MobileSafariUI22SFMenuPresentingButton_menuWillDisplayHandler];
  *v7 = sub_215A0BB64;
  v7[1] = v6;

  v8 = *(v2 + OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration13TrailingToken____lazy_storage___button);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = (v8 + OBJC_IVAR____TtC14MobileSafariUI22SFMenuPresentingButton_menuWillEndHandler);
  *v10 = sub_215A0BB94;
  v10[1] = v9;

  v11 = (v2 + OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration13TrailingToken_menuPresentationHandler);
  *v11 = a1;
  v11[1] = a2;
}

uint64_t sub_215A09EA0()
{
  v1 = v0;
  v2 = sub_215A6FA60();
  v60 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v58 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D84F90];
  v66 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_215A96990;
  v6 = SFSystemImageNameForBarItemFilled();
  v57 = v2;
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() systemImageNamed_];

    v9 = v8;
  }

  else
  {
    v8 = 0;
  }

  v10 = SFAccessibilityTitleForBarItem();
  sub_215A70540();

  v11 = sub_2159F7DA8(0, &unk_2811A2520);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = 6;
  v62 = v11;
  v14 = sub_215A70A90();
  v15 = OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_enabledItems;
  swift_beginAccess();
  v61 = v15;
  if (!sub_215828F0C(6, *(v1 + v15)))
  {
    [v14 setAttributes_];
  }

  v16 = sub_2159F7DA8(0, &unk_2811A26B0);
  *(v5 + 32) = v14;
  v17 = sub_215A0B548();
  *&v63 = v5;
  sub_215A2A6D8(v17);
  v59 = v16;
  sub_215A70A50();
  MEMORY[0x2160730A0]();
  if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    sub_215A70660();
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_215A96980;
    v55 = sub_2159F7DA8(0, &qword_2811A25C0);
    v18 = v58;
    sub_215A6FA50();
    v54 = sub_215A6FA40();
    v53 = v19;
    v20 = v60[1];
    v21 = v57;
    v20(v18, v57);
    v22 = sub_215A70500();
    v23 = objc_opt_self();
    v24 = [v23 systemImageNamed_];

    v63 = 0u;
    v64 = 0u;
    v25 = sub_215A70B30();
    v26 = v56;
    *(v56 + 32) = v25;
    sub_215A6FA50();
    sub_215A6FA40();
    v54 = v27;
    v20(v18, v21);
    v28 = sub_215A70500();
    v60 = v23;
    v29 = [v23 systemImageNamed_];

    v63 = 0u;
    v64 = 0u;
    *(v26 + 40) = sub_215A70B30();
    sub_215A70A50();
    MEMORY[0x2160730A0]();
    if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_215A70640();
    }

    sub_215A70660();
    v30 = *(v1 + OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_items);
    v65 = v4;
    v31 = *(v30 + 16);
    if (!v31)
    {
      break;
    }

    v32 = 0;
    while (v32 < *(v30 + 16))
    {
      v33 = *(v30 + 32 + 8 * v32);
      if (v33 != 6)
      {
        v34 = SFSystemImageNameForBarItemFilled();
        if (v34)
        {
          v35 = v34;
          v36 = [v60 systemImageNamed_];

          v37 = v36;
        }

        else
        {
          v36 = 0;
        }

        v38 = SFAccessibilityTitleForBarItem();
        sub_215A70540();

        v39 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v40 = swift_allocObject();
        *(v40 + 16) = v39;
        *(v40 + 24) = v33;
        v41 = sub_215A70A90();
        v42 = *(v1 + v61);
        if (*(v42 + 16) && (sub_215A70E20(), MEMORY[0x216073910](v33), v43 = sub_215A70E50(), v44 = -1 << *(v42 + 32), v45 = v43 & ~v44, ((*(v42 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) != 0))
        {
          v46 = ~v44;
          while (*(*(v42 + 48) + 8 * v45) != v33)
          {
            v45 = (v45 + 1) & v46;
            if (((*(v42 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
LABEL_11:
          [v41 setAttributes_];
        }

        MEMORY[0x2160730A0]();
        if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_215A70640();
        }

        sub_215A70660();
        v4 = v65;
      }

      if (++v32 == v31)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_31:
    sub_215A70640();
  }

LABEL_27:
  v47 = sub_215A70A50();
  [v47 setPreferredElementSize_];
  v48 = v47;
  MEMORY[0x2160730A0]();
  if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_215A70640();
  }

  sub_215A70660();
  v49 = sub_215A70500();
  v50 = [v60 systemImageNamed_];

  v51 = sub_215A70A50();
  return v51;
}

void sub_215A0A7C8(uint64_t a1, char a2)
{
  v4 = *(v2 + OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_items);
  v5 = *(v4 + 16);
  v6 = (v4 + 32);
  while (v5)
  {
    v7 = *v6++;
    --v5;
    if (v7 == a1)
    {
      if (a2)
      {
        swift_beginAccess();
        sub_2158283F4(v19, a1);
      }

      else
      {
        swift_beginAccess();
        sub_215828C20(a1);
      }

      swift_endAccess();
      break;
    }
  }

  v8 = sub_215A09BC4();
  v9 = *(v4 + 16);
  if (v9)
  {
    v10 = OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_enabledItems;
    swift_beginAccess();
    v11 = 0;
    while (1)
    {
      if (v11 >= *(v4 + 16))
      {
        __break(1u);
        return;
      }

      v12 = *(v2 + v10);
      if (*(v12 + 16))
      {
        v13 = *(v4 + 32 + 8 * v11);
        sub_215A70E20();
        MEMORY[0x216073910](v13);
        v14 = sub_215A70E50();
        v15 = -1 << *(v12 + 32);
        v16 = v14 & ~v15;
        if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          break;
        }
      }

LABEL_10:
      if (++v11 == v9)
      {
        goto LABEL_19;
      }
    }

    v17 = ~v15;
    while (*(*(v12 + 48) + 8 * v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v18 = 1;
  }

  else
  {
LABEL_19:
    v18 = 0;
  }

  [v8 setEnabled_];
}

uint64_t sub_215A0AAB4()
{
}

id sub_215A0AB10(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

SFMinibarRegistration __swiftcall SFMinibarRegistration.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_215A0ACB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_buttonStack;
  type metadata accessor for SFMinibarButtonBar();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_enabledItems] = MEMORY[0x277D84FA0];
  v10 = OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_primaryActionIdentifier;
  *&v4[v10] = sub_215A70500();
  v4[OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_tapPerformsFirstItem] = 0;
  *&v4[OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_items] = a2;
  *&v4[OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_manager] = a1;
  v11 = &v4[OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_sizeUpdateHandler];
  *v11 = a3;
  v11[1] = a4;
  v21.receiver = v4;
  v21.super_class = _s5TokenCMa();

  v12 = a1;

  v13 = objc_msgSendSuper2(&v21, sel_init);
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = (a2 + 32);
    v16 = v13;
    do
    {
      v17 = *v15++;
      sub_2158283F4(&v20, v17);
      --v14;
    }

    while (v14);
  }

  else
  {
    v18 = v13;
  }

  swift_endAccess();

  return v13;
}

uint64_t sub_215A0AE54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7E210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_215A0AEC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7E210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_215A0AF2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = sub_215A70AF0();
  v9 = *(v63 - 8);
  v10 = MEMORY[0x28223BE20](v63);
  v62 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v61 = &v57 - v12;
  v13 = OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration12LeadingToken_buttons;
  v14 = MEMORY[0x277D84F90];
  *(v4 + v13) = sub_215A4102C(MEMORY[0x277D84F90]);
  v15 = a2;
  p_prots = &OBJC_PROTOCOL___SFHistoryViewDataSourceDelegate.prots;
  *(v4 + OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration12LeadingToken_enabledButtons) = v14;

  v17 = sub_215A0ACB8(a1, v15, a3, a4);
  v64 = OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_buttonStack;
  v65 = v17;
  v18 = *&v17[OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_buttonStack];
  v19 = v17;
  [v18 setClipsToBounds_];
  v20 = *(v15 + 16);
  if (v20)
  {
    v68 = v14;
    sub_215A70C80();
    v21 = OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration12LeadingToken_buttons;
    v22 = OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_enabledItems;
    swift_beginAccess();
    v59 = v22;
    swift_beginAccess();
    v57 = (v9 + 8);
    v58 = (v9 + 16);
    v23 = 32;
    v60 = v15;
    do
    {
      v32 = *(v15 + v23);
      v33 = *&v19[v21];
      if (*(v33 + 16) && (v34 = sub_215828F04(*(v15 + v23)), (v35 & 1) != 0))
      {
        v36 = *(*(v33 + 56) + 8 * v34);
      }

      else
      {
        v37 = SFSystemImageNameForBarItemFilled();
        if (v37)
        {
          v38 = v37;
          v39 = [objc_opt_self() systemImageNamed_];

          v40 = v39;
        }

        else
        {
          v39 = 0;
        }

        v41 = SFAccessibilityTitleForBarItem();
        sub_215A70540();

        sub_2159F7DA8(0, &unk_2811A2520);
        v42 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v43 = swift_allocObject();
        *(v43 + 16) = v42;
        *(v43 + 24) = v32;
        v44 = sub_215A70A90();
        if (!sub_215828F0C(v32, *&v19[v59]))
        {
          [v44 setAttributes_];
        }

        v24 = v61;
        sub_215A70AE0();
        v25 = [v44 image];
        sub_215A70AD0();
        v26 = [objc_opt_self() clearColor];
        v27 = sub_215A70AB0();
        sub_215A70110();
        v27(v67, 0);
        sub_2159F7DA8(0, &unk_2811A26A0);
        v28 = v63;
        (*v58)(v62, v24, v63);
        v29 = sub_215A70B00();
        [v29 setPreferredMenuElementOrder_];
        [v29 addAction:v44 forControlEvents:0x2000];
        swift_beginAccess();
        v30 = v29;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = *&v19[v21];
        *&v19[v21] = 0x8000000000000000;
        sub_215A3AE28(v30, v32, isUniquelyReferenced_nonNull_native);
        *&v19[v21] = v66;
        swift_endAccess();

        (*v57)(v24, v28);
        v15 = v60;
      }

      sub_215A70C60();
      sub_215A70C90();
      sub_215A70CA0();
      sub_215A70C70();
      v23 += 8;
      --v20;
    }

    while (v20);

    v45 = v68;
    p_prots = (&OBJC_PROTOCOL___SFHistoryViewDataSourceDelegate + 16);
  }

  else
  {

    v45 = MEMORY[0x277D84F90];
  }

  v46 = p_prots[47];
  *(&v46->count + v19) = v45;

  v48 = *(&v46->count + v19);
  if (!(v48 >> 62))
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v49)
    {
      goto LABEL_17;
    }

    return v19;
  }

  result = sub_215A70CD0();
  v49 = result;
  if (!result)
  {
    return v19;
  }

LABEL_17:
  if (v49 >= 1)
  {

    v50 = 0;
    do
    {
      if ((v48 & 0xC000000000000001) != 0)
      {
        v51 = MEMORY[0x216073710](v50, v48);
      }

      else
      {
        v51 = *(v48 + 8 * v50 + 32);
      }

      v52 = v51;
      ++v50;
      v53 = *&v65[v64];
      v54 = *&v53[OBJC_IVAR____TtC14MobileSafariUI18SFMinibarButtonBar_stackView];
      v55 = v53;
      [v54 addArrangedSubview_];

      v56 = &v55[OBJC_IVAR____TtC14MobileSafariUI18SFMinibarButtonBar_layoutSizeCache];
      *(v56 + 4) = 0;
      *v56 = 0u;
      *(v56 + 1) = 0u;
      v56[40] = 1;
    }

    while (v49 != v50);

    return v19;
  }

  __break(1u);
  return result;
}

uint64_t sub_215A0B548()
{
  v0 = sub_215A6FA60();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - v5;
  v7 = [objc_opt_self() isSaveForLaterEnabled];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_215A96980;
  sub_2159F7DA8(0, &qword_2811A25C0);
  sub_215A6FA50();
  sub_215A6FA50();
  sub_215A6FA30();
  if (v7)
  {
    v8 = *(v1 + 8);
    v31 = v8;
    v8(v4, v0);
    v8(v6, v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7E220);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_215A96960;
    v10 = [objc_opt_self() sharedManager];
    v11 = [v10 destinationFolderTitle];

    v12 = sub_215A70540();
    v14 = v13;

    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_2159F501C();
    *(v9 + 32) = v12;
    *(v9 + 40) = v14;
    sub_215A70510();

    v15 = sub_215A70500();
    v16 = objc_opt_self();
    v17 = [v16 systemImageNamed_];

    v33 = 0u;
    v34 = 0u;
    v18 = sub_215A70B30();
    v19 = v32;
    *(v32 + 32) = v18;
    sub_215A6FA50();
    sub_215A6FA40();
    v31(v6, v0);
    v20 = sub_215A70500();
    v21 = [v16 systemImageNamed_];

    v33 = 0u;
    v34 = 0u;
    *(v19 + 40) = sub_215A70B30();
  }

  else
  {
    v22 = *(v1 + 8);
    v22(v4, v0);
    v22(v6, v0);
    v23 = sub_215A70500();
    v24 = objc_opt_self();
    v25 = [v24 systemImageNamed_];

    v33 = 0u;
    v34 = 0u;
    v26 = sub_215A70B30();
    v27 = v32;
    *(v32 + 32) = v26;
    sub_215A6FA50();
    sub_215A6FA40();
    v22(v6, v0);
    v19 = v27;
    v28 = sub_215A70500();
    v29 = [v24 systemImageNamed_];

    v33 = 0u;
    v34 = 0u;
    *(v27 + 40) = sub_215A70B30();
  }

  return v19;
}

uint64_t sub_215A0BBC4()
{
  v1 = *(v0 + OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_items);
  v2 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_enabledItems;
    v5 = (v1 + 32);
    swift_beginAccess();
    v6 = 0;
    while (1)
    {
      if (v6 >= *(v1 + 16))
      {
        __break(1u);
LABEL_20:
        sub_2159F7DA8(0, qword_2811A2380);

        v15 = sub_215A70CC0();

        goto LABEL_18;
      }

      v7 = v5[v6];
      v8 = *(v0 + v4);
      if (*(v8 + 16))
      {
        sub_215A70E20();
        MEMORY[0x216073910](v7);
        v9 = sub_215A70E50();
        v10 = -1 << *(v8 + 32);
        v11 = v9 & ~v10;
        if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
        {
          break;
        }
      }

LABEL_13:
      if (*(v1 + 16) && v7 == *v5)
      {
        goto LABEL_3;
      }

LABEL_6:
      if (++v6 == v3)
      {
        goto LABEL_16;
      }
    }

    v12 = ~v10;
    while (*(*(v8 + 48) + 8 * v11) != v7)
    {
      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_3:
    sub_215A09188(v7);
    MEMORY[0x2160730A0]();
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_215A70640();
    }

    sub_215A70660();
    v2 = v17;
    goto LABEL_6;
  }

LABEL_16:
  v13 = *(v0 + OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_sizeUpdateHandler + 8);
  v14 = (*(v0 + OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_buttonStack) + OBJC_IVAR____TtC14MobileSafariUI18SFMinibarButtonBar_sizeUpdateHandler);
  *v14 = *(v0 + OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_sizeUpdateHandler);
  v14[1] = v13;

  if (v2 >> 62)
  {
    goto LABEL_20;
  }

  sub_215A70DA0();
  sub_2159F7DA8(0, qword_2811A2380);
  v15 = v2;
LABEL_18:

  sub_2159F9C28(v15, 1);
}

uint64_t sub_215A0BE84(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *a3;
  sub_2159F7DA8(0, &qword_2811A2708);
  sub_2159F7DA8(0, &qword_2811A2570);
  v4 = v3;
  v5 = sub_215A70950();

  return v5;
}

void sub_215A0BF34(id *a1)
{
  v1 = *a1;
  if (([*a1 isExpanded] & 1) == 0)
  {
    [v1 willToggleExpansionState];
    Strong = swift_unknownObjectUnownedLoadStrong();
    Strong[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_needsUpdateSelection] = 1;
    v3 = [Strong view];
    if (v3)
    {
      v4 = v3;
      [v3 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_215A0BFF4(id *a1)
{
  v1 = *a1;
  if ([*a1 isExpanded])
  {
    [v1 willToggleExpansionState];
    Strong = swift_unknownObjectUnownedLoadStrong();
    Strong[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_needsUpdateSelection] = 1;
    v3 = [Strong view];
    if (v3)
    {
      v4 = v3;
      [v3 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_215A0C0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 != 0xD00000000000001CLL || 0x8000000215AC1F90 != a3) && (sub_215A70D90() & 1) == 0)
  {
    return 0;
  }

  _s17ProfilePickerCellCMa();
  return sub_215A70960();
}

void sub_215A0C14C(char *a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = *&Strong[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_displayedProfile];
  v4 = v3;

  v5 = *&a1[OBJC_IVAR____TtCC14MobileSafariUI28LibraryContentViewController17ProfilePickerCell_profile];
  *&a1[OBJC_IVAR____TtCC14MobileSafariUI28LibraryContentViewController17ProfilePickerCell_profile] = v3;
  v6 = v4;

  [a1 setNeedsUpdateConfiguration];
  v7 = swift_unknownObjectUnownedLoadStrong();
  v8 = *&v7[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_profilePickerMenu];
  v9 = v8;

  v10 = *&a1[OBJC_IVAR____TtCC14MobileSafariUI28LibraryContentViewController17ProfilePickerCell_menu];
  *&a1[OBJC_IVAR____TtCC14MobileSafariUI28LibraryContentViewController17ProfilePickerCell_menu] = v8;
  v11 = v9;

  [a1 setNeedsUpdateConfiguration];
}

void sub_215A0C244(void *a1, uint64_t a2, id *a3)
{
  v5 = sub_215A6F960();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - v10;
  v12 = *a3;
  v13 = [*a3 accessories];
  if (!v13)
  {
    sub_2159F7DA8(0, &qword_27CA7E310);
    sub_215A705E0();
    v13 = sub_215A705D0();
  }

  [a1 setAccessories_];

  v14 = [a1 defaultContentConfiguration];
  v15 = [v14 textProperties];
  [v15 setAllowsDefaultTighteningForTruncation_];

  v16 = [v14 textProperties];
  [v16 setAdjustsFontSizeToFitWidth_];

  v17 = [v12 tabUUID];
  if (v17)
  {
    v18 = v17;
    sub_215A6F950();

    (*(v6 + 32))(v11, v9, v5);
    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_215A0C5D8(a1, v11, v14);

    (*(v6 + 8))(v11, v5);
  }

  [v12 updateListContentConfiguration_];
  [a1 setContentConfiguration_];
  v20 = [v12 accessibilityIdentifier];
  if (!v20)
  {
    sub_215A70540();
    v20 = sub_215A70500();
  }

  [a1 setAccessibilityIdentifier_];

  v21 = [v12 closeHandler];
  if (v21)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    aBlock[4] = sub_2159F7D34;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2159F7E08;
    aBlock[3] = &block_descriptor_80;
    v21 = _Block_copy(aBlock);
  }

  [a1 setCloseHandler_];
  _Block_release(v21);
}

void sub_215A0C5D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_215A6F960();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*(v4 + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_configuration) tabIconPool];
  if (v12)
  {
    v13 = v12;
    v30 = a1;
    v14 = sub_215A6F940();
    v15 = [v13 makeRegistrationForIdentifier_];
    v31 = v13;
    v16 = v15;

    v17 = sub_215A70500();
    v18 = [objc_opt_self() systemImageNamed_];

    v19 = [v16 content];
    if (!v19)
    {
      v19 = v18;
    }

    [a3 setImage_];

    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v9 + 16))(v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
    v22 = *(v9 + 80);
    v29[1] = v4;
    v30 = a2;
    v23 = (v22 + 32) & ~v22;
    v24 = (v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 16) = v20;
    *(v25 + 24) = v21;
    (*(v9 + 32))(v25 + v23, v11, v8);
    *(v25 + v24) = v18;
    aBlock[4] = sub_215A12498;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_215A44C0C;
    aBlock[3] = &block_descriptor_64;
    v26 = _Block_copy(aBlock);
    v27 = v18;

    [v16 setContentObserver_];
    _Block_release(v26);
    v28 = v16;
    sub_215A0D0A4(v16, v30);
  }
}

void sub_215A0C900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a4;
  v66 = a1;
  v6 = sub_215A6F960();
  v70 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v67 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E3B0);
  MEMORY[0x28223BE20](v8);
  v10 = &v62 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DF80);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v68 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v62 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v62 - v17;
  v19 = sub_215A6FA10();
  v72 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v71 = &v62 - v23;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    swift_beginAccess();
    v26 = swift_unknownObjectWeakLoadStrong();
    if (!v26)
    {

      return;
    }

    v27 = v26;
    v65 = v19;
    [v25 loadViewIfNeeded];
    v28 = *&v25[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController__collectionView];
    if (!v28)
    {
      __break(1u);
      return;
    }

    v29 = v27;
    v30 = [v28 indexPathForCell_];
    if (!v30)
    {

      return;
    }

    v63 = a5;
    v64 = v29;
    v31 = v30;
    sub_215A6F9C0();

    v33 = v71;
    v32 = v72;
    v34 = v22;
    v35 = v65;
    v36 = (*(v72 + 32))(v71, v34, v65);
    v37 = sub_21583D558(v36);
    sub_215A70250();

    if (!v73)
    {

      v41 = v64;
      (*(v32 + 8))(v33, v35);
      return;
    }

    v62 = v73;
    v38 = [v73 tabUUID];
    if (v38)
    {
      v39 = v38;
      sub_215A6F950();

      v40 = 0;
    }

    else
    {
      v40 = 1;
    }

    v42 = v70;
    v43 = *(v70 + 56);
    v43(v18, v40, 1, v6);
    (*(v42 + 16))(v16, v69, v6);
    v43(v16, 0, 1, v6);
    v44 = *(v8 + 48);
    sub_215A07074(v18, v10, &unk_27CA7DF80);
    sub_215A07074(v16, &v10[v44], &unk_27CA7DF80);
    v45 = *(v42 + 48);
    if (v45(v10, 1, v6) == 1)
    {
      sub_21583F14C(v16, &unk_27CA7DF80);
      sub_21583F14C(v18, &unk_27CA7DF80);
      if (v45(&v10[v44], 1, v6) == 1)
      {
        sub_21583F14C(v10, &unk_27CA7DF80);
        v46 = v65;
        v48 = v71;
        v47 = v72;
        v49 = v63;
        goto LABEL_23;
      }
    }

    else
    {
      v50 = v68;
      sub_215A07074(v10, v68, &unk_27CA7DF80);
      v51 = v45(&v10[v44], 1, v6);
      v49 = v63;
      if (v51 != 1)
      {
        v53 = v70;
        v54 = v67;
        (*(v70 + 32))(v67, &v10[v44], v6);
        sub_215A12538(&qword_27CA7EB90, MEMORY[0x277CC95F0]);
        LODWORD(v69) = sub_215A704F0();
        v55 = *(v53 + 8);
        v55(v54, v6);
        sub_21583F14C(v16, &unk_27CA7DF80);
        sub_21583F14C(v18, &unk_27CA7DF80);
        v55(v68, v6);
        sub_21583F14C(v10, &unk_27CA7DF80);
        v46 = v65;
        v48 = v71;
        v47 = v72;
        if (v69)
        {
LABEL_23:
          v56 = v64;
          v57 = [v64 contentConfiguration];

          if (v57)
          {
            objc_opt_self();
            v58 = swift_dynamicCastObjCClass();
            if (!v58)
            {

              swift_unknownObjectRelease();
              goto LABEL_20;
            }

            if (v66)
            {
              v59 = v66;
            }

            else
            {
              v59 = v49;
            }

            v60 = v56;
            v61 = v58;
            [v58 setImage_];
            swift_unknownObjectRetain();
            [v60 setContentConfiguration_];

            swift_unknownObjectRelease_n();
          }

          else
          {
          }

LABEL_19:

LABEL_20:
          (*(v47 + 8))(v48, v46);
          return;
        }

LABEL_18:

        v52 = v64;
        goto LABEL_19;
      }

      sub_21583F14C(v16, &unk_27CA7DF80);
      sub_21583F14C(v18, &unk_27CA7DF80);
      (*(v70 + 8))(v50, v6);
    }

    sub_21583F14C(v10, &qword_27CA7E3B0);
    v46 = v65;
    v48 = v71;
    v47 = v72;
    goto LABEL_18;
  }
}