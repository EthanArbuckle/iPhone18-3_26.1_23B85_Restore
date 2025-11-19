@interface ICThumbnailGeneratorAttachment
- (void)generateThumbnailForMediaURL:(id)a3 configuration:(id)a4 completion:(id)a5;
- (void)generateThumbnailWithConfiguration:(id)a3 completion:(id)a4;
@end

@implementation ICThumbnailGeneratorAttachment

- (void)generateThumbnailWithConfiguration:(id)a3 completion:(id)a4
{
  v65[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 associatedObjectIdentifier];
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__67;
  v63 = __Block_byref_object_dispose__67;
  v64 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__67;
  v53 = __Block_byref_object_dispose__67;
  v54 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__67;
  v43 = __Block_byref_object_dispose__67;
  v44 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = __Block_byref_object_copy__67;
  v37[4] = __Block_byref_object_dispose__67;
  v38 = 0;
  v9 = [(ICThumbnailGenerator *)self managedObjectContext];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __80__ICThumbnailGeneratorAttachment_generateThumbnailWithConfiguration_completion___block_invoke;
  v27[3] = &unk_1E846DC90;
  v31 = v37;
  v10 = v8;
  v28 = v10;
  v29 = self;
  v32 = &v45;
  v33 = &v59;
  v34 = &v39;
  v11 = v6;
  v30 = v11;
  v35 = &v49;
  v36 = &v55;
  [v9 performBlockAndWait:v27];

  v12 = v7;
  v13 = [[ICThumbnailDescription alloc] initWithConfiguration:v11];
  [(ICThumbnailDescription *)v13 setThumbnailDecorationType:v46[3]];
  [(ICThumbnailDescription *)v13 setImageScaling:v56[3]];
  if (v10)
  {
    v14 = v40[5];
    if (v14)
    {
      v15 = MEMORY[0x1E695DFD8];
      v65[0] = v10;
      v65[1] = v14;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
      v17 = [v15 setWithArray:v16];
      [(ICThumbnailDescription *)v13 setAssociatedObjectIdentifiers:v17];
    }
  }

  v18 = v50[5];
  if (!v18 || ![v18 canLoadImage])
  {
    v20 = v60[5];
    if (!v20)
    {
      (v12)[2](v12, v13);
      goto LABEL_12;
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __80__ICThumbnailGeneratorAttachment_generateThumbnailWithConfiguration_completion___block_invoke_2;
    v21[3] = &unk_1E846DCB8;
    v25 = &v59;
    v22 = v11;
    v26 = &v45;
    v23 = v13;
    v24 = v12;
    [(ICThumbnailGeneratorAttachment *)self generateThumbnailForMediaURL:v20 configuration:v22 completion:v21];

    v19 = v22;
    goto LABEL_10;
  }

  v19 = [v50[5] loadOrientedImage];
  if (v19)
  {
    [(ICThumbnailDescription *)v13 setImage:v19];
    (v12)[2](v12, v13);
LABEL_10:
  }

LABEL_12:

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v59, 8);
}

void __80__ICThumbnailGeneratorAttachment_generateThumbnailWithConfiguration_completion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69B7680];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) managedObjectContext];
  v5 = [v2 attachmentWithIdentifier:v3 context:v4];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = MEMORY[0x1E69B7680];
  v9 = [*(*(*(a1 + 56) + 8) + 40) typeUTI];
  LODWORD(v8) = [v8 typeUTIIsPlayableMovie:v9];

  if (v8)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  v10 = [*(*(*(a1 + 56) + 8) + 40) media];
  v11 = [v10 mediaURL];
  v12 = *(*(a1 + 72) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [*(*(*(a1 + 56) + 8) + 40) note];
  v15 = [v14 identifier];
  v16 = *(*(a1 + 80) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v18 = [*(*(*(a1 + 56) + 8) + 40) attachmentModel];
  v19 = [v18 needToGeneratePreviews];

  if (v19)
  {
    v20 = +[ICAttachmentPreviewGenerator sharedGenerator];
    [v20 generatePreviewIfNeededForAttachment:*(*(*(a1 + 56) + 8) + 40)];
  }

  v21 = [*(*(*(a1 + 56) + 8) + 40) attachmentModel];
  v22 = [v21 hasPreviews];

  if (v22)
  {
    v23 = *(*(*(a1 + 56) + 8) + 40);
    [*(a1 + 48) preferredSize];
    v25 = v24;
    v27 = v26;
    [*(a1 + 48) scale];
    v29 = v28;
    v30 = [*(a1 + 48) appearanceInfo];
    v31 = [v23 attachmentPreviewImageWithMinSize:objc_msgSend(v30 scale:"type") appearanceType:1 requireAppearance:{v25, v27, v29}];

    v32 = [v31 newImageLoaderForUpdatingImageOnCompletion:1];
    v33 = *(*(a1 + 88) + 8);
    v34 = *(v33 + 40);
    *(v33 + 40) = v32;

    *(*(*(a1 + 96) + 8) + 24) = [v31 scaleWhenDrawing];
  }

  v35 = [*(a1 + 40) managedObjectContext];
  [v35 ic_refreshObject:*(*(*(a1 + 56) + 8) + 40) mergeChanges:0];
}

void __80__ICThumbnailGeneratorAttachment_generateThumbnailWithConfiguration_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = MEMORY[0x1E69DCAB8];
    v5 = *(*(*(a1 + 56) + 8) + 40);
    [*(a1 + 32) preferredSize];
    v3 = [v4 ic_fileIconForURL:v5 withPreferredSize:?];
    if (v3)
    {
      v6 = os_log_create("com.apple.notes", "Thumbnails");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_1D4171000, v6, OS_LOG_TYPE_INFO, "Recovered from thumbnail generation error using file icon", v7, 2u);
      }

      *(*(*(a1 + 64) + 8) + 24) = 2;
    }
  }

  [*(a1 + 40) setImage:v3];
  (*(*(a1 + 48) + 16))();
}

- (void)generateThumbnailForMediaURL:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  [v8 scale];
  if (v10 <= 0.0)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"configuration.scale > 0." functionName:"-[ICThumbnailGeneratorAttachment generateThumbnailForMediaURL:configuration:completion:]" simulateCrash:1 showAlert:0 format:@"Passing invalid scale to QLThumbnailGenerationRequest"];
  }

  gotLoadHelper_x8__OBJC_CLASS___QLThumbnailGenerationRequest(v10);
  v12 = objc_alloc(*(v11 + 224));
  [v8 preferredSize];
  v14 = v13;
  v16 = v15;
  [v8 scale];
  v18 = v17;

  v19 = [v12 initWithFileAtURL:v9 size:-1 scale:v14 representationTypes:{v16, v18}];
  Helper_x8__OBJC_CLASS___QLThumbnailGenerator = gotLoadHelper_x8__OBJC_CLASS___QLThumbnailGenerator(v20);
  v23 = [*(v22 + 232) sharedGenerator];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __88__ICThumbnailGeneratorAttachment_generateThumbnailForMediaURL_configuration_completion___block_invoke;
  v25[3] = &unk_1E846DCE0;
  v26 = v7;
  v24 = v7;
  [v23 generateBestRepresentationForRequest:v19 completionHandler:v25];
}

void __88__ICThumbnailGeneratorAttachment_generateThumbnailForMediaURL_configuration_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "Thumbnails");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __88__ICThumbnailGeneratorAttachment_generateThumbnailForMediaURL_configuration_completion___block_invoke_cold_1(v6, v7);
    }
  }

  v8 = [v5 UIImage];
  (*(*(a1 + 32) + 16))();
}

void __88__ICThumbnailGeneratorAttachment_generateThumbnailForMediaURL_configuration_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Error generating thumbnail %@", &v2, 0xCu);
}

@end