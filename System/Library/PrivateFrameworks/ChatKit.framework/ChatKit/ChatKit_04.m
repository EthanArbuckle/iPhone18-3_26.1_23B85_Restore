void __CKWaveformWithPowerLevels_block_invoke(uint64_t a1)
{
  [*(a1 + 32) set];
  if (*(a1 + 40))
  {
    v2 = 0;
    do
    {
      v3 = *(*(a1 + 48) + 8 * v2);
      v4 = *(a1 + 56);
      if (CKMainScreenScale_once_26 != -1)
      {
        __CKWaveformWithPowerLevels_block_invoke_cold_1();
      }

      v5 = *&CKMainScreenScale_sMainScreenScale_26;
      if (*&CKMainScreenScale_sMainScreenScale_26 == 0.0)
      {
        v5 = 1.0;
      }

      v6 = fmax(round(v3 * v4 * v5) / v5, 1.0);
      if (v6 < *(a1 + 64))
      {
        v6 = *(a1 + 64);
      }

      v7 = (*(a1 + 56) - v6) * 0.5;
      v8 = *&CKMainScreenScale_sMainScreenScale_26;
      if (*&CKMainScreenScale_sMainScreenScale_26 == 0.0)
      {
        v8 = 1.0;
      }

      v9 = round(v8 * v7) / v8;
      v10 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:*(a1 + 72) * v2 cornerRadius:{v9, *(a1 + 80), *(a1 + 56) + v9 * -2.0, *(a1 + 80) * 0.5}];
      [v10 fill];

      ++v2;
    }

    while (v2 < *(a1 + 40));
  }
}

void *__CKWaveformPowerLevelsForFileURL_block_invoke()
{
  result = MEMORY[0x193AF5ED0]("CMTimeGetSeconds", @"CoreMedia");
  CKWaveformPowerLevelsForFileURL__CMTimeGetSeconds = result;
  return result;
}

void *__CKWaveformPowerLevelsForFileURL_block_invoke_2()
{
  result = MEMORY[0x193AF5ED0]("CMAudioFormatDescriptionGetStreamBasicDescription", @"CoreMedia");
  CKWaveformPowerLevelsForFileURL__CMAudioFormatDescriptionGetStreamBasicDescription = result;
  return result;
}

void *__CKWaveformPowerLevelsForFileURL_block_invoke_3()
{
  result = MEMORY[0x193AF5ED0]("CMSampleBufferGetFormatDescription", @"CoreMedia");
  CKWaveformPowerLevelsForFileURL__CMSampleBufferGetFormatDescription = result;
  return result;
}

void *__CKWaveformPowerLevelsForFileURL_block_invoke_4()
{
  result = MEMORY[0x193AF5ED0]("CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer", @"CoreMedia");
  CKWaveformPowerLevelsForFileURL__CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer = result;
  return result;
}

void *__CKWaveformPowerLevelsForFileURL_block_invoke_5()
{
  result = MEMORY[0x193AF5ED0]("CMSampleBufferGetPresentationTimeStamp", @"CoreMedia");
  CKWaveformPowerLevelsForFileURL__CMSampleBufferGetPresentationTimeStamp = result;
  return result;
}

void *__CKWaveformPowerLevelsForFileURL_block_invoke_6()
{
  result = MEMORY[0x193AF5ED0]("CMSampleBufferGetDuration", @"CoreMedia");
  CKWaveformPowerLevelsForFileURL__CMSampleBufferGetDuration = result;
  return result;
}

void sub_19041946C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190419818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190419B7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id CKChatItemForMomentShareAsset(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v23 = v3;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = [v4 aggregateChatItems];
    v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v20 = v4;
      v21 = v3;
      v7 = *v25;
      v8 = *MEMORY[0x1E69A6FC0];
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          v11 = [v10 transferGUID];
          v12 = [MEMORY[0x1E69A5B80] sharedInstance];
          v13 = [v12 transferForGUID:v11];

          v14 = [v13 attributionInfo];
          v15 = [v14 objectForKeyedSubscript:v8];

          v16 = [v23 uuid];
          v17 = [v15 isEqualToString:v16];

          if (v17)
          {
            v18 = v10;

            goto LABEL_14;
          }
        }

        v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }

      v18 = 0;
LABEL_14:
      v4 = v20;
      v3 = v21;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

id CKMomentShareURLForMediaObjects(void *a1)
{
  v1 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__20;
  v11 = __Block_byref_object_dispose__20;
  v12 = 0;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __CKMomentShareURLForMediaObjects_block_invoke;
  v4[3] = &unk_1E72F03B0;
  v4[4] = v5;
  v4[5] = &v7;
  [v1 enumerateObjectsUsingBlock:v4];
  v2 = v8[5];
  _Block_object_dispose(v5, 8);
  _Block_object_dispose(&v7, 8);

  return v2;
}

void sub_19041D5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void __CKMomentShareURLForMediaObjects_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 transfer];
  v7 = [v6 attributionInfo];
  v8 = [v7 objectForKey:*MEMORY[0x1E69A6FB8]];

  if (v8)
  {
    v9 = [MEMORY[0x1E695DFF8] URLWithString:v8];
    *a4 = 1;
  }

  else
  {
    v9 = 0;
  }

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    if (v10 != v9)
    {
      v11 = [v10 absoluteString];
      v12 = [v9 absoluteString];
      v13 = [v11 isEqualToString:v12];

      if ((v13 & 1) == 0)
      {
        v14 = IMLogHandleForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __CKMomentShareURLForMediaObjects_block_invoke_cold_1(v14);
        }
      }
    }
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v9);
  v15 = *(*(a1 + 32) + 8);
  if ((*(v15 + 24) & 1) == 0)
  {
    *(v15 + 24) = 1;
  }
}

uint64_t CKSaveMomentShareFromURL(void *a1, void *a2, void *a3)
{
  v82 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Request to quick save moment share: %@", &buf, 0xCu);
  }

  v9 = [MEMORY[0x1E69789A8] sharedMomentSharePhotoLibrary];
  v10 = [v9 librarySpecificFetchOptions];

  v71 = 0;
  v11 = [MEMORY[0x1E6978930] fetchLocalMomentShareFromShareURL:v5 error:&v71 options:v10];
  v12 = v71;
  v13 = v12;
  if (v11)
  {
    v62 = v12;
    v14 = [v11 assetCount];
    v15 = [v6 count];
    v63 = v7;
    v64 = v11;
    v65 = v10;
    if (!v6 || v14 == v15)
    {
      v33 = IMLogHandleForCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_19020E000, v33, OS_LOG_TYPE_INFO, "Moment share save: will save all assets", &buf, 2u);
      }

      v29 = 0;
LABEL_28:
      v34 = v29;
      v61 = v7;
      v35 = MEMORY[0x1E69C33A0];
      v36 = v11;
      v37 = [[v35 alloc] initWithMomentShare:v36 activityType:2 sourceType:1];

      v59 = v37;
      v38 = [v37 createSession];
      v39 = [v38 actionManager];
      v40 = [v39 actionPerformerForActionType:*MEMORY[0x1E69C3FD8]];

      v41 = [v38 viewModel];
      v42 = [v41 selectionManager];

      v66 = v34;
      if ([v34 count])
      {
        v43 = [v42 selectionSnapshot];
        v44 = [v43 dataSource];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v48 = v40;
          v49 = IMLogHandleForCategory();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            CKSaveMomentShareFromURL_cold_1(v43, v49);
          }

          v32 = 0;
          v13 = v62;
          v7 = v63;
          v10 = v65;
          v50 = v61;
          goto LABEL_44;
        }

        v46 = [v43 dataSource];
        v47 = objc_alloc_init(MEMORY[0x1E69C4580]);
        if (v46)
        {
          [v46 firstItemIndexPath];
        }

        else
        {
          v72 = 0u;
          v73 = 0u;
        }

        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v77 = ___CKSaveMomentShare_block_invoke;
        v78 = &unk_1E72F03D8;
        v79 = v46;
        v51 = v66;
        v80 = v51;
        v52 = v47;
        v81 = v52;
        v53 = v46;
        [v53 enumerateItemIndexPathsStartingAtIndexPath:&v72 reverseDirection:0 usingBlock:&buf];
        if ([v52 count] < 1)
        {
          v54 = IMLogHandleForCategory();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            CKSaveMomentShareFromURL_cold_2(v51, v54);
          }
        }

        else
        {
          *&v72 = MEMORY[0x1E69E9820];
          *(&v72 + 1) = 3221225472;
          *&v73 = ___CKSaveMomentShare_block_invoke_2;
          *(&v73 + 1) = &unk_1E72F0400;
          v74 = v52;
          [v42 performChanges:&v72];
          v54 = v74;
        }

        v7 = v63;
      }

      else
      {
        [v42 performChanges:&__block_literal_global_71];
      }

      v10 = v65;
      v55 = v40;
      v48 = v40;
      v50 = v61;
      v13 = v62;
      v56 = [v55 performActionWithSession:v38 completionHandler:v61];
      v32 = 1;
LABEL_44:

      v29 = v66;
      v11 = v64;
      goto LABEL_45;
    }

    v60 = v5;
    v16 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v58 = v6;
    v17 = v6;
    v18 = [v17 countByEnumeratingWithState:&v67 objects:v75 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v68;
      v21 = *MEMORY[0x1E69A6FC0];
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v68 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v67 + 1) + 8 * i);
          v24 = [v23 transfer];
          v25 = [v24 attributionInfo];
          v26 = [v25 objectForKey:v21];

          if (v26)
          {
            [v16 addObject:v26];
          }

          else
          {
            v27 = IMLogHandleForCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v23;
              _os_log_error_impl(&dword_19020E000, v27, OS_LOG_TYPE_ERROR, "saveMomentShareURL: didn't find assetUUID for media object: %@", &buf, 0xCu);
            }
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v67 objects:v75 count:16];
      }

      while (v19);
    }

    v28 = IMLogHandleForCategory();
    v29 = v16;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v30 = [v16 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v30;
      _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "Moment share save: will save %tu assets", &buf, 0xCu);
    }

    v31 = [v16 count];
    v5 = v60;
    v7 = v63;
    v11 = v64;
    v10 = v65;
    if (v31)
    {
      v6 = v58;
      goto LABEL_28;
    }

    v32 = 0;
    v6 = v58;
    v13 = v62;
  }

  else
  {
    v29 = IMLogHandleForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      CKSaveMomentShareFromURL_cold_3(v13, v29);
    }

    v32 = 0;
  }

LABEL_45:

  return v32;
}

id _CKFirstSubviewOfType(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = [a1 subviews];
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v7 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  return v7;
}

void sub_190422220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190423BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19042592C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190425ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1904270F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_190429784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19042A770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _HealthStickerStatusChanged(uint64_t a1, void *a2)
{
  result = [a2 isMemberOfClass:objc_opt_class()];
  if (result)
  {

    return [a2 performSelector:sel_healthStickerStatusChanged];
  }

  return result;
}

void sub_19042F4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19042F678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19042F844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_190437334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1904380D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1904386F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_190438898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_190439C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_190439D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PassKitUILibraryCore()
{
  if (!PassKitUILibraryCore_frameworkLibrary)
  {
    PassKitUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return PassKitUILibraryCore_frameworkLibrary;
}

uint64_t __PassKitUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PassKitUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getPKPassViewClass_block_invoke(uint64_t a1)
{
  PassKitUILibraryCore();
  result = objc_getClass("PKPassView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKPassViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPKAddPassesViewControllerClass_block_invoke(uint64_t a1)
{
  PassKitUILibraryCore();
  result = objc_getClass("PKAddPassesViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPKAddPassesViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_19043F988(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x19043F88CLL);
  }

  _Block_object_dispose((v2 - 208), 8);
  _Unwind_Resume(exc_buf);
}

void sub_19043FD6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19044579C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1904459A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1904460E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_190446324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_190446740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_190446E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1904491C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1904493C4(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x19044932CLL);
  }

  objc_destroyWeak((v2 + 32));
  _Unwind_Resume(exc_buf);
}

void sub_19044A5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Unwind_Resume(a1);
}

void sub_19044EC38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19044EF6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_1904548DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19045CBD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19045D130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19045F99C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose(&STACK[0x310], 8);
  _Block_object_dispose(&STACK[0x330], 8);
  _Unwind_Resume(a1);
}

void sub_190460FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkDataDetectorsReferenceDateKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataDetectorsUILibrary();
  result = dlsym(v2, "kDataDetectorsReferenceDateKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkDataDetectorsReferenceDateKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t DataDetectorsUILibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!DataDetectorsUILibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __DataDetectorsUILibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E72F1300;
    v4 = 0;
    DataDetectorsUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = DataDetectorsUILibraryCore_frameworkLibrary;
  if (!DataDetectorsUILibraryCore_frameworkLibrary)
  {
    DataDetectorsUILibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __DataDetectorsUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  DataDetectorsUILibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkDataDetectorsSpecialURLKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataDetectorsUILibrary();
  result = dlsym(v2, "kDataDetectorsSpecialURLKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkDataDetectorsSpecialURLKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkDataDetectorsCoreSpotlightUniqueIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataDetectorsUILibrary();
  result = dlsym(v2, "kDataDetectorsCoreSpotlightUniqueIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkDataDetectorsCoreSpotlightUniqueIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkDataDetectorsIncludeMoneySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataDetectorsUILibrary();
  result = dlsym(v2, "kDataDetectorsIncludeMoney");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkDataDetectorsIncludeMoneySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkDataDetectorsCustomActionRangesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataDetectorsUILibrary();
  result = dlsym(v2, "kDataDetectorsCustomActionRangesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkDataDetectorsCustomActionRangesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkDataDetectorsCoreRecentsMetadataDictionaryKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataDetectorsUILibrary();
  result = dlsym(v2, "kDataDetectorsCoreRecentsMetadataDictionaryKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkDataDetectorsCoreRecentsMetadataDictionaryKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_190462EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190463948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190463BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190466170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id iconGenerationForDisplayQueue()
{
  if (iconGenerationForDisplayQueue_once != -1)
  {
    iconGenerationForDisplayQueue_cold_1();
  }

  v1 = iconGenerationForDisplayQueue_sQueue;

  return v1;
}

void __iconGenerationForDisplayQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("CKIMIconGenerationForDisplayQueue", v2);
  v1 = iconGenerationForDisplayQueue_sQueue;
  iconGenerationForDisplayQueue_sQueue = v0;
}

void __iconPrefetchQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v0 = dispatch_queue_create("CKIMIconPrefetchQueue", v2);
  v1 = iconPrefetchQueue_sQueue;
  iconPrefetchQueue_sQueue = v0;
}

void sub_190469B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19046A078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19046A67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19046ACB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

void sub_19046E410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double CKSquareCropRectForSize(double a1, double a2)
{
  v2 = a1 > a2;
  if (a1 >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a1;
  }

  v4 = v3;
  v5 = (a1 - v4) * 0.5;
  result = rintf(v5);
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

CGImageRef CKCreateSquareCroppedImageRef(CGImageRef image)
{
  if (!image)
  {
    return image;
  }

  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  if (Width == Height)
  {
    CFRetain(image);
    return image;
  }

  v5 = CKSquareCropRectForSize(Width, Height);

  return CGImageCreateWithImageInRect(image, *&v5);
}

uint64_t _CreateThumbnailWithJPEGForMaxDimension(double a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v8 = 0;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(12);
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_DEBUG, "taking fast jpeg path", v7, 2u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog();
  }

  v9[0] = *MEMORY[0x1E696E100];
  v3 = [MEMORY[0x1E696AD98] numberWithLong:{fmin(a1, 4.61168602e18)}];
  v9[1] = *MEMORY[0x1E696E000];
  v10[0] = v3;
  v10[1] = MEMORY[0x1E695E118];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  if (CMPhotoJPEGCreateCGImageFromJPEG())
  {
    v5 = 0;
    v8 = 0;
  }

  else
  {
    v5 = v8;
  }

  return v5;
}

CGImageRef _CreateThumbnailWithImageSourceAtIndexForMaxDimension(CGImageSource *a1, size_t a2, double a3)
{
  v16[6] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(12);
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_DEBUG, "taking standard image thumbnail path", v14, 2u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog();
  }

  v7 = MEMORY[0x1E695E118];
  v8 = *MEMORY[0x1E696DFE8];
  v15[0] = *MEMORY[0x1E696E0E8];
  v15[1] = v8;
  v16[0] = MEMORY[0x1E695E118];
  v16[1] = MEMORY[0x1E695E118];
  v15[2] = *MEMORY[0x1E696E100];
  v9 = [MEMORY[0x1E696AD98] numberWithLong:{fmin(a3, 4.61168602e18)}];
  v16[2] = v9;
  v10 = *MEMORY[0x1E696E138];
  v15[3] = *MEMORY[0x1E696E000];
  v15[4] = v10;
  v16[3] = v7;
  v16[4] = v7;
  v15[5] = *MEMORY[0x1E696E0A8];
  v16[5] = v7;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:6];

  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(a1, a2, v11);
  return ThumbnailAtIndex;
}

CGImageRef _CreateThumbnailFromHEICSWithMaxDimension(CGImageSource *a1, size_t a2)
{
  v11[3] = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(12);
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_DEBUG, "taking Heic image thumbnail path", v9, 2u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog();
  }

  v5 = *MEMORY[0x1E696E138];
  v10[0] = *MEMORY[0x1E696E0E8];
  v10[1] = v5;
  v11[0] = MEMORY[0x1E695E118];
  v11[1] = MEMORY[0x1E695E118];
  v10[2] = *MEMORY[0x1E696E0A8];
  v11[2] = MEMORY[0x1E695E118];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  ImageAtIndex = CGImageSourceCreateImageAtIndex(a1, a2, v6);

  return ImageAtIndex;
}

void __sharedJPEGDecodeSession_block_invoke()
{
  CMPhotoJPEGDecodeSessionCreate();
  if (sharedJPEGDecodeSession_decodeSession)
  {
    v0 = dispatch_get_global_queue(0, 0);
    v1 = dispatch_source_create(MEMORY[0x1E69E9720], 0, 0x80000000uLL, v0);
    v2 = sharedJPEGDecodeSession_memoryEventSource;
    sharedJPEGDecodeSession_memoryEventSource = v1;

    dispatch_source_set_event_handler(sharedJPEGDecodeSession_memoryEventSource, &__block_literal_global_220_0);
    dispatch_resume(sharedJPEGDecodeSession_memoryEventSource);
    v3 = objc_opt_new();
    v4 = sharedJPEGDecodeSession_memoryQueue;
    sharedJPEGDecodeSession_memoryQueue = v3;

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = [v6 addObserverForName:*MEMORY[0x1E69DDAC8] object:0 queue:sharedJPEGDecodeSession_memoryQueue usingBlock:&__block_literal_global_225];
  }
}

uint64_t _deviceShouldUseBGRAThumbs()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 _graphicsQuality];

  if (v1 == 10)
  {
    return 1;
  }

  v3 = MGCopyAnswer();
  v4 = [&unk_1F04E6960 containsObject:v3];

  return v4;
}

void __decodeSessionOptions_block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{*MEMORY[0x1E6991B48], *MEMORY[0x1E695E4D0], *MEMORY[0x1E6991B40], 0}];
  if (_deviceShouldUseBGRAThumbs())
  {
    v1 = [MEMORY[0x1E696AD98] numberWithInt:1111970369];
    [v0 setObject:v1 forKey:*MEMORY[0x1E6991B58]];
  }

  decodeSessionOptions_decodeSessionOptions = v0;
}

id CKJPEGUIImageFromURL(uint64_t a1)
{
  v1 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:a1];
  if ([v1 length])
  {
    if (sharedJPEGDecodeSession_onceToken != -1)
    {
      CKJPEGUIImageFromURL_cold_1();
    }

    if (decodeSessionOptions_onceToken != -1)
    {
      CKJPEGUIImageFromURL_cold_2();
    }

    CMPhotoJPEGDecodeSessionCreateCGImageFromData();
  }

  return 0;
}

__CFData *CKCreatePNGRepresentationFromUIImageFilterTypeNone(void *a1)
{
  v1 = a1;
  v2 = [v1 CGImage];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v5 = v4;
  if (v4)
  {
    v6 = CGImageDestinationCreateWithData(v4, @"public.png", 1uLL, 0);
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v6;
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:8];
    v10 = objc_alloc(MEMORY[0x1E695DF20]);
    v11 = [v10 initWithObjectsAndKeys:{v9, *MEMORY[0x1E696DEA0], 0}];
    [v8 setValue:v11 forKey:*MEMORY[0x1E696DEB0]];
    v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:2];
    [v8 setValue:v12 forKey:*MEMORY[0x1E696DE88]];
    [v1 scale];
    if (v13 != 1.0)
    {
      valuePtr = v13 * 72.0;
      v14 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
      [v8 setValue:v14 forKey:*MEMORY[0x1E696D880]];
      [v8 setValue:v14 forKey:*MEMORY[0x1E696D888]];
    }

    CGImageDestinationAddImage(v7, v3, v8);
    v15 = CGImageDestinationFinalize(v7);
    CFRelease(v7);

    if (!v15)
    {
LABEL_7:

LABEL_8:
      v5 = 0;
    }
  }

  return v5;
}

void sub_1904726E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_19047498C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_190475400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&STACK[0x218], 8);
  _Block_object_dispose(&STACK[0x2B0], 8);
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Unwind_Resume(a1);
}

void sub_1904780D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_190479E68(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x190479B54);
  }

  _Unwind_Resume(a1);
}

void sub_19047ECF0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 buf)
{
  if (a2 == 1)
  {
    v15 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v15;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Faled to unarchive plugin data. Exception: %@", &buf, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x19047ECB4);
  }

  _Unwind_Resume(a1);
}

void sub_19047FA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19048258C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1904829CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1904858B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_190486FA8(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x190486E4CLL);
  }

  objc_destroyWeak(&location);
  _Unwind_Resume(exc_buf);
}

void sub_190487D90(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x190487A04);
  }

  _Unwind_Resume(a1);
}

void sub_19048BC3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x19048B870);
  }

  _Unwind_Resume(exception_object);
}

id CKChevronImageWithColor(void *a1)
{
  v1 = MEMORY[0x1E69DB878];
  v2 = *MEMORY[0x1E69DDCF8];
  v3 = a1;
  v4 = [v1 __ck_preferredFontForStyle:v2];
  v5 = [v4 fontDescriptor];

  v6 = [MEMORY[0x1E69DB878] fontWithDescriptor:v5 size:0.0];
  v7 = [MEMORY[0x1E69DCAD8] configurationWithFont:v6 scale:1];
  v8 = [MEMORY[0x1E69DCAD8] configurationWithHierarchicalColor:v3];

  v9 = [v8 configurationByApplyingConfiguration:v7];

  v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward" withConfiguration:v9];
  v11 = [v10 imageFlippedForRightToLeftLayoutDirection];

  return v11;
}

id CKImageNamedWithDynamicTintColor(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!CKImageNamedWithDynamicTintColor_darkTraitCollection)
  {
    v5 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
    v6 = CKImageNamedWithDynamicTintColor_darkTraitCollection;
    CKImageNamedWithDynamicTintColor_darkTraitCollection = v5;

    v7 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:1];
    v8 = CKImageNamedWithDynamicTintColor_lightTraitCollection;
    CKImageNamedWithDynamicTintColor_lightTraitCollection = v7;
  }

  v9 = [v4 resolvedColorForTraitCollection:CKImageNamedWithDynamicTintColor_lightTraitCollection];
  v10 = [v4 resolvedColorForTraitCollection:CKImageNamedWithDynamicTintColor_darkTraitCollection];
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v13 = [MEMORY[0x1E69DCAB8] ckImageNamed:v3];
    v14 = [v13 _flatImageWithColor:v9];

    v15 = [MEMORY[0x1E69DCAB8] ckImageNamed:v3];
    v16 = [v15 _flatImageWithColor:v11];

    v17 = [v14 imageAsset];
    [v17 registerImage:v16 withTraitCollection:CKImageNamedWithDynamicTintColor_darkTraitCollection];
  }

  return v14;
}

void __CKIsBigIdiom_block_invoke()
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v2 userInterfaceIdiom] == 1)
  {
    v0 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v0 _referenceBounds];
    CKIsBigIdiom_sBig = v1 >= 1366.0;
  }

  else
  {
    CKIsBigIdiom_sBig = 0;
  }
}

void sub_1904D7158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1904D734C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1904D7544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1904D7738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1904D78FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1904D7AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1904D7CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1904D7E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1904D8090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1904DB64C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 232), 8);
  _Block_object_dispose((v1 - 200), 8);
  _Unwind_Resume(a1);
}

void sub_1904DD8C0(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1904DD850);
  }

  objc_destroyWeak(&a14);
  objc_destroyWeak(&location);
  _Unwind_Resume(exc_buf);
}

void sub_1904E3F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1904EB2E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a2 == 1)
  {
    v40 = objc_begin_catch(exception_object);
    v41 = IMLogHandleForCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptCollectionViewController collectionView:cellForItemAtIndexPath:];
    }

    v42 = IMLogHandleForCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = MEMORY[0x1E696AD98];
      v44 = [v36 chatItems];
      v45 = [v43 numberWithUnsignedInteger:{objc_msgSend(v44, "count")}];
      v46 = MEMORY[0x1E696AD98];
      v47 = [v36 chat];
      v48 = [v47 chatItems];
      v49 = [v46 numberWithUnsignedInteger:{objc_msgSend(v48, "count")}];
      v50 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v37, "numberOfItemsInSection:", objc_msgSend(v38, "section"))}];
      v51 = MEMORY[0x1E696AD98];
      v52 = [v36 associatedChatItems];
      v53 = [v51 numberWithUnsignedInteger:{objc_msgSend(v52, "count")}];
      *(v39 - 160) = 138413058;
      v54 = v39 - 160;
      *(v54 + 4) = v45;
      *(v39 - 148) = 2112;
      *(v54 + 14) = v49;
      *(v39 - 138) = 2112;
      *(v39 - 136) = v50;
      *(v39 - 128) = 2112;
      *(v54 + 34) = v53;
      _os_log_error_impl(&dword_19020E000, v42, OS_LOG_TYPE_ERROR, "\tchatItems.count = %@, chat.chatItems.count: %@, collectionView cells: %@, associatedChatItems.count: %@", (v39 - 160), 0x2Au);
    }

    a18 = 0u;
    a19 = 0u;
    a16 = 0u;
    a17 = 0u;
    v55 = [v36 chatItems];
    v56 = [v55 countByEnumeratingWithState:&a16 objects:&a36 count:16];
    if (v56)
    {
      v59 = 0;
      v60 = *a17;
      do
      {
        for (i = 0; i != v56; ++i)
        {
          if (*a17 != v60)
          {
            objc_enumerationMutation(v55);
          }

          v62 = *(*(&a16 + 1) + 8 * i);
          v63 = IMLogHandleForCategory();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            v64 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v59];
            *(v39 - 160) = 138412546;
            v65 = v39 - 160;
            *(v65 + 4) = v64;
            *(v39 - 148) = 2112;
            *(v65 + 14) = v62;
            _os_log_error_impl(&dword_19020E000, v63, OS_LOG_TYPE_ERROR, "\tchatItems[%@]: %@", (v39 - 160), 0x16u);
          }

          ++v59;
        }

        v56 = [v55 countByEnumeratingWithState:&a16 objects:&a36 count:16];
      }

      while (v56);
    }

    a14 = 0u;
    a15 = 0u;
    a12 = 0u;
    a13 = 0u;
    v57 = [v36 associatedChatItems];
    v58 = [v57 countByEnumeratingWithState:&a12 objects:&a20 count:16];
    if (v58)
    {
      v66 = 0;
      v67 = *a13;
      do
      {
        for (j = 0; j != v58; ++j)
        {
          if (*a13 != v67)
          {
            objc_enumerationMutation(v57);
          }

          v69 = *(*(&a12 + 1) + 8 * j);
          v70 = IMLogHandleForCategory();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            v71 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v66];
            *(v39 - 160) = 138412546;
            v72 = v39 - 160;
            *(v72 + 4) = v71;
            *(v39 - 148) = 2112;
            *(v72 + 14) = v69;
            _os_log_error_impl(&dword_19020E000, v70, OS_LOG_TYPE_ERROR, "\tassociatedChatItems[%@]: %@", (v39 - 160), 0x16u);
          }

          ++v66;
        }

        v58 = [v57 countByEnumeratingWithState:&a12 objects:&a20 count:16];
      }

      while (v58);
    }

    IMLogBacktrace();
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1904F0608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1904F3A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak(&a28);
  objc_destroyWeak((v28 - 144));
  _Unwind_Resume(a1);
}

void sub_1904F652C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1904F64C4);
  }

  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(exc_buf);
}

void sub_1904F6DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1904F7324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1904FA33C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 buf, int a16, __int16 a17, __int16 a18, id a19)
{
  if (a2 == 1)
  {
    v20 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v19, "count")}];
        LODWORD(buf) = 138412802;
        *(&buf + 4) = v22;
        WORD6(buf) = 2112;
        a18 = 2112;
        a19 = v20;
        _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "Transcript: enumerating imChatItems (%@) with indexSet (inserted):%@ in _indicesOfReplyChatItemsToInsertWithoutFading Exception: %@", &buf, 0x20u);
      }
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_1904FABAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1904FA964);
  }

  _Unwind_Resume(exception_object);
}

void sub_1904FB420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 184), 8);
  _Block_object_dispose((v34 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1904FBF84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(exception_object);
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptCollectionViewController updateTranscriptChatItems:inserted:removed:reload:regenerate:animated:completion:];
    }

    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptCollectionViewController updateTranscriptChatItems:inserted:removed:reload:regenerate:animated:completion:];
    }

    v19 = IMLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = MEMORY[0x1E696AD98];
      [v15 collectionView];
      [v20 numberWithInteger:{objc_msgSend(objc_claimAutoreleasedReturnValue(), "numberOfItemsInSection:", 0)}];
      objc_claimAutoreleasedReturnValue();
      [CKTranscriptCollectionViewController updateTranscriptChatItems:inserted:removed:reload:regenerate:animated:completion:];
    }

    v21 = IMLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = MEMORY[0x1E696AD98];
      [v15 imChatItems];
      [v22 numberWithUnsignedInteger:{objc_msgSend(objc_claimAutoreleasedReturnValue(), "count")}];
      objc_claimAutoreleasedReturnValue();
      [CKTranscriptCollectionViewController updateTranscriptChatItems:inserted:removed:reload:regenerate:animated:completion:];
    }

    v23 = IMLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptCollectionViewController updateTranscriptChatItems:inserted:removed:reload:regenerate:animated:completion:];
    }

    v24 = IMLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptCollectionViewController updateTranscriptChatItems:inserted:removed:reload:regenerate:animated:completion:];
    }

    v25 = IMLogHandleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptCollectionViewController updateTranscriptChatItems:inserted:removed:reload:regenerate:animated:completion:];
    }

    v26 = IMLogHandleForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptCollectionViewController updateTranscriptChatItems:inserted:removed:reload:regenerate:animated:completion:];
    }

    v27 = IMLogHandleForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = MEMORY[0x1E696AD98];
      [v15 chatItems];
      [v28 numberWithUnsignedInteger:{objc_msgSend(objc_claimAutoreleasedReturnValue(), "count")}];
      objc_claimAutoreleasedReturnValue();
      [CKTranscriptCollectionViewController updateTranscriptChatItems:inserted:removed:reload:regenerate:animated:completion:];
    }

    IMLogBacktrace();
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1904FCD10(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1904FCA3CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1904FD43C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1904FD240);
  }

  _Unwind_Resume(a1);
}

void sub_1904FE77C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1904FE690);
  }

  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(exc_buf);
}

void sub_1904FEDA8(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1904FED24);
  }

  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(exc_buf);
}

void sub_19050044C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 + 72));
  _Unwind_Resume(a1);
}

void sub_190505B70(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x190505B00);
  }

  _Unwind_Resume(a1);
}

void sub_190505DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1905062DC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x190506294);
  }

  _Unwind_Resume(a1);
}

void sub_1905072C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19050839C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1905080D4);
  }

  _Unwind_Resume(exception_object);
}

void sub_190509694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_190509960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19050ACC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19050D87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_190510008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1905110EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190511440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1905117DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190511B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void -[CKTranscriptCollectionViewController _blockHandle:](CKTranscriptCollectionViewController *self, SEL a2, id a3)
{
  v3 = a3;
  v4 = MEMORY[0x1E696AEC0];
  v5 = CKFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"BLOCK_PERSON_ALERT_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  v7 = [v3 name];
  v8 = [v4 stringWithFormat:v6, v7];

  v9 = [MEMORY[0x1E69DC668] sharedApplication];
  v10 = [v9 userInterfaceLayoutDirection];

  if (v10 == 1)
  {
    v11 = @"\u200F";
  }

  else
  {
    v11 = @"\u200E";
  }

  v12 = [(__CFString *)v11 stringByAppendingString:v8];
  v30 = v12;

  v13 = MEMORY[0x1E696AEC0];
  v14 = CKFrameworkBundle();
  v15 = [v14 localizedStringForKey:@"BLOCK_PERSON_ALERT_TEXT" value:&stru_1F04268F8 table:@"ChatKit"];
  v16 = [v3 nameAndID];
  v17 = [v13 stringWithFormat:v15, v16];

  v18 = [MEMORY[0x1E69DC668] sharedApplication];
  v19 = [v18 userInterfaceLayoutDirection];

  if (v19 == 1)
  {
    v20 = @"\u200F";
  }

  else
  {
    v20 = @"\u200E";
  }

  v21 = [(__CFString *)v20 stringByAppendingString:v17];

  v22 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v12 message:v21 preferredStyle:1];
  v23 = CKFrameworkBundle();
  v24 = [v23 localizedStringForKey:@"BLOCK" value:&stru_1F04268F8 table:@"ChatKit"];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __53__CKTranscriptCollectionViewController__blockHandle___block_invoke;
  v32[3] = &unk_1E72EC710;
  v33 = v3;
  v34 = self;
  v25 = v3;
  v26 = [CKAlertAction actionWithTitle:v24 style:2 handler:v32];
  [v22 addAction:v26];

  v27 = CKFrameworkBundle();
  v28 = [v27 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
  v29 = [CKAlertAction actionWithTitle:v28 style:1 handler:0];
  [v22 addAction:v29];

  [(CKTranscriptCollectionViewController *)self presentViewController:v22 animated:1 completion:0];
}

void sub_1905172C8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {

    objc_end_catch();
    JUMPOUT(0x190516E0CLL);
  }

  _Unwind_Resume(a1);
}

void sub_19051A308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_3_1(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_6_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

uint64_t OUTLINED_FUNCTION_8_0(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void OUTLINED_FUNCTION_9_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void OUTLINED_FUNCTION_11_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_19051F908(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

Class __getLSApplicationWorkspaceClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E72F3020;
    v5 = 0;
    CoreServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreServicesLibraryCore_frameworkLibrary)
  {
    __getLSApplicationWorkspaceClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("LSApplicationWorkspace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLSApplicationWorkspaceClass_block_invoke_cold_1();
  }

  getLSApplicationWorkspaceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_190530264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

id getFKOrderImportPreviewControllerProviderClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFKOrderImportPreviewControllerProviderClass_softClass;
  v7 = getFKOrderImportPreviewControllerProviderClass_softClass;
  if (!getFKOrderImportPreviewControllerProviderClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getFKOrderImportPreviewControllerProviderClass_block_invoke;
    v3[3] = &unk_1E72EB968;
    v3[4] = &v4;
    __getFKOrderImportPreviewControllerProviderClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_190531B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id EKEventStoreClass()
{
  v0 = EKEventStoreClass___EKEventStoreClass;
  if (!EKEventStoreClass___EKEventStoreClass)
  {
    v0 = MEMORY[0x193AF5EC0](@"EKEventStore", @"EventKit");
    EKEventStoreClass___EKEventStoreClass = v0;
  }

  return v0;
}

id EKICSPreviewControllerClass()
{
  v0 = EKICSPreviewControllerClass___EKICSPreviewControllerClass;
  if (!EKICSPreviewControllerClass___EKICSPreviewControllerClass)
  {
    v0 = MEMORY[0x193AF5EC0](@"EKICSPreviewController", @"EventKitUI");
    EKICSPreviewControllerClass___EKICSPreviewControllerClass = v0;
  }

  return v0;
}

void sub_190533760(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1905336E8);
  }

  _Unwind_Resume(a1);
}

double AdaptSizeToRect(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  v9 = a1;
  if (a5 != 0.0 && a6 != 0.0)
  {
    Width = CGRectGetWidth(*&a1);
    v25.origin.x = v9;
    v25.origin.y = a2;
    v25.size.width = a3;
    v25.size.height = a4;
    v13 = CGRectGetHeight(v25) / a6;
    if (Width / a5 >= v13)
    {
      v14 = Width / a5;
    }

    else
    {
      v14 = v13;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __CKAdaptSizeToRectWithRounding_block_invoke;
    aBlock[3] = &__block_descriptor_40_e8_d16__0d8l;
    aBlock[4] = CGFloor;
    v15 = _Block_copy(aBlock);
    v16 = v15[2](a5 * v14);
    v17 = (v15[2])(v15, a6 * v14);
    v26.origin.x = v9;
    v26.origin.y = a2;
    v26.size.width = a3;
    v26.size.height = a4;
    v18 = CGRectGetWidth(v26);
    v27.origin.x = v9;
    v27.origin.y = a2;
    v27.size.width = v16;
    v27.size.height = v17;
    v19 = CGRectGetWidth(v27);
    v20 = v9 + (v15[2])(v15, (v18 - v19) * 0.5);
    v28.origin.x = v9;
    v28.origin.y = a2;
    v28.size.width = a3;
    v28.size.height = a4;
    Height = CGRectGetHeight(v28);
    v29.origin.x = v20;
    v29.origin.y = a2;
    v29.size.width = v16;
    v29.size.height = v17;
    v22 = CGRectGetHeight(v29);
    (v15[2])(v15, (Height - v22) * 0.5);

    return v20;
  }

  return v9;
}

Class __getFKOrderImportPreviewControllerProviderClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!FinanceKitUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __FinanceKitUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E72F31E8;
    v5 = 0;
    FinanceKitUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!FinanceKitUILibraryCore_frameworkLibrary)
  {
    __getFKOrderImportPreviewControllerProviderClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("FKOrderImportPreviewControllerProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFKOrderImportPreviewControllerProviderClass_block_invoke_cold_1();
  }

  getFKOrderImportPreviewControllerProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FinanceKitUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  FinanceKitUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getFKOrderMessagesPreviewMetadataClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!FinanceKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __FinanceKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E72F3200;
    v5 = 0;
    FinanceKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!FinanceKitLibraryCore_frameworkLibrary)
  {
    __getFKOrderMessagesPreviewMetadataClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("FKOrderMessagesPreviewMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFKOrderMessagesPreviewMetadataClass_block_invoke_cold_1();
  }

  getFKOrderMessagesPreviewMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FinanceKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  FinanceKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_190539C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_19053D2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CKAttachmentsDirectoryURL()
{
  if (CKAttachmentsDirectoryURL_once != -1)
  {
    CKAttachmentsDirectoryURL_cold_1();
  }

  v1 = CKAttachmentsDirectoryURL_sAttachmentsDirectory;

  return v1;
}

void __CKAttachmentsDirectoryURL_block_invoke()
{
  v2 = IMSMSDirectoryURL();
  v0 = [v2 URLByAppendingPathComponent:@"Attachments" isDirectory:1];
  v1 = CKAttachmentsDirectoryURL_sAttachmentsDirectory;
  CKAttachmentsDirectoryURL_sAttachmentsDirectory = v0;
}

id CKLegacyAttachmentsDirectoryURL()
{
  if (CKLegacyAttachmentsDirectoryURL_once != -1)
  {
    CKLegacyAttachmentsDirectoryURL_cold_1();
  }

  v1 = CKLegacyAttachmentsDirectoryURL_sLegacyAttachmentsDirectory;

  return v1;
}

void __CKLegacyAttachmentsDirectoryURL_block_invoke()
{
  v2 = IMSMSDirectoryURL();
  v0 = [v2 URLByAppendingPathComponent:@"Parts" isDirectory:1];
  v1 = CKLegacyAttachmentsDirectoryURL_sLegacyAttachmentsDirectory;
  CKLegacyAttachmentsDirectoryURL_sLegacyAttachmentsDirectory = v0;
}

id CKPluginTmpSubDirectoryURL(void *a1, void *a2)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x1E695DF70];
  v6 = IMSafeTemporaryDirectory();
  v7 = [v6 path];
  v13[0] = v7;
  v13[1] = @"Drafts";
  v13[2] = v3;
  v13[3] = @"PluginFiles";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];
  v9 = [v5 arrayWithArray:v8];

  if (v4)
  {
    [v9 addObject:v4];
  }

  v10 = [MEMORY[0x1E696AEC0] pathWithComponents:v9];
  v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10 isDirectory:1];

  return v11;
}

id CKAttachmentTmpFileURL(void *a1)
{
  v10[5] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = IMSafeTemporaryDirectory();
  v3 = [v2 path];
  v4 = [MEMORY[0x1E696AEC0] stringGUID];
  v10[3] = v4;
  v5 = CKAttachmentFilenameTruncatedIfNeeded(v1);

  v10[4] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v7 = [MEMORY[0x1E696AEC0] pathWithComponents:v6];
  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7 isDirectory:0];

  return v8;
}

id CKAttachmentFilenameTruncatedIfNeeded(void *a1)
{
  v1 = a1;
  if ([v1 length] > 0xFF)
  {
    IMAttachmentFileNameAndExtension();
    v3 = 0;
    v4 = 0;
    v5 = [v3 length];
    v6 = [v4 length];
    if (v5 >= 254 - v6)
    {
      v7 = 254 - v6;
    }

    else
    {
      v7 = v5;
    }

    v8 = [v3 substringToIndex:v7];

    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v8, v4];
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

id CKAttachmentLinkFileURL(void *a1)
{
  v10[5] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = IMSafeTemporaryDirectory();
  v3 = [v2 path];
  v4 = [MEMORY[0x1E696AEC0] stringGUID];
  v10[3] = v4;
  v5 = CKAttachmentFilenameTruncatedIfNeeded(v1);

  v10[4] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v7 = [MEMORY[0x1E696AEC0] pathWithComponents:v6];
  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7 isDirectory:0];

  return v8;
}

id CKAttachmentOrientedPreviewCachesFileURL(void *a1, int a2, void *a3)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = IMPreviewCachesDirectoryWithAttachmentURL();
  if (v7)
  {
    v19 = [v5 lastPathComponent];
    IMAttachmentFileNameAndExtension();
    v8 = 0;
    v9 = v8;
    v10 = @"r";
    if (!a2)
    {
      v10 = @"l";
    }

    v11 = [v8 stringByAppendingFormat:@"-preview-%@.%@", v10, v6];
    v12 = [v7 path];
    v20[0] = v12;
    v20[1] = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];

    v14 = [MEMORY[0x1E696AEC0] pathWithComponents:v13];
    v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14 isDirectory:0];
    v16 = [MEMORY[0x1E696AC08] defaultManager];
    v17 = [v15 URLByDeletingLastPathComponent];
    [v16 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:0];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id CKSpotlightPreviewCachesFileURL(void *a1, uint64_t a2)
{
  v15[4] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [a1 stringByAppendingFormat:@".%@", a2];
    v3 = IMCachesDirectoryURL();
    v4 = [v3 path];
    v15[0] = v4;
    v15[1] = @"Previews";
    v15[2] = @"Search";
    v15[3] = v2;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:4];

    v6 = [MEMORY[0x1E696AEC0] pathWithComponents:v5];
    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6 isDirectory:0];
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [v7 URLByDeletingLastPathComponent];
    v14 = 0;
    v10 = [v8 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v14];
    v11 = v14;

    if (!v10 || v11)
    {
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        CKSpotlightPreviewCachesFileURL_cold_1(v11, v12);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id CKLocationSharePreviewCachesFileURL(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[4] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = [a1 stringByAppendingFormat:@"-preview-%d-%d.%@", a2, a4, a3];
    v5 = IMCachesDirectoryURL();
    v6 = [v5 path];
    v13[0] = v6;
    v13[1] = @"Previews";
    v13[2] = @"Location";
    v13[3] = v4;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];

    v8 = [MEMORY[0x1E696AEC0] pathWithComponents:v7];
    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8 isDirectory:0];
    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [v9 URLByDeletingLastPathComponent];
    [v10 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id CKLocationSharePreviewPlaceHolderCacheFileURL(void *a1, uint64_t a2, void *a3)
{
  v16[4] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = [v5 stringWithFormat:@"placeholder-%zd-%d.%@", objc_msgSend(a1, "userInterfaceStyle"), a2, v6];

  v8 = IMCachesDirectoryURL();
  v9 = [v8 path];
  v16[0] = v9;
  v16[1] = @"Previews";
  v16[2] = @"Location";
  v16[3] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:4];

  v11 = [MEMORY[0x1E696AEC0] pathWithComponents:v10];
  v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11 isDirectory:0];
  v13 = [MEMORY[0x1E696AC08] defaultManager];
  v14 = [v12 URLByDeletingLastPathComponent];
  [v13 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:0];

  return v12;
}

id CKAttachmentDraftURL(void *a1, void *a2, void *a3)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = [a1 path];
  v12[0] = v7;
  v12[1] = v6;
  v12[2] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];

  v9 = [MEMORY[0x1E696AEC0] pathWithComponents:v8];
  v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9 isDirectory:0];

  return v10;
}

id CKBrowserSnapshotPreviewURL(void *a1, void *a2)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"%tu.%@", objc_msgSend(a1, "hash"), v4];

  v7 = CKSafeFilename(v5, v6);

  v8 = IMCachesDirectoryURL();
  v9 = [v8 path];
  v17[0] = v9;
  v17[1] = @"BrowserSnapshots";
  v10 = CKAttachmentFilenameTruncatedIfNeeded(v7);
  v17[2] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];

  v12 = [MEMORY[0x1E696AEC0] pathWithComponents:v11];
  v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12 isDirectory:0];
  v14 = [MEMORY[0x1E696AC08] defaultManager];
  v15 = [v13 URLByDeletingLastPathComponent];
  [v14 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:0];

  return v13;
}

id CKTranscriptPluginIconCachesFileURL()
{
  v6[3] = *MEMORY[0x1E69E9840];
  v0 = IMCachesDirectoryURL();
  v1 = [v0 path];
  v6[0] = v1;
  v6[1] = @"Plugins";
  v6[2] = @"Icons";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];

  v3 = [MEMORY[0x1E696AEC0] pathWithComponents:v2];
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:1];

  return v4;
}

uint64_t CKEnhanceBitmapEdges(uint64_t result, int a2, int a3, int a4, double a5, double a6, double a7, float a8, float a9, float a10, float a11, float a12)
{
  v15 = (a4 - 1);
  v16 = a3 >> 2;
  v17 = 4 * v16;
  if (a4 >= 3)
  {
    v18 = (8 * v16) | 7;
    v19 = (result + 11);
    v20 = 1;
    do
    {
      v21 = result + 4 + 4 * (v20 - 1) * v16 + 4 * v16;
      v22 = v21 + 4 * a2 - 8;
      v23 = v19;
      while (v21 < v22)
      {
        v24 = &v23[v17];
        LOBYTE(a8) = *(v23 - 8);
        v25 = LODWORD(a8);
        LOBYTE(a9) = *(v23 - 4);
        LOBYTE(a10) = *v23;
        *&v26 = LODWORD(a10);
        LOBYTE(a11) = v23[v17 - 8];
        LOBYTE(a12) = v23[4 * v16];
        LOBYTE(v12) = v23[v18 - 15];
        v27 = LODWORD(v12);
        LOBYTE(v13) = v23[v18 - 11];
        v13 = LODWORD(v13);
        LOBYTE(v14) = v23[v18 - 7];
        v14 = LODWORD(v14);
        a12 = ((*&v26 + LODWORD(a12)) + LODWORD(a12)) + v14;
        a11 = ((v25 + LODWORD(a11)) + LODWORD(a11)) + v27;
        v12 = ((v27 + v13) + v13) + v14;
        v28 = sqrtf(((v12 - (((v25 + LODWORD(a9)) + LODWORD(a9)) + *&v26)) * (v12 - (((v25 + LODWORD(a9)) + LODWORD(a9)) + *&v26))) + ((a12 - a11) * (a12 - a11))) * 0.2;
        a9 = (v28 * -0.0039216) + 1.0;
        LOBYTE(v26) = v23[v17 - 7];
        *&v29 = v28 + (v26 * a9);
        v30 = *&v29;
        LOBYTE(v29) = v23[v17 - 6];
        *&v31 = v28 + (v29 * a9);
        v32 = *&v31;
        LOBYTE(v31) = v23[v17 - 5];
        a10 = v31;
        a8 = v28 + (a10 * a9);
        *(v24 - 7) = v30;
        *(v24 - 6) = v32;
        *(v24 - 5) = a8;
        v23 += 4;
        v21 = &v23[v17 - 7];
      }

      ++v20;
      v19 += v17;
    }

    while (v20 != v15);
  }

  v33 = 0;
  v34 = v15 * v16;
  v35 = a2 - 1;
  v36 = 1;
  v37 = 1.0;
  do
  {
    v38 = v36;
    if (a2 >= 1)
    {
      v39 = 0;
      v40 = (result + 4 * v33 * v34);
      v41 = v17 - 2 * v33 * v17;
      do
      {
        LOBYTE(a9) = v40[v41 + 3];
        v42 = LODWORD(a9);
        if (v38)
        {
          v43 = 0.0;
          v44 = 0.0;
          v45 = 0.0;
          if (v39)
          {
            LOBYTE(v44) = *(v40 - 1);
            v44 = LODWORD(v44);
            LOBYTE(a12) = v40[v41 - 1];
            v45 = LODWORD(a12);
          }

          if (v39 >= v35)
          {
            v46 = v42;
            v14 = 0.0;
          }

          else
          {
            LOBYTE(a12) = v40[7];
            v45 = LODWORD(a12);
            LOBYTE(a12) = v40[v41 + 7];
            v14 = LODWORD(a12);
            v46 = v42;
          }

          v42 = 0.0;
          v47 = 0.0;
        }

        else
        {
          v46 = 0.0;
          v44 = 0.0;
          v47 = 0.0;
          if (v39)
          {
            LOBYTE(v44) = v40[v41 - 1];
            v47 = LODWORD(v44);
            LOBYTE(v44) = *(v40 - 1);
            v44 = LODWORD(v44);
          }

          if (v39 >= v35)
          {
            v45 = 0.0;
            v43 = 0.0;
          }

          else
          {
            LOBYTE(a11) = v40[v41 + 7];
            v43 = LODWORD(a11);
            LOBYTE(v13) = v40[7];
            v45 = LODWORD(v13);
          }

          v14 = 0.0;
        }

        v13 = (v45 + (v45 + v43)) + v14;
        a12 = (v46 + v46) + v14;
        v48 = sqrtf(((a12 - (v43 + (v42 + (v42 + v47)))) * (a12 - (v43 + (v42 + (v42 + v47))))) + ((v13 - ((v44 + (v44 + v47)) + 0.0)) * (v13 - ((v44 + (v44 + v47)) + 0.0)))) * 0.2;
        v49 = (v48 * -0.0039216) + 1.0;
        LOBYTE(v43) = *v40;
        *&v50 = v48 + (LODWORD(v43) * v49);
        *v40 = *&v50;
        LOBYTE(v50) = v40[1];
        *&v51 = v48 + (v50 * v49);
        v40[1] = *&v51;
        LOBYTE(v51) = v40[2];
        a11 = v51;
        a9 = v48 + (a11 * v49);
        v40[2] = a9;
        ++v39;
        v40 += 4;
      }

      while (a2 != v39);
    }

    v36 = 0;
    v33 = 1;
  }

  while ((v38 & 1) != 0);
  v52 = 0;
  v53 = (a4 - 2) * v16;
  v54 = (8 * v16) | 7;
  v55 = 1;
  do
  {
    v56 = v55;
    if (v53 >= 1)
    {
      v57 = v52 * v35;
      v58 = result + 4 * v57;
      v59 = v58 + 4 * v16 + 4 * v53;
      v60 = result + 4 * (v16 + v57);
      do
      {
        v61 = v58 + v54;
        v62 = v58 + v17;
        if (v56)
        {
          LOBYTE(v37) = *(v58 + 7);
          v63 = LODWORD(v37);
          LOBYTE(a9) = *(v62 + 7);
          v64 = LODWORD(a9);
          LOBYTE(a9) = *(v58 + v54);
          v65 = LODWORD(a9);
          v66 = 0.0;
          v67 = 0.0;
          v68 = 0.0;
        }

        else
        {
          LOBYTE(v37) = *(v58 - 1);
          v66 = LODWORD(v37);
          LOBYTE(v37) = *(v62 - 1);
          v67 = LODWORD(v37);
          LOBYTE(v37) = *(v61 - 8);
          v68 = LODWORD(v37);
          v63 = 0.0;
          v64 = 0.0;
          v65 = 0.0;
        }

        LOBYTE(v13) = *(v58 + 3);
        v13 = LODWORD(v13);
        LOBYTE(v14) = *(v61 - 4);
        v14 = LODWORD(v14);
        *&v69 = ((v64 + (v63 + v64)) + v65) - ((v67 + (v66 + v67)) + v68);
        v70 = sqrtf((((v65 + ((v68 + v14) + v14)) - (v63 + ((v66 + v13) + v13))) * ((v65 + ((v68 + v14) + v14)) - (v63 + ((v66 + v13) + v13)))) + (*&v69 * *&v69)) * 0.2;
        a9 = (v70 * -0.0039216) + 1.0;
        v71 = (v58 + v17);
        LOBYTE(v69) = *v71;
        *&v72 = v70 + (v69 * a9);
        *v71 = *&v72;
        LOBYTE(v72) = v71[1];
        *&v73 = v70 + (v72 * a9);
        v71[1] = *&v73;
        LOBYTE(v73) = v71[2];
        v37 = v70 + (v73 * a9);
        v71[2] = v37;
        v60 += v17;
        v58 = v62;
      }

      while (v60 < v59);
    }

    v55 = 0;
    v52 = 1;
  }

  while ((v56 & 1) != 0);
  return result;
}

id CKEnhanceImageEdges(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 size], v3 >= 1.0) && (objc_msgSend(v2, "size"), v4 >= 1.0))
  {
    v7 = [v2 CGImage];
    Width = CGImageGetWidth(v7);
    Height = CGImageGetHeight(v7);
    v10 = malloc_type_malloc(4 * Width * Height, 0x100004052888210uLL);
    bzero(v10, 4 * Width * Height);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v12 = CGBitmapContextCreate(v10, Width, Height, 8uLL, 4 * Width, DeviceRGB, 1u);
    v25.size.width = Width;
    v25.size.height = Height;
    v25.origin.x = 0.0;
    v25.origin.y = 0.0;
    CGContextDrawImage(v12, v25, v7);
    CKEnhanceBitmapEdges(v10, Width, 4 * Width, Height, v13, v14, v15, v16, v17, v18, v19, v20);
    Image = CGBitmapContextCreateImage(v12);
    CGContextRelease(v12);
    v22 = MEMORY[0x1E69DCAB8];
    [v2 scale];
    v5 = [v22 imageWithCGImage:Image scale:objc_msgSend(v2 orientation:{"imageOrientation"), v23}];
    CGImageRelease(Image);
    free(v10);
    CGColorSpaceRelease(DeviceRGB);
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

void sub_190546444(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_19054A188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1905574A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19055A674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19055E060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Unwind_Resume(a1);
}

void sub_19055EC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_190565AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190565E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19056ED98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19056FB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19056FCDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_190570B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _SavedCountDescriptionWithCounts(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = a1[2];
  if (*a1 == 0x7FFFFFFFFFFFFFFFLL || v2 == 0x7FFFFFFFFFFFFFFFLL || v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_9;
  }

  v6 = 0;
  if (a2 != -1)
  {
    v9 = v2 + *a1 + v3;
    if (v9)
    {
      if (v9 == a2)
      {
        v11 = *a1;
        v12 = a1[2];
        v6 = _LocalizedStringForDetailedCounts(&v11, @"CKPhotosGridFooterViewModelPhotosSavedAllTitle", @"CKPhotosGridFooterViewModelVideosSavedAllTitle", @"CKPhotosGridFooterViewModelItemsSavedAllTitle");
        goto LABEL_10;
      }

      if (a2 >= 1)
      {
        v11 = *a1;
        v12 = a1[2];
        v10 = _LocalizedStringForDetailedCounts(&v11, @"CKPhotosGridFooterViewModelPhotosSavedTitleFormat", @"CKPhotosGridFooterViewModelVideosSavedTitleFormat", @"CKPhotosGridFooterViewModelItemsSavedTitleFormat");
        v6 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v10 validFormatSpecifiers:@"%tu" error:0, a2];

        goto LABEL_10;
      }

LABEL_9:
      v6 = 0;
    }
  }

LABEL_10:

  return v6;
}

void *__getPLLocalizedCountDescriptionSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!PhotoLibraryServicesCoreLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __PhotoLibraryServicesCoreLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E72F39B0;
    v6 = 0;
    PhotoLibraryServicesCoreLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v2 = PhotoLibraryServicesCoreLibraryCore_frameworkLibrary_0;
  if (!PhotoLibraryServicesCoreLibraryCore_frameworkLibrary_0)
  {
    __getPLLocalizedCountDescriptionSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "PLLocalizedCountDescription");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPLLocalizedCountDescriptionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PhotoLibraryServicesCoreLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  PhotoLibraryServicesCoreLibraryCore_frameworkLibrary_0 = result;
  return result;
}

id _LocalizedStringForDetailedCounts(uint64_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v15 = *a1 == 0x7FFFFFFFFFFFFFFFLL || v11 == 0x7FFFFFFFFFFFFFFFLL || v13 == 0x7FFFFFFFFFFFFFFFLL;
  if (v15 || (!v12 || v11 || (v16 = v7, v13)) && (v12 || !v11 || (v16 = v8, v13)))
  {
    v16 = v9;
  }

  v17 = v16;
  v18 = CKFrameworkBundle();
  v19 = [v18 localizedStringForKey:v17 value:&stru_1F04268F8 table:@"ChatKit"];

  return v19;
}

void sub_190579DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_190583AAC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x190583A4CLL);
  }

  _Unwind_Resume(a1);
}

void sub_190583EE4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x190583E94);
  }

  _Unwind_Resume(a1);
}

void sub_19058422C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1905841E4);
  }

  _Unwind_Resume(a1);
}

void sub_1905869B8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x190586960);
  }

  _Unwind_Resume(a1);
}

void sub_190590340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void CKSeparateInsertionsAndDeletions(void *a1, void *a2, unint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a1;
  v16 = a2;
  *a5 = [MEMORY[0x1E696AC90] indexSetWithIndex:a3];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = a4;
  v17 = [v16 countOfIndexesInRange:{0, a4}];
  v23[3] -= v17;
  v18 = [v15 mutableCopy];
  [v18 removeIndex:a3];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __CKSeparateInsertionsAndDeletions_block_invoke;
  v21[3] = &unk_1E72F2AD8;
  v21[4] = &v22;
  [v18 enumerateIndexesUsingBlock:v21];
  *a6 = [MEMORY[0x1E696AC90] indexSetWithIndex:v23[3]];
  [v18 shiftIndexesStartingAtIndex:v23[3] by:1];
  v19 = 1;
  if (v23[3] < a3)
  {
    v19 = 2;
  }

  [v18 shiftIndexesStartingAtIndex:v19 + a3 by:-1];
  *a7 = [v18 copy];
  v20 = [v16 mutableCopy];
  [v20 removeIndex:a4];
  *a8 = [v20 copy];

  _Block_object_dispose(&v22, 8);
}

void sub_1905919C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CKSeparateInsertionsAndDeletions_block_invoke(uint64_t result, unint64_t a2)
{
  v2 = *(*(result + 32) + 8);
  v3 = *(v2 + 24);
  if (v3 >= a2)
  {
    *(v2 + 24) = v3 + 1;
  }

  return result;
}

void sub_1905929F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

double __kCLLocationCoordinate2DInvalid()
{
  if (__kCLLocationCoordinate2DInvalid_once != -1)
  {
    __kCLLocationCoordinate2DInvalid_cold_1();
  }

  return *&__kCLLocationCoordinate2DInvalid___kCLLocationCoordinate2DInvalid;
}

void sub_19059CAC4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x19059C9FCLL);
  }

  _Unwind_Resume(a1);
}

__n128 ____kCLLocationCoordinate2DInvalid_block_invoke()
{
  result = *MEMORY[0x193AF5ED0]("kCLLocationCoordinate2DInvalid", @"CoreLocation");
  __kCLLocationCoordinate2DInvalid___kCLLocationCoordinate2DInvalid = result;
  return result;
}

uint64_t __TelephonyUtilitiesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  TelephonyUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_19059F008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19059F4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&a24);
  objc_destroyWeak(&a29);
  _Unwind_Resume(a1);
}

void sub_1905A6AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1905A9E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LODWORD(a9) = 138412290;
        *(&a9 + 4) = v9;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "CKComposeChatController - Failed to process biz intent, %@", &a9, 0xCu);
      }
    }

    objc_end_catch();
    JUMPOUT(0x1905A9E10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1905AB64C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1905AB5CCLL);
  }

  _Unwind_Resume(a1);
}

void sub_1905B17D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1905B1784);
  }

  _Unwind_Resume(exception_object);
}

Class __getFKOrderMessagesPreviewMetadataClass_block_invoke_0(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!FinanceKitLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __FinanceKitLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E72F3FC8;
    v5 = 0;
    FinanceKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!FinanceKitLibraryCore_frameworkLibrary_0)
  {
    __getFKOrderMessagesPreviewMetadataClass_block_invoke_cold_2_0(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("FKOrderMessagesPreviewMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFKOrderMessagesPreviewMetadataClass_block_invoke_cold_1_0();
  }

  getFKOrderMessagesPreviewMetadataClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FinanceKitLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  FinanceKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_1905B55A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1905B741C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1905B7FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_8_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id _drawingAttributes()
{
  v11[3] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v0 setLineBreakMode:5];
  [v0 setAllowsDefaultTighteningForTruncation:1];
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v2 = MEMORY[0x1E69DB950];
  if (!IsBoldTextEnabled)
  {
    v2 = MEMORY[0x1E69DB970];
  }

  v3 = *v2;
  v10[0] = *MEMORY[0x1E69DB648];
  v4 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0 weight:v3];
  v5 = *MEMORY[0x1E69DB688];
  v11[0] = v4;
  v11[1] = v0;
  v6 = *MEMORY[0x1E69DB650];
  v10[1] = v5;
  v10[2] = v6;
  v7 = [MEMORY[0x1E69DC888] systemWhiteColor];
  v11[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

void sub_1905BED30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1905BF78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1905C2984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFMUILocationDetailViewControllerClass_block_invoke_0(uint64_t a1)
{
  FindMyUICoreLibrary_0();
  result = objc_getClass("FMUILocationDetailViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFMUILocationDetailViewControllerClass_block_invoke_cold_1_0();
  }

  getFMUILocationDetailViewControllerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void FindMyUICoreLibrary_0()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!FindMyUICoreLibraryCore_frameworkLibrary_2)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __FindMyUICoreLibraryCore_block_invoke_2;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E72F4368;
    v2 = 0;
    FindMyUICoreLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  if (!FindMyUICoreLibraryCore_frameworkLibrary_2)
  {
    FindMyUICoreLibrary_cold_1_0(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __FindMyUICoreLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  FindMyUICoreLibraryCore_frameworkLibrary_2 = result;
  return result;
}

Class __getFMUILocationDetailViewControllerViewOptionsClass_block_invoke_0(uint64_t a1)
{
  FindMyUICoreLibrary_0();
  result = objc_getClass("FMUILocationDetailViewControllerViewOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFMUILocationDetailViewControllerViewOptionsClass_block_invoke_cold_1_0();
  }

  getFMUILocationDetailViewControllerViewOptionsClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

__CFString *CKUnlocalizedStringFromAvailability(int a1)
{
  if ((a1 + 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_1E72F4408[(a1 + 1)];
  }
}

id CKBalloonDescriptorKey(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  memset(v11, 0, sizeof(v11));
  v9 = 0u;
  v10 = 0u;
  LODWORD(v5) = *a1;
  *(&v5 + 1) = *(a1 + 8);
  *&v6 = *(a1 + 16);
  BYTE8(v6) = *(a1 + 24);
  v1 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = v1;
  v2 = *(a1 + 80);
  v9 = *(a1 + 64);
  v10 = v2;
  LOBYTE(v11[0]) = *(a1 + 96);
  *(v11 + 8) = *(a1 + 104);
  DWORD2(v11[1]) = *(a1 + 120);
  BYTE12(v11[1]) = *(a1 + 124);
  v3 = [MEMORY[0x1E696B098] value:&v5 withObjCType:"{CKBalloonDescriptor_t=ccccQdc{IMColorComponents=dddd}{IMColorComponents=dddd}BqqBBBBB}"];

  return v3;
}

id CKUITraitCollectionForBalloonDescriptor(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:*(a1 + 104)];
  v3 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceLevel:*(a1 + 112)];
  v4 = MEMORY[0x1E69DD1B8];
  v8[0] = v2;
  v8[1] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = [v4 traitCollectionWithTraitsFromCollections:v5];

  return v6;
}

id CKResolvedColorForBalloonDescriptor(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 2);
  if ((v2 - 2) >= 4)
  {
    if (v2 == 1)
    {
      v1 = [MEMORY[0x1E69DC888] ck_colorWithIMColorComponents:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
    }

    else if (!*(a1 + 2))
    {
      v4 = +[CKUIBehavior sharedBehaviors];
      v5 = [v4 theme];
      v6 = [v5 balloonColorsForColorType:*(a1 + 24)];
      v1 = [v6 lastObject];
    }

    v7 = *(a1 + 80);
    v14[4] = *(a1 + 64);
    v14[5] = v7;
    v8 = *(a1 + 112);
    v14[6] = *(a1 + 96);
    v14[7] = v8;
    v9 = *(a1 + 16);
    v14[0] = *a1;
    v14[1] = v9;
    v10 = *(a1 + 48);
    v14[2] = *(a1 + 32);
    v14[3] = v10;
    v11 = CKUITraitCollectionForBalloonDescriptor(v14);
    v12 = [v1 resolvedColorForTraitCollection:v11];

    v1 = v12;
  }

  return v1;
}

id CKResolvedBackgroundColorForBalloonDescriptor(uint64_t a1)
{
  v2 = *(a1 + 2);
  if (v2 <= 5)
  {
    if (((1 << v2) & 0x2B) != 0 && *(a1 + 120) != 1)
    {
      v1 = [MEMORY[0x1E69DC888] clearColor];
    }

    else
    {
      v4 = +[CKUIBehavior sharedBehaviors];
      v5 = [v4 theme];
      v6 = [v5 transcriptBackgroundColor];

      v7 = *(a1 + 80);
      v13[4] = *(a1 + 64);
      v13[5] = v7;
      v8 = *(a1 + 112);
      v13[6] = *(a1 + 96);
      v13[7] = v8;
      v9 = *(a1 + 16);
      v13[0] = *a1;
      v13[1] = v9;
      v10 = *(a1 + 48);
      v13[2] = *(a1 + 32);
      v13[3] = v10;
      v11 = CKUITraitCollectionForBalloonDescriptor(v13);
      v1 = [v6 resolvedColorForTraitCollection:v11];
    }
  }

  return v1;
}

id CKResolvedBackgroundColorForOnboardingBalloonDescriptor(uint64_t a1)
{
  if (*(a1 + 104) == 2)
  {
    v2 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }

  else
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    v4 = [v3 theme];
    v2 = [v4 transcriptBackgroundColor];
  }

  v5 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v5;
  v6 = *(a1 + 112);
  v12[6] = *(a1 + 96);
  v12[7] = v6;
  v7 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v7;
  v8 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v8;
  v9 = CKUITraitCollectionForBalloonDescriptor(v12);
  v10 = [v2 resolvedColorForTraitCollection:v9];

  return v10;
}

__CFString *NSStringFromBalloonOrientation(int a1)
{
  v1 = @"CKBalloonOrientationRight";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"CKBalloonOrientationLeft";
  }
}

__CFString *NSStringFromTranscriptOrientation(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E72F4420[a1];
  }
}

__CFString *NSStringFromColorType(int a1)
{
  if ((a1 + 2) > 0x11)
  {
    return 0;
  }

  else
  {
    return off_1E72F4438[(a1 + 2)];
  }
}

__CFString *NSStringFromBalloonShape(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E72F44C8[a1];
  }
}

__CFString *NSStringFromTailShape(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E72F4528[a1];
  }
}

__CFString *NSStringFromBalloonStyle(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E72F44F8[a1];
  }
}

id NSStringFromUIRectCorner(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = v2;
  if (a1)
  {
    if ([v2 length])
    {
      [v3 appendFormat:@"|%@", @"UIRectCornerAllCorners"];
      if ((a1 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      [v3 appendString:@"UIRectCornerAllCorners"];
      if ((a1 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    if (![v3 length])
    {
      [v3 appendString:@"UIRectCornerTopLeft"];
      if ((a1 & 2) == 0)
      {
LABEL_9:
        if ((a1 & 4) == 0)
        {
          goto LABEL_10;
        }

LABEL_17:
        if ([v3 length])
        {
          [v3 appendFormat:@"|%@", @"UIRectCornerBottomLeft"];
          if ((a1 & 8) == 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          [v3 appendString:@"UIRectCornerBottomLeft"];
          if ((a1 & 8) == 0)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_21;
      }

LABEL_13:
      if ([v3 length])
      {
        [v3 appendFormat:@"|%@", @"UIRectCornerTopRight"];
        if ((a1 & 4) != 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        [v3 appendString:@"UIRectCornerTopRight"];
        if ((a1 & 4) != 0)
        {
          goto LABEL_17;
        }
      }

LABEL_10:
      if ((a1 & 8) == 0)
      {
        goto LABEL_24;
      }

LABEL_21:
      if ([v3 length])
      {
        [v3 appendFormat:@"|%@", @"UIRectCornerBottomRight"];
      }

      else
      {
        [v3 appendString:@"UIRectCornerBottomRight"];
      }

      goto LABEL_24;
    }

    [v3 appendFormat:@"|%@", @"UIRectCornerTopLeft"];
LABEL_8:
    if ((a1 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

LABEL_24:

  return v3;
}

id NSStringFromBalloonDescriptor(char *a1)
{
  v20 = MEMORY[0x1E696AEC0];
  v2 = NSStringFromBalloonShape(*a1);
  v3 = a1[1];
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E72F4528[v3];
  }

  if (a1[121])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = NSStringFromBalloonStyle(a1[2]);
  v7 = @"CKBalloonOrientationRight";
  if (a1[3] != 1)
  {
    v7 = 0;
  }

  if (a1[3])
  {
    v8 = v7;
  }

  else
  {
    v8 = @"CKBalloonOrientationLeft";
  }

  v9 = a1[24];
  v10 = v8;
  v11 = NSStringFromColorType(v9);
  v19 = *(a1 + 4);
  v12 = *(a1 + 10);
  v13 = *(a1 + 11);
  v14 = NSStringFromUIRectCorner(*(a1 + 1));
  v15 = v14;
  if (a1[121])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v17 = [v20 stringWithFormat:@"CKBalloonDescriptor_t = Shape:%@, HasTail:%@, TailShape:%@, BalloonStyle:%@, BalloonOrientation:%@, BalloonColor:%@, BalloonStrokeColor:{R:%f G:%f B:%f A:%f}, BallloonCorners:%@, useOpaqueMask:%@, interfaceStyle:%ld, interfaceLevel:%ld", v2, v5, v4, v6, v10, v11, v19, v12, v13, v14, v16, *(a1 + 13), *(a1 + 14)];

  return v17;
}

id OUTLINED_FUNCTION_0_10(id a1)
{

  return a1;
}

void sub_1905C982C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 120));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1905C99A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_1905C9B30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

void sub_1905C9C1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_1905C9EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1905CA96C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1905CAB1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1905CDDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1905D0498(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1905D2E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1905DA300(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1905DA240);
  }

  _Unwind_Resume(a1);
}

void sub_1905DFE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1905E0810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1905E4B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1905E6014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getAFPreferencesClass_block_invoke(uint64_t a1)
{
  AssistantServicesLibrary();
  result = objc_getClass("AFPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAFPreferencesClass_block_invoke_cold_1();
  }

  getAFPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AssistantServicesLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __AssistantServicesLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E72F4858;
    v4 = 0;
    AssistantServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AssistantServicesLibraryCore_frameworkLibrary;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    AssistantServicesLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __AssistantServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAFDictationRestrictedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AssistantServicesLibrary();
  result = dlsym(v2, "AFDictationRestricted");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFDictationRestrictedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1905EF424(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1905F15FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1905F1D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1905F3628(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1905F69AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1905F7A64(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1905F7A10);
  }

  _Unwind_Resume(a1);
}

void sub_1905F96B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1905FC2E8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1905FC2ACLL);
  }

  _Unwind_Resume(a1);
}

void sub_1905FD2B0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1905FD17CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1905FF3E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *CKErrorStringForCKMessageContentError(uint64_t a1)
{
  if (a1 > 2003)
  {
    if (a1 > 2999)
    {
      if (a1 == 3000)
      {
        return @"CKMessageContentErrorNeedsMMS";
      }

      if (a1 == 3001)
      {
        return @"CKMessageContentErrorNeedsiMessage";
      }
    }

    else
    {
      if (a1 == 2004)
      {
        return @"CKMessageContentErrorAlreadyHasRichContent";
      }

      if (a1 == 2005)
      {
        return @"CKMessageContentErrorMediaTooLong";
      }
    }

    return @"CKMessageContentErrorNone";
  }

  if (a1 <= 2001)
  {
    if (a1 == 1001)
    {
      return @"CKMessageContentErrorUnknownMessageParts";
    }

    if (a1 == 2001)
    {
      return @"CKMessageContentErrorTooManyAttachments";
    }

    return @"CKMessageContentErrorNone";
  }

  if (a1 == 2002)
  {
    return @"CKMessageContentErrorTooManyImages";
  }

  else
  {
    return @"CKMessageContentErrorRestrictedAttachments";
  }
}

void sub_190616564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190616730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1906168FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190616AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19061A754(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x19061A6B0);
  }

  _Unwind_Resume(a1);
}

void sub_19061BD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19061D4D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1906218F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

void sub_1906220D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x190622078);
  }

  _Unwind_Resume(exception_object);
}

void sub_19062CFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CKMediaObjectBackedAsset *_MediaObjectBackedAssetForPhotoKitAsset(void *a1, void *a2)
{
  v2 = CKChatItemForMomentShareAsset(a1, a2);
  if (v2)
  {
    v3 = [[CKMediaObjectBackedAsset alloc] initWithChatItem:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_19062F1F4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x19062EFF4);
  }

  _Unwind_Resume(a1);
}

id messageItemCopyForMessageItem(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, int a6)
{
  v9 = a1;
  v75 = a4;
  v74 = a5;
  v10 = [v9 guid];
  v11 = v10;
  if (a6)
  {
    v12 = simulatedChatPairedGUIDForGUID(v10);
    v13 = v11;
    v11 = v12;
  }

  v73 = v11;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v9 associatedMessageGUID];
    v15 = v14;
    if (a6)
    {
      v16 = simulatedChatPairedGUIDForGUID(v14);

      v89 = v16;
    }

    else
    {
      v89 = v14;
    }

    v56 = objc_alloc(MEMORY[0x1E69A7EF0]);
    v62 = [v9 senderInfo];
    v88 = [MEMORY[0x1E695DF00] date];
    v60 = [MEMORY[0x1E695DF00] date];
    v58 = [v9 subject];
    v87 = [v9 body];
    v86 = [v9 bodyData];
    v85 = [v9 fileTransferGUIDs];
    v84 = [v9 account];
    v83 = [v9 accountID];
    v82 = [v9 service];
    v81 = [v9 handle];
    v80 = [v9 roomName];
    v79 = [v9 unformattedID];
    v77 = [v9 countryCode];
    v54 = [v9 expireState];
    v76 = [v9 balloonBundleID];
    v31 = [v9 payloadData];
    v32 = [v9 expressiveSendStyleID];
    v33 = [v9 timeExpressiveSendPlayed];
    v70 = [v9 associatedMessageType];
    v68 = [v9 associatedMessageRange];
    v35 = v34;
    v36 = [v9 associatedMessageEmoji];
    v37 = [v9 biaReferenceID];
    v38 = [v9 messageSummaryInfo];
    v39 = [v9 partCount];
    v40 = [v9 cloudKitChatID];
    v53 = v39;
    v63 = v38;
    v64 = v37;
    v52 = v37;
    v65 = v36;
    v50 = v35;
    v49 = v68;
    v47 = v70;
    LODWORD(v46) = 0;
    v66 = v33;
    v67 = v32;
    v69 = v31;
    v27 = v73;
    v29 = v60;
    v28 = v58;
    v30 = [v56 initWithSenderInfo:v62 time:v88 timeRead:0 timeDelivered:v87 timePlayed:v86 subject:0 body:v85 bodyData:a2 attributes:v73 fileTransferGUIDs:a3 flags:v84 guid:v83 messageID:v82 account:v81 accountID:v80 service:v79 handle:v77 roomName:v54 unformattedID:v76 countryCode:v31 expireState:v32 balloonBundleID:v33 payloadData:v46 expressiveSendStyleID:v89 timeExpressiveSendPlayed:v47 errorType:v49 associatedMessageGUID:v50 associatedMessageType:v36 associatedMessageRange:0 associatedMessageEmoji:0 bizIntent:v52 locale:v38 biaReferenceID:v53 messageSummaryInfo:0 partCount:0 threadIdentifier:0 dateRecovered:0 scheduleType:v40 scheduleState:? cloudKitChatID:?];

    v26 = v62;
  }

  else
  {
    v55 = objc_alloc(MEMORY[0x1E69A8138]);
    v89 = [v9 senderInfo];
    v61 = [MEMORY[0x1E695DF00] date];
    v88 = [MEMORY[0x1E695DF00] date];
    v59 = [v9 subject];
    v57 = [v9 body];
    v87 = [v9 bodyData];
    v86 = [v9 fileTransferGUIDs];
    v85 = [v9 account];
    v84 = [v9 accountID];
    v83 = [v9 service];
    v82 = [v9 handle];
    v81 = [v9 roomName];
    v80 = [v9 unformattedID];
    v17 = [v9 countryCode];
    v78 = [v9 expireState];
    v18 = [v9 balloonBundleID];
    v19 = [v9 payloadData];
    v20 = [v9 expressiveSendStyleID];
    v21 = [v9 timeExpressiveSendPlayed];
    v22 = [v9 biaReferenceID];
    v23 = [v9 syndicationRanges];
    v24 = [v9 syncedSyndicationRanges];
    v25 = [v9 partCount];
    v63 = [v9 cloudKitChatID];
    v64 = v24;
    v51 = v25;
    v26 = v61;
    v65 = v23;
    LODWORD(v48) = 0;
    v66 = v22;
    v67 = v21;
    v69 = v20;
    v45 = v20;
    v76 = v19;
    v77 = v18;
    v44 = v18;
    v43 = v78;
    v79 = v17;
    v42 = v17;
    v27 = v73;
    v28 = v57;
    v29 = v59;
    v30 = [v55 initWithSenderInfo:v89 time:v61 timeRead:0 timeDelivered:v88 timePlayed:0 subject:v57 body:v87 bodyData:0 attributes:v86 fileTransferGUIDs:a2 flags:v73 guid:a3 messageID:v85 account:v84 accountID:v83 service:v82 handle:v81 roomName:v80 unformattedID:v42 countryCode:v43 expireState:v44 balloonBundleID:v19 payloadData:v45 expressiveSendStyleID:v21 timeExpressiveSendPlayed:0 bizIntent:0 locale:v22 biaReferenceID:v48 errorType:0 threadIdentifier:v23 syndicationRanges:v24 syncedSyndicationRanges:v51 partCount:0 dateEdited:0 dateRecovered:0 scheduleType:0 scheduleState:v63 cloudKitChatID:?];
  }

  [v30 _updateContextWithSenderHandle:v75 otherHandle:v74];

  return v30;
}

id simulatedChatPairedGUIDForGUID(void *a1)
{
  v1 = a1;
  v2 = [v1 rangeOfString:@":"];
  v4 = v3;
  v5 = [v1 rangeOfString:@"/"];
  if (v4)
  {
    v7 = v2;
  }

  else
  {
    v7 = -1;
  }

  if (v6)
  {
    v8 = v5;
  }

  else
  {
    v8 = -1;
  }

  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = [v1 substringToIndex:v9 + 1];
  v11 = v10;
  v12 = [v1 substringFromIndex:v9 + 1];

  v13 = v10;
  if (simulatedChatPairedGUIDForGUID_onceToken != -1)
  {
    simulatedChatPairedGUIDForGUID_cold_1();
  }

  v14 = [simulatedChatPairedGUIDForGUID_firstGUIDToSecondGUIDMap objectForKeyedSubscript:v12];

  if (v14)
  {
    v15 = simulatedChatPairedGUIDForGUID_firstGUIDToSecondGUIDMap;
LABEL_16:
    v17 = [v15 objectForKeyedSubscript:v12];
    goto LABEL_17;
  }

  v16 = [simulatedChatPairedGUIDForGUID_secondGUIDToFirstGUIDMap objectForKeyedSubscript:v12];

  if (v16)
  {
    v15 = simulatedChatPairedGUIDForGUID_secondGUIDToFirstGUIDMap;
    goto LABEL_16;
  }

  v19 = [MEMORY[0x1E696AEC0] stringGUID];
  [simulatedChatPairedGUIDForGUID_firstGUIDToSecondGUIDMap setObject:v19 forKeyedSubscript:v12];
  [simulatedChatPairedGUIDForGUID_secondGUIDToFirstGUIDMap setObject:v12 forKeyedSubscript:v19];
  v17 = [v13 stringByAppendingString:v19];

LABEL_17:

  return v17;
}

void __simulatedChatPairedGUIDForGUID_block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = simulatedChatPairedGUIDForGUID_firstGUIDToSecondGUIDMap;
  simulatedChatPairedGUIDForGUID_firstGUIDToSecondGUIDMap = v0;

  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = simulatedChatPairedGUIDForGUID_secondGUIDToFirstGUIDMap;
  simulatedChatPairedGUIDForGUID_secondGUIDToFirstGUIDMap = v2;
}

void sub_190637DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19063C940(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x19063C918);
  }

  _Unwind_Resume(a1);
}

void sub_19063ED48(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x19063ED00);
  }

  _Unwind_Resume(a1);
}

void sub_19063F01C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x19063EFD4);
  }

  _Unwind_Resume(a1);
}

void sub_19063F308(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x19063F270);
  }

  _Unwind_Resume(a1);
}

void sub_190641030(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x190640E78);
  }

  _Unwind_Resume(a1);
}

void sub_190642134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_190643F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1906444DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  objc_destroyWeak((v32 + 40));
  objc_destroyWeak((v33 + 40));
  objc_destroyWeak(&a32);
  objc_destroyWeak((v34 - 112));
  _Unwind_Resume(a1);
}

void __CKShadowImageCreateWithShadowProperties_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = CKShadowImageCreateWithShadowProperties_shadowImages;
  CKShadowImageCreateWithShadowProperties_shadowImages = v0;
}

void sub_19064C060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19064D2E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __setupCoreSpotlight_block_invoke()
{
  _CKMDSearchQueryClass = MEMORY[0x193AF5EC0](@"MDSearchQuery", @"CoreSpotlight");
  if (!_CKMDSearchQueryOptionFetchAttributes)
  {
    v0 = MEMORY[0x193AF5ED0]("MDSearchQueryOptionFetchAttributes", @"CoreSpotlight");
    if (v0)
    {
      v1 = *v0;
    }

    else
    {
      v1 = 0;
    }

    objc_storeStrong(&_CKMDSearchQueryOptionFetchAttributes, v1);
  }

  if (!_CKMDItemAuthors)
  {
    v2 = MEMORY[0x193AF5ED0]("MDItemAuthors", @"CoreSpotlight");
    if (v2)
    {
      v3 = *v2;
    }

    else
    {
      v3 = 0;
    }

    objc_storeStrong(&_CKMDItemAuthors, v3);
  }

  if (!_CKMDItemAuthorAddresses)
  {
    v4 = MEMORY[0x193AF5ED0]("MDItemAuthorAddresses", @"CoreSpotlight");
    if (v4)
    {
      v5 = *v4;
    }

    else
    {
      v5 = 0;
    }

    objc_storeStrong(&_CKMDItemAuthorAddresses, v5);
  }

  if (!_CKMDItemRecipients)
  {
    v6 = MEMORY[0x193AF5ED0]("MDItemRecipients", @"CoreSpotlight");
    if (v6)
    {
      v7 = *v6;
    }

    else
    {
      v7 = 0;
    }

    objc_storeStrong(&_CKMDItemRecipients, v7);
  }

  if (!_CKMDItemRecipientAddresses)
  {
    v8 = MEMORY[0x193AF5ED0]("MDItemRecipientAddresses", @"CoreSpotlight");
    if (v8)
    {
      v9 = *v8;
    }

    else
    {
      v9 = 0;
    }

    objc_storeStrong(&_CKMDItemRecipientAddresses, v9);
  }

  if (!_CKMDItemSubject)
  {
    v10 = MEMORY[0x193AF5ED0]("MDItemSubject", @"CoreSpotlight");
    if (v10)
    {
      v11 = *v10;
    }

    else
    {
      v11 = 0;
    }

    objc_storeStrong(&_CKMDItemSubject, v11);
  }

  if (!_CKMDItemTextContent)
  {
    v12 = MEMORY[0x193AF5ED0]("MDItemTextContent", @"CoreSpotlight");
    if (v12)
    {
      v13 = *v12;
    }

    else
    {
      v13 = 0;
    }

    objc_storeStrong(&_CKMDItemTextContent, v13);
  }

  if (!_CKMDItemInstantMessageAddresses)
  {
    v14 = MEMORY[0x193AF5ED0]("MDItemInstantMessageAddresses", @"CoreSpotlight");
    if (v14)
    {
      v15 = *v14;
    }

    else
    {
      v15 = 0;
    }

    objc_storeStrong(&_CKMDItemInstantMessageAddresses, v15);
  }

  if (!_CKMDItemSnippet)
  {
    v16 = MEMORY[0x193AF5ED0]("MDItemSnippet", @"CoreSpotlight");
    if (v16)
    {
      v17 = *v16;
    }

    else
    {
      v17 = 0;
    }

    objc_storeStrong(&_CKMDItemSnippet, v17);
  }
}

void _popToConversationListOnRestore(uint64_t a1, void *a2)
{
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Received darwin notification that a chat was restored. Will bring user back to conversation list", v7, 2u);
  }

  v4 = a2;
  v5 = [v4 navigationController];
  v6 = [v5 popToViewController:v4 animated:1];
}

id CKSearchSignpostLogHandle()
{
  if (CKSearchSignpostLogHandle_onceToken != -1)
  {
    CKSearchSignpostLogHandle_cold_1();
  }

  v1 = CKSearchSignpostLogHandle_osLog;

  return v1;
}

void __CKSearchSignpostLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.Messages", "CKSearchSignpost");
  v1 = CKSearchSignpostLogHandle_osLog;
  CKSearchSignpostLogHandle_osLog = v0;
}

void sub_1906543A4(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1906541C4);
  }

  _Unwind_Resume(exception_object);
}

void sub_190655A90(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1906554F8);
  }

  _Unwind_Resume(a1);
}

BOOL gestureRecognizerIsAllowed(void *a1)
{
  v1 = a1;
  v2 = [v1 delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v3 = 1;
  }

  else
  {
    objc_opt_class();
    v3 = (objc_opt_isKindOfClass() & 1) != 0 && [v1 numberOfTapsRequired] > 1;
  }

  return v3;
}

void setUpVibrancyForLayerWithInputColors(void *a1, int a2, int a3, void *a4, void *a5)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x1E6979378];
  v12 = MEMORY[0x1E6979D88];
  if (!(a2 | a3))
  {
    v12 = MEMORY[0x1E6979D90];
  }

  v13 = *v12;
  v14 = a1;
  v15 = [v11 filterWithType:v13];
  if (v9 && v10)
  {
    v16 = [v9 CGColor];
    [v15 setValue:v16 forKeyPath:*MEMORY[0x1E6979AA8]];
    v17 = [v10 CGColor];
    [v15 setValue:v17 forKeyPath:*MEMORY[0x1E6979AB0]];
  }

  v19[0] = v15;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v14 setFilters:v18];

  [v14 setAllowsGroupBlending:0];
  [v14 setAllowsGroupOpacity:0];
}

void setUpVibrancyForLayer(void *a1, int a2, int a3, int a4)
{
  v7 = a1;
  v8 = 0;
  v10 = v7;
  if (a3)
  {
    v9 = 0;
    if ((a2 & 1) == 0)
    {
      v9 = [MEMORY[0x1E69DC888] colorWithRed:0.784313725 green:0.784313725 blue:0.784313725 alpha:0.6];
      v8 = [MEMORY[0x1E69DC888] colorWithRed:0.2 green:0.2 blue:0.2 alpha:1.0];
      v7 = v10;
    }
  }

  else
  {
    v9 = 0;
  }

  setUpVibrancyForLayerWithInputColors(v7, a2, a4, v9, v8);
}

uint64_t _RecentsUpdated(uint64_t a1, void *a2)
{
  result = [a2 isMemberOfClass:objc_opt_class()];
  if (result)
  {

    return [a2 performSelector:sel_recentsUpdated];
  }

  return result;
}

void sub_19066547C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_19066F4E4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x19066F4A0);
  }

  _Unwind_Resume(a1);
}

void sub_19066F954(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x19066F928);
  }

  _Unwind_Resume(a1);
}

void sub_190671728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1906726F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190672BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190672F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190673478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190673AD8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_190673DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19067C3B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19067DA6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19067DE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19067E15C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19067E348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19068076C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x19068064CLL);
  }

  _Unwind_Resume(a1);
}

void sub_190682F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1906835D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19068393C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190683CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190684AD0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1906849A4);
  }

  _Unwind_Resume(a1);
}

void sub_190687D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __DDActionClass()
{
  if (__DDActionClass_onceToken != -1)
  {
    __DDActionClass_cold_1();
  }

  v1 = __DDActionClass__actionClass;

  return v1;
}

void sub_19068A5AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19068A8D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_19068AAE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _LaunchAppExtensionForDebuggingNotificationHandler(uint64_t a1, void *a2)
{
  result = [a2 isMemberOfClass:objc_opt_class()];
  if (result)
  {

    return [a2 performSelector:sel__launchAppExtensionForDebugging];
  }

  return result;
}

void sub_1906908DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1906907BCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_190693108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTUIGenmojiCreationClass_block_invoke_0(uint64_t a1)
{
  if (!TextInputUILibraryCore_frameworkLibrary_0)
  {
    TextInputUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  result = objc_getClass("TUIGenmojiCreation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTUIGenmojiCreationClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TextInputUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  TextInputUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

BOOL _ChatItemCanBeCancelled(void *a1)
{
  v1 = a1;
  v2 = [v1 messageItem];
  v3 = [v2 scheduleType];

  if (v3 == 2)
  {
    v4 = [v1 messageItem];
    v5 = [v4 scheduleState];

    v6 = v5 == 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1906A595C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1906A80E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSCUIMoreHelpContextMenuClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!SensitiveContentAnalysisUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SensitiveContentAnalysisUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E72F5848;
    v5 = 0;
    SensitiveContentAnalysisUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SensitiveContentAnalysisUILibraryCore_frameworkLibrary)
  {
    __getSCUIMoreHelpContextMenuClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SCUIMoreHelpContextMenu");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSCUIMoreHelpContextMenuClass_block_invoke_cold_1();
  }

  getSCUIMoreHelpContextMenuClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SensitiveContentAnalysisUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SensitiveContentAnalysisUILibraryCore_frameworkLibrary = result;
  return result;
}

CKCache *CKCreateCache(uint64_t a1)
{
  v1 = a1;
  if (!a1)
  {
    v2 = +[CKUIBehavior sharedBehaviors];
    v1 = [v2 defaultConversationViewingMessageCount];
  }

  if (v1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = objc_alloc_init(CKCache);
  }

  else
  {
    v3 = [[CKLRUCache alloc] initWithMaximumCapacity:v1];
  }

  return v3;
}

void sub_1906A9428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1906A9C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CKBalloonViewReuse(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v6 = v1;
    v3 = CKIsRunningInCKTester();
    v2 = v6;
    if (!v3)
    {
      [v6 prepareForReuse];
      v4 = [MEMORY[0x1E696AF00] isMainThread];
      v2 = v6;
      if (v4)
      {
        v5 = CKBalloonViewCache();
        [v5 pushObject:v6 forKey:objc_opt_class()];

        v2 = v6;
      }
    }
  }
}

uint64_t CKBalloonViewCacheNeedsPrewarm()
{
  v0 = CKBalloonViewCache();
  v1 = [v0 cacheEligibleForPrewarm];

  return v1;
}

void CKPrewarmBalloonViewCacheIfNeeded()
{
  v22[1] = *MEMORY[0x1E69E9840];
  v0 = CKBalloonViewCache();
  v1 = [v0 cacheEligibleForPrewarm];

  if (v1)
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Prewarming cache", buf, 2u);
      }
    }

    v22[0] = objc_opt_class();
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v21[2] = objc_opt_class();
    v21[3] = objc_opt_class();
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
    v5 = +[CKUIBehavior sharedBehaviors];
    [v5 balloonMaskSizeWithTailShape:1 isMultiline:0];
    v7 = v6;
    v9 = v8;

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __CKPrewarmBalloonViewCacheIfNeeded_block_invoke;
    v15[3] = &__block_descriptor_64_e20_v24__0__NSArray_8Q16l;
    v16 = *MEMORY[0x1E695EFF8];
    v17 = v7;
    v18 = v9;
    v10 = _Block_copy(v15);
    v10[2](v10, v3, 10);
    v10[2](v10, v4, 2);
    v11 = CKBalloonViewCache();
    [v11 markCacheAsPrewarmed];

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = CKBalloonViewCache();
        v14 = [v13 count];
        *buf = 134217984;
        v20 = v14;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Prewarm complete, new count is %lu", buf, 0xCu);
      }
    }
  }
}

void __CKPrewarmBalloonViewCacheIfNeeded_block_invoke(double *a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (a3)
        {
          v10 = *(*(&v13 + 1) + 8 * v9);
          v11 = a3;
          do
          {
            v12 = [[v10 alloc] initWithFrame:{a1[4], a1[5], a1[6], a1[7]}];
            CKBalloonViewReuse(v12);

            --v11;
          }

          while (v11);
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

void CKPrewarmPluginBalloonCacheIfNeeded()
{
  v14 = *MEMORY[0x1E69E9840];
  if ((pluginBalloonCachePrewarmed & 1) == 0)
  {
    v0 = +[CKUIBehavior sharedBehaviors];
    v1 = *MEMORY[0x1E695EFF8];
    v2 = *(MEMORY[0x1E695EFF8] + 8);
    [v0 balloonMaskSizeWithTailShape:1 isMultiline:0];
    v4 = v3;
    v6 = v5;

    v7 = [[CKTranscriptPluginBalloonView alloc] initWithFrame:v1, v2, v4, v6];
    CKBalloonViewReuse(v7);

    v8 = [[CKTranscriptPluginBalloonView alloc] initWithFrame:v1, v2, v4, v6];
    CKBalloonViewReuse(v8);

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = CKBalloonViewCache();
        v12 = 134217984;
        v13 = [v10 count];
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Plugin balloon cache prewarm complete, new count is %lu", &v12, 0xCu);
      }
    }

    pluginBalloonCachePrewarmed = 1;
    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 postNotificationName:@"__kCKPrewarmBalloonPluginViewCacheCompletedNotification" object:0];
  }
}

void CKPrewarmBalloonViewMaskAndPunchOutCacheIfNeeded(void *a1)
{
  v62 = *MEMORY[0x1E69E9840];
  v22 = a1;
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19020E000, v1, OS_LOG_TYPE_INFO, "Prewarming cache for masks and punchouts", &buf, 2u);
    }
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v18 = [&unk_1F04E6E28 countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v18)
  {
    v17 = *v56;
    do
    {
      v2 = 0;
      do
      {
        if (*v56 != v17)
        {
          v3 = v2;
          objc_enumerationMutation(&unk_1F04E6E28);
          v2 = v3;
        }

        v23 = *(*(&v55 + 1) + 8 * v2);
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v20 = [&unk_1F04E6E10 countByEnumeratingWithState:&v51 objects:v60 count:{16, v2}];
        if (v20)
        {
          v19 = *v52;
          do
          {
            v4 = 0;
            do
            {
              if (*v52 != v19)
              {
                v5 = v4;
                objc_enumerationMutation(&unk_1F04E6E10);
                v4 = v5;
              }

              v21 = v4;
              v24 = *(*(&v51 + 1) + 8 * v4);
              v47 = 0u;
              v48 = 0u;
              v49 = 0u;
              v50 = 0u;
              v6 = [&unk_1F04E6E40 countByEnumeratingWithState:&v47 objects:v59 count:16];
              if (v6)
              {
                v7 = *v48;
                do
                {
                  for (i = 0; i != v6; ++i)
                  {
                    if (*v48 != v7)
                    {
                      objc_enumerationMutation(&unk_1F04E6E40);
                    }

                    v9 = *(*(&v47 + 1) + 8 * i);
                    v10 = [v23 unsignedIntValue];
                    v11 = [v24 unsignedIntValue];
                    LOBYTE(v9) = [v9 unsignedIntValue];
                    memset(v31, 0, sizeof(v31));
                    v30 = 0u;
                    v29 = 0u;
                    v28 = 0u;
                    v12 = [v22 userInterfaceStyle];
                    LOBYTE(buf) = v9;
                    *(&buf + 1) = 1;
                    BYTE3(buf) = v11;
                    DWORD1(buf) = 0;
                    *(&buf + 1) = -1;
                    v37 = 0;
                    v38 = v10;
                    v39 = 0u;
                    v40 = 0u;
                    v41 = 0u;
                    memset(v42, 0, sizeof(v42));
                    v43 = v12;
                    v44 = 0;
                    v45 = 257;
                    v46 = 0;
                    v13 = CKResizableBalloonPunchout(&buf);
                    LOBYTE(v25) = v9;
                    *(&v25 + 1) = 1;
                    BYTE3(v25) = v11;
                    DWORD1(v25) = 0;
                    *(&v25 + 1) = -1;
                    v26 = 0;
                    v27 = v10;
                    v32 = v12;
                    v33 = 0;
                    v34 = 1;
                    memset(v35, 0, sizeof(v35));
                    v14 = CKResizableBalloonPunchout(&v25);
                  }

                  v6 = [&unk_1F04E6E40 countByEnumeratingWithState:&v47 objects:v59 count:16];
                }

                while (v6);
              }

              v4 = v21 + 1;
            }

            while (v21 + 1 != v20);
            v20 = [&unk_1F04E6E10 countByEnumeratingWithState:&v51 objects:v60 count:16];
          }

          while (v20);
        }

        v2 = v16 + 1;
      }

      while (v16 + 1 != v18);
      v18 = [&unk_1F04E6E28 countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v18);
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Prewarm of masks and punchout complete.", &buf, 2u);
    }
  }
}

id CKResizableBalloonPunchout(__int128 *a1)
{
  v2 = a1[5];
  v17 = a1[4];
  v18 = v2;
  v3 = a1[7];
  v19 = a1[6];
  v20 = v3;
  v4 = a1[1];
  v13 = *a1;
  v14 = v4;
  v5 = a1[3];
  v15 = a1[2];
  v16 = v5;
  v6 = CKResolvedBackgroundColorForBalloonDescriptor(&v13);
  v7 = a1[5];
  v17 = a1[4];
  v18 = v7;
  v8 = a1[7];
  v19 = a1[6];
  v20 = v8;
  v9 = a1[1];
  v13 = *a1;
  v14 = v9;
  v10 = a1[3];
  v15 = a1[2];
  v16 = v10;
  v11 = CKResizableBalloonPunchoutWithBackgroundColor(&v13, v6);

  return v11;
}

id CKResizableBalloonMaskWithMinHeight(uint64_t a1, double a2, double a3)
{
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = *(a1 + 80);
  v84[4] = *(a1 + 64);
  v84[5] = v6;
  v7 = *(a1 + 112);
  v84[6] = *(a1 + 96);
  v84[7] = v7;
  v8 = *(a1 + 16);
  v84[0] = *a1;
  v84[1] = v8;
  v9 = *(a1 + 48);
  v84[2] = *(a1 + 32);
  v84[3] = v9;
  v10 = [v5 imageNameForBalloonDescriptor:v84];

  v11 = [MEMORY[0x1E69DCAB8] ckImageNamed:v10];
  [v11 capInsets];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [v11 alignmentRectInsets];
  v72 = v21;
  v73 = v20;
  v70 = v22;
  v71 = v23;
  [v11 size];
  v25 = v24;
  v27 = v26;
  v28 = [MEMORY[0x1E69DCAB8] _imageWithCGPDFPage:{objc_msgSend(v11, "_CGPDFPage")}];

  [v28 size];
  v29 = 1.0;
  if (v30 <= a2)
  {
    [v28 size];
    v29 = a2 / v31;
  }

  v75 = v29;
  [v28 size];
  if (v32 >= a2)
  {
    v33 = v32;
  }

  else
  {
    v33 = a2;
  }

  [v28 size];
  v35 = round(v75 * v34 * a3) / a3;
  v36 = a3;
  if (a3 == 0.0)
  {
    if (CKMainScreenScale_once_77 != -1)
    {
      CKResizableBalloonMaskWithMinHeight_cold_1();
    }

    v36 = *&CKMainScreenScale_sMainScreenScale_77;
    if (*&CKMainScreenScale_sMainScreenScale_77 == 0.0)
    {
      v36 = 1.0;
    }
  }

  v37 = ceil(v33 * v36) / v36;
  v38 = objc_alloc_init(MEMORY[0x1E69DCA80]);
  [v38 setScale:a3];
  [v38 setPreferredRange:32766];
  v39 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v38 format:{v35, v37}];
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __CKResizableBalloonMaskWithMinHeight_block_invoke;
  v78[3] = &unk_1E72F24C8;
  v80 = 0;
  v81 = 0;
  v79 = v28;
  v82 = v35;
  v83 = v37;
  v40 = [v39 imageWithActions:v78];
  v41 = (v13 + (v17 - v13) * 0.5) / v27;
  v42 = (v15 + (v19 - v15) * 0.5) / v25 * v35;
  v43 = v41 * v37;
  if (a3 == 0.0)
  {
    if (CKMainScreenScale_once_77 != -1)
    {
      CKResizableBalloonMaskWithMinHeight_cold_1();
    }

    v44 = *&CKMainScreenScale_sMainScreenScale_77;
    if (*&CKMainScreenScale_sMainScreenScale_77 == 0.0)
    {
      v44 = 1.0;
    }

    v45 = floor(v43 * v44) / v44;
    v46 = *&CKMainScreenScale_sMainScreenScale_77;
    if (*&CKMainScreenScale_sMainScreenScale_77 == 0.0)
    {
      v46 = 1.0;
    }

    v47 = floor(v42 * v46) / v46;
    v48 = *&CKMainScreenScale_sMainScreenScale_77;
    if (*&CKMainScreenScale_sMainScreenScale_77 == 0.0)
    {
      v48 = 1.0;
    }

    v49 = ceil(v43 * v48) / v48;
    v50 = *&CKMainScreenScale_sMainScreenScale_77;
    if (*&CKMainScreenScale_sMainScreenScale_77 == 0.0)
    {
      v50 = 1.0;
    }

    v51 = v42 * v50;
  }

  else
  {
    v45 = floor(v43 * a3) / a3;
    v51 = v42 * a3;
    v47 = floor(v42 * a3) / a3;
    v50 = a3;
    v49 = ceil(v43 * a3) / a3;
  }

  v52 = [v40 resizableImageWithCapInsets:{v45, v47, v37 - v49, v35 - ceil(v51) / v50}];

  v53.f64[0] = v73;
  v53.f64[1] = v70;
  v54.f64[0] = v72;
  v54.f64[1] = v71;
  v74 = vmulq_n_f64(v54, v75);
  v76 = vmulq_n_f64(v53, v75);
  v55 = +[CKUIBehavior sharedBehaviors];
  [v55 balloonMaskAlignmentRectInsetsWithTailShape:*(a1 + 1)];
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;

  v64 = vdupq_lane_s64(*&a3, 0);
  v65 = vdivq_f64(vrndaq_f64(vmulq_n_f64(v76, a3)), v64);
  v66 = vdivq_f64(vrndaq_f64(vmulq_n_f64(v74, a3)), v64);
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v65, *MEMORY[0x1E69DDCE0]), vceqq_f64(v66, *(MEMORY[0x1E69DDCE0] + 16))))) & 1) == 0)
  {
    v59 = v65.f64[1];
    v63 = v66.f64[1];
    v57 = v65.f64[0];
    v61 = v66.f64[0];
  }

  v67 = [v52 imageWithAlignmentRectInsets:{v57, v59, v61, v63}];

  v68 = [v67 __ck_imageWithOrientation:4 * (*(a1 + 3) == 0)];

  return v68;
}

void __CKResizableBalloonMaskWithMinHeight_block_invoke(uint64_t a1)
{
  [*(a1 + 32) drawInRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = [MEMORY[0x1E69DC888] blackColor];
  [v2 set];

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);

  UIRectFillUsingBlendMode(*&v3, kCGBlendModeSourceIn);
}

id CKResizableBalloonMask(__int128 *a1)
{
  if (CKResizableBalloonMask_once != -1)
  {
    CKResizableBalloonMask_cold_1();
  }

  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = v2;
  if (*(a1 + 2) == 2)
  {
    *(a1 + 2) = 0;
  }

  v4 = a1[5];
  v64 = a1[4];
  v65 = v4;
  v5 = a1[7];
  v66 = a1[6];
  v67 = v5;
  v6 = a1[1];
  v60 = *a1;
  v61 = v6;
  v7 = a1[3];
  v62 = a1[2];
  v63 = v7;
  v8 = [v2 imageNameForBalloonDescriptor:&v60];
  v9 = v8;
  if (*(a1 + 2) == 1)
  {
    *(a1 + 1) = -1;
  }

  if (!v8)
  {
    v16 = 0;
    goto LABEL_21;
  }

  v10 = a1[5];
  v64 = a1[4];
  v65 = v10;
  v11 = a1[7];
  v66 = a1[6];
  v67 = v11;
  v12 = a1[1];
  v60 = *a1;
  v61 = v12;
  v13 = a1[3];
  v62 = a1[2];
  v63 = v13;
  v14 = CKBalloonDescriptorKey(&v60);
  v15 = [v3 isAccessibilityPreferredContentSizeCategory];
  if (CKResizableBalloonMask_containsMasksForAccessibilitySizes != v15)
  {
    [CKResizableBalloonMask_resizableBalloonMasks removeAllObjects];
    CKResizableBalloonMask_containsMasksForAccessibilitySizes = v15;
LABEL_13:
    v17 = [MEMORY[0x1E69DCAB8] ckImageNamed:v9];
    [v17 capInsets];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    if (*(a1 + 123) == 1)
    {
      v26 = MEMORY[0x1E69DCAB8];
      v27 = [v17 CGImage];
      [v17 scale];
      v29 = [v26 imageWithCGImage:v27 scale:objc_msgSend(v17 orientation:{"imageOrientation"), v28 * 5.0}];

      v17 = v29;
    }

    if ((~*(a1 + 2) & 0xFLL) != 0)
    {
      v30 = ~*(a1 + 1);
      [v17 size];
      v32 = v31;
      v34 = v33;
      v35 = objc_alloc_init(MEMORY[0x1E69DCA80]);
      [v35 setScale:0.0];
      [v35 setPreferredRange:32766];
      v36 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v35 format:{v32, v34}];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __CKResizableBalloonMask_block_invoke_2;
      v47[3] = &unk_1E72F58E0;
      v48 = v17;
      v49 = v32;
      v50 = v34;
      v37 = a1[5];
      v55 = a1[4];
      v56 = v37;
      v38 = a1[7];
      v57 = a1[6];
      v58 = v38;
      v39 = a1[1];
      v51 = *a1;
      v52 = v39;
      v40 = a1[3];
      v53 = a1[2];
      v54 = v40;
      v59 = v30;
      v17 = [v36 imageWithActions:v47];
    }

    if (*(a1 + 123) == 1)
    {
      v19 = v19 * 0.2;
      v21 = v21 * 0.2;
      v23 = v23 * 0.2;
      v25 = v25 * 0.2;
    }

    v41 = [v17 resizableImageWithCapInsets:{v19, v21, v23, v25}];

    v42 = a1[5];
    v64 = a1[4];
    v65 = v42;
    v43 = a1[7];
    v66 = a1[6];
    v67 = v43;
    v44 = a1[1];
    v60 = *a1;
    v61 = v44;
    v45 = a1[3];
    v62 = a1[2];
    v63 = v45;
    v16 = [v41 __ck_resizableBalloonWithBalloonDescriptor:&v60 framed:0];

    [CKResizableBalloonMask_resizableBalloonMasks setObject:v16 forKey:v14];
    goto LABEL_20;
  }

  v16 = [CKResizableBalloonMask_resizableBalloonMasks objectForKey:v14];
  if (!v16)
  {
    goto LABEL_13;
  }

LABEL_20:

LABEL_21:

  return v16;
}

void __CKResizableBalloonMask_block_invoke()
{
  v0 = CKDefaultCacheLimit();
  v1 = CKCreateCache(v0);
  v2 = CKResizableBalloonMask_resizableBalloonMasks;
  CKResizableBalloonMask_resizableBalloonMasks = v1;

  v3 = +[CKUIBehavior sharedBehaviors];
  CKResizableBalloonMask_containsMasksForAccessibilitySizes = [v3 isAccessibilityPreferredContentSizeCategory];
}

void __CKResizableBalloonMask_block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) drawInRect:{0.0, 0.0, *(a1 + 40), *(a1 + 48)}];
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 balloonMaskTailSizeForTailShape:*(a1 + 57)];
  v8 = v5 - v7;

  v9 = [MEMORY[0x1E69DC888] blackColor];
  [v9 set];

  v10 = *(a1 + 184);

  CKRectFillCornersUsingBlendMode(v10, kCGBlendModeNormal, v2, v3, v8, v4);
}

void CKRectFillCornersUsingBlendMode(char a1, CGBlendMode blendMode, CGFloat a3, CGFloat a4, double a5, double a6)
{
  v11 = a5 * 0.5;
  if (CKMainScreenScale_once_77 != -1)
  {
    CKRectFillCornersUsingBlendMode_cold_1();
  }

  v12 = *&CKMainScreenScale_sMainScreenScale_77;
  v13 = 1.0;
  if (*&CKMainScreenScale_sMainScreenScale_77 == 0.0)
  {
    v12 = 1.0;
  }

  v14 = ceil(v11 * v12) / v12;
  if (*&CKMainScreenScale_sMainScreenScale_77 != 0.0)
  {
    v13 = *&CKMainScreenScale_sMainScreenScale_77;
  }

  v15 = ceil(a6 * 0.5 * v13) / v13;
  if (a1)
  {
    v21.origin.x = a3;
    v21.origin.y = a4;
    v21.size.width = v14;
    v21.size.height = v15;
    UIRectFillUsingBlendMode(v21, blendMode);
    if ((a1 & 2) == 0)
    {
LABEL_9:
      if ((a1 & 4) == 0)
      {
        goto LABEL_10;
      }

LABEL_14:
      v23.origin.y = a4 + v15;
      v23.origin.x = a3;
      v23.size.width = v14;
      v23.size.height = v15;
      UIRectFillUsingBlendMode(v23, blendMode);
      if ((a1 & 8) == 0)
      {
        return;
      }

      goto LABEL_15;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_9;
  }

  v22.origin.x = a3 + v14;
  v22.origin.y = a4;
  v22.size.width = v14;
  v22.size.height = v15;
  UIRectFillUsingBlendMode(v22, blendMode);
  if ((a1 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((a1 & 8) == 0)
  {
    return;
  }

LABEL_15:
  v18 = v14;
  v19 = v15;

  v16 = a3 + v14;
  v17 = a4 + v15;
  UIRectFillUsingBlendMode(*(&v18 - 2), blendMode);
}

id CKResizableBalloonPunchoutWithBackgroundColor(_OWORD *a1, void *a2)
{
  v87 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (CKResizableBalloonPunchoutWithBackgroundColor_once != -1)
  {
    CKResizableBalloonPunchoutWithBackgroundColor_cold_1();
  }

  v4 = a1[5];
  *&v79[64] = a1[4];
  *&v79[80] = v4;
  v5 = a1[7];
  *&v79[96] = a1[6];
  *&v79[112] = v5;
  v6 = a1[1];
  *v79 = *a1;
  *&v79[16] = v6;
  v7 = a1[3];
  *&v79[32] = a1[2];
  *&v79[48] = v7;
  v8 = CKBalloonDescriptorKey(v79);
  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 isAccessibilityPreferredContentSizeCategory];

  if (CKResizableBalloonPunchoutWithBackgroundColor_containsMasksForAccessibilitySizes != v10)
  {
    [CKResizableBalloonPunchoutWithBackgroundColor_resizableBalloonMasks removeAllObjects];
    CKResizableBalloonPunchoutWithBackgroundColor_containsMasksForAccessibilitySizes = v10;
  }

  v11 = [CKResizableBalloonPunchoutWithBackgroundColor_resizableBalloonMasks objectForKey:v8];
  if (!v11)
  {
    v12 = *a1;
    v13 = *(a1 + 84);
    v84 = *(a1 + 68);
    v85 = v13;
    v86[0] = *(a1 + 100);
    *(v86 + 12) = a1[7];
    v14 = *(a1 + 20);
    v80 = *(a1 + 4);
    v81 = v14;
    v15 = *(a1 + 52);
    v82 = *(a1 + 36);
    v83 = v15;
    *v79 = v12;
    *&v79[2] = 256;
    *&v79[68] = *(a1 + 68);
    *&v79[84] = *(a1 + 84);
    *&v79[100] = *(a1 + 100);
    *&v79[112] = a1[7];
    *&v79[4] = *(a1 + 4);
    *&v79[20] = *(a1 + 20);
    *&v79[36] = *(a1 + 36);
    *&v79[52] = *(a1 + 52);
    v16 = CKResizableBalloonMask(v79);
    [v16 capInsets];
    v50 = v18;
    v51 = v17;
    v20 = v19;
    v22 = v21;
    v23 = +[CKUIBehavior sharedBehaviors];
    [v23 balloonMaskFrameInsetsWithBalloonShape:*a1];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    [v16 size];
    v33 = v27 + v31 + v32;
    v35 = v25 + v29 + v34;
    v36 = objc_alloc_init(MEMORY[0x1E69DCA80]);
    [v16 scale];
    [v36 setScale:?];
    v37 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v36 format:{v33, v35}];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __CKResizableBalloonPunchoutWithBackgroundColor_block_invoke_2;
    v52[3] = &unk_1E72F5908;
    v38 = v3;
    v55 = *MEMORY[0x1E695F058];
    v56 = v33;
    v57 = v35;
    v58 = v25;
    v59 = v27;
    v60 = v29;
    v61 = v31;
    v53 = v38;
    v54 = v16;
    v39 = a1[5];
    v66 = a1[4];
    v67 = v39;
    v40 = a1[7];
    v68 = a1[6];
    v69 = v40;
    v41 = a1[1];
    v62 = *a1;
    v63 = v41;
    v42 = a1[3];
    v64 = a1[2];
    v65 = v42;
    v70 = v12;
    v71 = 256;
    v77 = v85;
    *v78 = v86[0];
    v73 = v81;
    v74 = v82;
    v75 = v83;
    v76 = v84;
    *&v78[12] = *(v86 + 12);
    v72 = v80;
    v43 = [v37 imageWithActions:v52];
    v44 = [v43 resizableImageWithCapInsets:{v51, v50, v20, v22}];

    v45 = a1[5];
    *&v79[64] = a1[4];
    *&v79[80] = v45;
    v46 = a1[7];
    *&v79[96] = a1[6];
    *&v79[112] = v46;
    v47 = a1[1];
    *v79 = *a1;
    *&v79[16] = v47;
    v48 = a1[3];
    *&v79[32] = a1[2];
    *&v79[48] = v48;
    v11 = [v44 __ck_resizableBalloonWithBalloonDescriptor:v79 framed:1];

    [CKResizableBalloonPunchoutWithBackgroundColor_resizableBalloonMasks setObject:v11 forKey:v8];
  }

  return v11;
}

void __CKResizableBalloonPunchoutWithBackgroundColor_block_invoke()
{
  v0 = CKDefaultCacheLimit();
  v1 = CKCreateCache(v0);
  v2 = CKResizableBalloonPunchoutWithBackgroundColor_resizableBalloonMasks;
  CKResizableBalloonPunchoutWithBackgroundColor_resizableBalloonMasks = v1;

  v3 = +[CKUIBehavior sharedBehaviors];
  CKResizableBalloonPunchoutWithBackgroundColor_containsMasksForAccessibilitySizes = [v3 isAccessibilityPreferredContentSizeCategory];
}

void __CKResizableBalloonPunchoutWithBackgroundColor_block_invoke_2(uint64_t a1)
{
  v17 = *(a1 + 32);
  [v17 set];
  UIRectFill(*(a1 + 48));
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  v4 = *(a1 + 48) + v3;
  v5 = *(a1 + 56) + v2;
  v6 = *(a1 + 64) - (v3 + *(a1 + 104));
  v7 = *(a1 + 72) - (v2 + *(a1 + 96));
  [*(a1 + 40) drawInRect:23 blendMode:v4 alpha:{v5, v6, v7, 1.0}];
  v8 = *(a1 + 120);
  if ((~*(a1 + 120) & 0xFLL) != 0)
  {
    v14 = +[CKUIBehavior sharedBehaviors];
    [v14 balloonMaskTailSizeForTailShape:*(a1 + 113)];
    v16 = v6 - v15;

    CKRectFillCornersUsingBlendMode(~v8, kCGBlendModeDestinationOut, v4, v5, v16, v7);
  }

  else if (*(a1 + 114) == 1)
  {
    *v20 = *(a1 + 243);
    v9 = *(a1 + 313);
    v24 = *(a1 + 297);
    v25 = v9;
    *v26 = *(a1 + 329);
    *&v26[15] = *(a1 + 344);
    v10 = *(a1 + 281);
    v22 = *(a1 + 265);
    v11 = *(a1 + 240);
    *&v20[13] = *(a1 + 256);
    v23 = v10;
    v12 = *(a1 + 361);
    *&v28[3] = *(a1 + 364);
    *v28 = v12;
    v18 = v11;
    v19 = 1;
    v21 = -1;
    v27 = 0;
    v13 = CKResizableBalloonImage(&v18);
    [v13 drawInRect:0 blendMode:v4 alpha:{v5, v6, v7, 1.0}];
  }
}

id CKResizableBalloonImage(uint64_t a1)
{
  if (CKResizableBalloonImage_once != -1)
  {
    CKResizableBalloonImage_cold_1();
  }

  v2 = *(a1 + 80);
  v76 = *(a1 + 64);
  v77 = v2;
  v3 = *(a1 + 112);
  v78 = *(a1 + 96);
  v79 = v3;
  v4 = *(a1 + 16);
  v72 = *a1;
  v73 = v4;
  v5 = *(a1 + 48);
  v74 = *(a1 + 32);
  v75 = v5;
  v6 = CKBalloonDescriptorKey(&v72);
  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = [v7 isAccessibilityPreferredContentSizeCategory];

  if (CKResizableBalloonImage_containsMasksForAccessibilitySizes != v8)
  {
    [CKResizableBalloonImage_resizableBalloonMasks removeAllObjects];
    CKResizableBalloonImage_containsMasksForAccessibilitySizes = v8;
  }

  v9 = [CKResizableBalloonImage_resizableBalloonMasks objectForKey:v6];
  if (!v9)
  {
    v10 = objc_autoreleasePoolPush();
    *&v73 = 0xA010000000;
    v11 = *(a1 + 80);
    v12 = *(a1 + 96);
    v13 = *(a1 + 48);
    v78 = *(a1 + 64);
    v79 = v11;
    v14 = *(a1 + 112);
    v80 = v12;
    v81 = v14;
    v15 = *(a1 + 16);
    v16 = *(a1 + 32);
    v74 = *a1;
    v75 = v15;
    *&v72 = 0;
    *(&v72 + 1) = &v72;
    *(&v73 + 1) = &unk_190F92BB2;
    v76 = v16;
    v77 = v13;
    BYTE3(v74) = 1;
    if (*(a1 + 2) == 2)
    {
      BYTE2(v74) = 0;
    }

    v68 = v78;
    v69 = v79;
    v70 = v80;
    v71 = v81;
    v64 = v74;
    v65 = v75;
    v66 = v76;
    v67 = v77;
    v17 = CKResizableBalloonMask(&v64);
    [v17 size];
    v19 = v18;
    v21 = v20;
    v22 = *(*(&v72 + 1) + 112);
    v68 = *(*(&v72 + 1) + 96);
    v69 = v22;
    v23 = *(*(&v72 + 1) + 144);
    v70 = *(*(&v72 + 1) + 128);
    v71 = v23;
    v24 = *(*(&v72 + 1) + 48);
    v64 = *(*(&v72 + 1) + 32);
    v65 = v24;
    v25 = *(*(&v72 + 1) + 80);
    v66 = *(*(&v72 + 1) + 64);
    v67 = v25;
    v26 = CKResolvedColorForBalloonDescriptor(&v64);
    v27 = objc_alloc_init(MEMORY[0x1E69DCA80]);
    [v17 scale];
    [v27 setScale:?];
    v28 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v27 format:{v19, v21}];
    v62[0] = 0;
    v62[1] = v62;
    v62[2] = 0x3032000000;
    v62[3] = __Block_byref_object_copy__52;
    v62[4] = __Block_byref_object_dispose__52;
    v63 = 0;
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v29 = *(a1 + 80);
    v53 = *(a1 + 64);
    v54 = v29;
    v30 = *(a1 + 112);
    v55 = *(a1 + 96);
    v56 = v30;
    v31 = *(a1 + 16);
    v49 = *a1;
    v50 = v31;
    v32 = *(a1 + 48);
    v51 = *(a1 + 32);
    v52 = v32;
    v43[2] = __CKResizableBalloonImage_block_invoke_220;
    v43[3] = &unk_1E72F5958;
    v47 = &v72;
    v48 = v62;
    v33 = v28;
    v44 = v33;
    v57 = *MEMORY[0x1E695EFF8];
    v58 = v19;
    v59 = v21;
    v34 = v17;
    v45 = v34;
    v35 = v26;
    v46 = v35;
    v60 = v19;
    v61 = v21;
    v36 = [v33 imageWithActions:v43];
    [v34 capInsets];
    v37 = [v36 resizableImageWithCapInsets:?];

    v38 = *(a1 + 80);
    v68 = *(a1 + 64);
    v69 = v38;
    v39 = *(a1 + 112);
    v70 = *(a1 + 96);
    v71 = v39;
    v40 = *(a1 + 16);
    v64 = *a1;
    v65 = v40;
    v41 = *(a1 + 48);
    v66 = *(a1 + 32);
    v67 = v41;
    v9 = [v37 __ck_resizableBalloonWithBalloonDescriptor:&v64 framed:0];

    [CKResizableBalloonImage_resizableBalloonMasks setObject:v9 forKey:v6];
    _Block_object_dispose(v62, 8);

    _Block_object_dispose(&v72, 8);
    objc_autoreleasePoolPop(v10);
  }

  return v9;
}

id CKResizableOnboardingBalloonPunchout(__int128 *a1)
{
  v2 = a1[5];
  v17 = a1[4];
  v18 = v2;
  v3 = a1[7];
  v19 = a1[6];
  v20 = v3;
  v4 = a1[1];
  v13 = *a1;
  v14 = v4;
  v5 = a1[3];
  v15 = a1[2];
  v16 = v5;
  v6 = CKResolvedBackgroundColorForOnboardingBalloonDescriptor(&v13);
  v7 = a1[5];
  v17 = a1[4];
  v18 = v7;
  v8 = a1[7];
  v19 = a1[6];
  v20 = v8;
  v9 = a1[1];
  v13 = *a1;
  v14 = v9;
  v10 = a1[3];
  v15 = a1[2];
  v16 = v10;
  v11 = CKResizableBalloonPunchoutWithBackgroundColor(&v13, v6);

  return v11;
}

void __CKResizableBalloonImage_block_invoke()
{
  v0 = CKDefaultCacheLimit();
  v1 = CKCreateCache(v0);
  v2 = CKResizableBalloonImage_resizableBalloonMasks;
  CKResizableBalloonImage_resizableBalloonMasks = v1;

  v3 = +[CKUIBehavior sharedBehaviors];
  CKResizableBalloonImage_containsMasksForAccessibilitySizes = [v3 isAccessibilityPreferredContentSizeCategory];
}

void __CKResizableBalloonImage_block_invoke_220(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  if (*(a1 + 74) == 2)
  {
    *(*(*(a1 + 56) + 8) + 34) = 1;
    v4 = *(a1 + 32);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __CKResizableBalloonImage_block_invoke_2;
    v23[3] = &unk_1E72F5930;
    v23[4] = *(a1 + 56);
    v5 = [v4 imageWithActions:v23];
    v6 = *(*(a1 + 64) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    CGContextClearRect(v3, *(a1 + 200));
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __CKResizableBalloonImage_block_invoke_3;
  v20[3] = &unk_1E72EBD00;
  v8 = *(a1 + 32);
  v21 = *(a1 + 40);
  v22 = *(a1 + 48);
  v9 = [v8 imageWithActions:v20];
  CGContextClearRect(v3, *(a1 + 200));
  v10 = *MEMORY[0x1E695EFF8];
  v11 = *(MEMORY[0x1E695EFF8] + 8);
  if (*(a1 + 192) == 1)
  {
    v12 = *(a1 + 232);
    v13 = *(a1 + 240);
    v14 = *(a1 + 152);
    v19[4] = *(a1 + 136);
    v19[5] = v14;
    v15 = *(a1 + 184);
    v19[6] = *(a1 + 168);
    v19[7] = v15;
    v16 = *(a1 + 88);
    v19[0] = *(a1 + 72);
    v19[1] = v16;
    v17 = *(a1 + 120);
    v19[2] = *(a1 + 104);
    v19[3] = v17;
    v18 = CKResolvedBackgroundColorForBalloonDescriptor(v19);
    [v18 setFill];
    v24.origin.x = v10;
    v24.origin.y = v11;
    v24.size.width = v12;
    v24.size.height = v13;
    UIRectFill(v24);
  }

  [v9 drawAtPoint:{v10, v11}];
  [*(*(*(a1 + 64) + 8) + 40) drawAtPoint:{v10, v11}];
}

void __CKResizableBalloonImage_block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = v2[7];
  v9[4] = v2[6];
  v9[5] = v3;
  v4 = v2[9];
  v9[6] = v2[8];
  v9[7] = v4;
  v5 = v2[3];
  v9[0] = v2[2];
  v9[1] = v5;
  v6 = v2[5];
  v9[2] = v2[4];
  v9[3] = v6;
  v8 = CKResizableBalloonMask(v9);
  v7 = [MEMORY[0x1E69DC888] ck_colorWithIMColorComponents:{*(*(*(a1 + 32) + 8) + 96), *(*(*(a1 + 32) + 8) + 104), *(*(*(a1 + 32) + 8) + 112), *(*(*(a1 + 32) + 8) + 120)}];
  CKDrawColoredImageOnCurrentImageContext(v8, v7);
}

void CKDrawColoredImageOnCurrentImageContext(void *a1, void *a2)
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  v5 = a2;
  v6 = a1;
  [v6 drawAtPoint:{v3, v4}];
  [v5 setFill];

  [v6 size];
  v8 = v7;
  v10 = v9;

  v11 = v3;
  v12 = v4;
  v13 = v8;
  v14 = v10;

  UIRectFillUsingBlendMode(*&v11, kCGBlendModeSourceIn);
}

void sub_1906B4BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1906B77C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a68, 8);
  _Block_object_dispose((v68 - 216), 8);
  _Unwind_Resume(a1);
}

uint64_t IMAssociatedMessageTypeFromCKMessageAcknowledgmentType(uint64_t a1)
{
  v1 = 2000;
  if (a1 == 3005)
  {
    v2 = 3005;
  }

  else
  {
    v2 = 2000;
  }

  if (a1 == 3004)
  {
    v2 = 3004;
  }

  if (a1 == 3003)
  {
    v2 = 3003;
  }

  if (a1 == 3002)
  {
    v3 = 3002;
  }

  else
  {
    v3 = 2000;
  }

  if (a1 == 3001)
  {
    v3 = 3001;
  }

  if (a1 == 3000)
  {
    v3 = 3000;
  }

  if (a1 <= 3002)
  {
    v2 = v3;
  }

  if (a1 == 2005)
  {
    v4 = 2005;
  }

  else
  {
    v4 = 2000;
  }

  if (a1 == 2004)
  {
    v4 = 2004;
  }

  if (a1 == 2003)
  {
    v4 = 2003;
  }

  if (a1 == 2002)
  {
    v1 = 2002;
  }

  if (a1 == 2001)
  {
    v1 = 2001;
  }

  if (a1 > 2002)
  {
    v1 = v4;
  }

  if (a1 <= 2999)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t CKMessageAcknowledgmentTypeFromIMAssociatedMessageType(uint64_t a1)
{
  result = 2000;
  if (a1 <= 2005)
  {
    if (a1 > 2000)
    {
      if (a1 == 2005)
      {
        v5 = 2005;
      }

      else
      {
        v5 = 2000;
      }

      if (a1 == 2004)
      {
        v5 = 2004;
      }

      if (a1 == 2003)
      {
        v5 = 2003;
      }

      if (a1 == 2002)
      {
        v6 = 2002;
      }

      else
      {
        v6 = 2000;
      }

      if (a1 == 2001)
      {
        v6 = 2001;
      }

      if (a1 <= 2002)
      {
        return v6;
      }

      else
      {
        return v5;
      }
    }

    else if (a1 <= 3 && a1 != 1 || (a1 - 1000) < 2)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else if (a1 <= 3002)
  {
    if (a1 > 3000)
    {
      if (a1 == 3002)
      {
        v3 = 3002;
      }

      else
      {
        v3 = 2000;
      }

      v4 = a1 == 3001;
      goto LABEL_43;
    }

    if ((a1 - 2006) < 2)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    if (a1 == 3000)
    {
      return 3000;
    }
  }

  else
  {
    if (a1 <= 3005)
    {
      if (a1 == 3005)
      {
        v3 = 3005;
      }

      else
      {
        v3 = 2000;
      }

      if (a1 == 3004)
      {
        v3 = 3004;
      }

      v4 = a1 == 3003;
LABEL_43:
      if (v4)
      {
        return a1;
      }

      else
      {
        return v3;
      }
    }

    if ((a1 - 3006) < 2 || a1 == 4000)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t CKDeselectedAcknowledgmentTypeForAcknowledgmentType(uint64_t a1)
{
  v1 = 3000;
  v2 = 3004;
  v3 = 3005;
  if (a1 != 2005)
  {
    v3 = 3000;
  }

  if (a1 != 2004)
  {
    v2 = v3;
  }

  if ((a1 - 3000) >= 6)
  {
    v4 = v2;
  }

  else
  {
    v4 = a1;
  }

  if (a1 == 2003)
  {
    v1 = 3003;
  }

  if (a1 == 2002)
  {
    v1 = 3002;
  }

  if (a1 == 2001)
  {
    v1 = 3001;
  }

  if (a1 <= 2003)
  {
    return v1;
  }

  else
  {
    return v4;
  }
}

void sub_1906BAEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1906BEF34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1906BF100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1906BF2CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1906BF4A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1906C4D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1906C5378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1906C59F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

float64_t CKAnchorOffset(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4, float64x2_t a5, float64_t a6)
{
  v6 = *(MEMORY[0x1E695F058] + 16);
  if (CKMainScreenScale_once_82 != -1)
  {
    v21 = *&a5.f64[0];
    v22 = a6;
    v20 = a2;
    v18 = *&a3.f64[0];
    v19 = *&a1.f64[0];
    v16 = *(MEMORY[0x1E695F058] + 16);
    v17 = a4;
    CKAnchorOffset_cold_1();
    v6 = v16;
    a4 = v17;
    *&a3.f64[0] = v18;
    *&a1.f64[0] = v19;
    a2 = v20;
    *&a5.f64[0] = v21;
    a6 = v22;
  }

  *&v7 = 1.0;
  a3.f64[1] = a4;
  if (*&CKMainScreenScale_sMainScreenScale_82 != 0.0)
  {
    v7 = CKMainScreenScale_sMainScreenScale_82;
  }

  v8 = vsubq_f64(a3, v6);
  __asm { FMOV            V2.2D, #0.5 }

  a1.f64[1] = a2;
  a5.f64[1] = a6;
  *&a1.f64[0] = *&vsubq_f64(a5, vdivq_f64(vrndmq_f64(vmulq_n_f64(vaddq_f64(a1, vmulq_f64(v8, _Q2)), *&v7)), vdupq_lane_s64(v7, 0)));
  return a1.f64[0];
}

void sub_1906D08CC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1906D1A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1906DA944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1906DA8F8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1906DB510(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1906DBAD4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1906DD8B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1906DE1A0(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1906DE12CLL);
  }

  objc_destroyWeak((v2 + 56));
  _Unwind_Resume(exc_buf);
}

uint64_t __CKPreviewTextFromMessage_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) transferForGUID:a2];
  v3 = [v2 isAdaptiveImageGlyph];

  return v3;
}

BOOL __CKPreviewTextFromMessage_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) transferForGUID:a2];
  v3 = [v2 commSafetySensitive] == 1;

  return v3;
}

id __CKPreviewTextFromMessage_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) mediaObjectWithTransferGUID:a2 imMessage:*(a1 + 40)];
  v3 = [v2 adaptiveImageGlyph];

  return v3;
}

id _balloonPreviewTextForBalloonBundleID(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [MEMORY[0x1E69A60F0] sharedInstance];
  if ([v8 isInternalInstall])
  {
    v9 = IMGetCachedDomainBoolForKey();

    if (!v9)
    {
      goto LABEL_9;
    }

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v16 = 0;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "INTERNAL ONLY PLUGIN PAYLOAD POISON PILL TRIGGERED, THROWING EXCEPTION!", v16, 2u);
      }
    }

    v8 = [MEMORY[0x1E695DF30] exceptionWithName:@"PluginPayloadPoisonPill" reason:@"Internal poison pill crash" userInfo:0];
    [v8 raise];
  }

LABEL_9:
  if (![v5 length])
  {
    goto LABEL_18;
  }

  v11 = [MEMORY[0x1E69A5AD0] sharedInstance];
  v12 = [v11 dataSourceClassForBundleID:v5];

  if (v7)
  {
    if (v12)
    {
      goto LABEL_12;
    }

LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

  v7 = [objc_alloc(MEMORY[0x1E69A5C48]) initWithMessage:v6];
  if (!v12)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (!v7 || ![v12 supportsIndividualPreviewSummaries] || (objc_msgSend(v12, "previewSummaryForPluginPayload:withBundleID:previewAttachmentURL:previewAttachmentUTI:", v7, v5, 0, 0), (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13 = [v12 previewSummaryForPluginBundle:v5];
  }

  v14 = v13;
LABEL_19:

  return v14;
}

void *_subjectPreviewText(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 length] >= 0x3E9)
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v7[0] = 67109376;
        v7[1] = [v1 length];
        v8 = 1024;
        v9 = 1000;
        _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Subject preview text is to large to use with length %d. It will be shortened to %d instead.", v7, 0xEu);
      }
    }

    v3 = [v1 substringWithRange:{0, 1000}];

    v1 = v3;
  }

  if ([v1 length])
  {
    v4 = v1;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

void __CKPreviewTextForDisplay_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v8 = *MEMORY[0x1E69DB648];
    v9 = *(a1 + 32);
    v16 = v7;
    v10 = [*(a1 + 40) mentionsFont];
    [v9 addAttribute:v8 value:v10 range:{a3, a4}];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = v16;
    if (isKindOfClass)
    {
      v12 = [CKMentionsUtilities metionedHandleMatchesMeCard:v16];
      v7 = v16;
      if (v12)
      {
        v13 = *MEMORY[0x1E69DB650];
        v14 = *(a1 + 32);
        v15 = [*(a1 + 40) mentionsColor];
        [v14 addAttribute:v13 value:v15 range:{a3, a4}];

        v7 = v16;
      }
    }
  }
}

id CKPreviewTextFromComposition(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v3 = [v1 shelfPluginPayload];
  if ([v3 isSticker])
  {
    v4 = CKFrameworkBundle();
    v5 = [v4 localizedStringForKey:@"STICKER_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
    [v2 appendString:v5];

    [v2 appendFormat:@" "];
  }

  else if (v3)
  {
    v6 = [v3 pluginBundleID];
    v7 = _balloonPreviewTextForBalloonBundleID(v6, 0, v3);

    if (v7)
    {
      [v2 appendString:v7];
      [v2 appendFormat:@" "];
    }
  }

  v8 = [v1 subject];
  v9 = [v8 string];
  v10 = _subjectPreviewText(v9);

  if (v10)
  {
    [v2 appendString:v10];
    [v2 appendFormat:@" "];
  }

  v11 = [v1 text];
  v12 = [v11 mutableCopy];
  [v12 __im_filterAttributesForDisplayablePreviewText];
  v13 = [v12 copy];

  if (v13)
  {
    v14 = [v13 string];
    [v2 appendString:v14];
  }

  v15 = [v1 mediaObjects];
  v16 = v15;
  if (!v13 && v15)
  {
    v17 = [v15 ck_attachmentSummary];
    if (v17)
    {
      [v2 appendString:v17];
    }
  }

  return v2;
}

id ___bodyPreviewTextForMessagePart_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 guid];
  v4 = [*(a1 + 32) mediaObjectWithTransferGUID:v3 imMessage:*(a1 + 40)];
  v5 = [v4 adaptiveImageGlyph];

  return v5;
}

BOOL ___bodyPreviewTextForMessagePart_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) transferForGUID:a2];
  v4 = v3;
  v5 = *(a1 + 40) == 1 && [v3 commSafetySensitive] == 1;

  return v5;
}

void sub_1906E1A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose((v53 - 224), 8);
  _Block_object_dispose((v53 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1906E5254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1906E572C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1906EABF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1906EB9D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1906EC264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id *location)
{
  objc_destroyWeak((v13 + 32));
  objc_destroyWeak(location);
  _Unwind_Resume(a1);
}

void sub_1906F1EC8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1906F1E5CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1906F2434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1906F22D8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1906F4A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1906F6CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1906F6E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1906F73D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1906F78D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1906FF4E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1906FEEE8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1906FFA00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1906FF86CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_190701078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t CKAssistantClearDrafts()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v0, OS_LOG_TYPE_INFO, "Clearing draft store", v4, 2u);
    }
  }

  v1 = *MEMORY[0x1E695E8B8];
  v2 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(@"SiriDrafts", 0, @"com.apple.MobileSMS", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  return CFPreferencesSynchronize(@"com.apple.MobileSMS", v1, v2);
}

void CKAssistantUpdateStoreDraftWithSMS(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 dictionary];
  if (v2)
  {
    v3 = *MEMORY[0x1E695E8B8];
    v4 = *MEMORY[0x1E695E898];
    CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    v5 = CFPreferencesCopyAppValue(@"SiriDrafts", @"com.apple.MobileSMS");
    if (v5)
    {
      [MEMORY[0x1E695DF90] dictionaryWithDictionary:v5];
    }

    else
    {
      [MEMORY[0x1E695DF90] dictionary];
    }
    v6 = ;
    v7 = [v1 identifier];
    v8 = [v7 absoluteString];
    [v6 setObject:v2 forKey:v8];

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = v6;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Updating draft store to:\n%@", &v10, 0xCu);
      }
    }

    CFPreferencesSetValue(@"SiriDrafts", v6, @"com.apple.MobileSMS", v3, v4);
    CFPreferencesSynchronize(@"com.apple.MobileSMS", v3, v4);
  }
}

id CKAssistantGetDraftForIdentifier(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    v2 = CFPreferencesCopyAppValue(@"SiriDrafts", @"com.apple.MobileSMS");
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v2;
        _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Retrieving a draft. Found:\n%@", &v9, 0xCu);
      }
    }

    v4 = [v1 absoluteString];
    v5 = [v2 objectForKey:v4];

    if (v5)
    {
      v6 = [MEMORY[0x1E69C7A98] aceObjectWithDictionary:v5];
      [v6 setIdentifier:v1];
    }

    else
    {
      v6 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Returning sms object:\n%@", &v9, 0xCu);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id getPHAssetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPHAssetClass_softClass;
  v7 = getPHAssetClass_softClass;
  if (!getPHAssetClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPHAssetClass_block_invoke;
    v3[3] = &unk_1E72EB968;
    v3[4] = &v4;
    __getPHAssetClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_190709D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPHAssetClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!PhotosLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __PhotosLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E72F68D8;
    v5 = 0;
    PhotosLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PhotosLibraryCore_frameworkLibrary)
  {
    __getPHAssetClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("PHAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPHAssetClass_block_invoke_cold_1();
  }

  getPHAssetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PhotosLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotosLibraryCore_frameworkLibrary = result;
  return result;
}

void __CKVideoCancelActionMenuItemViewMask_block_invoke()
{
  v5.width = 36.0;
  v5.height = 36.0;
  UIGraphicsBeginImageContextWithOptions(v5, 0, 0.0);
  v0 = [MEMORY[0x1E69DC888] blackColor];
  [v0 set];

  v1 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{0.0, 0.0, 36.0, 36.0}];
  [v1 fill];

  v2 = UIGraphicsGetImageFromCurrentImageContext();
  v3 = CKVideoCancelActionMenuItemViewMask_sMask;
  CKVideoCancelActionMenuItemViewMask_sMask = v2;

  UIGraphicsEndImageContext();
}

long double cubic(double a1, double a2, double a3, double a4, long double a5)
{
  v9 = 1.0 - a5;
  v10 = pow(1.0 - a5, 3.0) * a1;
  return pow(a5, 3.0) * a4 + v9 * (a5 * a5 * 3.0) * a3 + v10 + a5 * 3.0 * (v9 * v9) * a2;
}

void sub_19070D2D0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x19070D10CLL);
  }

  _Unwind_Resume(a1);
}

void sub_19070E638(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id getSCUIAnalyticsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSCUIAnalyticsClass_softClass;
  v7 = getSCUIAnalyticsClass_softClass;
  if (!getSCUIAnalyticsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSCUIAnalyticsClass_block_invoke;
    v3[3] = &unk_1E72EB968;
    v3[4] = &v4;
    __getSCUIAnalyticsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19071BB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSCUIAnalyticsClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!SensitiveContentAnalysisUILibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SensitiveContentAnalysisUILibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E72F6A58;
    v5 = 0;
    SensitiveContentAnalysisUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!SensitiveContentAnalysisUILibraryCore_frameworkLibrary_0)
  {
    __getSCUIAnalyticsClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SCUIAnalytics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSCUIAnalyticsClass_block_invoke_cold_1();
  }

  getSCUIAnalyticsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SensitiveContentAnalysisUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  SensitiveContentAnalysisUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_19071CAAC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19071D8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19071FE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19071FFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_190723E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_190725944(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_19072667C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1907281EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19072884C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19072CEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CKBalloonCornersForAttachmentContiguousType(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_190DD18F0[a1];
  }
}

id _CreateActionButton()
{
  v0 = [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
  v1 = +[CKUIBehavior sharedBehaviors];
  [v1 transcriptBoldTextAlignmentInsets];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  [v0 setContentInsets:{v3, v5, v7, v9}];
  v10 = [CKTranscriptLegibilityButton buttonWithConfiguration:v0 primaryAction:0];
  [v10 setConfigurationUpdateHandler:&__block_literal_global_238];
  [v10 setTitleLabelLineBreakMode:0];
  [v10 setTitleLabelNumberOfLines:0];

  return v10;
}

void sub_19073234C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBKSHIDEventDeferringTokenClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!BackBoardServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __BackBoardServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E72F6D50;
    v5 = 0;
    BackBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!BackBoardServicesLibraryCore_frameworkLibrary)
  {
    __getBKSHIDEventDeferringTokenClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("BKSHIDEventDeferringToken");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBKSHIDEventDeferringTokenClass_block_invoke_cold_1();
  }

  getBKSHIDEventDeferringTokenClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BackBoardServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  BackBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_190736EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _CreateDataSourceForMomentShare(void *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v1)
  {
    v3 = [[CKMomentSharePreviewAsset alloc] initWithMomentShare:v1];
    [v2 addObject:v3];
    v4 = +[CKMomentSharePlaceholderAsset sharedInstance];
    v5 = [v1 assetCount];
    if (v5 != 1)
    {
      if ((v5 - 1) >= 4)
      {
        v6 = 4;
      }

      else
      {
        v6 = v5 - 1;
      }

      do
      {
        [v2 addObject:v4];
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v3 = +[CKMomentSharePlaceholderAsset sharedInstance];
    [v2 addObject:v3];
  }

  v7 = [[CKStaticDisplayAssetFetchResult alloc] initWithAssets:v2];
  v8 = objc_alloc(MEMORY[0x1E69C3A78]);
  v12[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10 = [v8 initWithDisplayAssetFetchResults:v9];

  return v10;
}

void sub_19073E884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19073F708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19073FB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_190740210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_190741974(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_190743BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190746970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _ApplyCommonGridConfiguration(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v4 setAllowedBehaviors:{objc_msgSend(v4, "allowedBehaviors") & 0xFFFFFFFFFFFEFFDFLL}];
  [v4 setAllowedBehaviors:{objc_msgSend(v4, "allowedBehaviors") | 0x40}];
  [v4 setAllowedActions:{objc_msgSend(v4, "allowedActions") | 0x100000}];
  [v4 setDecorationViewClass:objc_opt_class()];
  [v4 setDelegate:v3];

  [v4 setForbiddenBadges:-1];
  [v4 setSectionBodyStyle:2];
  [v4 setWantsModernNavBarButtons:0];
  [v4 setNavBarStyle:0];
}

void sub_19074A3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19074AC94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_19074E158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_190756F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CKTranscoderUserInfoForVideoTrimOptions(void *a1)
{
  v19[3] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 objectForKey:@"_UIImagePickerControllerVideoEditingStart"];
  [v2 doubleValue];
  v4 = v3;

  v5 = [v1 objectForKey:@"_UIImagePickerControllerVideoEditingEnd"];
  [v5 doubleValue];
  v7 = v6;

  if (v7 - v4 <= 2.22044605e-16)
  {
    v11 = 0;
  }

  else
  {
    v18[0] = *MEMORY[0x1E69A6F90];
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
    v19[0] = v8;
    v18[1] = *MEMORY[0x1E69A6F68];
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
    v19[1] = v9;
    v18[2] = *MEMORY[0x1E69A6F60];
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:v7 - v4];
    v19[2] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
  }

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(46);
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v15 = v1;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_DEBUG, "composeOptions:%@ -> transcodeUserInfo:%@", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    _CKLog();
  }

  return v11;
}

void sub_190761CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_190762F28(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x238], 8);
  _Block_object_dispose(&STACK[0x268], 8);
  _Block_object_dispose(&STACK[0x288], 8);
  _Block_object_dispose(&STACK[0x2B8], 8);
  _Block_object_dispose(&STACK[0x2D8], 8);
  _Block_object_dispose(&STACK[0x2F8], 8);
  _Block_object_dispose(&STACK[0x318], 8);
  _Block_object_dispose(&STACK[0x348], 8);
  _Block_object_dispose(&STACK[0x368], 8);
  _Block_object_dispose(&STACK[0x388], 8);
  _Block_object_dispose(&STACK[0x3A8], 8);
  _Block_object_dispose(&STACK[0x3C8], 8);
  _Block_object_dispose(&STACK[0x3E8], 8);
  _Block_object_dispose(&STACK[0x408], 8);
  _Block_object_dispose(&STACK[0x428], 8);
  _Block_object_dispose(&STACK[0x458], 8);
  _Block_object_dispose(&STACK[0x488], 8);
  _Block_object_dispose(&STACK[0x4A8], 8);
  _Block_object_dispose(&STACK[0x4C8], 8);
  _Block_object_dispose(&STACK[0x4E8], 8);
  _Block_object_dispose(&STACK[0x518], 8);
  _Block_object_dispose((v1 - 248), 8);
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

BOOL CKFileTransferIsDownloadable(int a1, uint64_t a2)
{
  v2 = 9;
  if (!a1)
  {
    v2 = 0;
  }

  return v2 == a2;
}

uint64_t CKFileTransferIsDownloading(char a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (CKIsRunningInRemoteIntentClient())
  {
    v6 = [MEMORY[0x1E69A81F0] sharedObserver];
    v7 = [v6 isDownloadingTransferGUID:v5];
  }

  else
  {
    v7 = 0;
  }

  v9 = a2 == 7 || (a2 - 1) < 4;
  if (a1)
  {
    v9 = v7;
  }

  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

uint64_t CKFileTransferRestoring(uint64_t a1, char a2, unsigned int a3)
{
  if (a1 == 8)
  {
    v3 = 0;
  }

  else
  {
    v3 = a3;
  }

  if (a1 == 6)
  {
    v3 = 0;
  }

  if (a2)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

void sub_190767D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CKAttachmentTitleFromFilename()
{
  IMAttachmentFileNameAndExtension();
  v0 = 0;
  v1 = [v0 stringByReplacingOccurrencesOfString:@"_" withString:@" "];
  v2 = [v1 pathStringForDisplay];

  return v2;
}

void sub_190769324(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x190769188);
  }

  _Unwind_Resume(a1);
}

id CKRichIconPreviewCacheKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [a1 transferGUID];
  v3 = [v1 stringWithFormat:@"%@-richIconPreview", v2];

  return v3;
}

id CKStickerPreviewCacheKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [a1 transferGUID];
  v3 = [v1 stringWithFormat:@"%@-richIcon", v2];

  return v3;
}

void sub_19076E5A4(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x19076E520);
  }

  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(exc_buf);
}

id CKPreviewMetadataCacheKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [a1 transferGUID];
  v3 = [v1 stringWithFormat:@"%@-metadata", v2];

  return v3;
}

id _CKMediaObjectPreviewMetadataWithContentsOfURL(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v5 previewMetadataWithContentsOfURL:v6 error:a3];
  }

  else if (a3)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69A7878] code:9 userInfo:0];
    *a3 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void _CKMediaObjectWritePreviewMetadata(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = CKPreviewMetadataCacheKey(v3);
  v6 = [v3 previewDispatchCache];
  [v6 setCachedPreview:v4 key:v5];
  if (CKIsRunningInFullCKClient() && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ___CKMediaObjectWritePreviewMetadata_block_invoke;
    v8[3] = &unk_1E72EB8D0;
    v9 = v3;
    v10 = v4;
    dispatch_async(v7, v8);
  }
}

id CKOrientedPreviewCacheKey(void *a1, int a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 transferGUID];
  v5 = [v3 stringWithFormat:@"%@-%d", v4, a2];

  return v5;
}

id CKEmojiImagePreviewCacheKey(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [a1 transferGUID];
  v3 = [v1 stringWithFormat:@"%@-emojiImage", v2];

  return v3;
}

id CKStickerPreviewCacheKeyForFileTransfer(void *a1)
{
  v1 = a1;
  if ([v1 isSticker])
  {
    v2 = [v1 stickerUserInfo];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 objectForKey:*MEMORY[0x1E69A7C98]];
      v5 = [v3 objectForKey:*MEMORY[0x1E69A7CA0]];
      v6 = v5;
      if (v4)
      {
        v7 = v5 == 0;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v4, v5];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_190773734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190773904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1907743A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1907745B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1907747C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_190778008(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x190777F84);
  }

  _Unwind_Resume(a1);
}

void sub_19077C76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void CKSendCurrentLocation(void *a1)
{
  v12 = a1;
  v1 = [v12 conversation];
  v2 = [v1 chat];

  if ([v2 authorizedToSendCurrentLocationMessage])
  {
    if ([v2 canSendCurrentLocationMessage])
    {
      [v2 sendCurrentLocationMessage];
    }
  }

  else
  {
    v3 = CKFrameworkBundle();
    v4 = [v3 localizedStringForKey:@"TURN_ON_LOCATION_SERVICES_TO_SEND_LOCATION" value:&stru_1F04268F8 table:@"ChatKit"];
    v5 = [CKAlertController alertControllerWithTitle:v4 message:0 preferredStyle:1];

    v6 = CKFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"SETTINGS" value:&stru_1F04268F8 table:@"ChatKit"];
    v8 = [CKAlertAction actionWithTitle:v7 style:0 handler:&__block_literal_global_254];

    v9 = CKFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
    v11 = [CKAlertAction actionWithTitle:v10 style:1 handler:0];

    [v5 addAction:v8];
    [v5 addAction:v11];
    [v5 presentFromViewController:v12 animated:1 completion:0];
  }
}

void __CKSendCurrentLocation_block_invoke()
{
  v1 = [MEMORY[0x1E6963608] defaultWorkspace];
  v0 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=Privacy&path=LOCATION"];
  [v1 openSensitiveURL:v0 withOptions:0];
}

id CKCommSafetyReceiveContextDictionary(void *a1, void *a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v5 UUIDString];
  }

  v6 = [objc_opt_class() contextKey];
  v9[0] = v6;
  v9[1] = @"SCUIAnalyticsContextKeyForContextDictionary";
  v10[0] = v3;
  v10[1] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

id CKCommSafetySendContextDictionary(void *a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_opt_class() contextKey];
  v5 = v2;
  v6[0] = v1;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

id _PhotoKitAssetForMediaObjectAsset(void *a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v1 = [a1 chatItem];
  v2 = [v1 transferGUID];
  v3 = [MEMORY[0x1E69A5B80] sharedInstance];
  v4 = [v3 transferForGUID:v2];

  v5 = [v4 attributionInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69A6FC0]];
  if (v6)
  {
    v7 = [MEMORY[0x1E69789A8] sharedMomentSharePhotoLibrary];
    v8 = [v7 librarySpecificFetchOptions];

    v9 = MEMORY[0x1E6978630];
    v14[0] = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v11 = [v9 fetchAssetsWithUUIDs:v10 options:v8];
    v12 = [v11 firstObject];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id _PhotoKitMediaProvider()
{
  if (_PhotoKitMediaProvider_predicate != -1)
  {
    _PhotoKitMediaProvider_cold_1();
  }

  v1 = _PhotoKitMediaProvider__photoKitMediaProvider;

  return v1;
}

void sub_1907879F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_190787B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_190787CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19078A2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19078B6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19078BDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFKOrderImportPreviewControllerProviderClass_block_invoke_0(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!FinanceKitUILibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __FinanceKitUILibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E72F79C8;
    v5 = 0;
    FinanceKitUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!FinanceKitUILibraryCore_frameworkLibrary_0)
  {
    __getFKOrderImportPreviewControllerProviderClass_block_invoke_cold_2_0(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("FKOrderImportPreviewControllerProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFKOrderImportPreviewControllerProviderClass_block_invoke_cold_1_0();
  }

  getFKOrderImportPreviewControllerProviderClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FinanceKitUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  FinanceKitUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_19078DA74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getTUIKTConversationViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTUIKTConversationViewControllerClass_softClass;
  v7 = getTUIKTConversationViewControllerClass_softClass;
  if (!getTUIKTConversationViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTUIKTConversationViewControllerClass_block_invoke;
    v3[3] = &unk_1E72EB968;
    v3[4] = &v4;
    __getTUIKTConversationViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19078E5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTUIKTConversationViewControllerClass_block_invoke(uint64_t a1)
{
  TransparencyUILibrary();
  result = objc_getClass("TUIKTConversationViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTUIKTConversationViewControllerClass_block_invoke_cold_1();
  }

  getTUIKTConversationViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void TransparencyUILibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!TransparencyUILibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __TransparencyUILibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E72F7A30;
    v2 = 0;
    TransparencyUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!TransparencyUILibraryCore_frameworkLibrary)
  {
    TransparencyUILibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __TransparencyUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  TransparencyUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getKTStatusClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!TransparencyLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __TransparencyLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E72F7A48;
    v5 = 0;
    TransparencyLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!TransparencyLibraryCore_frameworkLibrary)
  {
    __getKTStatusClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("KTStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getKTStatusClass_block_invoke_cold_1();
  }

  getKTStatusClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TransparencyLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  TransparencyLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getTUIKTReportToAppleContextClass_block_invoke(uint64_t a1)
{
  TransparencyUILibrary();
  result = objc_getClass("TUIKTReportToAppleContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTUIKTReportToAppleContextClass_block_invoke_cold_1();
  }

  getTUIKTReportToAppleContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getTUIKTReportToAppleViewControllerClass_block_invoke(uint64_t a1)
{
  TransparencyUILibrary();
  result = objc_getClass("TUIKTReportToAppleViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTUIKTReportToAppleViewControllerClass_block_invoke_cold_1();
  }

  getTUIKTReportToAppleViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

double CKJoinPillTextMetrics()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v0 = CKFrameworkBundle();
  v1 = [v0 localizedStringForKey:@"NAVIGATION_BAR_JOIN" value:&stru_1F04268F8 table:@"ChatKit"];

  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 navigationHeaderJoinLabelFont];

  v8 = *MEMORY[0x1E69DB648];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v1 sizeWithAttributes:v4];
  v6 = v5;

  return v6;
}

id _circularGlyphImage(void *a1, void *a2)
{
  v3 = MEMORY[0x1E69DCAE0];
  v4 = a2;
  v5 = a1;
  v6 = [[v3 alloc] initWithImage:v5];

  [v6 setTintColor:v4];
  v7 = objc_alloc(MEMORY[0x1E69DD250]);
  [v6 frame];
  v8 = [v7 initWithFrame:?];
  [v8 addSubview:v6];
  [v8 bounds];
  v15.width = v9;
  v15.height = v10;
  UIGraphicsBeginImageContextWithOptions(v15, 0, 0.0);
  v11 = [v8 layer];
  [v11 renderInContext:UIGraphicsGetCurrentContext()];

  v12 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v12;
}

id _joinPillImage(void *a1, void *a2)
{
  v63[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DD250];
  v4 = a2;
  v5 = a1;
  v6 = [v3 alloc];
  v7 = *MEMORY[0x1E695F058];
  v8 = *(MEMORY[0x1E695F058] + 8);
  v9 = *(MEMORY[0x1E695F058] + 16);
  v10 = *(MEMORY[0x1E695F058] + 24);
  v11 = [v6 initWithFrame:{*MEMORY[0x1E695F058], v8, v9, v10}];
  [v11 setBackgroundColor:v4];

  [v11 setClipsToBounds:1];
  v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v5];

  v13 = [MEMORY[0x1E69DC888] whiteColor];
  [v12 setTintColor:v13];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setContentMode:1];
  [v11 addSubview:v12];
  v14 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = +[CKUIBehavior sharedBehaviors];
  v16 = [v15 navigationHeaderJoinLabelFont];
  [v14 setFont:v16];

  v17 = CKFrameworkBundle();
  v18 = [v17 localizedStringForKey:@"NAVIGATION_BAR_JOIN" value:&stru_1F04268F8 table:@"ChatKit"];
  [v14 setText:v18];

  v19 = [MEMORY[0x1E69DC888] whiteColor];
  [v14 setTextColor:v19];

  [v14 setLineBreakMode:2];
  [v11 addSubview:v14];
  v20 = [v14 text];
  v62 = *MEMORY[0x1E69DB648];
  v21 = [v14 font];
  v63[0] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
  [v20 sizeWithAttributes:v22];
  v24 = v23;
  v26 = v25;

  v27 = +[CKUIBehavior sharedBehaviors];
  [v27 navbarButtonImagePointSize];
  v29 = v28;

  [v11 setFrame:{0.0, 0.0, v24 + v26 + 10.0 + 4.0 + 10.0, v29}];
  v30 = [v11 layer];
  [v30 setCornerRadius:v29 * 0.5];

  v50 = MEMORY[0x1E696ACD8];
  v59 = [v14 heightAnchor];
  v60 = [v14 font];
  [v60 lineHeight];
  v58 = [v59 constraintEqualToConstant:?];
  v61[0] = v58;
  v57 = [v14 trailingAnchor];
  v56 = [v11 trailingAnchor];
  v55 = [v57 constraintEqualToAnchor:v56 constant:-10.0];
  v61[1] = v55;
  v52 = [v14 centerYAnchor];
  v53 = v11;
  v51 = [v11 centerYAnchor];
  v49 = [v52 constraintEqualToAnchor:v51];
  v61[2] = v49;
  v48 = [v14 widthAnchor];
  v47 = [v48 constraintEqualToConstant:v24];
  v61[3] = v47;
  v46 = [v12 centerYAnchor];
  v45 = [v11 centerYAnchor];
  v31 = [v46 constraintEqualToAnchor:v45 constant:-0.5];
  v61[4] = v31;
  v54 = v12;
  v32 = [v12 trailingAnchor];
  v33 = [v14 leadingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:-4.0];
  v61[5] = v34;
  v35 = [v12 widthAnchor];
  v36 = [v35 constraintEqualToConstant:v26];
  v61[6] = v36;
  v37 = [v12 heightAnchor];
  v38 = [v37 constraintEqualToConstant:v26];
  v61[7] = v38;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:8];
  [v50 activateConstraints:v39];

  [v53 layoutIfNeeded];
  [v53 bounds];
  v65.width = v40;
  v65.height = v41;
  UIGraphicsBeginImageContextWithOptions(v65, 0, 0.0);
  v42 = [v53 layer];
  [v42 renderInContext:UIGraphicsGetCurrentContext()];

  v43 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v43;
}

void sub_190798AFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void _ITunesStoreAPIInit()
{
  if (_ITunesStoreAPIInit_onceToken != -1)
  {
    _ITunesStoreAPIInit_cold_1();
  }

  if (!kITunesDaemonDidDismissDialog)
  {
    v0 = MEMORY[0x1E696AEC0];
    v1 = IMFileLocationTrimFileName();
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F04268F8];
    v3 = [v0 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"kITunesDaemonDidDismissDialog", "void _ITunesStoreAPIInit(void)", v1, 81, v2];

    v4 = IMGetAssertionFailureHandler();
    if (v4)
    {
      v4(v3);
    }

    else
    {
      v5 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        _ITunesStoreAPIInit_cold_2();
      }
    }
  }

  if (!kITunesDaemonWillDisplayDialog)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = IMFileLocationTrimFileName();
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F04268F8];
    v9 = [v6 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"kITunesDaemonWillDisplayDialog", "void _ITunesStoreAPIInit(void)", v7, 82, v8];

    v10 = IMGetAssertionFailureHandler();
    if (v10)
    {
      v10(v9);
    }

    else
    {
      v11 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        _ITunesStoreAPIInit_cold_2();
      }
    }
  }
}

void _PassKitApiInit()
{
  if (_PassKitApiInit_onceToken != -1)
  {
    _PassKitApiInit_cold_1();
  }

  if (!kPKDarwinNotificationEventInAppPresented)
  {
    v0 = MEMORY[0x1E696AEC0];
    v1 = IMFileLocationTrimFileName();
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F04268F8];
    v3 = [v0 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"kPKDarwinNotificationEventInAppPresented", "void _PassKitApiInit(void)", v1, 93, v2];

    v4 = IMGetAssertionFailureHandler();
    if (v4)
    {
      v4(v3);
    }

    else
    {
      v5 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        _ITunesStoreAPIInit_cold_2();
      }
    }
  }

  if (!kPKDarwinNotificationEventInAppDismissed)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = IMFileLocationTrimFileName();
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F04268F8];
    v9 = [v6 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"kPKDarwinNotificationEventInAppDismissed", "void _PassKitApiInit(void)", v7, 94, v8];

    v10 = IMGetAssertionFailureHandler();
    if (v10)
    {
      v10(v9);
    }

    else
    {
      v11 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        _ITunesStoreAPIInit_cold_2();
      }
    }
  }
}

uint64_t _PassKitUIPresentedCallBack(uint64_t a1, void *a2)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "_PassKitUIPresentedCallBack", v5, 2u);
    }
  }

  result = [a2 isMemberOfClass:objc_opt_class()];
  if (result)
  {
    return [a2 performSelector:sel__passKitUIPresented];
  }

  return result;
}