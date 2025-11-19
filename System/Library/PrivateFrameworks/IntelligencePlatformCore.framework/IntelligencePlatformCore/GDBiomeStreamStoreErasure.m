@interface GDBiomeStreamStoreErasure
+ (BOOL)validateBookmark:(id)a3 publisher:(id)a4 error:(id *)a5;
+ (id)_createOrLookupStreamWithIdentifier:(id)a3;
+ (id)_streamWithIdentifier:(id)a3 error:(id *)a4;
+ (id)deletedEventTimestampsForStream:(id)a3 account:(id)a4 device:(id)a5 bookmark:(id)a6 error:(id *)a7;
+ (id)iterateStream:(id)a3 device:(id)a4 account:(id)a5 bookmark:(id)a6 startTime:(id)a7 endTime:(id)a8 maxEvents:(id)a9 lastN:(id)a10 reversed:(BOOL)a11 body:(id)a12;
+ (id)latestDeleteBookmarkForStream:(id)a3 account:(id)a4 device:(id)a5 bookmark:(id)a6 error:(id *)a7;
+ (id)publisherForStream:(id)a3 device:(id)a4 account:(id)a5 startTime:(id)a6 endTime:(id)a7 maxEvents:(id)a8 lastN:(id)a9 reversed:(BOOL)a10;
+ (id)tombstonePublisherForStream:(id)a3 device:(id)a4 account:(id)a5 startTime:(id)a6 endTime:(id)a7 maxEvents:(id)a8 lastN:(id)a9 reversed:(BOOL)a10;
+ (void)clearCache;
+ (void)pruneStream:(id)a3 withReason:(unint64_t)a4;
@end

@implementation GDBiomeStreamStoreErasure

+ (void)clearCache
{
  v5 = sub_1C4447514();
  objc_msgSend_clearCache(v5, v2, v3, v4);
}

+ (id)_streamWithIdentifier:(id)a3 error:(id *)a4
{
  v41[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = BiomeLibrary();
  v34 = 0;
  v8 = objc_msgSend_streamWithIdentifier_error_(v6, v7, v5, &v34);
  v9 = v34;

  if (v8)
  {
    v10 = 0;
    goto LABEL_22;
  }

  if (!sub_1C4EF2BB0())
  {
    v10 = 0;
    v8 = 0;
    if (!a4)
    {
      goto LABEL_22;
    }

    goto LABEL_10;
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v11 = off_1EC151B08;
  v39 = off_1EC151B08;
  if (!off_1EC151B08)
  {
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = sub_1C4EF2C80;
    v35[3] = &unk_1E81EFA70;
    v35[4] = &v36;
    sub_1C4EF2C80(v35);
    v11 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v11)
  {
    v27 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v12, v13, v14);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v28, "id<BMIRootLibrary> _GDBiomeLibraryInternal(void)", v29);
    v31 = dlerror();
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v27, v32, v30, @"GDBiomeStreamStoreErasure.m", 30, @"%s", v31);

    __break(1u);
  }

  v15 = v11();
  v33 = 0;
  v8 = objc_msgSend_streamWithIdentifier_error_(v15, v16, v5, &v33);
  v10 = v33;

  if (a4)
  {
LABEL_10:
    if (!v8)
    {
      v20 = objc_alloc(MEMORY[0x1E696ABC0]);
      v40[0] = @"libraryError";
      if (v9)
      {
        v21 = objc_msgSend_localizedDescription(v9, v17, v18, v19);
      }

      else
      {
        v21 = &stru_1F4416138;
      }

      v41[0] = v21;
      v40[1] = @"internalError";
      if (v10)
      {
        v22 = objc_msgSend_localizedDescription(v10, v17, v18, v19);
      }

      else
      {
        v22 = &stru_1F4416138;
      }

      v41[1] = v22;
      v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v17, v41, v40, 2);
      *a4 = objc_msgSend_initWithDomain_code_userInfo_(v20, v24, *MEMORY[0x1E69A9E30], 1, v23);

      if (v10)
      {
      }

      if (v9)
      {
      }

      v8 = 0;
    }
  }

LABEL_22:

  v25 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)_createOrLookupStreamWithIdentifier:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = sub_1C4447514();
  v12 = 0;
  v6 = objc_msgSend_getLibraryStreamWithIdentifier_error_(v4, v5, v3, &v12);
  v7 = v12;

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = GDDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = v3;
      v15 = 2112;
      v16 = v7;
      _os_log_error_impl(&dword_1C43F8000, v9, OS_LOG_TYPE_ERROR, "GDBiomeStreamStoreErasure: _streamWithIdentifier: failed to retrieve stream %@. Error: %@", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)latestDeleteBookmarkForStream:(id)a3 account:(id)a4 device:(id)a5 bookmark:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_1C446339C;
  v46 = sub_1C4463498;
  v14 = a6;
  v47 = v14;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_1C446339C;
  v40 = sub_1C4463498;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_1C446339C;
  v34 = sub_1C4463498;
  v35 = 0;
  v16 = objc_autoreleasePoolPush();
  if (v43[5])
  {
    goto LABEL_4;
  }

  v17 = objc_msgSend_tombstonePublisherForStream_device_account_startTime_endTime_maxEvents_lastN_reversed_(GDBiomeStreamStoreErasure, v15, v11, v13, v12, 0, 0, 0, 0, 1);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_1C4EF32E0;
  v29[3] = &unk_1E81EF860;
  v29[4] = &v30;
  v29[5] = &v42;
  v19 = objc_msgSend_drivableSinkWithBookmark_completion_shouldContinue_(v17, v18, 0, v29, &unk_1F4415E98);
  if (v43[5])
  {

LABEL_4:
    LOBYTE(v27) = 0;
    v17 = objc_msgSend_tombstonePublisherForStream_device_account_startTime_endTime_maxEvents_lastN_reversed_(GDBiomeStreamStoreErasure, v15, v11, v13, v12, 0, 0, 0, 0, v27);
    v20 = v43[5];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_1C4EF338C;
    v28[3] = &unk_1E81EF860;
    v28[4] = &v30;
    v28[5] = &v36;
    v22 = objc_msgSend_drivableSinkWithBookmark_completion_shouldContinue_(v17, v21, v20, v28, &unk_1F4415EB8);
    v23 = 1;
    goto LABEL_5;
  }

  v23 = 0;
  if (a7)
  {
    *a7 = v31[5];
  }

LABEL_5:

  objc_autoreleasePoolPop(v16);
  if (v23)
  {
    v24 = v37[5];
    if (a7 && !v24)
    {
      *a7 = v31[5];
      v24 = v37[5];
    }

    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  return v25;
}

+ (id)deletedEventTimestampsForStream:(id)a3 account:(id)a4 device:(id)a5 bookmark:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_1C446339C;
  v46 = sub_1C4463498;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_1C446339C;
  v40 = sub_1C4463498;
  v41 = 0;
  v16 = objc_opt_new();
  v17 = objc_autoreleasePoolPush();
  v20 = objc_msgSend__createOrLookupStreamWithIdentifier_(a1, v18, v12, v19);
  v21 = objc_alloc(MEMORY[0x1E698F2D0]);
  started = objc_msgSend_initWithStartDate_endDate_maxEvents_lastN_reversed_(v21, v22, 0, 0, 0, 0, 0);
  v25 = *MEMORY[0x1E698E920];
  if (v13)
  {
    v26 = objc_msgSend_tombstonePublisherWithUseCase_account_device_options_(v20, v23, v25, v13, v14, started);
  }

  else
  {
    if (v14)
    {
      objc_msgSend_tombstonePublisherWithUseCase_device_options_(v20, v23, v25, v14, started);
    }

    else
    {
      objc_msgSend_tombstonePublisherWithUseCase_options_(v20, v23, v25, started);
    }
    v26 = ;
  }

  v27 = v26;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = sub_1C4EF3768;
  v35[3] = &unk_1E81EF860;
  v35[4] = &v42;
  v35[5] = &v36;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_1C4EF3814;
  v33[3] = &unk_1E81EF888;
  v28 = v16;
  v34 = v28;
  v30 = objc_msgSend_drivableSinkWithBookmark_completion_shouldContinue_(v27, v29, v15, v35, v33);

  objc_autoreleasePoolPop(v17);
  if (v37[5])
  {
    v31 = v28;
  }

  else
  {
    v31 = 0;
    if (a7)
    {
      *a7 = v43[5];
    }
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  return v31;
}

+ (BOOL)validateBookmark:(id)a3 publisher:(id)a4 error:(id *)a5
{
  v25[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = objc_msgSend_validateBookmarkNode_(v8, v9, v7, v10);
    if (a5 && v11)
    {
      v11 = v11;
      *a5 = v11;
    }

    LOBYTE(a5) = v11 == 0;
  }

  else if (a5)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E69A9E30];
    v24 = *MEMORY[0x1E696A578];
    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    v15 = objc_opt_class();
    v18 = objc_msgSend_initWithFormat_(v14, v16, @"Bookmark of unexpected type: %@", v17, v15, v24);
    v25[0] = v18;
    v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v19, v25, &v24, 1);
    *a5 = objc_msgSend_errorWithDomain_code_userInfo_(v12, v21, v13, 15, v20);

    LOBYTE(a5) = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return a5;
}

+ (void)pruneStream:(id)a3 withReason:(unint64_t)a4
{
  v15 = a3;
  v7 = objc_msgSend__createOrLookupStreamWithIdentifier_(a1, v5, v15, v6);
  v8 = objc_autoreleasePoolPush();
  v12 = objc_msgSend_pruner(v7, v9, v10, v11);
  objc_msgSend_deleteEventsPassingTest_(v12, v13, &unk_1F4415E78, v14);

  objc_autoreleasePoolPop(v8);
}

+ (id)tombstonePublisherForStream:(id)a3 device:(id)a4 account:(id)a5 startTime:(id)a6 endTime:(id)a7 maxEvents:(id)a8 lastN:(id)a9 reversed:(BOOL)a10
{
  v61 = a3;
  v59 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v60 = a9;
  context = objc_autoreleasePoolPush();
  if (v16)
  {
    v19 = objc_alloc(MEMORY[0x1E695DF00]);
    objc_msgSend_doubleValue(v16, v20, v21, v22);
    v26 = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v19, v23, v24, v25);
    if (v17)
    {
LABEL_3:
      v27 = objc_alloc(MEMORY[0x1E695DF00]);
      objc_msgSend_doubleValue(v17, v28, v29, v30);
      v34 = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v27, v31, v32, v33);
      goto LABEL_6;
    }
  }

  else
  {
    v26 = 0;
    if (v17)
    {
      goto LABEL_3;
    }
  }

  v34 = 0;
LABEL_6:
  v35 = objc_alloc(MEMORY[0x1E698F2D0]);
  v36 = v18;
  v40 = objc_msgSend_unsignedIntegerValue(v18, v37, v38, v39);
  v44 = objc_msgSend_unsignedIntegerValue(v60, v41, v42, v43);
  started = objc_msgSend_initWithStartDate_endDate_maxEvents_lastN_reversed_(v35, v45, v26, v34, v40, v44, a10);
  v49 = objc_msgSend__createOrLookupStreamWithIdentifier_(a1, v47, v61, v48);
  v51 = v49;
  v52 = *MEMORY[0x1E698E928];
  if (v15)
  {
    v53 = v59;
    v54 = objc_msgSend_tombstonePublisherWithUseCase_account_device_options_(v49, v50, v52, v15, v59, started);
  }

  else
  {
    v53 = v59;
    if (v59)
    {
      objc_msgSend_tombstonePublisherWithUseCase_device_options_(v49, v50, v52, v59, started);
    }

    else
    {
      objc_msgSend_tombstonePublisherWithUseCase_options_(v49, v50, v52, started);
    }
    v54 = ;
  }

  v55 = v54;

  objc_autoreleasePoolPop(context);

  return v55;
}

+ (id)publisherForStream:(id)a3 device:(id)a4 account:(id)a5 startTime:(id)a6 endTime:(id)a7 maxEvents:(id)a8 lastN:(id)a9 reversed:(BOOL)a10
{
  v61 = a3;
  v59 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v60 = a9;
  context = objc_autoreleasePoolPush();
  if (v16)
  {
    v19 = objc_alloc(MEMORY[0x1E695DF00]);
    objc_msgSend_doubleValue(v16, v20, v21, v22);
    v26 = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v19, v23, v24, v25);
    if (v17)
    {
LABEL_3:
      v27 = objc_alloc(MEMORY[0x1E695DF00]);
      objc_msgSend_doubleValue(v17, v28, v29, v30);
      v34 = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v27, v31, v32, v33);
      goto LABEL_6;
    }
  }

  else
  {
    v26 = 0;
    if (v17)
    {
      goto LABEL_3;
    }
  }

  v34 = 0;
LABEL_6:
  v35 = objc_alloc(MEMORY[0x1E698F2D0]);
  v36 = v18;
  v40 = objc_msgSend_unsignedIntegerValue(v18, v37, v38, v39);
  v44 = objc_msgSend_unsignedIntegerValue(v60, v41, v42, v43);
  started = objc_msgSend_initWithStartDate_endDate_maxEvents_lastN_reversed_(v35, v45, v26, v34, v40, v44, a10);
  v49 = objc_msgSend__createOrLookupStreamWithIdentifier_(a1, v47, v61, v48);
  v52 = v49;
  if (v15)
  {
    v53 = v59;
    v54 = objc_msgSend_publisherForAccount_device_withUseCase_options_(v49, v50, v15, v59, *MEMORY[0x1E698E928], started);
  }

  else
  {
    v53 = v59;
    if (v59)
    {
      objc_msgSend_publisherForDevice_withUseCase_options_(v49, v50, v59, *MEMORY[0x1E698E928], started);
    }

    else
    {
      objc_msgSend_publisherWithOptions_(v49, v50, started, v51);
    }
    v54 = ;
  }

  v55 = v54;

  objc_autoreleasePoolPop(context);

  return v55;
}

+ (id)iterateStream:(id)a3 device:(id)a4 account:(id)a5 bookmark:(id)a6 startTime:(id)a7 endTime:(id)a8 maxEvents:(id)a9 lastN:(id)a10 reversed:(BOOL)a11 body:(id)a12
{
  v37 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a12;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_1C446339C;
  v47 = sub_1C4463498;
  v48 = 0;
  v25 = objc_autoreleasePoolPush();
  v26 = a1;
  v39 = v17;
  v27 = v17;
  v28 = v18;
  v30 = objc_msgSend_publisherForStream_device_account_startTime_endTime_maxEvents_lastN_reversed_(v26, v29, v37, v27, v18, v20, v21, v22, v23, a11);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_1C4EF414C;
  v42[3] = &unk_1E81EF7F0;
  v42[4] = &v43;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = sub_1C4EF4160;
  v40[3] = &unk_1E81EF818;
  v31 = v24;
  v41 = v31;
  v33 = objc_msgSend_sinkWithBookmark_completion_receiveInput_(v30, v32, v19, v42, v40);

  objc_autoreleasePoolPop(v25);
  v34 = v44[5];
  _Block_object_dispose(&v43, 8);

  return v34;
}

@end