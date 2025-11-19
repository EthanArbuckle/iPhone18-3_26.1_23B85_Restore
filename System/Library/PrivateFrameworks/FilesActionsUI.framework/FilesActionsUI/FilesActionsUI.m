void FAUIInitLogging()
{
  if (FAUIInitLogging_once != -1)
  {
    FAUIInitLogging_cold_1();
  }
}

uint64_t __FAUIInitLogging_block_invoke()
{
  fauiLogHandle = os_log_create("com.apple.FilesActionsUI", "FilesActionsUI");

  return MEMORY[0x2821F96F8]();
}

id FAUICreateTempFileURLInTemporaryDirectory(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = MEMORY[0x277CCAD78];
  v3 = a1;
  v4 = [v2 UUID];
  v5 = [v4 UUIDString];
  v6 = [v1 stringWithFormat:@"temp_%@", v5];
  v7 = [v3 URLByAppendingPathComponent:v6];

  return v7;
}

id FAUICreateTemporaryFolderURLAppropriateForURL(void *a1)
{
  v1 = MEMORY[0x277CCAA00];
  v2 = a1;
  v3 = [v1 defaultManager];
  v8 = 0;
  v4 = [v3 URLForDirectory:99 inDomain:1 appropriateForURL:v2 create:1 error:&v8];

  v5 = v8;
  if (!v4)
  {
    v6 = fauiLogHandle;
    if (!fauiLogHandle)
    {
      FAUICreateTemporaryFolderURLAppropriateForURL_cold_1(&v9);
      v6 = v9;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      FAUICreateTemporaryFolderURLAppropriateForURL_cold_2(v5, v6);
    }
  }

  return v4;
}

void FAUICreatePDFFromDocumentURLs(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_USER_INITIATED, 0);

  v7 = dispatch_queue_create("com.apple.FilesActionsUI.queue.CreatePDF", v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __FAUICreatePDFFromDocumentURLs_block_invoke;
  v10[3] = &unk_278FFAC08;
  v11 = v3;
  v12 = v4;
  v8 = v4;
  v9 = v3;
  dispatch_async(v7, v10);
}

void _FAUICreatePDFFromDocumentURLs(void *a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (![v3 count])
  {
    goto LABEL_28;
  }

  v25 = v4;
  v5 = objc_alloc_init(getPDFDocumentClass());
  v6 = objc_alloc_init(MEMORY[0x277CCA9E8]);
  v7 = [MEMORY[0x277CBEB18] array];
  v26 = v3;
  [v3 sortedArrayUsingComparator:&__block_literal_global_0];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v44 = 0u;
  v8 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v42;
    do
    {
      v11 = 0;
      do
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v41 + 1) + 8 * v11);
        v40 = 0;
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = ___FAUICreatePDFFromDocumentURLs_block_invoke;
        v35[3] = &unk_278FFAC30;
        v36 = 0;
        v37 = v12;
        v38 = v5;
        v39 = v7;
        [v6 coordinateReadingItemAtURL:v12 options:0 error:&v40 byAccessor:v35];
        v13 = v40;

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v9);
  }

  v14 = _NewDocumentFileName(obj);
  v15 = _CreateTemporaryPDFFileURL(v14);

  if (![v5 pageCount])
  {
    v17 = fauiLogHandle;
    if (!fauiLogHandle)
    {
      FAUIInitLogging();
      v17 = fauiLogHandle;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      _FAUICreatePDFFromDocumentURLs_cold_2(v17);
    }

    goto LABEL_19;
  }

  if (([v5 writeToURL:v15] & 1) == 0)
  {
    v16 = fauiLogHandle;
    if (!fauiLogHandle)
    {
      FAUIInitLogging();
      v16 = fauiLogHandle;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      _FAUICreatePDFFromDocumentURLs_cold_1();
    }

LABEL_19:

    v15 = 0;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = v7;
  v19 = [v18 countByEnumeratingWithState:&v31 objects:v45 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v32;
    do
    {
      v22 = 0;
      do
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(v18);
        }

        _CleanupTemporaryImage(*(*(&v31 + 1) + 8 * v22++));
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v31 objects:v45 count:16];
    }

    while (v20);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___FAUICreatePDFFromDocumentURLs_block_invoke_4;
  block[3] = &unk_278FFAC58;
  v4 = v25;
  v29 = v15;
  v30 = v25;
  v23 = v15;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v3 = v26;
LABEL_28:

  v24 = *MEMORY[0x277D85DE8];
}

id getPDFDocumentClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPDFDocumentClass_softClass;
  v7 = getPDFDocumentClass_softClass;
  if (!getPDFDocumentClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPDFDocumentClass_block_invoke;
    v3[3] = &unk_278FFACA0;
    v3[4] = &v4;
    __getPDFDocumentClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_24ABD2618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const __CFURL *_AppendImageToDocument(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = 612.0;
  v20.size.height = 792.0;
  v21 = CGRectInset(v20, 30.0, 30.0);
  v5 = _DownsampleImage(v3, v21.size.width, v21.size.height);
  v6 = v5;
  if (v5)
  {
    v7 = CGImageSourceCreateWithURL(v5, 0);
    if (v7)
    {
      v8 = v7;
      v15 = 0;
      v16 = &v15;
      v17 = 0x2050000000;
      v9 = getPDFPageClass_softClass;
      v18 = getPDFPageClass_softClass;
      if (!getPDFPageClass_softClass)
      {
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __getPDFPageClass_block_invoke;
        v14[3] = &unk_278FFACA0;
        v14[4] = &v15;
        __getPDFPageClass_block_invoke(v14);
        v9 = v16[3];
      }

      v10 = v9;
      _Block_object_dispose(&v15, 8);
      v11 = [[v9 alloc] initWithImageSource:v8];
      v12 = v11;
      if (v11)
      {
        [v11 setBounds:0 forBox:{0.0, 0.0, 612.0, 792.0}];
        [v12 setBounds:1 forBox:{0.0, 0.0, 612.0, 792.0}];
        [v4 insertPage:v12 atIndex:{objc_msgSend(v4, "pageCount")}];
      }

      CFRelease(v8);
    }

    if ([(__CFURL *)v6 isEqual:v3])
    {

      v6 = 0;
    }
  }

  return v6;
}

void sub_24ABD2A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _AppendDocumentToDocument(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  v4 = [v8 pageCount];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v7 = [v8 pageAtIndex:i];
      [v3 insertPage:v7 atIndex:{objc_msgSend(v3, "pageCount")}];
    }
  }
}

id _CreateTemporaryPDFFileURL(void *a1)
{
  v1 = a1;
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingPathComponent:v1];

  v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v3];

  return v4;
}

id _NewDocumentFileName(void *a1)
{
  v1 = [a1 sortedArrayUsingComparator:&__block_literal_global_0];
  v2 = [v1 count];
  v3 = [v1 firstObject];
  v4 = [v3 lastPathComponent];
  v5 = [v4 stringByDeletingPathExtension];

  if (v2 == 1)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.pdf", v5];
  }

  else
  {
    v7 = [MEMORY[0x277CBEAA8] date];
    v8 = _FormattedDate(v7);

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@.pdf", v5, v8];
  }

  return v6;
}

void _CleanupTemporaryImage(void *a1)
{
  v1 = MEMORY[0x277CCAA00];
  v2 = a1;
  v3 = [v1 defaultManager];
  v6 = 0;
  [v3 removeItemAtURL:v2 error:&v6];

  v4 = v6;
  if (v4)
  {
    v5 = fauiLogHandle;
    if (!fauiLogHandle)
    {
      FAUIInitLogging();
      v5 = fauiLogHandle;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _CleanupTemporaryImage_cold_1();
    }
  }
}

id _DownsampleImage(void *a1, double a2, double a3)
{
  v36[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = _CreateTemporaryImageFileURL();
  if (v6)
  {
    v7 = CGImageSourceCreateWithURL(v5, 0);
    if (v7)
    {
      v8 = v7;
      v9 = CGImageSourceCopyPropertiesAtIndex(v7, 0, 0);
      v10 = [(__CFDictionary *)v9 valueForKey:*MEMORY[0x277CD3450]];
      v11 = [(__CFDictionary *)v9 valueForKey:*MEMORY[0x277CD3448]];
      [v10 floatValue];
      v13 = v12;
      v14 = v12;
      [v11 floatValue];
      v16 = v15;
      v17 = v15;
      v18 = a2 / v14;
      if (a2 >= v14)
      {
        v18 = 1.0;
      }

      if (v18 * v17 > a3)
      {
        v18 = a3 / v17;
      }

      if (v18 == 1.0)
      {
        v29 = fauiLogHandle;
        if (!fauiLogHandle)
        {
          FAUIInitLogging();
          v29 = fauiLogHandle;
        }

        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          _DownsampleImage_cold_1();
        }

        v30 = v5;

        v6 = v30;
      }

      else
      {
        Type = CGImageSourceGetType(v8);
        if (Type)
        {
          v20 = CGImageDestinationCreateWithURL(v6, Type, 1uLL, 0);
          if (v20)
          {
            v21 = v20;
            v35[0] = *MEMORY[0x277CD2D40];
            if (v13 >= v16)
            {
              v22 = v14;
            }

            else
            {
              v22 = v17;
            }

            v23 = [MEMORY[0x277CCABB0] numberWithDouble:v22];
            v24 = *MEMORY[0x277CD3618];
            v36[0] = v23;
            v36[1] = MEMORY[0x277CBEC28];
            v25 = *MEMORY[0x277CD3578];
            v35[1] = v24;
            v35[2] = v25;
            v35[3] = *MEMORY[0x277CD3678];
            v36[2] = MEMORY[0x277CBEC38];
            v36[3] = MEMORY[0x277CBEC38];
            v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:4];

            CGImageDestinationAddImageFromSource(v21, v8, 0, v26);
            if (!CGImageDestinationFinalize(v21))
            {

              v27 = fauiLogHandle;
              if (!fauiLogHandle)
              {
                FAUIInitLogging();
                v27 = fauiLogHandle;
              }

              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                _DownsampleImage_cold_2();
              }

              v6 = 0;
            }

            CFRelease(v21);
          }

          else
          {
            v32 = fauiLogHandle;
            if (!fauiLogHandle)
            {
              FAUIInitLogging();
              v32 = fauiLogHandle;
            }

            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              _DownsampleImage_cold_3();
            }
          }
        }

        else
        {
          v31 = fauiLogHandle;
          if (!fauiLogHandle)
          {
            FAUIInitLogging();
            v31 = fauiLogHandle;
          }

          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            _DownsampleImage_cold_4();
          }
        }
      }

      CFRelease(v8);
    }

    else
    {
      v28 = fauiLogHandle;
      if (!fauiLogHandle)
      {
        FAUIInitLogging();
        v28 = fauiLogHandle;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        _DownsampleImage_cold_5();
      }
    }
  }

  v33 = *MEMORY[0x277D85DE8];

  return v6;
}

id _CreateTemporaryImageFileURL()
{
  v0 = NSTemporaryDirectory();
  v1 = [MEMORY[0x277CCAD78] UUID];
  v2 = [v1 UUIDString];
  v3 = [v0 stringByAppendingPathComponent:v2];

  v4 = [v3 stringByAppendingPathExtension:@"jpeg"];

  v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v4];

  return v5;
}

id _FormattedDate(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v1 = [MEMORY[0x277CBEAA8] date];
  }

  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  [v2 setDateFormat:@"yyyy-MM-dd' at 'h.mm.ss a"];
  v4 = [v2 stringFromDate:v1];

  return v4;
}

Class __getPDFDocumentClass_block_invoke(uint64_t a1)
{
  PDFKitLibrary();
  result = objc_getClass("PDFDocument");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPDFDocumentClass_block_invoke_cold_1();
  }

  getPDFDocumentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void PDFKitLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!PDFKitLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __PDFKitLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278FFACC0;
    v3 = 0;
    PDFKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PDFKitLibraryCore_frameworkLibrary)
  {
    PDFKitLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x277D85DE8];
}

uint64_t __PDFKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PDFKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getPDFPageClass_block_invoke(uint64_t a1)
{
  PDFKitLibrary();
  result = objc_getClass("PDFPage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPDFPageClass_block_invoke_cold_1();
  }

  getPDFPageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void FAUIRotateMovies(void *a1, uint64_t a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v21 = a3;
  v24 = objc_opt_new();
  v5 = objc_alloc_init(MEMORY[0x277CCABD8]);
  [v5 setQualityOfService:25];
  v25 = v5;
  [v5 setName:@"RotateReaderWriterQueue"];
  v6 = dispatch_group_create();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    do
    {
      v10 = 0;
      do
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v37 + 1) + 8 * v10);
        dispatch_group_enter(v6);
        v12 = objc_alloc_init(MEMORY[0x277CCA9E8]);
        v13 = [MEMORY[0x277CCA9E0] readingIntentWithURL:v11 options:0];
        v14 = [v11 startAccessingSecurityScopedResource];
        v41 = v13;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __FAUIRotateMovies_block_invoke;
        v29[3] = &unk_278FFAD50;
        v30 = v24;
        v31 = v11;
        v36 = v14;
        v32 = v6;
        v33 = v13;
        v34 = v12;
        v35 = a2;
        v16 = v12;
        v17 = v13;
        [v16 coordinateAccessWithIntents:v15 queue:v25 byAccessor:v29];

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v8);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __FAUIRotateMovies_block_invoke_12;
  block[3] = &unk_278FFAC58;
  v27 = v24;
  v28 = v21;
  v18 = v24;
  v19 = v21;
  dispatch_group_notify(v6, MEMORY[0x277D85CD0], block);

  v20 = *MEMORY[0x277D85DE8];
}

void __FAUIRotateMovies_block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = fauiLogHandle;
    if (!fauiLogHandle)
    {
      FAUIInitLogging();
      v4 = fauiLogHandle;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __FAUIRotateMovies_block_invoke_cold_1(v3, v4);
    }

    [*(a1 + 32) setObject:v3 forKey:*(a1 + 40)];
    if (*(a1 + 80) == 1)
    {
      [*(a1 + 40) stopAccessingSecurityScopedResource];
    }

    dispatch_group_leave(*(a1 + 48));
  }

  else
  {
    v5 = [*(a1 + 56) URL];
    v6 = FAUICreateTemporaryFolderURLAppropriateForURL(v5);

    v7 = FAUICreateTempFileURLInTemporaryDirectory(v6);
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [*(a1 + 56) URL];
    v31 = 0;
    [v8 copyItemAtURL:v9 toURL:v7 error:&v31];
    v10 = v31;

    if (v10)
    {
      v11 = fauiLogHandle;
      if (!fauiLogHandle)
      {
        FAUIInitLogging();
        v11 = fauiLogHandle;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 56);
        v20 = v11;
        v21 = [v19 URL];
        *buf = 138412802;
        v33 = v21;
        v34 = 2112;
        v35 = v7;
        v36 = 2112;
        v37 = v10;
        _os_log_error_impl(&dword_24ABD1000, v20, OS_LOG_TYPE_ERROR, "Failed to copy %@ to temp file %@ error: %@", buf, 0x20u);
      }
    }

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __FAUIRotateMovies_block_invoke_6;
    v22[3] = &unk_278FFAD28;
    v12 = *(a1 + 72);
    v23 = *(a1 + 64);
    v24 = *(a1 + 56);
    v25 = v7;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v26 = v13;
    v27 = v14;
    v28 = v6;
    v30 = *(a1 + 80);
    v29 = v15;
    v16 = v6;
    v17 = v7;
    _FAUIRotateMovie(v17, v17, v12, v22);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void _FAUIRotateMovie(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = a2;
  v10 = [v7 startAccessingSecurityScopedResource];
  v11 = [MEMORY[0x277CE6560] movieWithURL:v7 options:0];
  v12 = [v11 tracksWithMediaType:*MEMORY[0x277CE5EA8]];
  v13 = [v12 firstObject];

  v14 = 4.71238898;
  if (a3 != 1)
  {
    v14 = 0.0;
  }

  if (a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1.57079633;
  }

  if (v13)
  {
    [v13 preferredTransform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  CGAffineTransformMakeRotation(&t2, v15);
  CGAffineTransformConcat(&v25, &t1, &t2);
  [v13 setPreferredTransform:&v25];
  v16 = *MEMORY[0x277CE5DA8];
  v22 = 0;
  v17 = [v11 writeMovieHeaderToURL:v9 fileType:v16 options:0 error:&v22];

  v18 = v22;
  if (v18)
  {
    v19 = fauiLogHandle;
    if (!fauiLogHandle)
    {
      FAUIInitLogging();
      v19 = fauiLogHandle;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      _FAUIRotateMovie_cold_1(v18, v19);
    }

    v20 = v18;
LABEL_19:
    v21 = v20;
    if (!v10)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if ((v17 & 1) == 0)
  {
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE5DC0] code:-11800 userInfo:0];
    goto LABEL_19;
  }

  v21 = 0;
  if (v10)
  {
LABEL_20:
    [v7 stopAccessingSecurityScopedResource];
  }

LABEL_21:
  if (v8)
  {
    v8[2](v8, v17, v21);
  }
}

void __FAUIRotateMovies_block_invoke_6(uint64_t a1, int a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy_;
    v30 = __Block_byref_object_dispose_;
    v31 = 0;
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) URL];
    v9 = (v27 + 5);
    obj = v27[5];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __FAUIRotateMovies_block_invoke_7;
    v22[3] = &unk_278FFAD00;
    v23 = *(a1 + 48);
    v24 = &v26;
    [v7 coordinateWritingItemAtURL:v8 options:0 error:&obj byAccessor:v22];
    objc_storeStrong(v9, obj);

    if (v27[5])
    {
      v10 = fauiLogHandle;
      if (!fauiLogHandle)
      {
        FAUIInitLogging();
        v10 = fauiLogHandle;
      }

      v11 = v10;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v19 = [*(a1 + 40) URL];
        v20 = *(a1 + 48);
        *buf = 138412802;
        v33 = v19;
        v34 = 2112;
        v35 = v20;
        v36 = 2112;
        v37 = v6;
        _os_log_error_impl(&dword_24ABD1000, v11, OS_LOG_TYPE_ERROR, "Failed to replace %@ with temp file %@ error: %@", buf, 0x20u);
      }

      v12 = [MEMORY[0x277CCAA00] defaultManager];
      [v12 removeItemAtURL:*(a1 + 48) error:0];

      [*(a1 + 56) setObject:v27[5] forKey:*(a1 + 64)];
    }

    v13 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = *(a1 + 72);
    v21 = 0;
    [v13 removeItemAtURL:v14 error:&v21];
    v15 = v21;

    if (v15)
    {
      v16 = fauiLogHandle;
      if (!fauiLogHandle)
      {
        FAUIInitLogging();
        v16 = fauiLogHandle;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __FAUIRotateMovies_block_invoke_6_cold_1((a1 + 72), v15, v16);
      }
    }

    _Block_object_dispose(&v26, 8);
  }

  else if (v5)
  {
    [*(a1 + 56) setObject:v5 forKey:*(a1 + 64)];
  }

  else
  {
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE5DC0] code:-11800 userInfo:0];
    [*(a1 + 56) setObject:v17 forKey:*(a1 + 64)];
  }

  if (*(a1 + 88) == 1)
  {
    [*(a1 + 64) stopAccessingSecurityScopedResource];
  }

  dispatch_group_leave(*(a1 + 80));

  v18 = *MEMORY[0x277D85DE8];
}

void sub_24ABD4088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __FAUIRotateMovies_block_invoke_7(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAA00];
  v4 = a2;
  v5 = [v3 defaultManager];
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 8);
  obj = *(v7 + 40);
  [v5 replaceItemAtURL:v4 withItemAtURL:v6 backupItemName:0 options:0 resultingItemURL:0 error:&obj];

  objc_storeStrong((v7 + 40), obj);
}

void __FAUIRotateMovies_block_invoke_12(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = [*(a1 + 32) allKeys];
    (*(v1 + 16))(v1, [v3 count] == 0, *(a1 + 32));
  }
}

double _FAUIRotationDirectionToRadians(uint64_t a1)
{
  result = 4.71238898;
  if (a1 != 1)
  {
    result = 0.0;
  }

  if (!a1)
  {
    return 1.57079633;
  }

  return result;
}

BOOL FAUIRotateImage(void *a1, void *a2, uint64_t a3)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = CGDataProviderCreateWithURL(v5);
  if (v7)
  {
    v8 = v7;
    v9 = CGImageSourceCreateWithDataProvider(v7, 0);
    if (!v9)
    {
      v28 = fauiLogHandle;
      if (!fauiLogHandle)
      {
        FAUIInitLogging();
        v28 = fauiLogHandle;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        FAUIRotateImage_cold_5();
      }

      v24 = 0;
      goto LABEL_40;
    }

    v10 = v9;
    Type = CGImageSourceGetType(v9);
    if (Type)
    {
      v12 = CGImageDestinationCreateWithURL(v6, Type, 1uLL, 0);
      if (v12)
      {
        v13 = v12;
        v14 = CGImageSourceCopyMetadataAtIndex(v10, 0, 0);
        if (v14)
        {
          v15 = v14;
          v16 = CGImageSourceCopyPropertiesAtIndex(v10, 0, 0);
          v17 = [(__CFDictionary *)v16 valueForKey:*MEMORY[0x277CD3410]];
          if (!v17)
          {
            v17 = &unk_285E204A8;
          }

          v34 = v17;
          v18 = [v17 intValue];
          if ((v18 - 9) <= 0xFFFFFFF7)
          {
            FAUIRotateImage_cold_2();
          }

          v19 = &_FAUICounterClockwiseTranslations;
          if (!a3)
          {
            v19 = &_FAUIClockwiseTranslations;
          }

          v20 = v19[v18];
          v21 = *MEMORY[0x277CD2D68];
          v36[0] = *MEMORY[0x277CD2D50];
          v36[1] = v21;
          v37[0] = MEMORY[0x277CBEC38];
          v22 = [MEMORY[0x277CCABB0] numberWithInt:v20];
          v37[1] = v22;
          v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];

          err = 0;
          v24 = CGImageDestinationCopyImageSource(v13, v10, v23, &err);
          if (err)
          {
            v33 = v16;
            v25 = CFErrorCopyDescription(err);
            v26 = fauiLogHandle;
            if (!fauiLogHandle)
            {
              FAUIInitLogging();
              v26 = fauiLogHandle;
            }

            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              FAUIRotateImage_cold_1();
            }

            v16 = v33;
          }

          CFRelease(v15);
        }

        else
        {
          v24 = 0;
        }

        CFRelease(v13);
        goto LABEL_39;
      }

      v30 = fauiLogHandle;
      if (!fauiLogHandle)
      {
        FAUIInitLogging();
        v30 = fauiLogHandle;
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        FAUIRotateImage_cold_3();
      }
    }

    else
    {
      v29 = fauiLogHandle;
      if (!fauiLogHandle)
      {
        FAUIInitLogging();
        v29 = fauiLogHandle;
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        FAUIRotateImage_cold_4();
      }
    }

    v24 = 0;
LABEL_39:
    CFRelease(v10);
LABEL_40:
    CFRelease(v8);
    goto LABEL_41;
  }

  v27 = fauiLogHandle;
  if (!fauiLogHandle)
  {
    FAUIInitLogging();
    v27 = fauiLogHandle;
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    FAUIRotateImage_cold_6();
  }

  v24 = 0;
LABEL_41:

  v31 = *MEMORY[0x277D85DE8];
  return v24;
}

void FAUIRotateImages(void *a1, uint64_t a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v20 = a3;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v45[3] = 0;
  v5 = objc_alloc_init(MEMORY[0x277CCABD8]);
  [v5 setQualityOfService:25];
  [v5 setName:@"RotateReaderWriterQueue"];
  v6 = dispatch_group_create();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v7)
  {
    v22 = *v42;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v42 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v41 + 1) + 8 * i);
        v10 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
        v11 = [MEMORY[0x277CCA9E0] readingIntentWithURL:v9 options:0];
        v12 = [v9 startAccessingSecurityScopedResource];
        v39[0] = 0;
        v39[1] = v39;
        v39[2] = 0x3032000000;
        v39[3] = __Block_byref_object_copy__0;
        v39[4] = __Block_byref_object_dispose__0;
        v40 = 0;
        dispatch_group_enter(v6);
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __FAUIRotateImages_block_invoke;
        v35[3] = &unk_278FFAD78;
        v38 = v12;
        v37 = v39;
        v35[4] = v9;
        v36 = v6;
        v13 = MEMORY[0x24C22B2D0](v35);
        v46 = v11;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __FAUIRotateImages_block_invoke_6;
        v27[3] = &unk_278FFADC8;
        v32 = v45;
        v15 = v13;
        v31 = v15;
        v33 = v39;
        v16 = v11;
        v28 = v16;
        v34 = a2;
        v17 = v10;
        v29 = v17;
        v30 = v5;
        [v17 coordinateAccessWithIntents:v14 queue:v30 byAccessor:v27];

        _Block_object_dispose(v39, 8);
      }

      v7 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v7);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __FAUIRotateImages_block_invoke_9;
  block[3] = &unk_278FFADF0;
  v25 = v20;
  v26 = v45;
  v18 = v20;
  dispatch_group_notify(v6, MEMORY[0x277D85CD0], block);

  _Block_object_dispose(v45, 8);
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __FAUIRotateImages_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v7 = 0;
  v4 = [v2 removeItemAtURL:v3 error:&v7];
  v5 = v7;

  if ((v4 & 1) == 0)
  {
    v6 = fauiLogHandle;
    if (!fauiLogHandle)
    {
      FAUIInitLogging();
      v6 = fauiLogHandle;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __FAUIRotateImages_block_invoke_cold_1(a1 + 48, v5, v6);
    }
  }

  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) stopAccessingSecurityScopedResource];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __FAUIRotateImages_block_invoke_6(uint64_t a1, void *a2)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    ++*(*(*(a1 + 64) + 8) + 24);
    v4 = fauiLogHandle;
    if (!fauiLogHandle)
    {
      FAUIInitLogging();
      v4 = fauiLogHandle;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __FAUIRotateImages_block_invoke_6_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v5 = [*(a1 + 32) URL];
    v6 = FAUICreateTemporaryFolderURLAppropriateForURL(v5);
    v7 = *(*(a1 + 72) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = FAUICreateTempFileURLInTemporaryDirectory(*(*(*(a1 + 72) + 8) + 40));
    v10 = [*(a1 + 32) URL];
    v11 = FAUIRotateImage(v10, v9, *(a1 + 80));

    if (v11)
    {
      v12 = MEMORY[0x277CCA9E0];
      v13 = [*(a1 + 32) URL];
      v14 = [v12 writingIntentWithURL:v13 options:0];

      v15 = *(a1 + 40);
      v27[0] = v14;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
      v17 = *(a1 + 48);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __FAUIRotateImages_block_invoke_7;
      v22[3] = &unk_278FFADA0;
      v23 = v14;
      v24 = v9;
      v25 = *(a1 + 32);
      v21 = *(a1 + 56);
      v18 = v21;
      v26 = v21;
      v19 = v14;
      [v15 coordinateAccessWithIntents:v16 queue:v17 byAccessor:v22];
    }

    else
    {
      ++*(*(*(a1 + 64) + 8) + 24);
      (*(*(a1 + 56) + 16))();
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __FAUIRotateImages_block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    ++*(*(*(a1 + 64) + 8) + 24);
    v4 = fauiLogHandle;
    if (!fauiLogHandle)
    {
      FAUIInitLogging();
      v4 = fauiLogHandle;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __FAUIRotateImages_block_invoke_7_cold_1();
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [*(a1 + 32) URL];
    v7 = *(a1 + 40);
    v11 = 0;
    v8 = [v5 replaceItemAtURL:v6 withItemAtURL:v7 backupItemName:0 options:0 resultingItemURL:0 error:&v11];
    v9 = v11;

    if ((v8 & 1) == 0)
    {
      v10 = fauiLogHandle;
      if (!fauiLogHandle)
      {
        FAUIInitLogging();
        v10 = fauiLogHandle;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __FAUIRotateImages_block_invoke_7_cold_2(a1, v10, (a1 + 40));
      }

      ++*(*(*(a1 + 64) + 8) + 24);
    }
  }

  (*(*(a1 + 56) + 16))();
}

uint64_t __FAUIRotateImages_block_invoke_9(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 24) == 0);
  }

  return result;
}

void FAUICreateTemporaryFolderURLAppropriateForURL_cold_1(void *a1)
{
  if (FAUIInitLogging_once != -1)
  {
    dispatch_once(&FAUIInitLogging_once, &__block_literal_global);
  }

  *a1 = fauiLogHandle;
}

void FAUICreateTemporaryFolderURLAppropriateForURL_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24ABD1000, a2, OS_LOG_TYPE_ERROR, "Failed to create temp directory: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void _FAUICreatePDFFromDocumentURLs_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24ABD1000, v0, v1, "Error: failed to write PDF to URL: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _CleanupTemporaryImage_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24ABD1000, v0, v1, "Error cleaning up temporary file: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _DownsampleImage_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24ABD1000, v0, v1, "No need to downsample image at file URL: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _DownsampleImage_cold_2()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = 0;
  _os_log_error_impl(&dword_24ABD1000, v0, OS_LOG_TYPE_ERROR, "Downsample image: failed to finalize image destination of type: %@ at file URL: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void _DownsampleImage_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24ABD1000, v0, v1, "Failed create image destination at file URL: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _DownsampleImage_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24ABD1000, v0, v1, "Failed to get type identifier of file URL: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _DownsampleImage_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24ABD1000, v0, v1, "Failed to create image source from file URL: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __getPDFDocumentClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPDFDocumentClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"FAUICombinePDFAction.m" lineNumber:24 description:{@"Unable to find class %s", "PDFDocument"}];

  __break(1u);
}

void PDFKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PDFKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"FAUICombinePDFAction.m" lineNumber:22 description:{@"%s", *a1}];

  __break(1u);
}

void __getPDFPageClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPDFPageClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"FAUICombinePDFAction.m" lineNumber:23 description:{@"Unable to find class %s", "PDFPage"}];

  __break(1u);
}

void __FAUIRotateMovies_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24ABD1000, a2, OS_LOG_TYPE_ERROR, "Failed to take a coordinated read: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void _FAUIRotateMovie_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24ABD1000, a2, OS_LOG_TYPE_ERROR, "Failed to rotate video file: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __FAUIRotateMovies_block_invoke_6_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_24ABD1000, log, OS_LOG_TYPE_ERROR, "Failed to delete temp directory %@ error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void FAUIRotateImage_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24ABD1000, v0, v1, "Error, could not use fast-path image rotation due to: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void FAUIRotateImage_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24ABD1000, v0, v1, "Error: could create image destination for URL %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void FAUIRotateImage_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24ABD1000, v0, v1, "Error: could not determine UTI for URL %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void FAUIRotateImage_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24ABD1000, v0, v1, "Error: could not create image source for URL %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void FAUIRotateImage_cold_6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24ABD1000, v0, v1, "Error: could not create data provider with URL %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __FAUIRotateImages_block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(*(*a1 + 8) + 40);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_24ABD1000, log, OS_LOG_TYPE_ERROR, "Failed to remove temporary folder %@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __FAUIRotateImages_block_invoke_6_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24ABD1000, v0, v1, "Failed to take a coordinated read: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __FAUIRotateImages_block_invoke_7_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_24ABD1000, v0, v1, "Failed to take a coordinated write: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __FAUIRotateImages_block_invoke_7_cold_2(uint64_t a1, void *a2, uint64_t *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  v5 = a2;
  v6 = [v4 URL];
  v7 = *a3;
  OUTLINED_FUNCTION_0();
  v11 = 2112;
  v12 = v8;
  v13 = 2112;
  v14 = 0;
  _os_log_error_impl(&dword_24ABD1000, v5, OS_LOG_TYPE_ERROR, "Failed to replace %@ with temp file %@ error: %@", v10, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}