@interface DOCIconThumbnailRequest
- (DOCIconThumbnailRequest)initWithNode:(id)node descriptor:(id)descriptor thumbnailGenerator:(id)generator;
- (DOCIconThumbnailRequest)initWithURL:(id)l descriptor:(id)descriptor thumbnailGenerator:(id)generator;
- (void)generateThumbnailWithCompletionHandler:(id)handler;
@end

@implementation DOCIconThumbnailRequest

- (DOCIconThumbnailRequest)initWithNode:(id)node descriptor:(id)descriptor thumbnailGenerator:(id)generator
{
  v48 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  descriptorCopy = descriptor;
  generatorCopy = generator;
  v43.receiver = self;
  v43.super_class = DOCIconThumbnailRequest;
  v12 = [(DOCIconThumbnailRequest *)&v43 init];
  if (v12)
  {
    nodeURL = [nodeCopy nodeURL];

    if (nodeURL)
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
        displayName = [nodeCopy displayName];
        nodeURL2 = [nodeCopy nodeURL];
        *buf = 138412546;
        v45 = displayName;
        v46 = 2112;
        v47 = nodeURL2;
        _os_log_impl(&dword_249CE0000, v16, OS_LOG_TYPE_DEFAULT, "DOCIconThumbnailRequest: requesting thumbnail from URL for %@: %@", buf, 0x16u);
      }

      v19 = objc_alloc(MEMORY[0x277CDAAD8]);
      nodeURL3 = [nodeCopy nodeURL];
      [descriptorCopy size];
      v22 = v21;
      v24 = v23;
      [descriptorCopy scale];
      v26 = [v19 initWithFileAtURL:nodeURL3 size:1 scale:v22 representationTypes:{v24, v25}];
    }

    else
    {
      fpfs_fpItem = [nodeCopy fpfs_fpItem];

      if (!fpfs_fpItem)
      {
        nodeURL3 = [MEMORY[0x277CCA890] currentHandler];
        [nodeURL3 handleFailureInMethod:a2 object:v12 file:@"DOCThumbnailRequest.m" lineNumber:308 description:@"Attempting to generate a thumbnail request for a node that has no FPItem and no URL"];
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
        displayName2 = [nodeCopy displayName];
        fpfs_fpItem2 = [nodeCopy fpfs_fpItem];
        *buf = 138412546;
        v45 = displayName2;
        v46 = 2112;
        v47 = fpfs_fpItem2;
        _os_log_impl(&dword_249CE0000, v30, OS_LOG_TYPE_DEFAULT, "DOCIconThumbnailRequest: requesting thumbnail from FPItem for %@: %@", buf, 0x16u);
      }

      v33 = objc_alloc(MEMORY[0x277CDAAD8]);
      nodeURL3 = [nodeCopy fpfs_fpItem];
      [descriptorCopy size];
      v35 = v34;
      v37 = v36;
      [descriptorCopy scale];
      v26 = [v33 initWithFPItem:nodeURL3 size:1 scale:v35 representationTypes:{v37, v38}];
    }

    request = v12->_request;
    v12->_request = v26;

LABEL_15:
    [descriptorCopy minimumSize];
    [(QLThumbnailGenerationRequest *)v12->_request setMinimumDimension:?];
    useBlastDoorThumbnails = [MEMORY[0x277D06208] useBlastDoorThumbnails];
    -[QLThumbnailGenerationRequest setShouldUseRestrictedExtension:](v12->_request, "setShouldUseRestrictedExtension:", [useBlastDoorThumbnails isEnabled]);

    -[QLThumbnailGenerationRequest setIconVariant:](v12->_request, "setIconVariant:", [descriptorCopy isFolded]);
    objc_storeWeak(&v12->_thumbnailGenerator, generatorCopy);
  }

  v41 = *MEMORY[0x277D85DE8];
  return v12;
}

- (DOCIconThumbnailRequest)initWithURL:(id)l descriptor:(id)descriptor thumbnailGenerator:(id)generator
{
  lCopy = l;
  descriptorCopy = descriptor;
  generatorCopy = generator;
  v22.receiver = self;
  v22.super_class = DOCIconThumbnailRequest;
  v11 = [(DOCIconThumbnailRequest *)&v22 init];
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CDAAD8]);
    [descriptorCopy size];
    v14 = v13;
    v16 = v15;
    [descriptorCopy scale];
    v18 = [v12 initWithFileAtURL:lCopy size:1 scale:v14 representationTypes:{v16, v17}];
    request = v11->_request;
    v11->_request = v18;

    [descriptorCopy minimumSize];
    [(QLThumbnailGenerationRequest *)v11->_request setMinimumDimension:?];
    useBlastDoorThumbnails = [MEMORY[0x277D06208] useBlastDoorThumbnails];
    -[QLThumbnailGenerationRequest setShouldUseRestrictedExtension:](v11->_request, "setShouldUseRestrictedExtension:", [useBlastDoorThumbnails isEnabled]);

    -[QLThumbnailGenerationRequest setIconVariant:](v11->_request, "setIconVariant:", [descriptorCopy isFolded]);
    objc_storeWeak(&v11->_thumbnailGenerator, generatorCopy);
  }

  return v11;
}

- (void)generateThumbnailWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_thumbnailGenerator);
  v7 = [WeakRetained thumbnailIconForRequest:self->_request];

  uIImage = [v7 UIImage];
  handlerCopy[2](handlerCopy, uIImage, 0);
}

@end