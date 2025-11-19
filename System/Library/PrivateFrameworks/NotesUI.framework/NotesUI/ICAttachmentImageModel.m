@interface ICAttachmentImageModel
@end

@implementation ICAttachmentImageModel

void __72__ICAttachmentImageModel_PreviewGeneration__needToPostProcessAttachment__block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  if (+[ICAttachmentPreviewGenerator imageOCRGenerationEnabled])
  {
    v2 = 1;
  }

  else if ([*(a1 + 32) isChildOfDocumentGallery])
  {
    v2 = +[ICAttachmentPreviewGenerator docCamOCRGenerationEnabled];
  }

  else
  {
    v2 = 0;
  }

  v3 = [*(a1 + 32) previewImages];
  v4 = [v3 count];

  if (!v4)
  {
    v9 = 0;
    goto LABEL_19;
  }

  v5 = [*(a1 + 32) ocrSummary];
  if (!v5)
  {
    if (!v2)
    {
      goto LABEL_13;
    }

LABEL_12:
    v10 = [*(a1 + 32) attachmentModel];
    LOBYTE(v2) = [v10 supportsOCR];

    goto LABEL_13;
  }

  v6 = v5;
  v7 = [*(a1 + 32) ocrSummaryVersion];
  v8 = v7 < *MEMORY[0x1E69B73D0];

  if (v8 & v2)
  {
    goto LABEL_12;
  }

  LOBYTE(v2) = 0;
LABEL_13:
  v11 = [*(a1 + 32) imageClassificationSummary];
  if (v11 && (v12 = v11, v13 = [*(a1 + 32) imageClassificationSummaryVersion], v14 = *MEMORY[0x1E69B73C8], v12, v13 >= v14) || !+[ICAttachmentPreviewGenerator imageClassificationEnabled](ICAttachmentPreviewGenerator, "imageClassificationEnabled"))
  {
    v16 = 0;
  }

  else
  {
    v15 = [*(a1 + 32) attachmentModel];
    v16 = [v15 supportsImageClassification];
  }

  v9 = v2 | v16;
LABEL_19:
  v17 = [*(a1 + 32) attachmentModel];
  *(*(*(a1 + 48) + 8) + 24) = [v17 requiresPostProcessing] & v9;

  v18 = os_log_create("com.apple.notes", "PreviewGeneration");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = v4 != 0;
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = NSStringFromSelector(*(a1 + 56));
    v23 = [*(a1 + 32) identifier];
    v24 = *(*(*(a1 + 48) + 8) + 24);
    v25 = [*(a1 + 32) ocrSummary];
    v26 = [*(a1 + 32) imageClassificationSummary];
    v27 = 138413826;
    v28 = v21;
    v29 = 2112;
    v30 = v22;
    v31 = 2112;
    v32 = v23;
    v33 = 1024;
    v34 = v24;
    v35 = 1024;
    v36 = v25 != 0;
    v37 = 1024;
    v38 = v26 != 0;
    v39 = 1024;
    v40 = v19;
    _os_log_debug_impl(&dword_1D4171000, v18, OS_LOG_TYPE_DEBUG, "%@ %@ %@ return %d ocrSummary %d imageClassificationSummary %d hasPreviewImage %d", &v27, 0x38u);
  }
}

void __214__ICAttachmentImageModel_PreviewGeneration__generateFullSizePreviewWithAttachmentIdentifier_existingPreviewImage_markupModelData_imageOrientation_imageFilterType_mediaDecryptedData_mediaURL_mediaSize_croppingQuad___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) attachment];
  [v2 sizeWidth];
  v4 = v3;
  v5 = [*(a1 + 32) attachment];
  [v5 sizeHeight];
  v7 = v6;

  if (*(a1 + 40) != v4 || *(a1 + 48) != v7)
  {
    v9 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v15 = [*(a1 + 32) attachment];
      v16 = [v15 shortLoggingDescription];
      v17 = *(a1 + 40);
      v18 = *(a1 + 48);
      v19 = 138413314;
      v20 = v16;
      v21 = 2048;
      v22 = v4;
      v23 = 2048;
      v24 = v7;
      v25 = 2048;
      v26 = v17;
      v27 = 2048;
      v28 = v18;
      _os_log_debug_impl(&dword_1D4171000, v9, OS_LOG_TYPE_DEBUG, "Corrected cropped image size for %@ (%g %g => %g %g)", &v19, 0x34u);
    }

    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) attachment];
    [v11 setSizeWidth:v10];

    v12 = *(a1 + 48);
    v13 = [*(a1 + 32) attachment];
    [v13 setSizeHeight:v12];

    v14 = [*(a1 + 32) attachment];
    [v14 updateChangeCountWithReason:@"Generated full-size previews"];
  }
}

void __214__ICAttachmentImageModel_PreviewGeneration__generateFullSizePreviewWithAttachmentIdentifier_existingPreviewImage_markupModelData_imageOrientation_imageFilterType_mediaDecryptedData_mediaURL_mediaSize_croppingQuad___block_invoke_170(uint64_t a1)
{
  v2 = [*(a1 + 32) attachment];
  v4 = [v2 updateAttachmentPreviewImageWithImageSrc:*(a1 + 48) maxDimension:0 scale:0 appearanceType:0 scaleWhenDrawing:0 metadata:*(a1 + 56) sendNotification:1.0];

  v3 = v4;
  if (v4)
  {
    [*(a1 + 40) removeObject:v4];
    v3 = v4;
  }
}

void __73__ICAttachmentImageModel_PreviewGeneration__generatePreviewsInOperation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) attachment];
  v3 = [v2 identifier];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if ([*(a1 + 32) needToGeneratePreviews])
  {
    v6 = [*(a1 + 32) attachment];
    v7 = [v6 parentAttachment];
    v8 = [v7 attachmentModel];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = [*(a1 + 32) attachment];
    *(*(*(a1 + 56) + 8) + 24) = [v11 imageFilterType];

    v12 = [*(a1 + 32) attachment];
    *(*(*(a1 + 64) + 8) + 24) = [v12 orientation];

    v13 = [*(a1 + 32) attachment];
    v42 = [v13 media];

    v14 = [v42 identifier];
    v15 = *(*(a1 + 72) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    if ([v42 isPasswordProtected])
    {
      v17 = [v42 decryptedData];
      v18 = 80;
    }

    else
    {
      v17 = [v42 mediaURL];
      v18 = 88;
    }

    v19 = *(*(a1 + v18) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v17;

    v21 = [*(a1 + 32) attachment];
    v22 = [v21 previewImages];
    v23 = [v22 mutableCopy];
    v24 = *(*(a1 + 96) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v23;

    v26 = [*(a1 + 32) attachment];
    v27 = [v26 markupModelData];
    v28 = *(*(a1 + 104) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;

    v30 = [*(a1 + 32) attachment];
    v31 = [v30 attachmentModel];
    *(*(*(a1 + 112) + 8) + 24) = [v31 needsFullSizePreview];

    v32 = [*(a1 + 32) attachment];
    [v32 sizeWidth];
    v34 = v33;
    v35 = [*(a1 + 32) attachment];
    [v35 sizeHeight];
    v36 = *(*(a1 + 120) + 8);
    *(v36 + 32) = v34;
    *(v36 + 40) = v37;

    v38 = [*(a1 + 32) attachment];
    v39 = [v38 croppingQuad];
    v40 = *(*(a1 + 128) + 8);
    v41 = *(v40 + 40);
    *(v40 + 40) = v39;
  }
}

void __73__ICAttachmentImageModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_171(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) scale];
  v3 = v2;
  v4 = [*(a1 + 40) attachment];
  v5 = [v4 updateAttachmentPreviewImageWithImageSrc:*(a1 + 80) maxDimension:0 scale:1 appearanceType:0 scaleWhenDrawing:0 metadata:*(a1 + 88) sendNotification:v3];

  if (v5)
  {
    *(*(*(a1 + 48) + 8) + 24) |= [*(*(*(a1 + 56) + 8) + 40) containsObject:v5];
    [*(*(*(a1 + 56) + 8) + 40) removeObject:v5];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    v6 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(*(a1 + 96));
      v10 = *(*(*(a1 + 72) + 8) + 40);
      v11 = *(a1 + 88);
      v12 = 138413314;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2048;
      v19 = v11;
      v20 = 2048;
      v21 = v3;
      _os_log_debug_impl(&dword_1D4171000, v6, OS_LOG_TYPE_DEBUG, "%@ %@ %@ preview generation failed for size: %.1f, scale %.1f", &v12, 0x34u);
    }
  }
}

void __73__ICAttachmentImageModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_172(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(*(*(a1 + 48) + 8) + 40) count])
  {
    v2 = [*(a1 + 32) attachment];
    [v2 removePreviewImages:*(*(*(a1 + 48) + 8) + 40)];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = *(*(*(a1 + 48) + 8) + 40);
    v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v15;
      do
      {
        v7 = 0;
        do
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v14 + 1) + 8 * v7);
          v9 = [*(a1 + 32) attachment];
          v10 = [v9 managedObjectContext];
          [v10 deleteObject:v8];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v5);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  if (([*(a1 + 40) isCancelled] & 1) == 0 && *(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v11 = [MEMORY[0x1E695DF00] date];
    v12 = [*(a1 + 32) attachment];
    [v12 setPreviewUpdateDate:v11];

    v13 = [*(a1 + 32) attachment];
    [v13 updateChangeCountWithReason:@"Generated previews"];
  }
}

void __68__ICAttachmentImageModel_PreviewGeneration__generateOCRInOperation___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 32))
  {
    v3 = (a1 + 40);
    [*(a1 + 40) sizeWidth];
    [*(a1 + 40) sizeHeight];
    TSDShrinkSizeToFitInSize();
    v5 = v4;
    v7 = v6;
    v8 = os_log_create("com.apple.notes", "PreviewGeneration");
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
    if (v5 <= 0.0 || v7 <= 0.0)
    {
      if (v9)
      {
        __68__ICAttachmentImageModel_PreviewGeneration__generateOCRInOperation___block_invoke_cold_1(a1 + 40);
      }

      v10 = v8;
      goto LABEL_35;
    }

    if (v9)
    {
      __68__ICAttachmentImageModel_PreviewGeneration__generateOCRInOperation___block_invoke_cold_2(a1 + 40);
    }

    v10 = [*v3 attachmentPreviewImageWithMinSize:v5 scale:{v7, 1.0}];
    v11 = [v10 orientedPreviewImageURL];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v13 = [*v3 media];
      v12 = [v13 mediaURL];

      if (!v12)
      {
        v14 = os_log_create("com.apple.notes", "PreviewGeneration");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          __68__ICAttachmentImageModel_PreviewGeneration__generateOCRInOperation___block_invoke_cold_5(v3);
        }

        v12 = v14;
        goto LABEL_32;
      }
    }

    if ([*(a1 + 48) isCancelled])
    {
      v14 = os_log_create("com.apple.notes", "PreviewGeneration");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __68__ICAttachmentImageModel_PreviewGeneration__generateOCRInOperation___block_invoke_cold_4(v3);
      }

      goto LABEL_32;
    }

    v14 = [MEMORY[0x1E695DF00] date];
    v15 = MEMORY[0x1E69B7818];
    v28 = 0;
    v16 = [MEMORY[0x1E695DF58] preferredLanguages];
    v17 = [v15 ocrStringFromImageURL:v12 title:&v28 languages:v16];
    v18 = v28;

    v19 = [MEMORY[0x1E695DF00] date];
    [v19 timeIntervalSinceDate:v14];

    v20 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      __68__ICAttachmentImageModel_PreviewGeneration__generateOCRInOperation___block_invoke_cold_3(v3);
    }

    v21 = [*v3 ocrSummary];
    v22 = [v21 isEqualToString:v17];

    if ((v22 & 1) == 0)
    {
      if (v17)
      {
        v23 = v17;
      }

      else
      {
        v23 = @" ";
      }

      [*v3 setOcrSummary:v23];
      [*v3 updateChangeCountWithReason:@"Generated OCR"];
    }

    if (v18)
    {
      v24 = [v18 ic_trimmedString];
      if (![v24 length])
      {
LABEL_27:

        goto LABEL_28;
      }

      v25 = [*v3 title];
      v26 = [v25 isEqualToString:v18];

      if ((v26 & 1) == 0)
      {
        [*v3 setTitle:v18];
        v24 = [*v3 parentAttachment];
        [v24 regenerateTitle];
        goto LABEL_27;
      }
    }

LABEL_28:
    v27 = [*v3 managedObjectContext];
    [v27 ic_save];

LABEL_32:
    v8 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __68__ICAttachmentImageModel_PreviewGeneration__generateOCRInOperation___block_invoke_cold_6(v3);
    }

LABEL_35:
  }

  objc_autoreleasePoolPop(v2);
}

void __70__ICAttachmentImageModel_PreviewGeneration__classifyImageInOperation___block_invoke(id *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1[4])
  {
    v3 = a1 + 5;
    [a1[5] sizeWidth];
    v5 = v4;
    [a1[5] sizeHeight];
    v7 = v6;
    v8 = os_log_create("com.apple.notes", "PreviewGeneration");
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
    if (v5 <= 0.0 || v7 <= 0.0)
    {
      if (v9)
      {
        __70__ICAttachmentImageModel_PreviewGeneration__classifyImageInOperation___block_invoke_cold_1((a1 + 5));
      }

      v10 = v8;
      goto LABEL_29;
    }

    if (v9)
    {
      __70__ICAttachmentImageModel_PreviewGeneration__classifyImageInOperation___block_invoke_cold_2((a1 + 5));
    }

    v8 = [*v3 attachmentPreviewImageWithMinSize:v5 scale:{v7, 1.0}];
    v10 = [v8 orientedImage];
    if (v10)
    {
      if (([a1[6] isCancelled] & 1) == 0)
      {
        v12 = [MEMORY[0x1E695DF00] date];
        v11 = [a1[4] classificationsForImage:v10];
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:v12];

        v14 = os_log_create("com.apple.notes", "PreviewGeneration");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          __70__ICAttachmentImageModel_PreviewGeneration__classifyImageInOperation___block_invoke_cold_3(v3);
        }

        if (v11)
        {
          if ([v11 length])
          {
            v15 = v11;
          }

          else
          {
            v15 = @" ";
          }

          [*v3 setImageClassificationSummary:v15];
          if ([v11 rangeOfString:@"document" options:1]!= 0x7FFFFFFFFFFFFFFFLL)
          {
            v16 = [MEMORY[0x1E696AD88] defaultCenter];
            [v16 postNotificationName:*MEMORY[0x1E69B73E8] object:*v3];
          }
        }

        else
        {
          [ICAttachmentPreviewGenerator setImageClassificationTemporarilyDisabled:1];
        }

        [*v3 updateChangeCountWithReason:@"Classified image"];
        v17 = [*v3 managedObjectContext];
        [v17 ic_save];

        goto LABEL_26;
      }

      v11 = os_log_create("com.apple.notes", "PreviewGeneration");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __70__ICAttachmentImageModel_PreviewGeneration__classifyImageInOperation___block_invoke_cold_4(v3);
      }
    }

    else
    {
      v11 = os_log_create("com.apple.notes", "PreviewGeneration");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __70__ICAttachmentImageModel_PreviewGeneration__classifyImageInOperation___block_invoke_cold_5(v3);
      }
    }

    v12 = v11;
LABEL_26:

    v18 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      __70__ICAttachmentImageModel_PreviewGeneration__classifyImageInOperation___block_invoke_cold_6(v3);
    }

LABEL_29:
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t __81__ICAttachmentImageModel_PreviewGeneration__labelsForClassificationObservations___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 32) == 1 && (*(a3 + 33) & 1) == 0)
  {
    v4 = *(a3 + 8);
    if (([*(a1 + 32) containsIndex:v4] & 1) == 0)
    {
      v5 = *(a1 + 40);
      v6 = PFSceneTaxonomyNodeLocalizedLabel();
      [v5 ic_addNonNilObject:v6];

      v7 = PFSceneTaxonomyNodeLocalizedSynonyms();
      if ([v7 count])
      {
        [*(a1 + 40) ic_addObjectsFromNonNilArray:v7];
      }

      [*(a1 + 32) addIndex:v4];
    }
  }

  return 0;
}

void __68__ICAttachmentImageModel_PreviewGeneration__generateOCRInOperation___block_invoke_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_2_2(a1) identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __68__ICAttachmentImageModel_PreviewGeneration__generateOCRInOperation___block_invoke_cold_2(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_2_2(a1) identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __68__ICAttachmentImageModel_PreviewGeneration__generateOCRInOperation___block_invoke_cold_3(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_2_2(a1) identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __68__ICAttachmentImageModel_PreviewGeneration__generateOCRInOperation___block_invoke_cold_4(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_2_2(a1) identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __68__ICAttachmentImageModel_PreviewGeneration__generateOCRInOperation___block_invoke_cold_5(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_2_2(a1) identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __68__ICAttachmentImageModel_PreviewGeneration__generateOCRInOperation___block_invoke_cold_6(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_2_2(a1) identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __70__ICAttachmentImageModel_PreviewGeneration__classifyImageInOperation___block_invoke_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_2_2(a1) identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __70__ICAttachmentImageModel_PreviewGeneration__classifyImageInOperation___block_invoke_cold_2(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_2_2(a1) identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __70__ICAttachmentImageModel_PreviewGeneration__classifyImageInOperation___block_invoke_cold_3(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_2_2(a1) identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __70__ICAttachmentImageModel_PreviewGeneration__classifyImageInOperation___block_invoke_cold_4(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_2_2(a1) identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __70__ICAttachmentImageModel_PreviewGeneration__classifyImageInOperation___block_invoke_cold_5(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_2_2(a1) identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __70__ICAttachmentImageModel_PreviewGeneration__classifyImageInOperation___block_invoke_cold_6(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_2_2(a1) identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end