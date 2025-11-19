@interface ICAttachmentGenericModel(PreviewGeneration)
- (uint64_t)generatePreviewsInOperation:()PreviewGeneration;
- (uint64_t)needToGeneratePreviews;
@end

@implementation ICAttachmentGenericModel(PreviewGeneration)

- (uint64_t)needToGeneratePreviews
{
  v2 = [a1 attachment];
  if ([v2 usesLinkPresentation])
  {
    v3 = [a1 attachment];
    v4 = [v3 media];
    v5 = [v4 mediaURL];
    if ([v5 isFileURL])
    {
      v6 = [a1 attachment];
      if ([v6 attachmentType] == 4)
      {
        v7 = 0;
      }

      else
      {
        v8 = [a1 attachment];
        if ([v8 metadataExists])
        {
          v7 = 0;
        }

        else
        {
          v7 = [a1 isGeneratingPreviews] ^ 1;
        }
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)generatePreviewsInOperation:()PreviewGeneration
{
  v4 = a3;
  if ([a1 isGeneratingPreviews])
  {
    v5 = 0;
  }

  else
  {
    [a1 setGeneratingPreviews:1];
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__63;
    v31 = __Block_byref_object_dispose__63;
    v32 = 0;
    v6 = [a1 attachment];
    v7 = [v6 managedObjectContext];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __75__ICAttachmentGenericModel_PreviewGeneration__generatePreviewsInOperation___block_invoke;
    v24[3] = &unk_1E8468FA8;
    v26 = &v27;
    v8 = v6;
    v25 = v8;
    [v7 performBlockAndWait:v24];

    if ([v28[5] isFileURL])
    {
      v9 = dispatch_semaphore_create(0);
      gotLoadHelper_x8__OBJC_CLASS___LPMetadataProvider(v10);
      v12 = objc_alloc_init(*(v11 + 3296));
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      v13 = v28[5];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __75__ICAttachmentGenericModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_2;
      v16[3] = &unk_1E846AAE0;
      v17 = v8;
      v19 = &v20;
      v14 = v9;
      v18 = v14;
      [v12 startFetchingMetadataForURL:v13 completionHandler:v16];
      dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
      [a1 setGeneratingPreviews:0];
      v5 = *(v21 + 24);

      _Block_object_dispose(&v20, 8);
    }

    else
    {
      [a1 setGeneratingPreviews:0];
      v5 = 0;
    }

    _Block_object_dispose(&v27, 8);
  }

  return v5 & 1;
}

@end