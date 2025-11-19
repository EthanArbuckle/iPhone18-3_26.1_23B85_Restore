@interface DOCIconThumbnailRequest
- (DOCIconThumbnailRequest)initWithNode:(id)a3 descriptor:(id)a4 thumbnailGenerator:(id)a5;
- (DOCIconThumbnailRequest)initWithURL:(id)a3 descriptor:(id)a4 thumbnailGenerator:(id)a5;
- (void)generateThumbnailWithCompletionHandler:(id)a3;
@end

@implementation DOCIconThumbnailRequest

- (DOCIconThumbnailRequest)initWithNode:(id)a3 descriptor:(id)a4 thumbnailGenerator:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v43.receiver = self;
  v43.super_class = DOCIconThumbnailRequest;
  v12 = [(DOCIconThumbnailRequest *)&v43 init];
  if (v12)
  {
    v13 = [v9 nodeURL];

    if (v13)
    {
      v14 = MEMORY[0x277D062B8];
      v15 = *MEMORY[0x277D062B8];
      if (!*MEMORY[0x277D062B8])
      {
        DOCInitLogging();
        v15 = *v14;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        v17 = [v9 displayName];
        v18 = [v9 nodeURL];
        *buf = 138412546;
        v45 = v17;
        v46 = 2112;
        v47 = v18;
        _os_log_impl(&dword_249CE0000, v16, OS_LOG_TYPE_DEFAULT, "DOCIconThumbnailRequest: requesting thumbnail from URL for %@: %@", buf, 0x16u);
      }

      v19 = objc_alloc(MEMORY[0x277CDAAD8]);
      v20 = [v9 nodeURL];
      [v10 size];
      v22 = v21;
      v24 = v23;
      [v10 scale];
      v26 = [v19 initWithFileAtURL:v20 size:1 scale:v22 representationTypes:{v24, v25}];
    }

    else
    {
      v27 = [v9 fpfs_fpItem];

      if (!v27)
      {
        v20 = [MEMORY[0x277CCA890] currentHandler];
        [v20 handleFailureInMethod:a2 object:v12 file:@"DOCThumbnailRequest.m" lineNumber:308 description:@"Attempting to generate a thumbnail request for a node that has no FPItem and no URL"];
        goto LABEL_15;
      }

      v28 = MEMORY[0x277D062B8];
      v29 = *MEMORY[0x277D062B8];
      if (!*MEMORY[0x277D062B8])
      {
        DOCInitLogging();
        v29 = *v28;
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v29;
        v31 = [v9 displayName];
        v32 = [v9 fpfs_fpItem];
        *buf = 138412546;
        v45 = v31;
        v46 = 2112;
        v47 = v32;
        _os_log_impl(&dword_249CE0000, v30, OS_LOG_TYPE_DEFAULT, "DOCIconThumbnailRequest: requesting thumbnail from FPItem for %@: %@", buf, 0x16u);
      }

      v33 = objc_alloc(MEMORY[0x277CDAAD8]);
      v20 = [v9 fpfs_fpItem];
      [v10 size];
      v35 = v34;
      v37 = v36;
      [v10 scale];
      v26 = [v33 initWithFPItem:v20 size:1 scale:v35 representationTypes:{v37, v38}];
    }

    request = v12->_request;
    v12->_request = v26;

LABEL_15:
    [v10 minimumSize];
    [(QLThumbnailGenerationRequest *)v12->_request setMinimumDimension:?];
    v40 = [MEMORY[0x277D06208] useBlastDoorThumbnails];
    -[QLThumbnailGenerationRequest setShouldUseRestrictedExtension:](v12->_request, "setShouldUseRestrictedExtension:", [v40 isEnabled]);

    -[QLThumbnailGenerationRequest setIconVariant:](v12->_request, "setIconVariant:", [v10 isFolded]);
    objc_storeWeak(&v12->_thumbnailGenerator, v11);
  }

  v41 = *MEMORY[0x277D85DE8];
  return v12;
}

- (DOCIconThumbnailRequest)initWithURL:(id)a3 descriptor:(id)a4 thumbnailGenerator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = DOCIconThumbnailRequest;
  v11 = [(DOCIconThumbnailRequest *)&v22 init];
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CDAAD8]);
    [v9 size];
    v14 = v13;
    v16 = v15;
    [v9 scale];
    v18 = [v12 initWithFileAtURL:v8 size:1 scale:v14 representationTypes:{v16, v17}];
    request = v11->_request;
    v11->_request = v18;

    [v9 minimumSize];
    [(QLThumbnailGenerationRequest *)v11->_request setMinimumDimension:?];
    v20 = [MEMORY[0x277D06208] useBlastDoorThumbnails];
    -[QLThumbnailGenerationRequest setShouldUseRestrictedExtension:](v11->_request, "setShouldUseRestrictedExtension:", [v20 isEnabled]);

    -[QLThumbnailGenerationRequest setIconVariant:](v11->_request, "setIconVariant:", [v9 isFolded]);
    objc_storeWeak(&v11->_thumbnailGenerator, v10);
  }

  return v11;
}

- (void)generateThumbnailWithCompletionHandler:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailGenerator);
  v7 = [WeakRetained thumbnailIconForRequest:self->_request];

  v6 = [v7 UIImage];
  v4[2](v4, v6, 0);
}

@end