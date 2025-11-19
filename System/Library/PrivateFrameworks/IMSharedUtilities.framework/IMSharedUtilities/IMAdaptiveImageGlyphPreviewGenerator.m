@interface IMAdaptiveImageGlyphPreviewGenerator
+ (id)generateAndPersistPreviewFromSourceURL:(id)a3 senderContext:(id)a4 balloonBundleID:(id)a5 withPreviewConstraints:(IMPreviewConstraints *)a6 outSize:(CGSize *)a7 error:(id *)a8;
@end

@implementation IMAdaptiveImageGlyphPreviewGenerator

+ (id)generateAndPersistPreviewFromSourceURL:(id)a3 senderContext:(id)a4 balloonBundleID:(id)a5 withPreviewConstraints:(IMPreviewConstraints *)a6 outSize:(CGSize *)a7 error:(id *)a8
{
  v42[2] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = _os_activity_create(&dword_1A85E5000, "com.apple.messages.AttachmentGeneratePreviewAdaptiveImageGlyph", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v15, &state);
  v37 = v14;
  if (v12 && a7 && a8)
  {
    v16 = MEMORY[0x1E695DFF8];
    v17 = IMSafeTemporaryDirectory();
    v18 = [v17 path];
    v42[0] = v18;
    v42[1] = @"AdaptiveImageGlyphPreview";
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
    v20 = [v16 fileURLWithPathComponents:v19];

    v21 = [MEMORY[0x1E696AC08] defaultManager];
    [v21 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:0];

    v22 = [MEMORY[0x1E696AEC0] stringGUID];
    v23 = [v20 URLByAppendingPathComponent:v22 isDirectory:0];
    v24 = [v23 URLByAppendingPathExtension:@"heic"];

    if (v24)
    {
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v41 = v12;
          _os_log_impl(&dword_1A85E5000, v25, OS_LOG_TYPE_INFO, "Invoking BlastDoor for adaptive image glyph at source URL: %@", buf, 0xCu);
        }
      }

      v26 = [IMAdaptiveImageGlyphBlastDoor generateEmojiImageAssetFromSourceURL:v12 senderContext:v13];
      v27 = v26;
      if (v26)
      {
        v28 = [v26 imageData];
        v38 = 0;
        v29 = [v28 writeToURL:v24 options:1 error:&v38];
        v30 = v38;
        if (v29)
        {
          v31 = v24;
        }

        else
        {
          v35 = IMLogHandleForCategory("IMAdaptiveImageGlyphPreviewGenerator");
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            sub_1A88C4C50(v24, v30, v35);
          }

          v31 = 0;
          *a8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMPreviewGenerationErrorDomain" code:9 userInfo:0];
        }
      }

      else
      {
        v34 = IMLogHandleForCategory("IMAdaptiveImageGlyphPreviewGenerator");
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C4CD8(v24, v34);
        }

        v31 = 0;
        *a8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMPreviewGenerationErrorDomain" code:1 userInfo:0];
      }
    }

    else
    {
      v33 = IMLogHandleForCategory("IMAdaptiveImageGlyphPreviewGenerator");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C4D50(v12, v33);
      }

      [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:6 userInfo:0];
      *a8 = v31 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v32, OS_LOG_TYPE_INFO, "Invalid parameters", buf, 2u);
      }
    }

    v31 = 0;
  }

  os_activity_scope_leave(&state);

  return v31;
}

@end