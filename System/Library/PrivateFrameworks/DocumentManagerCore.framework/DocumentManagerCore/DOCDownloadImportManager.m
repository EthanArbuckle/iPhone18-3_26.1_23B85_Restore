@interface DOCDownloadImportManager
- (BOOL)_doc_destinationLocationExists:(int64_t)a3;
- (id)_moveItemAtURL:(id)a3 toNamedLocation:(int64_t)a4 error:(id *)a5;
- (id)interface;
- (void)importPlaceholderAtURLToDownloadsDirectory:(id)a3 completion:(id)a4;
- (void)replacePlaceholder:(id)a3 withFinalFileURL:(id)a4 completionHandler:(id)a5;
@end

@implementation DOCDownloadImportManager

- (void)importPlaceholderAtURLToDownloadsDirectory:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [DOCDownloadImportManager importPlaceholderAtURLToDownloadsDirectory:a2 completion:self];
  }

  v9 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.DocumentManagerCore.Downloads"];
  v10 = [(DOCDownloadImportManager *)self interface];
  [v9 setRemoteObjectInterface:v10];

  [v9 resume];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __82__DOCDownloadImportManager_importPlaceholderAtURLToDownloadsDirectory_completion___block_invoke;
  v18[3] = &unk_278F9B7B0;
  v11 = v8;
  v19 = v11;
  v12 = [v9 remoteObjectProxyWithErrorHandler:v18];
  v17 = 0;
  v13 = [MEMORY[0x277CC6438] wrapperWithURL:v7 readonly:0 error:&v17];
  v14 = v17;
  if (v13)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __82__DOCDownloadImportManager_importPlaceholderAtURLToDownloadsDirectory_completion___block_invoke_16;
    v15[3] = &unk_278F9BAB8;
    v16 = v11;
    [v12 importPlaceholderAtURLToDownloadsDirectory:v13 completionHandler:v15];
  }

  else
  {
    (*(v11 + 2))(v11, 0, v14);
  }
}

void __82__DOCDownloadImportManager_importPlaceholderAtURLToDownloadsDirectory_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = docDownloadServiceLogHandle;
  if (!docDownloadServiceLogHandle)
  {
    DOCInitLogging();
    v4 = docDownloadServiceLogHandle;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __82__DOCDownloadImportManager_importPlaceholderAtURLToDownloadsDirectory_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __82__DOCDownloadImportManager_importPlaceholderAtURLToDownloadsDirectory_completion___block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = [a2 url];
  v6 = v5;
  if (a2 && v5)
  {
    v7 = [v5 startAccessingSecurityScopedResource];
    (*(*(a1 + 32) + 16))();
    if (v7)
    {
      [v6 stopAccessingSecurityScopedResource];
    }
  }

  else
  {
    if (v10)
    {
      v8 = v10;
    }

    else
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:256 userInfo:0];
    }

    v9 = v8;
    (*(*(a1 + 32) + 16))();
  }
}

- (void)replacePlaceholder:(id)a3 withFinalFileURL:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = MEMORY[0x277CCAE80];
  v10 = a4;
  v11 = a3;
  v12 = [[v9 alloc] initWithServiceName:@"com.apple.DocumentManagerCore.Downloads"];
  v13 = [(DOCDownloadImportManager *)self interface];
  [v12 setRemoteObjectInterface:v13];

  [v12 resume];
  v14 = [v12 remoteObjectProxyWithErrorHandler:&__block_literal_global_6];
  v22 = 0;
  v15 = [MEMORY[0x277CC6438] wrapperWithURL:v11 readonly:0 error:&v22];

  v16 = v22;
  v21 = v16;
  v17 = [MEMORY[0x277CC6438] wrapperWithURL:v10 readonly:0 error:&v21];

  v18 = v21;
  if (v15 && v17)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __82__DOCDownloadImportManager_replacePlaceholder_withFinalFileURL_completionHandler___block_invoke_19;
    v19[3] = &unk_278F9BAB8;
    v20 = v8;
    [v14 replacePlaceholder:v15 withFinalFileURL:v17 completionHandler:v19];
  }

  else
  {
    (*(v8 + 2))(v8, 0, v18);
  }
}

void __82__DOCDownloadImportManager_replacePlaceholder_withFinalFileURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = docDownloadServiceLogHandle;
  if (!docDownloadServiceLogHandle)
  {
    DOCInitLogging();
    v3 = docDownloadServiceLogHandle;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __82__DOCDownloadImportManager_importPlaceholderAtURLToDownloadsDirectory_completion___block_invoke_cold_1();
  }
}

void __82__DOCDownloadImportManager_replacePlaceholder_withFinalFileURL_completionHandler___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = [a2 url];
  v6 = v5;
  if (a2 && v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v9)
    {
      v7 = v9;
    }

    else
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:256 userInfo:0];
    }

    v8 = v7;
    (*(*(a1 + 32) + 16))();
  }
}

- (id)interface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285C8D778];
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_importPlaceholderAtURLToDownloadsDirectory_completionHandler_ argumentIndex:0 ofReply:0];

  v4 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v4 forSelector:sel_importPlaceholderAtURLToDownloadsDirectory_completionHandler_ argumentIndex:0 ofReply:1];

  v5 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_importPlaceholderAtURLToDownloadsDirectory_completionHandler_ argumentIndex:1 ofReply:1];

  v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v6 forSelector:sel_replacePlaceholder_withFinalFileURL_completionHandler_ argumentIndex:0 ofReply:0];

  v7 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v7 forSelector:sel_replacePlaceholder_withFinalFileURL_completionHandler_ argumentIndex:1 ofReply:0];

  v8 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_replacePlaceholder_withFinalFileURL_completionHandler_ argumentIndex:0 ofReply:1];

  v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v9 forSelector:sel_replacePlaceholder_withFinalFileURL_completionHandler_ argumentIndex:1 ofReply:1];

  v10 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v10 forSelector:sel_importItemAtURL_toLocation_completionHandler_ argumentIndex:0 ofReply:1];

  v11 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v11 forSelector:sel_importItemAtURL_toLocation_completionHandler_ argumentIndex:1 ofReply:1];

  v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v12 forSelector:sel_namedLocationExists_completionHandler_ argumentIndex:1 ofReply:1];

  return v2;
}

- (id)_moveItemAtURL:(id)a3 toNamedLocation:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [v8 startAccessingSecurityScopedResource];
  v34[0] = 0;
  v10 = [MEMORY[0x277CC6438] wrapperWithURL:v8 readonly:0 error:v34];
  v11 = v34[0];
  v12 = v11;
  if (v11)
  {
    if (a5)
    {
      v13 = v11;
      v14 = 0;
      *a5 = v12;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.DocumentManagerCore.Downloads"];
    v16 = [(DOCDownloadImportManager *)self interface];
    [v15 setRemoteObjectInterface:v16];

    [v15 resume];
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__3;
    v32 = __Block_byref_object_dispose__3;
    v33 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__3;
    v26 = __Block_byref_object_dispose__3;
    v27 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __65__DOCDownloadImportManager__moveItemAtURL_toNamedLocation_error___block_invoke;
    v21[3] = &unk_278F9BB00;
    v21[4] = &v28;
    v17 = [v15 synchronousRemoteObjectProxyWithErrorHandler:v21];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __65__DOCDownloadImportManager__moveItemAtURL_toNamedLocation_error___block_invoke_35;
    v20[3] = &unk_278F9BB28;
    v20[4] = &v22;
    v20[5] = &v28;
    [v17 importItemAtURL:v10 toLocation:a4 completionHandler:v20];
    if (a5)
    {
      v18 = v29[5];
      if (v18)
      {
        *a5 = v18;
      }
    }

    if (v9)
    {
      [v8 stopAccessingSecurityScopedResource];
    }

    v14 = v23[5];

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v28, 8);
  }

  return v14;
}

void __65__DOCDownloadImportManager__moveItemAtURL_toNamedLocation_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = docDownloadServiceLogHandle;
  if (!docDownloadServiceLogHandle)
  {
    DOCInitLogging();
    v4 = docDownloadServiceLogHandle;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __82__DOCDownloadImportManager_importPlaceholderAtURLToDownloadsDirectory_completion___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __65__DOCDownloadImportManager__moveItemAtURL_toNamedLocation_error___block_invoke_35(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v11 = v5;
  if (a2)
  {
    v6 = [a2 url];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = *(*(a1 + 40) + 8);
    v10 = v5;
    v8 = *(v9 + 40);
    *(v9 + 40) = v10;
  }
}

- (BOOL)_doc_destinationLocationExists:(int64_t)a3
{
  if (a3 != 2)
  {
    [(DOCDownloadImportManager *)a2 _doc_destinationLocationExists:?];
  }

  v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.DocumentManagerCore.Downloads"];
  v6 = [(DOCDownloadImportManager *)self interface];
  [v5 setRemoteObjectInterface:v6];

  [v5 resume];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__3;
  v16[4] = __Block_byref_object_dispose__3;
  v17 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__DOCDownloadImportManager__doc_destinationLocationExists___block_invoke;
  v11[3] = &unk_278F9BB00;
  v11[4] = v16;
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__DOCDownloadImportManager__doc_destinationLocationExists___block_invoke_39;
  v10[3] = &unk_278F9BB50;
  v10[4] = &v12;
  [v7 namedLocationExists:a3 completionHandler:v10];
  v8 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v16, 8);

  return v8;
}

void __59__DOCDownloadImportManager__doc_destinationLocationExists___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = docDownloadServiceLogHandle;
  if (!docDownloadServiceLogHandle)
  {
    DOCInitLogging();
    v4 = docDownloadServiceLogHandle;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __82__DOCDownloadImportManager_importPlaceholderAtURLToDownloadsDirectory_completion___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __59__DOCDownloadImportManager__doc_destinationLocationExists___block_invoke_39(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v6 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __59__DOCDownloadImportManager__doc_destinationLocationExists___block_invoke_39_cold_1();
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
}

- (void)importPlaceholderAtURLToDownloadsDirectory:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DOCDownloadImportManager.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"placeholderDocumentURL"}];
}

void __82__DOCDownloadImportManager_importPlaceholderAtURLToDownloadsDirectory_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1(&dword_249340000, v0, v1, "Remote object proxy error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_doc_destinationLocationExists:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DOCDownloadImportManager.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"location == _DOCFileDestinationDocuments"}];
}

void __59__DOCDownloadImportManager__doc_destinationLocationExists___block_invoke_39_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_249340000, v0, OS_LOG_TYPE_ERROR, "Named location error: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end