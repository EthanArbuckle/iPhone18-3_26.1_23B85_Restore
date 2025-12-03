@interface DOCImportToDefaultLocationSupport
+ (id)_spi_importDocumentAtURL:(id)l error:(id *)error;
+ (id)interface;
+ (void)_spi_importDocumentAtURL:(id)l synchronous:(BOOL)synchronous completionHandler:(id)handler;
@end

@implementation DOCImportToDefaultLocationSupport

+ (id)_spi_importDocumentAtURL:(id)l error:(id *)error
{
  lCopy = l;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__DOCImportToDefaultLocationSupport__spi_importDocumentAtURL_error___block_invoke;
  v10[3] = &unk_278F9BA18;
  v10[4] = &v11;
  v10[5] = &v17;
  [self _spi_importDocumentAtURL:lCopy synchronous:1 completionHandler:v10];
  if (error)
  {
    v7 = v18[5];
    if (v7)
    {
      *error = v7;
    }
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v8;
}

void __68__DOCImportToDefaultLocationSupport__spi_importDocumentAtURL_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

+ (void)_spi_importDocumentAtURL:(id)l synchronous:(BOOL)synchronous completionHandler:(id)handler
{
  synchronousCopy = synchronous;
  lCopy = l;
  handlerCopy = handler;
  startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__DOCImportToDefaultLocationSupport__spi_importDocumentAtURL_synchronous_completionHandler___block_invoke;
  aBlock[3] = &unk_278F9BA40;
  v30 = v32;
  v10 = handlerCopy;
  v29 = v10;
  v31 = startAccessingSecurityScopedResource;
  v11 = lCopy;
  v28 = v11;
  v12 = _Block_copy(aBlock);
  v26 = 0;
  v13 = [MEMORY[0x277CC6438] wrapperWithURL:v11 readonly:1 error:&v26];
  v14 = v26;
  if (v13)
  {
    v15 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.DocumentManagerCore.Rename"];
    interface = [objc_opt_class() interface];
    [v15 setRemoteObjectInterface:interface];

    [v15 resume];
    if (synchronousCopy)
    {
      v17 = v25;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __92__DOCImportToDefaultLocationSupport__spi_importDocumentAtURL_synchronous_completionHandler___block_invoke_2;
      v25[3] = &unk_278F9B7B0;
      v25[4] = v12;
      v18 = [v15 synchronousRemoteObjectProxyWithErrorHandler:v25];
    }

    else
    {
      v17 = v24;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __92__DOCImportToDefaultLocationSupport__spi_importDocumentAtURL_synchronous_completionHandler___block_invoke_3;
      v24[3] = &unk_278F9B7B0;
      v24[4] = v12;
      v18 = [v15 remoteObjectProxyWithErrorHandler:v24];
    }

    v19 = v18;

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __92__DOCImportToDefaultLocationSupport__spi_importDocumentAtURL_synchronous_completionHandler___block_invoke_4;
    v21[3] = &unk_278F9BA68;
    v23 = v12;
    v20 = v15;
    v22 = v20;
    [v19 importDocumentAtURL:v13 completionHandler:v21];
  }

  else
  {
    (*(v12 + 2))(v12, 0, v14);
  }

  _Block_object_dispose(v32, 8);
}

void __92__DOCImportToDefaultLocationSupport__spi_importDocumentAtURL_synchronous_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(*(a1 + 48) + 8);
  if ((*(v6 + 24) & 1) == 0)
  {
    *(v6 + 24) = 1;
    (*(*(a1 + 40) + 16))();
    if (*(a1 + 56) == 1)
    {
      [*(a1 + 32) stopAccessingSecurityScopedResource];
    }
  }
}

void __92__DOCImportToDefaultLocationSupport__spi_importDocumentAtURL_synchronous_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = docRenameLogHandle;
  if (!docRenameLogHandle)
  {
    DOCInitLogging();
    v4 = docRenameLogHandle;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __92__DOCImportToDefaultLocationSupport__spi_importDocumentAtURL_synchronous_completionHandler___block_invoke_2_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

void __92__DOCImportToDefaultLocationSupport__spi_importDocumentAtURL_synchronous_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = docRenameLogHandle;
  if (!docRenameLogHandle)
  {
    DOCInitLogging();
    v4 = docRenameLogHandle;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __92__DOCImportToDefaultLocationSupport__spi_importDocumentAtURL_synchronous_completionHandler___block_invoke_3_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

void __92__DOCImportToDefaultLocationSupport__spi_importDocumentAtURL_synchronous_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = docRenameLogHandle;
  if (!v5 || v6)
  {
    if (!docRenameLogHandle)
    {
      DOCInitLogging();
      v8 = docRenameLogHandle;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __92__DOCImportToDefaultLocationSupport__spi_importDocumentAtURL_synchronous_completionHandler___block_invoke_4_cold_1(v5, v7, v8);
    }
  }

  else
  {
    if (!docRenameLogHandle)
    {
      DOCInitLogging();
      v8 = docRenameLogHandle;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = 136315650;
      v13 = "+[DOCImportToDefaultLocationSupport _spi_importDocumentAtURL:synchronous:completionHandler:]_block_invoke";
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = 0;
      _os_log_impl(&dword_249340000, v8, OS_LOG_TYPE_INFO, "%s new url: %@ error: %@", &v12, 0x20u);
    }
  }

  v9 = [v5 url];
  v10 = [v9 startAccessingSecurityScopedResource];
  (*(*(a1 + 40) + 16))();
  if (v10)
  {
    [v9 stopAccessingSecurityScopedResource];
  }

  [*(a1 + 32) invalidate];

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)interface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285C8D718];
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_importDocumentAtURL_completionHandler_ argumentIndex:0 ofReply:0];

  v4 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v4 forSelector:sel_importDocumentAtURL_completionHandler_ argumentIndex:0 ofReply:1];

  v5 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_renameDocumentAtURL_proposedName_completionHandler_ argumentIndex:1 ofReply:1];

  return v2;
}

void __92__DOCImportToDefaultLocationSupport__spi_importDocumentAtURL_synchronous_completionHandler___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_249340000, a2, OS_LOG_TYPE_ERROR, "Synchronous remote object proxy error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __92__DOCImportToDefaultLocationSupport__spi_importDocumentAtURL_synchronous_completionHandler___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_249340000, a2, OS_LOG_TYPE_ERROR, "Remote object proxy error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __92__DOCImportToDefaultLocationSupport__spi_importDocumentAtURL_synchronous_completionHandler___block_invoke_4_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_249340000, log, OS_LOG_TYPE_ERROR, "ERROR: Remote object importDocumentAtURL: call returned finalURLWrapper: %@ error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end