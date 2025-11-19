@interface IMMoviePreviewGenerator
+ (CGImage)newImageWithPlayButtonOverlay:(CGImage *)a3 scale:(double)a4 transferGUID:(id)a5 error:(id *)a6;
+ (CGImage)newPreviewFromSourceURL:(id)a3 senderContext:(id)a4 withPreviewConstraints:(IMPreviewConstraints *)a5 error:(id *)a6;
+ (CGImage)newPreviewFromSourceURL:(id)a3 senderContext:(id)a4 withPreviewConstraints:(IMPreviewConstraints *)a5 skipPlayButton:(BOOL)a6 error:(id *)a7;
+ (id)_avAssetForURL:(id)a3;
+ (id)fetchUTITypes;
+ (id)generateAndPersistPreviewFromSourceURL:(id)a3 senderContext:(id)a4 balloonBundleID:(id)a5 withPreviewConstraints:(IMPreviewConstraints *)a6 outSize:(CGSize *)a7 error:(id *)a8;
@end

@implementation IMMoviePreviewGenerator

+ (id)fetchUTITypes
{
  v2 = [MEMORY[0x1E6988168] audiovisualTypes];
  [v2 indexesOfObjectsPassingTest:&unk_1F1BA58A8];

  return MEMORY[0x1EEE66B58](v2, sel_objectsAtIndexes_);
}

+ (CGImage)newImageWithPlayButtonOverlay:(CGImage *)a3 scale:(double)a4 transferGUID:(id)a5 error:(id *)a6
{
  v25 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    *a6 = 0;
  }

  v10 = MEMORY[0x1AC570AA0](@"CKMovieMediaObject", @"ChatKit");
  if (!v10 || (v11 = v10, ![v10 conformsToProtocol:&unk_1F1C42B30]))
  {
    v15 = IMOSLoggingEnabled();
    if (a5)
    {
      if (v15)
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v21 = 138412546;
          v22 = objc_opt_class();
          v23 = 2112;
          v24 = a5;
          _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "%@ failed to weak link CKMovieMediaObjectClass for GUID: %@", &v21, 0x16u);
          if (!a6)
          {
            return 0;
          }

          goto LABEL_20;
        }
      }
    }

    else if (v15)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v21 = 138412290;
        v22 = objc_opt_class();
        _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "%@ failed to weak link CKMovieMediaObjectClass", &v21, 0xCu);
      }
    }

    if (!a6)
    {
      return 0;
    }

LABEL_20:
    v18 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMPreviewGenerationErrorDomain" code:10 userInfo:0];
LABEL_21:
    v19 = v18;
    result = 0;
    *a6 = v19;
    return result;
  }

  result = CGImageCreateCopy([v11 playButtonPreviewForCGImage:a3 scale:0 isFromMe:a4]);
  if (result)
  {
    return result;
  }

  v13 = IMOSLoggingEnabled();
  if (a5)
  {
    if (v13)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v21 = 138412546;
        v22 = objc_opt_class();
        v23 = 2112;
        v24 = a5;
        _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "%@ CKMovieMediaObject failed to create stamped preview for GUID: %@", &v21, 0x16u);
        if (!a6)
        {
          return 0;
        }

        goto LABEL_26;
      }
    }
  }

  else if (v13)
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = 138412290;
      v22 = objc_opt_class();
      _os_log_impl(&dword_1A85E5000, v20, OS_LOG_TYPE_INFO, "%@ CKMovieMediaObject failed to create stamped preview", &v21, 0xCu);
    }
  }

  if (a6)
  {
LABEL_26:
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:1 userInfo:0];
    goto LABEL_21;
  }

  return 0;
}

+ (CGImage)newPreviewFromSourceURL:(id)a3 senderContext:(id)a4 withPreviewConstraints:(IMPreviewConstraints *)a5 error:(id *)a6
{
  v6 = *&a5->var1.height;
  v8[0] = *&a5->var0;
  v8[1] = v6;
  v9 = *&a5->var3;
  return [a1 newPreviewFromSourceURL:a3 senderContext:a4 withPreviewConstraints:v8 skipPlayButton:0 error:a6];
}

+ (CGImage)newPreviewFromSourceURL:(id)a3 senderContext:(id)a4 withPreviewConstraints:(IMPreviewConstraints *)a5 skipPlayButton:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v40 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LODWORD(v39.a) = 138412546;
      *(&v39.a + 4) = a1;
      WORD2(v39.b) = 2112;
      *(&v39.b + 6) = a3;
      _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Generating preview for class %@ from sourceURL %@", &v39, 0x16u);
    }
  }

  if (!a3)
  {
    if (IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        LOWORD(v39.a) = 0;
        _os_log_impl(&dword_1A85E5000, v37, OS_LOG_TYPE_INFO, "IMMoviePreviewgenerator - sourceURL is nil", &v39, 2u);
      }
    }

    if (a7)
    {
      v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:5 userInfo:0];
      goto LABEL_25;
    }

    return 0;
  }

  v13 = [a1 _avAssetForURL:a3];
  v14 = v13;
  if (!v13)
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        LOWORD(v39.a) = 0;
        _os_log_impl(&dword_1A85E5000, v23, OS_LOG_TYPE_INFO, "IMMoviePreviewgenerator - Could not generate AVURLAsset", &v39, 2u);
      }
    }

    if (a7)
    {
      v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:3 userInfo:0];
LABEL_25:
      v36 = 0;
      *a7 = v24;
      return v36;
    }

    return 0;
  }

  v15 = [objc_msgSend(v13 tracksWithMediaType:{*MEMORY[0x1E6987608]), "lastObject"}];
  v16 = v15;
  if (v15)
  {
    [v15 naturalSize];
    v18 = v17;
    v20 = v19;
    [v16 preferredTransform];
    v41.origin.x = *MEMORY[0x1E695EFF8];
    v41.origin.y = *(MEMORY[0x1E695EFF8] + 8);
    v41.size.width = v18;
    v41.size.height = v20;
    v42 = CGRectApplyAffineTransform(v41, &v39);
    width = v42.size.width;
    height = v42.size.height;
  }

  else
  {
    width = *MEMORY[0x1E695F060];
    height = *(MEMORY[0x1E695F060] + 8);
  }

  [a1 thumbnailFillSizeForWidth:a5->var0 imageSize:width scale:{height, a5->var2}];
  v26 = v25;
  v28 = v27;
  v29 = [MEMORY[0x1E6987E68] assetImageGeneratorWithAsset:v14];
  [v29 setAppliesPreferredTrackTransform:1];
  v30 = fmax(v26 / width, v28 / height);
  v31 = ceil(width * v30);
  v32 = ceil(height * v30);
  [v29 setMaximumSize:{v31, v32}];
  *&v39.a = *MEMORY[0x1E6960CC0];
  v39.c = *(MEMORY[0x1E6960CC0] + 16);
  v33 = [v29 copyCGImageAtTime:&v39 actualTime:0 error:0];
  v34 = *&a5->var1.height;
  *&v39.a = *&a5->var0;
  *&v39.c = v34;
  v39.tx = *&a5->var3;
  v35 = [a1 newCroppedAndRescaledImageFromImage:v33 constraints:&v39 targetPxSize:{v31, v32}];
  if (v33)
  {
    CFRelease(v33);
  }

  if (([a1 isAutoloopAsset:v14] | v8))
  {
    return v35;
  }

  v36 = [a1 newImageWithPlayButtonOverlay:v35 scale:0 transferGUID:a7 error:a5->var2];
  if (v35)
  {
    CFRelease(v35);
  }

  return v36;
}

+ (id)generateAndPersistPreviewFromSourceURL:(id)a3 senderContext:(id)a4 balloonBundleID:(id)a5 withPreviewConstraints:(IMPreviewConstraints *)a6 outSize:(CGSize *)a7 error:(id *)a8
{
  v75[2] = *MEMORY[0x1E69E9840];
  v14 = _os_activity_create(&dword_1A85E5000, "com.apple.messages.AttachmentGeneratePreviewMovie", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v14, &state);

  if (!a3 || !a7 || !a8)
  {
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A85E5000, v30, OS_LOG_TYPE_INFO, "Invalid parameters", &buf, 2u);
      }
    }

LABEL_19:
    v19 = 0;
    goto LABEL_28;
  }

  v15 = [MEMORY[0x1E696AEC0] stringGUID];
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "Invoking BlastDoor for movie previews for GUID: %@", &buf, 0xCu);
    }
  }

  v17 = MEMORY[0x1E695DFF8];
  v75[0] = [IMSafeTemporaryDirectory() path];
  v75[1] = @"VideoPreview";
  v18 = [v17 fileURLWithPathComponents:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v75, 2)}];
  [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  v19 = [objc_msgSend(v18 URLByAppendingPathComponent:v15 isDirectory:{0), "URLByAppendingPathExtension:", @"ktx"}];
  if (v19)
  {
    if ([a1 writesToDisk])
    {
      v65 = 0;
      v66 = &v65;
      v67 = 0x2020000000;
      v68 = 0;
      *&buf = 0;
      *(&buf + 1) = &buf;
      v71 = 0x3010000000;
      v73 = 0;
      v74 = 0;
      v72 = &unk_1A8980B7F;
      v59 = 0;
      v60 = &v59;
      v61 = 0x3052000000;
      v62 = sub_1A8601E48;
      v63 = sub_1A8602114;
      v64 = 0;
      cf[0] = MEMORY[0x1E69E9820];
      cf[1] = 3221225472;
      v47 = sub_1A8625AB4;
      v48 = &unk_1E7826610;
      v49 = v15;
      v50 = a4;
      v53 = &v65;
      p_buf = &buf;
      v20 = *&a6->var0;
      v21 = *&a6->var3;
      v57 = *&a6->var1.height;
      v56 = v20;
      v58 = v21;
      v55 = &v59;
      v51 = a1;
      v52 = v19;
      v22 = dispatch_group_create();
      dispatch_group_enter(v22);
      v40 = 0;
      v41 = &v40;
      v42 = 0x3052000000;
      v43 = sub_1A8601E48;
      v44 = sub_1A8602114;
      v45 = 0;
      v34 = 0;
      v35 = &v34;
      v36 = 0x3052000000;
      v37 = sub_1A8601E48;
      v38 = sub_1A8602114;
      v39 = 0;
      var0 = a6->var0;
      width = a6->var1.width;
      height = a6->var1.height;
      var2 = a6->var2;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = sub_1A862649C;
      v33[3] = &unk_1E7826638;
      v33[5] = &v40;
      v33[6] = &v34;
      v33[4] = v22;
      [IMAttachmentBlastdoor generateMoviePreview:a3 senderContext:a4 maxPxWidth:v33 minThumbnailPxSize:var0 scale:width withCompletionBlock:height, var2];
      dispatch_group_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
      v47(cf, v41[5], v35[5]);
      v27 = v41[5];
      if (v27)
      {
        CFRelease(v27);
        v41[5] = 0;
      }

      v28 = v35[5];
      if (v28)
      {
        CFRelease(v28);
        v35[5] = 0;
      }

      CFRelease(cf);
      v29 = v60[5];
      if (*(v66 + 24) == 1)
      {
        if (!v29)
        {
          *a7 = *(*(&buf + 1) + 32);
LABEL_27:
          _Block_object_dispose(&v34, 8);
          _Block_object_dispose(&v40, 8);
          _Block_object_dispose(&v59, 8);
          _Block_object_dispose(&buf, 8);
          _Block_object_dispose(&v65, 8);
          goto LABEL_28;
        }
      }

      else if (!v29)
      {
        v19 = 0;
        goto LABEL_27;
      }

      v19 = 0;
      *a8 = v29;
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  if (IMOSLoggingEnabled())
  {
    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_1A85E5000, v31, OS_LOG_TYPE_INFO, "Failed to get a temporaryPreviewURL for GUID: %@", &buf, 0xCu);
    }
  }

  v19 = 0;
  *a8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:6 userInfo:0];
LABEL_28:
  os_activity_scope_leave(&state);
  return v19;
}

+ (id)_avAssetForURL:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a3 || ![a3 isFileURL])
  {
    return 0;
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *MEMORY[0x1E6987BD8];
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Asset string %@", &v9, 0xCu);
    }
  }

  v6 = IMAVURLAssetOptionsDefault();
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Options dictionary %@", &v9, 0xCu);
    }
  }

  return [objc_alloc(MEMORY[0x1E6988168]) initWithURL:a3 options:v6];
}

@end