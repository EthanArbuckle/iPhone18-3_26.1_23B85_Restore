@interface IMMomentShareCache
+ (IMMomentShareCache)sharedInstance;
- (IMMomentShareCache)init;
- (id)_momentShareForURLString:(id)a3 error:(id *)a4;
- (id)momentShareForURLString:(id)a3 error:(id *)a4;
- (void)_ensureLibraryRegistration;
- (void)_processFetchedMomentShare:(id)a3 forURLString:(id)a4 error:(id)a5 completionHandlers:(id)a6;
- (void)momentShareForURLString:(id)a3 completionHandler:(id)a4;
- (void)photoLibraryDidChange:(id)a3;
@end

@implementation IMMomentShareCache

- (IMMomentShareCache)init
{
  v13.receiver = self;
  v13.super_class = IMMomentShareCache;
  v2 = [(IMMomentShareCache *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    completionHandlers = v2->_completionHandlers;
    v2->_completionHandlers = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cache = v2->_cache;
    v2->_cache = v5;

    v7 = dispatch_queue_create("com.apple.messages.MomentShareLibraryRegistration", 0);
    libraryRegistrationQueue = v2->_libraryRegistrationQueue;
    v2->_libraryRegistrationQueue = v7;

    v9 = v2->_libraryRegistrationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83E199C;
    block[3] = &unk_1E780FCB0;
    v12 = v2;
    dispatch_async(v9, block);
  }

  return v2;
}

+ (IMMomentShareCache)sharedInstance
{
  if (qword_1EB2EA0F8 != -1)
  {
    sub_1A84E49B0();
  }

  v3 = qword_1ED767878;

  return v3;
}

- (void)momentShareForURLString:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v9 = objc_msgSend_objectForKeyedSubscript_(self->_completionHandlers, v8, v6);
  if (objc_msgSend_count(v9, v10, v11))
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1A84E49C4();
    }

    v14 = _Block_copy(v7);
    objc_msgSend_addObject_(v9, v15, v14);
  }

  else
  {
    v44 = 0;
    v16 = objc_msgSend__momentShareForURLString_error_(self, v12, v6, &v44);
    v17 = v44;
    v14 = v17;
    if (v16)
    {
      (*(v7 + 2))(v7, v16, 0);
    }

    else if (IMMomentShareCacheErrorIsPermanent(v17))
    {
      (*(v7 + 2))(v7, 0, v14);
    }

    else
    {
      if (!v9)
      {
        v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
        objc_msgSend_setObject_forKeyedSubscript_(self->_completionHandlers, v18, v9, v6);
      }

      v19 = _Block_copy(v7);
      objc_msgSend_addObject_(v9, v20, v19);

      v21 = IMLogHandleForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_1A84E4A2C();
      }

      v23 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v22, v6);
      v26 = objc_msgSend__ensureLibraryRegistration(self, v24, v25);
      v29 = sub_1A83E1A48(v26, v27, v28);
      v32 = objc_msgSend_sharedMomentSharePhotoLibrary(v29, v30, v31);
      v35 = objc_msgSend_librarySpecificFetchOptions(v32, v33, v34);

      v39 = sub_1A83E1F6C(v36, v37, v38);
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = sub_1A83E204C;
      v41[3] = &unk_1E7814CA0;
      v41[4] = self;
      v42 = v6;
      v9 = v9;
      v43 = v9;
      objc_msgSend_fetchMomentShareFromShareURL_options_completionHandler_(v39, v40, v23, v35, v41);
    }
  }
}

- (id)momentShareForURLString:(id)a3 error:(id *)a4
{
  v6 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v8 = objc_msgSend_objectForKeyedSubscript_(self->_completionHandlers, v7, v6);
  if (!objc_msgSend_count(v8, v9, v10))
  {
    v17 = 0;
    v14 = objc_msgSend__momentShareForURLString_error_(self, v11, v6, &v17);
    v13 = v17;
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v12 = IMLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1A84E4A94();
  }

  v13 = sub_1A83E22A4(-1000, 0);
  v14 = 0;
  if (a4)
  {
LABEL_7:
    if (!v14)
    {
      v15 = v13;
      *a4 = v13;
    }
  }

LABEL_9:

  return v14;
}

- (void)_ensureLibraryRegistration
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (!self->_hasRegisteredForLibraryChanges)
  {
    libraryRegistrationQueue = self->_libraryRegistrationQueue;

    dispatch_sync(libraryRegistrationQueue, &unk_1F1B6FD80);
  }
}

- (id)_momentShareForURLString:(id)a3 error:(id *)a4
{
  v70 = *MEMORY[0x1E69E9840];
  v6 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = sub_1A8259CC0;
  v63 = sub_1A825AF8C;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_1A8259CC0;
  v57 = sub_1A825AF8C;
  v58 = 0;
  v8 = objc_msgSend_objectForKeyedSubscript_(self->_cache, v7, v6);
  v11 = v8;
  if (v8)
  {
    v14 = objc_msgSend_first(v8, v9, v10);
    if (v14)
    {
      v15 = IMLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = v15;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v19 = objc_msgSend_uuid(v14, v17, v18);
          sub_1A84E4AFC(v19, v6, buf, v16);
        }
      }

      v20 = v60;
      v14 = v14;
      v21 = v20[5];
      v20[5] = v14;
    }

    else
    {
      v21 = objc_msgSend_second(v11, v12, v13);
      if (v21)
      {
        v46 = IMLogHandleForCategory();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v67 = v21;
          v68 = 2112;
          v69 = v6;
          _os_log_impl(&dword_1A823F000, v46, OS_LOG_TYPE_DEFAULT, "Returning cached permanent error: %@, for URL: %@", buf, 0x16u);
        }

        objc_storeStrong(v54 + 5, v21);
      }
    }
  }

  else
  {
    v22 = IMLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_1A84E4B64();
    }

    v14 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v23, v6);
    v26 = objc_msgSend__ensureLibraryRegistration(self, v24, v25);
    v29 = sub_1A83E1A48(v26, v27, v28);
    v32 = objc_msgSend_sharedMomentSharePhotoLibrary(v29, v30, v31);
    v35 = objc_msgSend_librarySpecificFetchOptions(v32, v33, v34);

    v39 = sub_1A83E1F6C(v36, v37, v38);
    v52 = 0;
    v41 = objc_msgSend_fetchLocalMomentShareFromShareURL_error_options_(v39, v40, v14, &v52, v35);
    v21 = v52;
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = sub_1A83E281C;
    v51[3] = &unk_1E7814CC8;
    v51[4] = &v59;
    v51[5] = &v53;
    v42 = _Block_copy(v51);
    v65 = v42;
    v44 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v43, &v65, 1);
    objc_msgSend__processFetchedMomentShare_forURLString_error_completionHandlers_(self, v45, v41, v6, v21, v44);
  }

  v47 = v60[5];
  if (a4 && !v47)
  {
    *a4 = v54[5];
    v47 = v60[5];
  }

  v48 = v47;

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v59, 8);

  v49 = *MEMORY[0x1E69E9840];

  return v48;
}

- (void)_processFetchedMomentShare:(id)a3 forURLString:(id)a4 error:(id)a5 completionHandlers:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    v14 = sub_1A83E2B6C(v10);
    objc_msgSend_setObject_forKeyedSubscript_(self->_cache, v15, v14, v11);

    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_1A84E4BCC(v10, v11, v16);
    }

    v17 = v10;
    v18 = 0;
  }

  else
  {
    v19 = v12;
    v22 = v19;
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v23 = off_1EB2EA670;
    v48 = off_1EB2EA670;
    if (!off_1EB2EA670)
    {
      v40 = MEMORY[0x1E69E9820];
      v41 = 3221225472;
      v42 = sub_1A83E32A8;
      v43 = &unk_1E7811770;
      v44 = &v45;
      v24 = sub_1A83E32F8(v19, v20, v21);
      v46[3] = dlsym(v24, "PXIsMomentShareErrorPermanent");
      off_1EB2EA670 = *(v44[1] + 24);
      v23 = v46[3];
    }

    _Block_object_dispose(&v45, 8);
    if (!v23)
    {
      sub_1A84E4CE0(v25, v26, v27);
    }

    v28 = v23(v22);

    if (v28)
    {
      v29 = -1001;
    }

    else
    {
      v29 = -1000;
    }

    v30 = sub_1A83E22A4(v29, v22);
    v18 = v30;
    if (v28)
    {
      v31 = sub_1A83E2BC0(v30);
      objc_msgSend_setObject_forKeyedSubscript_(self->_cache, v32, v31, v11);
    }

    v33 = IMLogHandleForCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E4C64();
    }
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_1A83E2C14;
  v37[3] = &unk_1E7814CF0;
  v38 = v10;
  v39 = v18;
  v34 = v18;
  v35 = v10;
  objc_msgSend_enumerateObjectsUsingBlock_(v13, v36, v37);
}

- (void)photoLibraryDidChange:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A83E2CC4;
  v6[3] = &unk_1E7810140;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

@end