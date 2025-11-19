@interface ICAttachmentSystemPaperModel(PreviewGeneration)
+ (id)generateEmptyImage;
+ (id)generateImageForAttachment:()PreviewGeneration fullResolution:appearanceInfo:;
+ (id)previewImageForAttachment:()PreviewGeneration fullImage:scale:appearanceInfo:;
+ (uint64_t)generatePreviewsForAttachment:()PreviewGeneration paperIdentifier:;
- (uint64_t)generatePreviewsInOperation:()PreviewGeneration;
- (uint64_t)needToGeneratePreviews;
@end

@implementation ICAttachmentSystemPaperModel(PreviewGeneration)

- (uint64_t)needToGeneratePreviews
{
  v56 = *MEMORY[0x1E69E9840];
  if (!+[ICSystemPaperTextAttachment isEnabled])
  {
    return 0;
  }

  v4 = [a1 attachment];
  v5 = [v4 note];
  v6 = [v5 isPasswordProtectedAndLocked];

  if (v6)
  {
    return 0;
  }

  v8 = [a1 attachment];
  v9 = [v8 previewImages];
  if ([v9 count] <= 1)
  {
    goto LABEL_17;
  }

  v10 = [a1 attachment];
  v11 = [v10 previewUpdateDate];
  if (!v11)
  {

LABEL_17:
LABEL_18:

    goto LABEL_19;
  }

  v12 = [a1 attachment];
  v13 = [v12 hasFallbackImage];

  if (!v13)
  {
LABEL_19:
    v7 = 1;
    goto LABEL_20;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v14 = [a1 attachment];
  v15 = [v14 previewImages];

  v16 = [v15 countByEnumeratingWithState:&v41 objects:v55 count:16];
  if (!v16)
  {

    LOBYTE(v19) = 0;
    LOBYTE(v18) = 0;
LABEL_25:
    v8 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = NSStringFromSelector(a2);
      v40 = [a1 attachment];
      v36 = [v40 identifier];
      v37 = [a1 attachment];
      v38 = [v37 previewImages];
      v39 = [v38 count];
      *buf = 138413570;
      v46 = v34;
      v47 = 2112;
      v48 = v35;
      v49 = 2112;
      v50 = v36;
      v51 = 2048;
      *v52 = v39;
      *&v52[8] = 1024;
      *&v52[10] = v18 & 1;
      v53 = 1024;
      v54 = v19 & 1;
      _os_log_debug_impl(&dword_1D4171000, v8, OS_LOG_TYPE_DEBUG, "%@ %@ %@ return 1 previewImages.count %lu hasDefault %d hasDark %d", buf, 0x36u);
    }

    goto LABEL_18;
  }

  v17 = v16;
  v18 = 0;
  v19 = 0;
  v20 = *v42;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v42 != v20)
      {
        objc_enumerationMutation(v15);
      }

      v22 = *(*(&v41 + 1) + 8 * i);
      v18 |= [v22 appearanceType] == 0;
      v19 |= [v22 appearanceType] == 1;
    }

    v17 = [v15 countByEnumeratingWithState:&v41 objects:v55 count:16];
  }

  while (v17);

  if ((v18 & v19 & 1) == 0)
  {
    goto LABEL_25;
  }

  v7 = 0;
LABEL_20:
  v23 = os_log_create("com.apple.notes", "PreviewGeneration");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = NSStringFromSelector(a2);
    v28 = [a1 attachment];
    v29 = [v28 identifier];
    v30 = [a1 attachment];
    v31 = [v30 previewImages];
    v32 = [v31 count];
    *buf = 138413314;
    v46 = v26;
    v47 = 2112;
    v48 = v27;
    v49 = 2112;
    v50 = v29;
    v51 = 1024;
    *v52 = v7;
    *&v52[4] = 2048;
    *&v52[6] = v32;
    _os_log_debug_impl(&dword_1D4171000, v23, OS_LOG_TYPE_DEBUG, "%@ %@ %@ return %d self.attachment.previewImages.count %lu", buf, 0x30u);
  }

  return v7;
}

+ (id)generateEmptyImage
{
  v0 = TSUCreateRGBABitmapContext();
  if (v0)
  {
    v1 = v0;
    CGContextSetRGBFillColor(v0, 1.0, 0.0, 0.0, 1.0);
    v7.size.width = 50.0;
    v7.origin.x = 0.0;
    v7.origin.y = 0.0;
    v7.size.height = 50.0;
    CGContextFillRect(v1, v7);
    Image = CGBitmapContextCreateImage(v1);
    if (Image)
    {
      v3 = Image;
      v4 = [MEMORY[0x1E69DCAB8] ic_imageWithCGImage:Image];
      CFRelease(v3);
    }

    else
    {
      v4 = 0;
    }

    CGContextRelease(v1);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)generateImageForAttachment:()PreviewGeneration fullResolution:appearanceInfo:
{
  v7 = a3;
  v8 = a5;
  v9 = os_log_create("com.apple.notes", "SystemPaper");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [ICAttachmentSystemPaperModel(PreviewGeneration) generateImageForAttachment:v7 fullResolution:v9 appearanceInfo:?];
  }

  v10 = os_log_create("com.apple.notes", "SystemPaper");
  v11 = os_signpost_id_generate(v10);
  v12 = v10;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D4171000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PreviewGeneration", "", buf, 2u);
  }

  v14 = [ICSystemPaperImageGenerator imageGeneratorWithPaperAttachment:v7];
  *buf = 0;
  v28 = buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__37;
  v31 = __Block_byref_object_dispose__37;
  v32 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __108__ICAttachmentSystemPaperModel_PreviewGeneration__generateImageForAttachment_fullResolution_appearanceInfo___block_invoke;
  v22[3] = &unk_1E846B8C8;
  v25 = buf;
  v15 = v14;
  v23 = v15;
  v26 = a4;
  v16 = v8;
  v24 = v16;
  [v16 performAsDefaultAppearance:v22];
  v17 = v13;
  v18 = v17;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *v21 = 0;
    _os_signpost_emit_with_name_impl(&dword_1D4171000, v18, OS_SIGNPOST_INTERVAL_END, v11, "PreviewGeneration", "", v21, 2u);
  }

  v19 = *(v28 + 5);
  _Block_object_dispose(buf, 8);

  return v19;
}

+ (id)previewImageForAttachment:()PreviewGeneration fullImage:scale:appearanceInfo:
{
  v6 = a5;
  v7 = TSUCreateRGBABitmapContext();
  v8 = v7;
  if (a4 && v7)
  {
    if (([v6 isDark] & 1) == 0)
    {
      v9 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:1];
      v10 = [MEMORY[0x1E69DC888] systemBackgroundColor];
      v11 = [v10 resolvedColorWithTraitCollection:v9];
      CGContextSetFillColorWithColor(v8, [v11 CGColor]);

      v20.size.width = 384.0;
      v20.origin.x = 0.0;
      v20.origin.y = 0.0;
      v20.size.height = 384.0;
      CGContextFillRect(v8, v20);
    }

    CGContextTranslateCTM(v8, 30.72, -30.72);
    Width = CGImageGetWidth(a4);
    Height = CGImageGetHeight(a4);
    v21.size.width = 322.56 / Width * Width;
    v21.size.height = 322.56 / Width * Height;
    v21.origin.y = 0.0 - (v21.size.height + -384.0);
    v21.origin.x = 0.0;
    CGContextDrawImage(v8, v21, a4);
    Image = CGBitmapContextCreateImage(v8);
    if (Image)
    {
      v15 = Image;
      v16 = [MEMORY[0x1E69DCAB8] ic_imageWithCGImage:Image];
      CFRelease(v15);
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_10;
  }

  v16 = 0;
  v17 = 0;
  if (v7)
  {
LABEL_10:
    CGContextRelease(v8);
    v17 = v16;
  }

  return v17;
}

+ (uint64_t)generatePreviewsForAttachment:()PreviewGeneration paperIdentifier:
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v8 = [v6 managedObjectContext];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __97__ICAttachmentSystemPaperModel_PreviewGeneration__generatePreviewsForAttachment_paperIdentifier___block_invoke;
  v13[3] = &unk_1E84699F0;
  v9 = v6;
  v14 = v9;
  v10 = v7;
  v16 = &v18;
  v17 = a1;
  v15 = v10;
  [v8 performBlockAndWait:v13];

  v11 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  return v11;
}

- (uint64_t)generatePreviewsInOperation:()PreviewGeneration
{
  v4 = a3;
  if (!+[ICSystemPaperTextAttachment isEnabled])
  {
    goto LABEL_5;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__37;
  v23 = __Block_byref_object_dispose__37;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__37;
  v17 = __Block_byref_object_dispose__37;
  v18 = 0;
  v5 = [a1 attachment];
  v6 = [v5 managedObjectContext];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__ICAttachmentSystemPaperModel_PreviewGeneration__generatePreviewsInOperation___block_invoke;
  v12[3] = &unk_1E8468FF8;
  v12[4] = a1;
  v12[5] = &v19;
  v12[6] = &v13;
  [v6 performBlockAndWait:v12];

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v14[5] path];
  v9 = [v7 fileExistsAtPath:v8];

  if (v9)
  {
    v7 = objc_opt_class();
    v10 = [a1 attachment];
    LOBYTE(v7) = [v7 generatePreviewsForAttachment:v10 paperIdentifier:v20[5]];
  }

  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  if ((v9 & 1) == 0)
  {
LABEL_5:
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

+ (void)generateImageForAttachment:()PreviewGeneration fullResolution:appearanceInfo:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 identifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_1D4171000, a2, OS_LOG_TYPE_DEBUG, "Generating System Paper image for attachment %@", &v4, 0xCu);
}

@end