@interface DOCRegularNodeThumbnailRequest
- (DOCRegularNodeThumbnailRequest)initWithNode:(id)a3 descriptor:(id)a4 thumbnailGenerator:(id)a5;
- (void)cancel;
- (void)generateThumbnailWithCompletionHandler:(id)a3;
@end

@implementation DOCRegularNodeThumbnailRequest

- (DOCRegularNodeThumbnailRequest)initWithNode:(id)a3 descriptor:(id)a4 thumbnailGenerator:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_28:
    [DOCRegularNodeThumbnailRequest initWithNode:descriptor:thumbnailGenerator:];
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_29;
  }

  [DOCRegularNodeThumbnailRequest initWithNode:descriptor:thumbnailGenerator:];
  if (!v10)
  {
    goto LABEL_28;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_29:
  [DOCRegularNodeThumbnailRequest initWithNode:descriptor:thumbnailGenerator:];
LABEL_4:
  v47.receiver = self;
  v47.super_class = DOCRegularNodeThumbnailRequest;
  v12 = [(DOCRegularNodeThumbnailRequest *)&v47 init];
  if (!v12)
  {
    goto LABEL_25;
  }

  v13 = [MEMORY[0x277D06208] disableIconThumbnails];
  if ([v13 isEnabled])
  {
    v14 = 1;
  }

  else
  {
    v14 = 4;
  }

  v15 = [v9 fpfs_fpItem];

  if (v15)
  {
    v16 = MEMORY[0x277D062B8];
    v17 = *MEMORY[0x277D062B8];
    if (!*MEMORY[0x277D062B8])
    {
      DOCInitLogging();
      v17 = *v16;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [v9 displayName];
      v20 = [v9 fpfs_fpItem];
      *buf = 138412546;
      v49 = v19;
      v50 = 2112;
      v51 = v20;
      _os_log_impl(&dword_249CE0000, v18, OS_LOG_TYPE_DEFAULT, "DOCRegularNodeThumbnailRequest: requesting thumbnail from FPItem for %@: %@", buf, 0x16u);
    }

    v21 = objc_alloc(MEMORY[0x277CDAAD8]);
    v22 = [v9 fpfs_fpItem];
    [v10 size];
    v24 = v23;
    v26 = v25;
    [v10 scale];
    v28 = [v21 initWithFPItem:v22 size:v14 scale:v24 representationTypes:{v26, v27}];
  }

  else
  {
    v29 = [v9 nodeURL];

    if (!v29)
    {
      v22 = [MEMORY[0x277CCA890] currentHandler];
      [v22 handleFailureInMethod:a2 object:v12 file:@"DOCThumbnailRequest.m" lineNumber:180 description:@"Attempting to generate a thumbnail request for a node that has no FPItem and no URL"];
      goto LABEL_21;
    }

    v30 = MEMORY[0x277D062B8];
    v31 = *MEMORY[0x277D062B8];
    if (!*MEMORY[0x277D062B8])
    {
      DOCInitLogging();
      v31 = *v30;
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
      v33 = [v9 displayName];
      v34 = [v9 nodeURL];
      *buf = 138412546;
      v49 = v33;
      v50 = 2112;
      v51 = v34;
      _os_log_impl(&dword_249CE0000, v32, OS_LOG_TYPE_DEFAULT, "DOCRegularNodeThumbnailRequest: requesting thumbnail from URL for %@: %@", buf, 0x16u);
    }

    v35 = objc_alloc(MEMORY[0x277CDAAD8]);
    v22 = [v9 nodeURL];
    [v10 size];
    v37 = v36;
    v39 = v38;
    [v10 scale];
    v28 = [v35 initWithFileAtURL:v22 size:v14 scale:v37 representationTypes:{v39, v40}];
  }

  thumbnailRequest = v12->_thumbnailRequest;
  v12->_thumbnailRequest = v28;

LABEL_21:
  [v10 minimumSize];
  [(QLThumbnailGenerationRequest *)v12->_thumbnailRequest setMinimumDimension:?];
  v42 = [MEMORY[0x277D06208] useBlastDoorThumbnails];
  -[QLThumbnailGenerationRequest setShouldUseRestrictedExtension:](v12->_thumbnailRequest, "setShouldUseRestrictedExtension:", [v42 isEnabled]);

  objc_storeWeak(&v12->_thumbnailGenerator, v11);
  if ([v9 isFolder])
  {
    v43 = [DOCThumbnailFolderIcon folderIconForDescriptor:v10];
    folderIcon = v12->_folderIcon;
    v12->_folderIcon = v43;
  }

  else
  {
    [(QLThumbnailGenerationRequest *)v12->_thumbnailRequest setIconMode:1];
    [(QLThumbnailGenerationRequest *)v12->_thumbnailRequest setIconVariant:2];
  }

  v12->_style = [v10 style];
LABEL_25:

  v45 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)generateThumbnailWithCompletionHandler:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailGenerator);
  thumbnailRequest = self->_thumbnailRequest;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__DOCRegularNodeThumbnailRequest_generateThumbnailWithCompletionHandler___block_invoke;
  v10[3] = &unk_278FB3A18;
  v10[4] = self;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__DOCRegularNodeThumbnailRequest_generateThumbnailWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_278FB3A40;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [WeakRetained generateThumbnailForRequest:thumbnailRequest updateHandler:0 statusHandler:v10 completionHandler:v8];
}

void __73__DOCRegularNodeThumbnailRequest_generateThumbnailWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = [*(a1 + 32) thumbnailGenerationRequiresDownloadHandler];
    if (v3)
    {
      v4 = v3;
      v3[2]();
      v3 = v4;
    }
  }
}

void __73__DOCRegularNodeThumbnailRequest_generateThumbnailWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = *(*(a1 + 32) + 32);
  v7 = [v12 UIImage];
  v8 = v7;
  if (v6)
  {

    v9 = [*(a1 + 32) onlyCallbackOnOverlayImage];
    v10 = v9;
    if (v8)
    {
      v8 = [v12 UIImage];
      if ((v10 & 1) == 0)
      {
        v11 = [v6 badgedFolderIconForBadge:v8 style:*(*(a1 + 32) + 40)];

        v8 = v11;
      }
    }

    else if (v9)
    {
      v8 = 0;
    }

    else
    {

      v8 = [v6 plainFolderImageWithStyle:*(*(a1 + 32) + 40)];
      v5 = 0;
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)cancel
{
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailGenerator);
  [WeakRetained cancelRequest:self->_thumbnailRequest];
}

- (void)initWithNode:descriptor:thumbnailGenerator:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"node" object:? file:? lineNumber:? description:?];
}

- (void)initWithNode:descriptor:thumbnailGenerator:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"descriptor" object:? file:? lineNumber:? description:?];
}

- (void)initWithNode:descriptor:thumbnailGenerator:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"thumbnailGenerator" object:? file:? lineNumber:? description:?];
}

@end