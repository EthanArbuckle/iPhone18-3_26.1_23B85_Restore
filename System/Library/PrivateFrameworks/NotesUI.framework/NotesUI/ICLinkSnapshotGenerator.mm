@interface ICLinkSnapshotGenerator
- (ICLinkSnapshotGenerator)initWithAttachment:(id)a3;
- (LPLinkMetadata)metadata;
- (LPLinkSnapshotConfiguration)configuration;
- (id)snapshot;
- (void)invalidate;
@end

@implementation ICLinkSnapshotGenerator

- (ICLinkSnapshotGenerator)initWithAttachment:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = ICLinkSnapshotGenerator;
  v6 = [(ICLinkSnapshotGenerator *)&v12 init];
  if (v6)
  {
    gotLoadHelper_x8__OBJC_CLASS___LPLinkSnapshotGenerator(v7);
    v9 = objc_alloc_init(*(v8 + 3264));
    generator = v6->_generator;
    v6->_generator = v9;

    objc_storeStrong(&v6->_attachment, a3);
  }

  return v6;
}

- (LPLinkMetadata)metadata
{
  if (!self->_metadata)
  {
    v3 = [(ICLinkSnapshotGenerator *)self attachment];
    v4 = [v3 hasSynapseLink];

    v5 = [(ICLinkSnapshotGenerator *)self attachment];
    v6 = v5;
    if (v4)
    {
      v7 = [v5 synapseBasedMetadata];
      if (!v7)
      {
        v9 = [(ICLinkSnapshotGenerator *)self attachment];
        v22 = [v9 plainURLMetadata];
        v23 = v22;
        if (v22)
        {
          v24 = v22;
          metadata = self->_metadata;
          self->_metadata = v24;
        }

        else
        {
          metadata = [(ICLinkSnapshotGenerator *)self attachment];
          v35 = [metadata fileMetadata];
          v36 = self->_metadata;
          self->_metadata = v35;
        }

        goto LABEL_24;
      }

      goto LABEL_4;
    }

    v10 = [v5 URL];
    v11 = [v10 ic_isWebURL];

    v12 = [(ICLinkSnapshotGenerator *)self attachment];
    v13 = v12;
    if (v11)
    {
      v14 = [v12 retrieveLinkMetadata];
      v15 = v14;
      if (v14)
      {
        v6 = v14;
      }

      else
      {
        v26 = [(ICLinkSnapshotGenerator *)self attachment];
        v6 = [v26 fallbackRemoteAttachmentMetadata];
      }

      v27 = [(ICLinkSnapshotGenerator *)self attachment];
      [v27 addPreviewImageToMetadata:v6];

      if (!v6)
      {
        v7 = [(ICLinkSnapshotGenerator *)self attachment];
        v31 = [v7 fileMetadata];
        v32 = self->_metadata;
        self->_metadata = v31;

LABEL_30:
        goto LABEL_31;
      }

      v21 = v6;
      v6 = v21;
    }

    else
    {
      v16 = [v12 URL];
      if (v16)
      {
        v17 = v16;
        v18 = [(ICLinkSnapshotGenerator *)self attachment];
        v19 = [v18 URL];
        v20 = [v19 ic_isWebURL];

        if ((v20 & 1) == 0)
        {
          v6 = [(ICLinkSnapshotGenerator *)self attachment];
          v21 = [v6 plainURLMetadata];
          goto LABEL_29;
        }
      }

      else
      {
      }

      v28 = [(ICLinkSnapshotGenerator *)self attachment];
      v29 = [v28 isLoadingFromCloud];

      v30 = [(ICLinkSnapshotGenerator *)self attachment];
      v6 = v30;
      if (v29)
      {
        v21 = [v30 loadingAttachmentsMetadata];
      }

      else
      {
        v33 = [v30 attachmentType];

        v34 = [(ICLinkSnapshotGenerator *)self attachment];
        v6 = v34;
        if (v33 == 11)
        {
          v21 = [v34 scannedDocumentsMetadata];
        }

        else
        {
          v37 = [v34 metadataExists];

          v38 = [(ICLinkSnapshotGenerator *)self attachment];
          v6 = v38;
          if (v37)
          {
            v7 = [v38 retrieveLinkMetadata];
            if (!v7)
            {
              v9 = [(ICLinkSnapshotGenerator *)self attachment];
              v39 = [v9 fileMetadata];
              v40 = self->_metadata;
              self->_metadata = v39;

              goto LABEL_24;
            }

LABEL_4:
            v8 = v7;
            v9 = self->_metadata;
            self->_metadata = v8;
LABEL_24:

            goto LABEL_30;
          }

          v21 = [v38 fileMetadata];
        }
      }
    }

LABEL_29:
    v7 = self->_metadata;
    self->_metadata = v21;
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
    v4 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
    if ([(ICLinkSnapshotGenerator *)self forcesLightMode])
    {
      v5 = [v4 traitCollectionByModifyingTraits:&__block_literal_global];

      v4 = v5;
    }

    v6 = [(ICLinkSnapshotGenerator *)self attachment];
    v7 = [(ICLinkSnapshotGenerator *)self metadata];
    v8 = [ICAttachmentBrickView usesSmallSizeForAttachment:v6 withMetadata:v7 type:2 insideSystemPaper:[(ICLinkSnapshotGenerator *)self isInsideSystemPaper]];

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
    v13 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v13 scale];
    v15 = [v12 initWithTraitCollection:v4 preferredSizeClass:v10 maximumSize:327.0 scale:{800.0, v14}];
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
  v3 = [(ICLinkSnapshotGenerator *)self metadata];

  if (v3)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy_;
    v21 = __Block_byref_object_dispose_;
    v22 = 0;
    v4 = dispatch_semaphore_create(0);
    objc_initWeak(&location, self);
    v5 = [(ICLinkSnapshotGenerator *)self generator];
    v6 = [(ICLinkSnapshotGenerator *)self metadata];
    v7 = [(ICLinkSnapshotGenerator *)self configuration];
    v23[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __35__ICLinkSnapshotGenerator_snapshot__block_invoke;
    v12[3] = &unk_1E8468C10;
    objc_copyWeak(&v15, &location);
    v14 = &v17;
    v9 = v4;
    v13 = v9;
    [v5 snapshotForMetadata:v6 configurations:v8 completionHandler:v12];

    v10 = dispatch_time(0, 1000000000);
    dispatch_semaphore_wait(v9, v10);
    v3 = v18[5];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);

    _Block_object_dispose(&v17, 8);
  }

  return v3;
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