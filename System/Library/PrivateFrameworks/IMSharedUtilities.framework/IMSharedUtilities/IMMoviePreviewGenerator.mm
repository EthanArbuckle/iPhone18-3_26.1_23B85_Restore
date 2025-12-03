@interface IMMoviePreviewGenerator
+ (CGImage)newImageWithPlayButtonOverlay:(CGImage *)overlay scale:(double)scale transferGUID:(id)d error:(id *)error;
+ (CGImage)newPreviewFromSourceURL:(id)l senderContext:(id)context withPreviewConstraints:(IMPreviewConstraints *)constraints error:(id *)error;
+ (CGImage)newPreviewFromSourceURL:(id)l senderContext:(id)context withPreviewConstraints:(IMPreviewConstraints *)constraints skipPlayButton:(BOOL)button error:(id *)error;
+ (id)_avAssetForURL:(id)l;
+ (id)fetchUTITypes;
+ (id)generateAndPersistPreviewFromSourceURL:(id)l senderContext:(id)context balloonBundleID:(id)d withPreviewConstraints:(IMPreviewConstraints *)constraints outSize:(CGSize *)size error:(id *)error;
@end

@implementation IMMoviePreviewGenerator

+ (id)fetchUTITypes
{
  audiovisualTypes = [MEMORY[0x1E6988168] audiovisualTypes];
  [audiovisualTypes indexesOfObjectsPassingTest:&unk_1F1BA58A8];

  return MEMORY[0x1EEE66B58](audiovisualTypes, sel_objectsAtIndexes_);
}

+ (CGImage)newImageWithPlayButtonOverlay:(CGImage *)overlay scale:(double)scale transferGUID:(id)d error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  if (error)
  {
    *error = 0;
  }

  v10 = MEMORY[0x1AC570AA0](@"CKMovieMediaObject", @"ChatKit");
  if (!v10 || (v11 = v10, ![v10 conformsToProtocol:&unk_1F1C42B30]))
  {
    v15 = IMOSLoggingEnabled();
    if (d)
    {
      if (v15)
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v21 = 138412546;
          v22 = objc_opt_class();
          v23 = 2112;
          dCopy2 = d;
          _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "%@ failed to weak link CKMovieMediaObjectClass for GUID: %@", &v21, 0x16u);
          if (!error)
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

    if (!error)
    {
      return 0;
    }

LABEL_20:
    v18 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMPreviewGenerationErrorDomain" code:10 userInfo:0];
LABEL_21:
    v19 = v18;
    result = 0;
    *error = v19;
    return result;
  }

  result = CGImageCreateCopy([v11 playButtonPreviewForCGImage:overlay scale:0 isFromMe:scale]);
  if (result)
  {
    return result;
  }

  v13 = IMOSLoggingEnabled();
  if (d)
  {
    if (v13)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v21 = 138412546;
        v22 = objc_opt_class();
        v23 = 2112;
        dCopy2 = d;
        _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "%@ CKMovieMediaObject failed to create stamped preview for GUID: %@", &v21, 0x16u);
        if (!error)
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

  if (error)
  {
LABEL_26:
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:1 userInfo:0];
    goto LABEL_21;
  }

  return 0;
}

+ (CGImage)newPreviewFromSourceURL:(id)l senderContext:(id)context withPreviewConstraints:(IMPreviewConstraints *)constraints error:(id *)error
{
  v6 = *&constraints->var1.height;
  v8[0] = *&constraints->var0;
  v8[1] = v6;
  v9 = *&constraints->var3;
  return [self newPreviewFromSourceURL:l senderContext:context withPreviewConstraints:v8 skipPlayButton:0 error:error];
}

+ (CGImage)newPreviewFromSourceURL:(id)l senderContext:(id)context withPreviewConstraints:(IMPreviewConstraints *)constraints skipPlayButton:(BOOL)button error:(id *)error
{
  buttonCopy = button;
  v40 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LODWORD(v39.a) = 138412546;
      *(&v39.a + 4) = self;
      WORD2(v39.b) = 2112;
      *(&v39.b + 6) = l;
      _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Generating preview for class %@ from sourceURL %@", &v39, 0x16u);
    }
  }

  if (!l)
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

    if (error)
    {
      v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:5 userInfo:0];
      goto LABEL_25;
    }

    return 0;
  }

  v13 = [self _avAssetForURL:l];
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

    if (error)
    {
      v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:3 userInfo:0];
LABEL_25:
      v36 = 0;
      *error = v24;
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

  [self thumbnailFillSizeForWidth:constraints->var0 imageSize:width scale:{height, constraints->var2}];
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
  v34 = *&constraints->var1.height;
  *&v39.a = *&constraints->var0;
  *&v39.c = v34;
  v39.tx = *&constraints->var3;
  v35 = [self newCroppedAndRescaledImageFromImage:v33 constraints:&v39 targetPxSize:{v31, v32}];
  if (v33)
  {
    CFRelease(v33);
  }

  if (([self isAutoloopAsset:v14] | buttonCopy))
  {
    return v35;
  }

  v36 = [self newImageWithPlayButtonOverlay:v35 scale:0 transferGUID:error error:constraints->var2];
  if (v35)
  {
    CFRelease(v35);
  }

  return v36;
}

+ (id)generateAndPersistPreviewFromSourceURL:(id)l senderContext:(id)context balloonBundleID:(id)d withPreviewConstraints:(IMPreviewConstraints *)constraints outSize:(CGSize *)size error:(id *)error
{
  v75[2] = *MEMORY[0x1E69E9840];
  v14 = _os_activity_create(&dword_1A85E5000, "com.apple.messages.AttachmentGeneratePreviewMovie", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v14, &state);

  if (!l || !size || !error)
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

  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = stringGUID;
      _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "Invoking BlastDoor for movie previews for GUID: %@", &buf, 0xCu);
    }
  }

  v17 = MEMORY[0x1E695DFF8];
  v75[0] = [IMSafeTemporaryDirectory() path];
  v75[1] = @"VideoPreview";
  v18 = [v17 fileURLWithPathComponents:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v75, 2)}];
  [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  v19 = [objc_msgSend(v18 URLByAppendingPathComponent:stringGUID isDirectory:{0), "URLByAppendingPathExtension:", @"ktx"}];
  if (v19)
  {
    if ([self writesToDisk])
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
      v49 = stringGUID;
      contextCopy = context;
      v53 = &v65;
      p_buf = &buf;
      v20 = *&constraints->var0;
      v21 = *&constraints->var3;
      v57 = *&constraints->var1.height;
      v56 = v20;
      v58 = v21;
      v55 = &v59;
      selfCopy = self;
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
      var0 = constraints->var0;
      width = constraints->var1.width;
      height = constraints->var1.height;
      var2 = constraints->var2;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = sub_1A862649C;
      v33[3] = &unk_1E7826638;
      v33[5] = &v40;
      v33[6] = &v34;
      v33[4] = v22;
      [IMAttachmentBlastdoor generateMoviePreview:l senderContext:context maxPxWidth:v33 minThumbnailPxSize:var0 scale:width withCompletionBlock:height, var2];
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
          *size = *(*(&buf + 1) + 32);
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
      *error = v29;
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
      *(&buf + 4) = stringGUID;
      _os_log_impl(&dword_1A85E5000, v31, OS_LOG_TYPE_INFO, "Failed to get a temporaryPreviewURL for GUID: %@", &buf, 0xCu);
    }
  }

  v19 = 0;
  *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:6 userInfo:0];
LABEL_28:
  os_activity_scope_leave(&state);
  return v19;
}

+ (id)_avAssetForURL:(id)l
{
  v11 = *MEMORY[0x1E69E9840];
  if (!l || ![l isFileURL])
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

  return [objc_alloc(MEMORY[0x1E6988168]) initWithURL:l options:v6];
}

@end