@interface DOCRenameSupport
+ (id)_spi_renameDocumentAtURL:(id)l proposedName:(id)name error:(id *)error;
+ (id)interface;
+ (void)_spi_renameDocumentAtURL:(id)l proposedName:(id)name synchronous:(BOOL)synchronous completionHandler:(id)handler;
@end

@implementation DOCRenameSupport

+ (id)_spi_renameDocumentAtURL:(id)l proposedName:(id)name error:(id *)error
{
  lCopy = l;
  nameCopy = name;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__6;
  v23 = __Block_byref_object_dispose__6;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__6;
  v17 = __Block_byref_object_dispose__6;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__DOCRenameSupport__spi_renameDocumentAtURL_proposedName_error___block_invoke;
  v12[3] = &unk_278F9BA18;
  v12[4] = &v13;
  v12[5] = &v19;
  [DOCRenameSupport _spi_renameDocumentAtURL:lCopy proposedName:nameCopy synchronous:1 completionHandler:v12];
  if (error)
  {
    v9 = v20[5];
    if (v9)
    {
      *error = v9;
    }
  }

  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v10;
}

void __64__DOCRenameSupport__spi_renameDocumentAtURL_proposedName_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

+ (void)_spi_renameDocumentAtURL:(id)l proposedName:(id)name synchronous:(BOOL)synchronous completionHandler:(id)handler
{
  synchronousCopy = synchronous;
  lCopy = l;
  nameCopy = name;
  handlerCopy = handler;
  startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v36 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__DOCRenameSupport__spi_renameDocumentAtURL_proposedName_synchronous_completionHandler___block_invoke;
  aBlock[3] = &unk_278F9BA40;
  v33 = v35;
  v13 = handlerCopy;
  v32 = v13;
  v34 = startAccessingSecurityScopedResource;
  v14 = lCopy;
  v31 = v14;
  v15 = _Block_copy(aBlock);
  if ([nameCopy length])
  {
    v29 = 0;
    v16 = [MEMORY[0x277CC6438] wrapperWithURL:v14 readonly:0 error:&v29];
    v17 = v29;
    if (v16)
    {
      v18 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.DocumentManagerCore.Rename"];
      interface = [objc_opt_class() interface];
      [v18 setRemoteObjectInterface:interface];

      [v18 resume];
      if (synchronousCopy)
      {
        v20 = v28;
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __88__DOCRenameSupport__spi_renameDocumentAtURL_proposedName_synchronous_completionHandler___block_invoke_2;
        v28[3] = &unk_278F9B7B0;
        v28[4] = v15;
        v21 = [v18 synchronousRemoteObjectProxyWithErrorHandler:v28];
      }

      else
      {
        v20 = v27;
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __88__DOCRenameSupport__spi_renameDocumentAtURL_proposedName_synchronous_completionHandler___block_invoke_6;
        v27[3] = &unk_278F9B7B0;
        v27[4] = v15;
        v21 = [v18 remoteObjectProxyWithErrorHandler:v27];
      }

      v22 = v21;

      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __88__DOCRenameSupport__spi_renameDocumentAtURL_proposedName_synchronous_completionHandler___block_invoke_7;
      v24[3] = &unk_278F9BA68;
      v26 = v15;
      v23 = v18;
      v25 = v23;
      [v22 renameDocumentAtURL:v16 proposedName:nameCopy completionHandler:v24];
    }

    else
    {
      (*(v15 + 2))(v15, 0, v17);
    }
  }

  else
  {
    (*(v15 + 2))(v15, v14, 0);
  }

  _Block_object_dispose(v35, 8);
}

void __88__DOCRenameSupport__spi_renameDocumentAtURL_proposedName_synchronous_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = v5;
  v7 = *(*(a1 + 48) + 8);
  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    if (v10)
    {
      v8 = 0;
    }

    else
    {
      if (v5)
      {
        v9 = v5;
      }

      else
      {
        v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:256 userInfo:0];
      }

      v8 = v9;
    }

    (*(*(a1 + 40) + 16))();
    if (*(a1 + 56) == 1)
    {
      [*(a1 + 32) stopAccessingSecurityScopedResource];
    }
  }
}

void __88__DOCRenameSupport__spi_renameDocumentAtURL_proposedName_synchronous_completionHandler___block_invoke_2(uint64_t a1, void *a2)
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

void __88__DOCRenameSupport__spi_renameDocumentAtURL_proposedName_synchronous_completionHandler___block_invoke_6(uint64_t a1, void *a2)
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

void __88__DOCRenameSupport__spi_renameDocumentAtURL_proposedName_synchronous_completionHandler___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = docRenameLogHandle;
  if (v6)
  {
    if (!docRenameLogHandle)
    {
      DOCInitLogging();
      v7 = docRenameLogHandle;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __88__DOCRenameSupport__spi_renameDocumentAtURL_proposedName_synchronous_completionHandler___block_invoke_7_cold_1(v5, v6, v7);
    }
  }

  else
  {
    if (!docRenameLogHandle)
    {
      DOCInitLogging();
      v7 = docRenameLogHandle;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 136315650;
      v12 = "+[DOCRenameSupport _spi_renameDocumentAtURL:proposedName:synchronous:completionHandler:]_block_invoke";
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = 0;
      _os_log_impl(&dword_249340000, v7, OS_LOG_TYPE_INFO, "%s new url: %@ error: %@", &v11, 0x20u);
    }
  }

  v8 = [v5 url];
  v9 = [v8 startAccessingSecurityScopedResource];
  (*(*(a1 + 40) + 16))();
  if (v9)
  {
    [v8 stopAccessingSecurityScopedResource];
  }

  [*(a1 + 32) invalidate];

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)interface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285C8D718];
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_renameDocumentAtURL_proposedName_completionHandler_ argumentIndex:0 ofReply:0];

  v4 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v4 forSelector:sel_renameDocumentAtURL_proposedName_completionHandler_ argumentIndex:1 ofReply:0];

  v5 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_renameDocumentAtURL_proposedName_completionHandler_ argumentIndex:0 ofReply:1];

  v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v6 forSelector:sel_renameDocumentAtURL_proposedName_completionHandler_ argumentIndex:1 ofReply:1];

  return v2;
}

void __88__DOCRenameSupport__spi_renameDocumentAtURL_proposedName_synchronous_completionHandler___block_invoke_7_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_249340000, log, OS_LOG_TYPE_ERROR, "ERROR: Remote object renameDocumentAtURL: call returned bookmark data: %@ error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end