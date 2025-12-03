@interface ICLinkSnapshotGenerator
- (ICLinkSnapshotGenerator)initWithAttachment:(id)attachment;
- (LPLinkMetadata)metadata;
- (LPLinkSnapshotConfiguration)configuration;
- (id)snapshot;
- (void)invalidate;
@end

@implementation ICLinkSnapshotGenerator

- (ICLinkSnapshotGenerator)initWithAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v12.receiver = self;
  v12.super_class = ICLinkSnapshotGenerator;
  v6 = [(ICLinkSnapshotGenerator *)&v12 init];
  if (v6)
  {
    gotLoadHelper_x8__OBJC_CLASS___LPLinkSnapshotGenerator(v7);
    v9 = objc_alloc_init(*(v8 + 3264));
    generator = v6->_generator;
    v6->_generator = v9;

    objc_storeStrong(&v6->_attachment, attachment);
  }

  return v6;
}

- (LPLinkMetadata)metadata
{
  if (!self->_metadata)
  {
    attachment = [(ICLinkSnapshotGenerator *)self attachment];
    hasSynapseLink = [attachment hasSynapseLink];

    attachment2 = [(ICLinkSnapshotGenerator *)self attachment];
    fallbackRemoteAttachmentMetadata = attachment2;
    if (hasSynapseLink)
    {
      synapseBasedMetadata = [attachment2 synapseBasedMetadata];
      if (!synapseBasedMetadata)
      {
        attachment3 = [(ICLinkSnapshotGenerator *)self attachment];
        plainURLMetadata = [attachment3 plainURLMetadata];
        v23 = plainURLMetadata;
        if (plainURLMetadata)
        {
          v24 = plainURLMetadata;
          metadata = self->_metadata;
          self->_metadata = v24;
        }

        else
        {
          metadata = [(ICLinkSnapshotGenerator *)self attachment];
          fileMetadata = [metadata fileMetadata];
          v36 = self->_metadata;
          self->_metadata = fileMetadata;
        }

        goto LABEL_24;
      }

      goto LABEL_4;
    }

    v10 = [attachment2 URL];
    ic_isWebURL = [v10 ic_isWebURL];

    attachment4 = [(ICLinkSnapshotGenerator *)self attachment];
    v13 = attachment4;
    if (ic_isWebURL)
    {
      retrieveLinkMetadata = [attachment4 retrieveLinkMetadata];
      v15 = retrieveLinkMetadata;
      if (retrieveLinkMetadata)
      {
        fallbackRemoteAttachmentMetadata = retrieveLinkMetadata;
      }

      else
      {
        attachment5 = [(ICLinkSnapshotGenerator *)self attachment];
        fallbackRemoteAttachmentMetadata = [attachment5 fallbackRemoteAttachmentMetadata];
      }

      attachment6 = [(ICLinkSnapshotGenerator *)self attachment];
      [attachment6 addPreviewImageToMetadata:fallbackRemoteAttachmentMetadata];

      if (!fallbackRemoteAttachmentMetadata)
      {
        synapseBasedMetadata = [(ICLinkSnapshotGenerator *)self attachment];
        fileMetadata2 = [synapseBasedMetadata fileMetadata];
        v32 = self->_metadata;
        self->_metadata = fileMetadata2;

LABEL_30:
        goto LABEL_31;
      }

      plainURLMetadata2 = fallbackRemoteAttachmentMetadata;
      fallbackRemoteAttachmentMetadata = plainURLMetadata2;
    }

    else
    {
      v16 = [attachment4 URL];
      if (v16)
      {
        v17 = v16;
        attachment7 = [(ICLinkSnapshotGenerator *)self attachment];
        v19 = [attachment7 URL];
        ic_isWebURL2 = [v19 ic_isWebURL];

        if ((ic_isWebURL2 & 1) == 0)
        {
          fallbackRemoteAttachmentMetadata = [(ICLinkSnapshotGenerator *)self attachment];
          plainURLMetadata2 = [fallbackRemoteAttachmentMetadata plainURLMetadata];
          goto LABEL_29;
        }
      }

      else
      {
      }

      attachment8 = [(ICLinkSnapshotGenerator *)self attachment];
      isLoadingFromCloud = [attachment8 isLoadingFromCloud];

      attachment9 = [(ICLinkSnapshotGenerator *)self attachment];
      fallbackRemoteAttachmentMetadata = attachment9;
      if (isLoadingFromCloud)
      {
        plainURLMetadata2 = [attachment9 loadingAttachmentsMetadata];
      }

      else
      {
        attachmentType = [attachment9 attachmentType];

        attachment10 = [(ICLinkSnapshotGenerator *)self attachment];
        fallbackRemoteAttachmentMetadata = attachment10;
        if (attachmentType == 11)
        {
          plainURLMetadata2 = [attachment10 scannedDocumentsMetadata];
        }

        else
        {
          metadataExists = [attachment10 metadataExists];

          attachment11 = [(ICLinkSnapshotGenerator *)self attachment];
          fallbackRemoteAttachmentMetadata = attachment11;
          if (metadataExists)
          {
            synapseBasedMetadata = [attachment11 retrieveLinkMetadata];
            if (!synapseBasedMetadata)
            {
              attachment3 = [(ICLinkSnapshotGenerator *)self attachment];
              fileMetadata3 = [attachment3 fileMetadata];
              v40 = self->_metadata;
              self->_metadata = fileMetadata3;

              goto LABEL_24;
            }

LABEL_4:
            v8 = synapseBasedMetadata;
            attachment3 = self->_metadata;
            self->_metadata = v8;
LABEL_24:

            goto LABEL_30;
          }

          plainURLMetadata2 = [attachment11 fileMetadata];
        }
      }
    }

LABEL_29:
    synapseBasedMetadata = self->_metadata;
    self->_metadata = plainURLMetadata2;
    goto LABEL_30;
  }

LABEL_31:
  v41 = self->_metadata;

  return v41;
}

- (LPLinkSnapshotConfiguration)configuration
{
  configuration = self->_configuration;
  if (!configuration)
  {
    currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
    if ([(ICLinkSnapshotGenerator *)self forcesLightMode])
    {
      v5 = [currentTraitCollection traitCollectionByModifyingTraits:&__block_literal_global];

      currentTraitCollection = v5;
    }

    attachment = [(ICLinkSnapshotGenerator *)self attachment];
    metadata = [(ICLinkSnapshotGenerator *)self metadata];
    v8 = [ICAttachmentBrickView usesSmallSizeForAttachment:attachment withMetadata:metadata type:2 insideSystemPaper:[(ICLinkSnapshotGenerator *)self isInsideSystemPaper]];

    if ([(ICLinkSnapshotGenerator *)self forcesSmallSize]|| v8)
    {
      v10 = 8;
    }

    else
    {
      v10 = 9;
    }

    gotLoadHelper_x8__OBJC_CLASS___LPLinkSnapshotConfiguration(v9);
    v12 = objc_alloc(*(v11 + 3256));
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v15 = [v12 initWithTraitCollection:currentTraitCollection preferredSizeClass:v10 maximumSize:327.0 scale:{800.0, v14}];
    v16 = self->_configuration;
    self->_configuration = v15;

    configuration = self->_configuration;
  }

  return configuration;
}

- (void)invalidate
{
  metadata = self->_metadata;
  self->_metadata = 0;

  configuration = self->_configuration;
  self->_configuration = 0;
}

- (id)snapshot
{
  v23[1] = *MEMORY[0x1E69E9840];
  [(ICLinkSnapshotGenerator *)self invalidate];
  metadata = [(ICLinkSnapshotGenerator *)self metadata];

  if (metadata)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy_;
    v21 = __Block_byref_object_dispose_;
    v22 = 0;
    v4 = dispatch_semaphore_create(0);
    objc_initWeak(&location, self);
    generator = [(ICLinkSnapshotGenerator *)self generator];
    metadata2 = [(ICLinkSnapshotGenerator *)self metadata];
    configuration = [(ICLinkSnapshotGenerator *)self configuration];
    v23[0] = configuration;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __35__ICLinkSnapshotGenerator_snapshot__block_invoke;
    v12[3] = &unk_1E8468C10;
    objc_copyWeak(&v15, &location);
    v14 = &v17;
    v9 = v4;
    v13 = v9;
    [generator snapshotForMetadata:metadata2 configurations:v8 completionHandler:v12];

    v10 = dispatch_time(0, 1000000000);
    dispatch_semaphore_wait(v9, v10);
    metadata = v18[5];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);

    _Block_object_dispose(&v17, 8);
  }

  return metadata;
}

void __35__ICLinkSnapshotGenerator_snapshot__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (WeakRetained)
  {
    if (v5 || ![v6 count])
    {
      v8 = os_log_create("com.apple.notes", "PreviewGeneration");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __35__ICLinkSnapshotGenerator_snapshot__block_invoke_cold_1(v5, v8);
      }
    }

    else
    {
      v9 = MEMORY[0x1E69DCAB8];
      v10 = [v6 firstObject];
      v11 = objc_loadWeakRetained((a1 + 48));
      v12 = [v11 configuration];
      [v12 scale];
      v13 = [v9 imageWithData:v10 scale:?];
      v14 = *(*(a1 + 40) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      dispatch_semaphore_signal(*(a1 + 32));
    }
  }
}

void __35__ICLinkSnapshotGenerator_snapshot__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Cannot create Link Presentation snapshot {error: %@}", &v2, 0xCu);
}

@end