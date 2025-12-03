@interface IMAdaptiveImageGlyphPreviewGenerator
+ (id)generateAndPersistPreviewFromSourceURL:(id)l senderContext:(id)context balloonBundleID:(id)d withPreviewConstraints:(IMPreviewConstraints *)constraints outSize:(CGSize *)size error:(id *)error;
@end

@implementation IMAdaptiveImageGlyphPreviewGenerator

+ (id)generateAndPersistPreviewFromSourceURL:(id)l senderContext:(id)context balloonBundleID:(id)d withPreviewConstraints:(IMPreviewConstraints *)constraints outSize:(CGSize *)size error:(id *)error
{
  v42[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  contextCopy = context;
  dCopy = d;
  v15 = _os_activity_create(&dword_1A85E5000, "com.apple.messages.AttachmentGeneratePreviewAdaptiveImageGlyph", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v15, &state);
  v37 = dCopy;
  if (lCopy && size && error)
  {
    v16 = MEMORY[0x1E695DFF8];
    v17 = IMSafeTemporaryDirectory();
    path = [v17 path];
    v42[0] = path;
    v42[1] = @"AdaptiveImageGlyphPreview";
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
    v20 = [v16 fileURLWithPathComponents:v19];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:0];

    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    v23 = [v20 URLByAppendingPathComponent:stringGUID isDirectory:0];
    v24 = [v23 URLByAppendingPathExtension:@"heic"];

    if (v24)
    {
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v41 = lCopy;
          _os_log_impl(&dword_1A85E5000, v25, OS_LOG_TYPE_INFO, "Invoking BlastDoor for adaptive image glyph at source URL: %@", buf, 0xCu);
        }
      }

      v26 = [IMAdaptiveImageGlyphBlastDoor generateEmojiImageAssetFromSourceURL:lCopy senderContext:contextCopy];
      v27 = v26;
      if (v26)
      {
        imageData = [v26 imageData];
        v38 = 0;
        v29 = [imageData writeToURL:v24 options:1 error:&v38];
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
          *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMPreviewGenerationErrorDomain" code:9 userInfo:0];
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
        *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMPreviewGenerationErrorDomain" code:1 userInfo:0];
      }
    }

    else
    {
      v33 = IMLogHandleForCategory("IMAdaptiveImageGlyphPreviewGenerator");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C4D50(lCopy, v33);
      }

      [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:6 userInfo:0];
      *error = v31 = 0;
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