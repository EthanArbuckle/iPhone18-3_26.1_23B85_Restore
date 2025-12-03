@interface IMWatchfacePreviewGenerator
+ (BOOL)decorateWatchfacePreview:(id)preview andWriteToURL:(id)l imagePxSize:(CGSize *)size;
+ (BOOL)writesToDisk;
+ (Class)greenfieldUtilitiesClass;
+ (id)UTITypes;
+ (id)generateAndPersistPreviewFromSourceURL:(id)l senderContext:(id)context balloonBundleID:(id)d withPreviewConstraints:(IMPreviewConstraints *)constraints outSize:(CGSize *)size error:(id *)error;
@end

@implementation IMWatchfacePreviewGenerator

+ (id)UTITypes
{
  if ([self _isAvailable])
  {
    return &unk_1F1BFABF8;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

+ (BOOL)writesToDisk
{
  v8 = *MEMORY[0x1E69E9840];
  _isAvailable = [self _isAvailable];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = @"NO";
      if (_isAvailable)
      {
        v4 = @"YES";
      }

      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Blastdoor support available for watchfacePreviews: %@", &v6, 0xCu);
    }
  }

  return _isAvailable;
}

+ (Class)greenfieldUtilitiesClass
{
  if (qword_1EB30AD18 != -1)
  {
    sub_1A88C0C70();
  }

  v3 = qword_1EB30AD10;

  return v3;
}

+ (BOOL)decorateWatchfacePreview:(id)preview andWriteToURL:(id)l imagePxSize:(CGSize *)size
{
  v23 = *MEMORY[0x1E69E9840];
  previewCopy = preview;
  lCopy = l;
  *size = *MEMORY[0x1E695F060];
  MEMORY[0x1AC570AA0](@"BlastDoorWatchfacePreview", @"BlastDoor");
  if (objc_opt_isKindOfClass())
  {
    v9 = previewCopy;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  image = [v10 image];
  cgImage = [image cgImage];

  if (cgImage)
  {
    v18 = 0;
    v13 = [IMImageUtilities persistPreviewToDiskCache:cgImage previewURL:lCopy error:&v18];
    v14 = v18;
    if (!v13 && IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v20 = lCopy;
        v21 = 2112;
        v22 = v14;
        _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "IMWatchfacePreviewGenerator - Failed to write decorated image to URL %@: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "IMWatchfacePreviewGenerator - Failed to get image from BlastDoor image", buf, 2u);
      }
    }

    v13 = 0;
  }

  return v13;
}

+ (id)generateAndPersistPreviewFromSourceURL:(id)l senderContext:(id)context balloonBundleID:(id)d withPreviewConstraints:(IMPreviewConstraints *)constraints outSize:(CGSize *)size error:(id *)error
{
  v62[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  contextCopy = context;
  dCopy = d;
  v16 = _os_activity_create(&dword_1A85E5000, "com.apple.messages.AttachmentGeneratePreviewWatchFace", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v16, &state);
  if (lCopy && size && error)
  {
    errorCopy = error;
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "Invoking Blastdoor for image", &buf, 2u);
      }
    }

    v18 = MEMORY[0x1E695DFF8];
    v19 = IMSafeTemporaryDirectory();
    path = [v19 path];
    v62[0] = path;
    v62[1] = @"ImagePreview";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
    v22 = [v18 fileURLWithPathComponents:v21];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:0];

    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    v25 = [v22 URLByAppendingPathComponent:stringGUID isDirectory:0];
    v26 = [v25 URLByAppendingPathExtension:@"ktx"];

    if (v26)
    {
      if ([self _isAvailable])
      {
        v52 = 0;
        v53 = &v52;
        v54 = 0x2020000000;
        v55 = 0;
        *&buf = 0;
        *(&buf + 1) = &buf;
        v58 = 0x3010000000;
        v60 = 0;
        v61 = 0;
        v59 = &unk_1A8980B7F;
        v46 = 0;
        v47 = &v46;
        v48 = 0x3032000000;
        v49 = sub_1A8601E78;
        v50 = sub_1A8602130;
        v51 = 0;
        v27 = dispatch_group_create();
        dispatch_group_enter(v27);
        var0 = constraints->var0;
        var2 = constraints->var2;
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = sub_1A862F994;
        v39[3] = &unk_1E7826950;
        v42 = &v52;
        selfCopy = self;
        v30 = v26;
        v40 = v30;
        p_buf = &buf;
        v44 = &v46;
        v31 = v27;
        v41 = v31;
        [IMAttachmentBlastdoor generatePreview:lCopy senderContext:contextCopy maxPxWidth:v39 scale:var0 withCompletionBlock:var2];
        dispatch_group_wait(v31, 0xFFFFFFFFFFFFFFFFLL);
        if (*(v53 + 24) == 1 && !v47[5])
        {
          *size = *(*(&buf + 1) + 32);
        }

        else
        {

          v32 = v47[5];
          v30 = 0;
          if (v32)
          {
            *errorCopy = v32;
          }
        }

        v26 = v30;

        _Block_object_dispose(&v46, 8);
        _Block_object_dispose(&buf, 8);
        _Block_object_dispose(&v52, 8);
        v34 = v26;
      }

      else
      {
        v34 = 0;
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = stringGUID;
          _os_log_impl(&dword_1A85E5000, v35, OS_LOG_TYPE_INFO, "Failed to get a temporaryPreviewURL %@", &buf, 0xCu);
        }
      }

      [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:12 userInfo:0];
      v26 = 0;
      *errorCopy = v34 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1A85E5000, v33, OS_LOG_TYPE_INFO, "Invalid parameters", &buf, 2u);
      }
    }

    v34 = 0;
  }

  os_activity_scope_leave(&state);

  return v34;
}

@end