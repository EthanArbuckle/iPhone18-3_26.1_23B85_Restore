@interface ICAttachmentSystemPaperModel
@end

@implementation ICAttachmentSystemPaperModel

void __56__ICAttachmentSystemPaperModel_UI__imageForActivityItem__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) attachment];
  v2 = [v5 fallbackImageData];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __54__ICAttachmentSystemPaperModel_UI__drawPreviewInRect___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) attachment];
  v3 = [v2 note];
  +[ICPaperStyle drawPaperStyleType:inRect:](ICPaperStyle, "drawPaperStyleType:inRect:", [v3 paperStyleType], *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));

  v4 = os_log_create("com.apple.notes", "SystemPaper");
  v5 = os_signpost_id_generate(v4);
  v6 = v4;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D4171000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "DrawPreviewInRect", "", buf, 2u);
  }

  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) drawPaperInRect:{*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
  v8 = v7;
  v9 = v8;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_1D4171000, v9, OS_SIGNPOST_INTERVAL_END, v5, "DrawPreviewInRect", "", v10, 2u);
  }
}

uint64_t __108__ICAttachmentSystemPaperModel_PreviewGeneration__generateImageForAttachment_fullResolution_appearanceInfo___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) imageWithFullResolution:*(a1 + 56) inverted:{objc_msgSend(*(a1 + 40), "isDark")}];

  return MEMORY[0x1EEE66BB8]();
}

void __97__ICAttachmentSystemPaperModel_PreviewGeneration__generatePreviewsForAttachment_paperIdentifier___block_invoke(uint64_t a1)
{
  v79 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  v2 = [*(a1 + 32) attachmentModel];
  v40 = ICCheckedDynamicCast();

  if (*(a1 + 40))
  {
    v3 = [ICSystemPaperImageGenerator imageGeneratorWithPaperAttachment:*(a1 + 32)];
    v70 = 0;
    v71 = &v70;
    v72 = 0x3032000000;
    v73 = __Block_byref_object_copy__37;
    v74 = __Block_byref_object_dispose__37;
    v75 = 0;
    v4 = [*(a1 + 32) previewImages];
    v5 = [v4 mutableCopy];

    v64 = 0;
    v65 = &v64;
    v66 = 0x3032000000;
    v67 = __Block_byref_object_copy__37;
    v68 = __Block_byref_object_dispose__37;
    v69 = objc_alloc_init(MEMORY[0x1E69B7A80]);
    v6 = MEMORY[0x1E69B7678];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __97__ICAttachmentSystemPaperModel_PreviewGeneration__generatePreviewsForAttachment_paperIdentifier___block_invoke_2;
    v57[3] = &unk_1E846B8F0;
    v58 = *(a1 + 32);
    v7 = v3;
    v8 = *(a1 + 56);
    v39 = v7;
    v59 = v7;
    v63 = v8;
    v60 = v40;
    v61 = &v70;
    v62 = &v64;
    [v6 enumerateAppearanceTypesUsingBlock:v57];
    v9 = +[ICPreviewDeviceContext sharedContext];
    v43 = [v9 deviceInfoScalable:1];

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v10 = [v65[5] allKeys];
    v11 = [v10 countByEnumeratingWithState:&v53 objects:v78 count:16];
    v12 = 0;
    if (v11)
    {
      obj = v10;
      v42 = *v54;
      do
      {
        v44 = v11;
        for (i = 0; i != v44; ++i)
        {
          if (*v54 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v53 + 1) + 8 * i);
          v15 = [v14 type];
          v16 = [v65[5] objectForKey:v14];
          if (!v16)
          {
            [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((generatedPreviewImage) != nil)" functionName:"+[ICAttachmentSystemPaperModel(PreviewGeneration) generatePreviewsForAttachment:paperIdentifier:]_block_invoke" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "generatedPreviewImage"}];
          }

          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v17 = v43;
          v18 = [v17 countByEnumeratingWithState:&v49 objects:v77 count:16];
          if (v18)
          {
            v19 = *v50;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v50 != v19)
                {
                  objc_enumerationMutation(v17);
                }

                v21 = *(a1 + 32);
                [*(*(&v49 + 1) + 8 * j) scale];
                v22 = [v21 updateAttachmentPreviewImageWithImage:v16 scale:v15 appearanceType:1 scaleWhenDrawing:0 metadata:0 sendNotification:?];
                [v5 ic_removeNonNilObject:v22];
              }

              v18 = [v17 countByEnumeratingWithState:&v49 objects:v77 count:16];
            }

            while (v18);
            v12 = 1;
          }
        }

        v10 = obj;
        v11 = [obj countByEnumeratingWithState:&v53 objects:v78 count:16];
      }

      while (v11);
    }

    v23 = v71[5];
    if (v23)
    {
      v24 = *(a1 + 32);
      v25 = [MEMORY[0x1E69B7680] fallbackImageUTI];
      v26 = [v23 ic_imageDataWithUTType:v25];
      [v24 writeFallbackImageData:v26];
    }

    if ([v5 count])
    {
      [*(a1 + 32) removePreviewImages:v5];
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v27 = v5;
      v28 = [v27 countByEnumeratingWithState:&v45 objects:v76 count:16];
      if (v28)
      {
        v29 = *v46;
        do
        {
          for (k = 0; k != v28; ++k)
          {
            if (*v46 != v29)
            {
              objc_enumerationMutation(v27);
            }

            v31 = *(*(&v45 + 1) + 8 * k);
            v32 = [*(a1 + 32) managedObjectContext];
            [v32 deleteObject:v31];
          }

          v28 = [v27 countByEnumeratingWithState:&v45 objects:v76 count:16];
        }

        while (v28);
      }
    }

    if (v12)
    {
      v33 = [MEMORY[0x1E695DF00] date];
      [*(a1 + 32) setPreviewUpdateDate:v33];

      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    _Block_object_dispose(&v64, 8);
    _Block_object_dispose(&v70, 8);
  }

  else
  {
    v34 = [*(a1 + 56) generateEmptyImage];
    [v34 size];
    [*(a1 + 32) setSizeWidth:?];
    [v34 size];
    [*(a1 + 32) setSizeHeight:v35];
    v36 = *(a1 + 32);
    v37 = [MEMORY[0x1E69B7680] fallbackImageUTI];
    v38 = [v34 ic_imageDataWithUTType:v37];
    [v36 writeFallbackImageData:v38];

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void __97__ICAttachmentSystemPaperModel_PreviewGeneration__generatePreviewsForAttachment_paperIdentifier___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69B7678] appearanceInfoWithType:a2];
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__37;
  v45 = __Block_byref_object_dispose__37;
  v46 = 0;
  v5 = os_log_create("com.apple.notes", "SystemPaper");
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D4171000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "PreviewGeneration", "", buf, 2u);
  }

  v9 = os_log_create("com.apple.notes", "SystemPaper");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [*(a1 + 32) identifier];
    __97__ICAttachmentSystemPaperModel_PreviewGeneration__generatePreviewsForAttachment_paperIdentifier___block_invoke_2_cold_1(v10, v53, v9);
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __97__ICAttachmentSystemPaperModel_PreviewGeneration__generatePreviewsForAttachment_paperIdentifier___block_invoke_18;
  v37[3] = &unk_1E8469640;
  v40 = &v41;
  v38 = *(a1 + 40);
  v11 = v4;
  v39 = v11;
  [v11 performAsDefaultAppearance:v37];
  [*(a1 + 40) paperContentBounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [*(a1 + 40) hasDeepLink];
  v21 = v8;
  v22 = v21;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D4171000, v22, OS_SIGNPOST_INTERVAL_END, v6, "PreviewGeneration", "", buf, 2u);
  }

  v23 = v42[5];
  v24 = os_log_create("com.apple.notes", "SystemPaper");
  v25 = v24;
  if (v23)
  {
    v26 = v24;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v33 = [*(a1 + 32) shortLoggingDescription];
      [v42[5] size];
      v35 = v34;
      [v42[5] size];
      *buf = 138412802;
      v48 = v33;
      v49 = 2048;
      v50 = v35;
      v51 = 2048;
      v52 = v36;
      _os_log_debug_impl(&dword_1D4171000, v26, OS_LOG_TYPE_DEBUG, "Generated paper sketch image: %@ => %g %g", buf, 0x20u);
    }

    v25 = [*(a1 + 72) previewImageForAttachment:*(a1 + 32) fullImage:objc_msgSend(v42[5] scale:"ic_CGImage") appearanceInfo:{v11, 2.0}];
    [v42[5] size];
    [*(a1 + 32) setSizeWidth:?];
    [v42[5] size];
    [*(a1 + 32) setSizeHeight:v27];
    [*(a1 + 48) setPaperContentBoundsHint:{v13, v15, v17, v19}];
    [*(a1 + 48) setHasDeepLink:v20];
    if (!a2)
    {
      v28 = [ICAttachmentPreviewImageLoader orientedImage:v42[5] withBackground:1];
      v29 = *(*(a1 + 56) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = v28;
    }

    if (v25)
    {
      v31 = [*(*(*(a1 + 64) + 8) + 40) objectForKey:v11];
      v32 = v31 == 0;

      if (!v32)
      {
        [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"[appearancesToPreviewImages objectForKey:appearanceInfo] == ((void*)0)" functionName:"+[ICAttachmentSystemPaperModel(PreviewGeneration) generatePreviewsForAttachment:paperIdentifier:]_block_invoke" simulateCrash:1 showAlert:0 format:@"Didn't expect to generate multiple images for the same ICAppearance."];
      }

      [*(*(*(a1 + 64) + 8) + 40) setObject:v25 forUncopiedKey:v11];
    }
  }

  else if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    __97__ICAttachmentSystemPaperModel_PreviewGeneration__generatePreviewsForAttachment_paperIdentifier___block_invoke_2_cold_2(v25);
  }

  _Block_object_dispose(&v41, 8);
}

uint64_t __97__ICAttachmentSystemPaperModel_PreviewGeneration__generatePreviewsForAttachment_paperIdentifier___block_invoke_18(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) imageWithFullResolution:0 inverted:{objc_msgSend(*(a1 + 40), "isDark")}];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __79__ICAttachmentSystemPaperModel_PreviewGeneration__generatePreviewsInOperation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) attachment];
  v3 = [v2 identifier];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) paperBundleURL];

  return MEMORY[0x1EEE66BB8]();
}

void __97__ICAttachmentSystemPaperModel_PreviewGeneration__generatePreviewsForAttachment_paperIdentifier___block_invoke_2_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1D4171000, log, OS_LOG_TYPE_DEBUG, "Starting to generate System Paper image for attachment %@", buf, 0xCu);
}

@end