@interface ICAttachmentInlineDrawingModel
@end

@implementation ICAttachmentInlineDrawingModel

void __63__ICAttachmentInlineDrawingModel_UI__actuallyMergeWithDrawing___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) attachment];
  v3 = [v2 mergeableData];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v11 = [*(a1 + 40) uuid];
    v12 = [*(*(*(a1 + 48) + 8) + 40) ic_sha256];
    v13 = [*(a1 + 32) attachment];
    v14 = [v13 shortLoggingDescription];
    v15 = 138412802;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    v19 = 2112;
    v20 = v14;
    _os_log_debug_impl(&dword_1D4171000, v6, OS_LOG_TYPE_DEBUG, "Merging PencilKit drawing %@ into current data %@ for %@", &v15, 0x20u);
  }

  v7 = [*(a1 + 32) attachment];
  v8 = [v7 typeUTI];
  v9 = [v8 isEqualToString:*MEMORY[0x1E69B7438]];
  v10 = 1;
  if (v9)
  {
    v10 = 2;
  }

  *(*(*(a1 + 56) + 8) + 24) = v10;
}

void __63__ICAttachmentInlineDrawingModel_UI__actuallyMergeWithDrawing___block_invoke_14(uint64_t a1)
{
  v2 = [*(a1 + 32) handwritingRecognitionDrawing];
  [v2 mergeWithDrawing:*(a1 + 40)];
}

void __63__ICAttachmentInlineDrawingModel_UI__actuallyMergeWithDrawing___block_invoke_2(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __63__ICAttachmentInlineDrawingModel_UI__actuallyMergeWithDrawing___block_invoke_2_cold_1(a1);
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) attachment];
  [v4 setMergeableData:v3];

  v5 = [*(a1 + 32) attachment];
  [v5 setPreviewUpdateDate:0];

  v6 = [*(a1 + 32) attachment];
  v7 = [v6 ic_postNotificationOnMainThreadAfterSaveWithName:*MEMORY[0x1E69B7410]];
}

void __63__ICAttachmentInlineDrawingModel_UI__actuallyMergeWithDrawing___block_invoke_15(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) attachment];
    v4 = [v3 shortLoggingDescription];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_1D4171000, v2, OS_LOG_TYPE_DEFAULT, "Failed to merge PencilKit data into %@", &v5, 0xCu);
  }
}

void __63__ICAttachmentInlineDrawingModel_UI__actuallyMergeWithDrawing___block_invoke_16(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __63__ICAttachmentInlineDrawingModel_UI__actuallyMergeWithDrawing___block_invoke_16_cold_1(a1);
  }
}

void __58__ICAttachmentInlineDrawingModel_UI__imageForActivityItem__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) attachment];
  v2 = [v5 fallbackImageData];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __59__ICAttachmentInlineDrawingModel_UI__setTitleQueryEnabled___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) attachment];
  v2 = [v5 shortLoggingDescription];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __59__ICAttachmentInlineDrawingModel_UI__setTitleQueryEnabled___block_invoke_29(uint64_t a1)
{
  v2 = [*(a1 + 32) handwritingRecognitionDrawing];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__ICAttachmentInlineDrawingModel_UI__setTitleQueryEnabled___block_invoke_2;
  block[3] = &unk_1E8468FD0;
  v7 = *(a1 + 48);
  v6 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __59__ICAttachmentInlineDrawingModel_UI__setTitleQueryEnabled___block_invoke_2(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = [objc_alloc(MEMORY[0x1E6978520]) initWithDrawing:*(*(*(a1 + 40) + 8) + 40)];
    [*(a1 + 32) setTitleQuery:v2];

    v3 = *(a1 + 32);
    v4 = [v3 titleQuery];
    [v4 setDelegate:v3];

    v12 = [*(a1 + 32) titleQuery];
    [v12 start];
  }

  else
  {
    v5 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __59__ICAttachmentInlineDrawingModel_UI__setTitleQueryEnabled___block_invoke_2_cold_1(a1, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

void __67__ICAttachmentInlineDrawingModel_UI__titleQuery_didUpdateWithItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69B7680] ic_existingObjectWithID:*(a1 + 32) context:v3];
  v5 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __67__ICAttachmentInlineDrawingModel_UI__titleQuery_didUpdateWithItem___block_invoke_cold_1(v4);
  }

  [v4 setTitle:*(a1 + 40)];
  [v4 updateChangeCountWithReason:@"Updated title from query"];
  v6 = [v4 note];
  v7 = [v6 regenerateTitle:1 snippet:1];

  if (v7)
  {
    v8 = [v4 note];
    [v8 markShareDirtyIfNeededWithReason:@"Updated title from query"];

    v9 = [v4 note];
    [v9 updateChangeCountWithReason:@"Updated title from query"];
  }

  [v3 ic_save];
}

uint64_t __56__ICAttachmentInlineDrawingModel_UI__drawPreviewInRect___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) newDrawingFromMergeableData];

  return MEMORY[0x1EEE66BB8]();
}

void __122__ICAttachmentInlineDrawingModel_PreviewGeneration__generateImageForAttachment_fromDrawing_fullResolution_appearanceInfo___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = safeCanvasBoundsForDrawing(v2);
    v7 = v5 == *MEMORY[0x1E695F060];
    v8 = v6 == *(MEMORY[0x1E695F060] + 8);
    if (v7 && v8)
    {
      v6 = 100.0;
      v5 = 100.0;
      v9 = 0.0;
    }

    else
    {
      v9 = v3;
    }

    if (v7 && v8)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = v4;
    }

    if (v5 >= 1.0)
    {
      v11 = v5;
    }

    else
    {
      v11 = 1.0;
    }

    sx = 1.0;
    if (v6 >= 1.0)
    {
      v12 = v6;
    }

    else
    {
      v12 = 1.0;
    }

    v52.origin.x = v9;
    v52.origin.y = v10;
    v52.size.width = v11;
    v52.size.height = v12;
    CGRectGetMaxX(v52);
    v53.origin.x = v9;
    v53.origin.y = v10;
    v53.size.width = v11;
    v53.size.height = v12;
    v13 = ceil(CGRectGetHeight(v53));
    v14 = 1536.0;
    if (*(a1 + 56))
    {
      v14 = 16384.0;
    }

    if (v13 > v14)
    {
      sx = v14 / v13;
      v13 = ceil(v13 * (v14 / v13));
    }

    if (v12 <= 256.0)
    {
      v15 = v12;
    }

    else
    {
      v15 = 256.0;
    }

    v16 = [objc_alloc(MEMORY[0x1E6978450]) initWithSize:v11 scale:{v15, 2.0}];
    [v16 setInvertColors:{objc_msgSend(*(a1 + 40), "type") == 1}];
    v42 = v13;
    v17 = TSUCreateRGBABitmapContext();
    if (v17)
    {
      v18 = v17;
      v54.origin.x = v9;
      v54.origin.y = v10;
      v54.size.width = v11;
      v54.size.height = v12;
      if (v10 < CGRectGetMaxY(v54))
      {
        v40 = v12;
        v19 = v10;
        do
        {
          v20 = objc_autoreleasePoolPush();
          v21 = os_log_create("com.apple.notes", "PencilKit");
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v59.origin.x = v9;
            v59.origin.y = v19;
            v59.size.width = v11;
            v59.size.height = v15;
            v34 = NSStringFromCGRect(v59);
            v60.origin.x = v9;
            v60.origin.y = v10;
            v60.size.width = v11;
            v60.size.height = v12;
            v35 = NSStringFromCGRect(v60);
            *buf = 138412546;
            *&buf[4] = v34;
            *&buf[12] = 2112;
            *&buf[14] = v35;
            _os_log_debug_impl(&dword_1D4171000, v21, OS_LOG_TYPE_DEBUG, "Rendering inline sketch tile: %@, %@", buf, 0x16u);
          }

          v22 = dispatch_semaphore_create(0);
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v48 = __Block_byref_object_copy__81;
          v49 = __Block_byref_object_dispose__81;
          v50 = 0;
          v23 = *(a1 + 32);
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __122__ICAttachmentInlineDrawingModel_PreviewGeneration__generateImageForAttachment_fromDrawing_fullResolution_appearanceInfo___block_invoke_18;
          v44[3] = &unk_1E84693C0;
          v46 = buf;
          v24 = v22;
          v45 = v24;
          [v16 renderDrawing:v23 clippedToStrokeSpaceRect:v44 scale:v9 completion:{v19, v11, v15, 1.0}];
          v25 = v11;
          dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
          v26 = v10;
          CGAffineTransformMakeScale(&v43, sx, sx);
          v27 = v9;
          v55.origin.x = v9;
          v55.origin.y = v19 - v10;
          v28 = v25;
          v55.size.width = v25;
          v29 = v15;
          v55.size.height = v15;
          v56 = CGRectApplyAffineTransform(v55, &v43);
          x = v56.origin.x;
          width = v56.size.width;
          height = v56.size.height;
          v33 = [*(*&buf[8] + 40) ic_CGImage];
          v57.size.height = ceil(height);
          v57.size.width = ceil(width);
          v57.origin.x = floor(x);
          v42 = v42 - v57.size.height;
          v57.origin.y = v42 + 1.0;
          CGContextDrawImage(v18, v57, v33);

          v10 = v26;
          v12 = v40;
          v9 = v27;
          v11 = v28;
          v15 = v29;
          _Block_object_dispose(buf, 8);

          objc_autoreleasePoolPop(v20);
          v58.origin.x = v9;
          v58.origin.y = v10;
          v58.size.width = v28;
          v58.size.height = v40;
          v19 = v19 + 256.0;
        }

        while (v19 < CGRectGetMaxY(v58));
      }

      Image = CGBitmapContextCreateImage(v18);
      if (Image)
      {
        v37 = [MEMORY[0x1E69DCAB8] ic_imageWithCGImage:Image];
        v38 = *(*(a1 + 48) + 8);
        v39 = *(v38 + 40);
        *(v38 + 40) = v37;

        CFRelease(Image);
      }

      CGContextRelease(v18);
    }
  }
}

void __122__ICAttachmentInlineDrawingModel_PreviewGeneration__generateImageForAttachment_fromDrawing_fullResolution_appearanceInfo___block_invoke_18(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __95__ICAttachmentInlineDrawingModel_PreviewGeneration__generatePreviewsForAttachment_fromDrawing___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__81;
    v45 = __Block_byref_object_dispose__81;
    v46 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__81;
    v39 = __Block_byref_object_dispose__81;
    v2 = [*(a1 + 40) previewImages];
    v40 = [v2 mutableCopy];

    v3 = MEMORY[0x1E69B7678];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __95__ICAttachmentInlineDrawingModel_PreviewGeneration__generatePreviewsForAttachment_fromDrawing___block_invoke_2;
    v29[3] = &unk_1E846E608;
    v4 = *(a1 + 40);
    v34 = *(a1 + 48);
    v30 = v4;
    v31 = *(a1 + 32);
    v32 = &v41;
    v33 = &v35;
    [v3 enumerateAppearanceTypesUsingBlock:v29];
    v5 = v42[5];
    if (v5)
    {
      v6 = *(a1 + 40);
      v7 = [MEMORY[0x1E69B7680] fallbackImageUTI];
      v8 = [v5 ic_imageDataWithUTType:v7];
      [v6 writeFallbackImageData:v8];
    }

    if ([v36[5] count])
    {
      [*(a1 + 40) removePreviewImages:v36[5]];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v9 = v36[5];
      v10 = [v9 countByEnumeratingWithState:&v25 objects:v47 count:16];
      if (v10)
      {
        v11 = *v26;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v26 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v25 + 1) + 8 * i);
            v14 = [*(a1 + 40) managedObjectContext];
            [v14 deleteObject:v13];
          }

          v10 = [v9 countByEnumeratingWithState:&v25 objects:v47 count:16];
        }

        while (v10);
      }
    }

    v15 = [MEMORY[0x1E695DF00] date];
    [*(a1 + 40) setPreviewUpdateDate:v15];

    [*(a1 + 40) updateChangeCountWithReason:@"Generated previews from drawing"];
    _Block_object_dispose(&v35, 8);

    _Block_object_dispose(&v41, 8);
  }

  else
  {
    v16 = TSUCreateRGBABitmapContext();
    if (v16)
    {
      v17 = v16;
      Image = CGBitmapContextCreateImage(v16);
      if (Image)
      {
        v19 = Image;
        v20 = [MEMORY[0x1E69DCAB8] ic_imageWithCGImage:Image];
        CFRelease(v19);
        if ([*(a1 + 40) attachmentType] == 10)
        {
          [v20 size];
          [*(a1 + 40) setSizeWidth:?];
          [v20 size];
          [*(a1 + 40) setSizeHeight:v21];
        }

        v22 = *(a1 + 40);
        v23 = [MEMORY[0x1E69B7680] fallbackImageUTI];
        v24 = [v20 ic_imageDataWithUTType:v23];
        [v22 writeFallbackImageData:v24];

        [*(a1 + 40) updateChangeCountWithReason:@"Generated previews from drawing"];
      }

      CGContextRelease(v17);
    }
  }
}

void __95__ICAttachmentInlineDrawingModel_PreviewGeneration__generatePreviewsForAttachment_fromDrawing___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v40 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69B7678] appearanceInfoWithType:a2];
  v5 = (a1 + 32);
  v6 = [*(a1 + 64) generateImageForAttachment:*(a1 + 32) fromDrawing:*(a1 + 40) fullResolution:0 appearanceInfo:v4];
  if ([*(a1 + 32) attachmentType] == 10)
  {
    v7 = [*(a1 + 64) previewImageFromDrawing:*(a1 + 40) fullImage:objc_msgSend(v6 scale:{"ic_CGImage"), 2.0}];
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;
  v9 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __95__ICAttachmentInlineDrawingModel_PreviewGeneration__generatePreviewsForAttachment_fromDrawing___block_invoke_2_cold_1((a1 + 32), v6, v9);
  }

  if (v6)
  {
    if ([*v5 attachmentType] == 10)
    {
      [v6 size];
      [*v5 setSizeWidth:?];
      [v6 size];
      [*v5 setSizeHeight:v10];
      if (v2)
      {
LABEL_9:
        if (!v8)
        {
          goto LABEL_27;
        }

LABEL_13:
        v14 = [ICPreviewDeviceContext sharedContext:v6];
        v15 = [v14 deviceInfoScalable:1];

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        obj = v15;
        v16 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v36;
          v33 = *v36;
          do
          {
            v19 = 0;
            do
            {
              if (*v36 != v18)
              {
                objc_enumerationMutation(obj);
              }

              v20 = *v5;
              [*(*(&v35 + 1) + 8 * v19) scale];
              v21 = [v20 updateAttachmentPreviewImageWithImage:v8 scale:v2 appearanceType:1 scaleWhenDrawing:0 metadata:0 sendNotification:?];
              if (v21)
              {
                [*(*(*(a1 + 56) + 8) + 40) removeObject:v21];
                if ([*(a1 + 32) attachmentType] == 9)
                {
                  [v21 setVersion:{objc_msgSend(objc_opt_class(), "drawingPreviewVersion")}];
                  v22 = [*(a1 + 32) drawingModel];
                  v23 = [v22 drawingDocument];
                  v24 = a1;
                  v25 = v8;
                  v26 = v5;
                  v27 = v2;
                  v28 = [v23 maxDocumentVersion];
                  v29 = v28 > [MEMORY[0x1E69B7750] serializationVersion];
                  v2 = v27;
                  v5 = v26;
                  v8 = v25;
                  a1 = v24;
                  v30 = v29;
                  [v21 setVersionOutOfDate:v30];

                  v18 = v33;
                }
              }

              ++v19;
            }

            while (v17 != v19);
            v17 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
          }

          while (v17);
        }

        v6 = v31;
        v4 = v32;
        goto LABEL_27;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    v11 = [ICAttachmentPreviewImageLoader orientedImage:v6 withBackground:1];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    if (!v8)
    {
      goto LABEL_27;
    }

    goto LABEL_13;
  }

LABEL_27:
}

uint64_t __81__ICAttachmentInlineDrawingModel_PreviewGeneration__generatePreviewsInOperation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newDrawingFromMergeableData];
  *(*(*(a1 + 40) + 8) + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2);
}

void __63__ICAttachmentInlineDrawingModel_UI__actuallyMergeWithDrawing___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) attachment];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1D4171000, v3, v4, "Merged PencilKit data changes into %@", v5, v6, v7, v8, v9);
}

void __63__ICAttachmentInlineDrawingModel_UI__actuallyMergeWithDrawing___block_invoke_16_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) attachment];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1D4171000, v3, v4, "No changes to PencilKit data for %@", v5, v6, v7, v8, v9);
}

void __67__ICAttachmentInlineDrawingModel_UI__titleQuery_didUpdateWithItem___block_invoke_cold_1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1D4171000, v2, v3, "Title query updated title for %@", v4, v5, v6, v7, v8);
}

void __95__ICAttachmentInlineDrawingModel_PreviewGeneration__generatePreviewsForAttachment_fromDrawing___block_invoke_2_cold_1(id *a1, void *a2, NSObject *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [*a1 shortLoggingDescription];
  [a2 size];
  v7 = v6;
  [a2 size];
  v9 = 138412802;
  v10 = v5;
  v11 = 2048;
  v12 = v7;
  v13 = 2048;
  v14 = v8;
  _os_log_debug_impl(&dword_1D4171000, a3, OS_LOG_TYPE_DEBUG, "Generated inline sketch image: %@ => %g %g", &v9, 0x20u);
}

@end