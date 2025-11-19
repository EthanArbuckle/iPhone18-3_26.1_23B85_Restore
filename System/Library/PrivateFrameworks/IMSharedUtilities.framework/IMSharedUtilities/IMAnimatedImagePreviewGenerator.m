@interface IMAnimatedImagePreviewGenerator
+ (BOOL)validPreviewExistsAtPreviewURL:(id)a3;
+ (id)UTITypes;
+ (id)generateAndPersistPreviewFromSourceURL:(id)a3 senderContext:(id)a4 balloonBundleID:(id)a5 withPreviewConstraints:(IMPreviewConstraints *)a6 outSize:(CGSize *)a7 error:(id *)a8;
@end

@implementation IMAnimatedImagePreviewGenerator

+ (id)UTITypes
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = *MEMORY[0x1E69637D8];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)generateAndPersistPreviewFromSourceURL:(id)a3 senderContext:(id)a4 balloonBundleID:(id)a5 withPreviewConstraints:(IMPreviewConstraints *)a6 outSize:(CGSize *)a7 error:(id *)a8
{
  v108[2] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v78 = a5;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v79 = _os_activity_create(&dword_1A85E5000, "com.apple.messages.AttachmentGeneratePreviewAnimatedImage", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v79, &state);
  if (!v13)
  {
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = objc_opt_class();
        *buf = 138412290;
        *&buf[4] = v39;
        v40 = v39;
        _os_log_impl(&dword_1A85E5000, v38, OS_LOG_TYPE_INFO, "%@ - sourceURL is nil", buf, 0xCu);
      }
    }

    if (a8)
    {
      v41 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:5 userInfo:0];
LABEL_53:
      v37 = 0;
LABEL_54:
      *a8 = v41;
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  v15 = +[IMFeatureFlags sharedFeatureFlags];
  v16 = [v15 isSessionAnimatedImageUnpackerEnabled];

  if (v16)
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = a1;
        _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "%@ generate animated preview using session BlastDoor.", buf, 0xCu);
      }
    }

    v18 = MEMORY[0x1E695DFF8];
    v19 = IMSafeTemporaryDirectory();
    v20 = [v19 path];
    v108[0] = v20;
    v108[1] = @"IMAnimatedImagePreviewGeneratorPreview";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v108 count:2];
    v77 = [v18 fileURLWithPathComponents:v21];

    v22 = [MEMORY[0x1E696AC08] defaultManager];
    [v22 createDirectoryAtURL:v77 withIntermediateDirectories:1 attributes:0 error:0];

    v23 = [MEMORY[0x1E696AEC0] stringGUID];
    v24 = [v77 URLByAppendingPathComponent:v23 isDirectory:0];
    v25 = IMPreviewExtension();
    v26 = [v24 URLByAppendingPathExtension:v25];

    v27 = v14;
    v28 = objc_alloc_init(MEMORY[0x1E69A6170]);
    [v28 startTimingForKey:@"IMAnimatedImagePreviewGenerator_PreviewGenerationTime"];
    v91 = 0;
    v92 = &v91;
    v93 = 0x2020000000;
    v94 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v105 = sub_1A8601FE4;
    v106 = sub_1A86021E0;
    v107 = 0;
    v86 = 0;
    v87 = &v86;
    v88 = 0x3010000000;
    v89 = &unk_1A8980B7F;
    v90 = *MEMORY[0x1E695F060];
    v29 = dispatch_group_create();
    dispatch_group_enter(v29);
    var0 = a6->var0;
    var2 = a6->var2;
    var3 = a6->var3;
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = sub_1A86E2B24;
    v81[3] = &unk_1E782A178;
    v83 = &v91;
    v84 = &v86;
    v85 = buf;
    v33 = v29;
    v82 = v33;
    v34 = v26;
    [IMAttachmentBlastdoor generateAnimatedImagePreview:v13 senderContext:v27 destinationFileURL:v26 maxPixelDimension:200 scale:var3 maxFrameCount:v81 isSticker:var0 withCompletionBlock:var2];
    v35 = dispatch_time(0, 5000000000);
    if (dispatch_group_wait(v33, v35))
    {
      if (!IMOSLoggingEnabled())
      {
        v37 = 0;
        v14 = v27;
        goto LABEL_57;
      }

      v14 = v27;
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *v96 = 0;
        _os_log_impl(&dword_1A85E5000, v36, OS_LOG_TYPE_INFO, "Timed out generating animated image preview.", v96, 2u);
      }
    }

    else
    {
      v54 = vmulq_n_f64(v87[2], a6->var2);
      if (a7)
      {
        *a7 = v54;
      }

      aSizea = v54;
      [v28 stopTimingForKey:@"IMAnimatedImagePreviewGenerator_PreviewGenerationTime"];
      v14 = v27;
      if (IMOSLoggingEnabled())
      {
        v55 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          v56 = *(v92 + 24);
          v57 = *(*&buf[8] + 40);
          v58 = NSStringFromSize(aSizea);
          v59 = v58;
          v60 = @"NO";
          *v96 = 138413058;
          if (v56)
          {
            v60 = @"YES";
          }

          v97 = v60;
          v98 = 2112;
          v99 = v57;
          v100 = 2112;
          v101 = v58;
          v102 = 2112;
          v103 = v28;
          _os_log_impl(&dword_1A85E5000, v55, OS_LOG_TYPE_INFO, "Cache miss on animated image preview generation with success: (%@), error: (%@), outSize: %@ and timing: %@", v96, 0x2Au);

          v14 = v27;
        }
      }

      v61 = +[IMMetricsCollector sharedInstance];
      [v61 trackEvent:@"com.apple.Messages.IMMetricsCollectorEventPreviewCacheMiss"];

      if (*(v92 + 24) == 1)
      {
        v37 = v34;
        goto LABEL_57;
      }

      if (a8)
      {
        v37 = 0;
        *a8 = *(*&buf[8] + 40);
        goto LABEL_57;
      }
    }

    v37 = 0;
LABEL_57:

    _Block_object_dispose(&v86, 8);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v91, 8);
    goto LABEL_71;
  }

  if (IMOSLoggingEnabled())
  {
    v42 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = a1;
      _os_log_impl(&dword_1A85E5000, v42, OS_LOG_TYPE_INFO, "%@ generate animated preview using inefficient BlastDoor.", buf, 0xCu);
    }
  }

  v43 = MEMORY[0x1AC570AA0](@"CKAnimatedImage", @"ChatKit");
  v44 = MEMORY[0x1AC570AA0](@"CKAnimatedImageMediaObject", @"ChatKit");
  v45 = v44;
  if (!v44 || !v43)
  {
    if (IMOSLoggingEnabled())
    {
      v51 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v52 = objc_opt_class();
        *buf = 138412802;
        *&buf[4] = v52;
        *&buf[12] = 2112;
        *&buf[14] = v45;
        *&buf[22] = 2112;
        v105 = v43;
        v53 = v52;
        _os_log_impl(&dword_1A85E5000, v51, OS_LOG_TYPE_INFO, "%@ failed to weak link CKAnimatedImageMediaObjectClass - %@ CKAnimatedImageClass - %@", buf, 0x20u);
      }
    }

    if (a8)
    {
      goto LABEL_52;
    }

    goto LABEL_70;
  }

  v46 = a6->var0;
  v47 = a6->var2;
  if (![(objc_class *)v44 conformsToProtocol:&unk_1F1C42D58])
  {
    if (IMOSLoggingEnabled())
    {
      v62 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        v63 = objc_opt_class();
        *buf = 138412290;
        *&buf[4] = v63;
        v64 = v63;
        _os_log_impl(&dword_1A85E5000, v62, OS_LOG_TYPE_INFO, "%@ CKAnimatedImageMediaObject not conforming to appropriate protocols", buf, 0xCu);
      }
    }

    if (a8)
    {
LABEL_52:
      v41 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:10 userInfo:0];
      goto LABEL_53;
    }

LABEL_70:
    v37 = 0;
    goto LABEL_71;
  }

  v48 = objc_alloc_init(v45);
  v49 = [MEMORY[0x1E696AEC0] stringGUID];
  v37 = [v48 generateAndPersistAnimatedPreviewFromSourceURL:v13 senderContext:v14 forWidth:v49 withTransferGUID:a6->var3 isSticker:v46 / v47];

  if ([v43 conformsToProtocol:&unk_1F1C42F60])
  {
    if (a7)
    {
      if (v37)
      {
        v80 = 0;
        v50 = [v43 animatedImageFromOptimizedBitmapAtFileURL:v37 error:&v80];
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v68 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A85E5000, v68, OS_LOG_TYPE_INFO, "Could not create CKAnimatedImage - previewURL is nil.", buf, 2u);
          }
        }

        v50 = 0;
      }

      [v50 size];
      v70 = v69;
      v72 = v71;
      [v50 scale];
      a7->width = v70 * v73;
      a7->height = v72 * v73;
    }

    goto LABEL_71;
  }

  if (IMOSLoggingEnabled())
  {
    v65 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      v66 = objc_opt_class();
      *buf = 138412290;
      *&buf[4] = v66;
      v67 = v66;
      _os_log_impl(&dword_1A85E5000, v65, OS_LOG_TYPE_INFO, "%@ CKAnimatedImageMediaObject not conforming to appropriate protocols", buf, 0xCu);
    }
  }

  if (a8)
  {
    v41 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:10 userInfo:0];
    goto LABEL_54;
  }

LABEL_71:
  os_activity_scope_leave(&state);

  return v37;
}

+ (BOOL)validPreviewExistsAtPreviewURL:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v7 = [MEMORY[0x1AC570AA0](@"CKAnimatedImage" @"ChatKit")];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end