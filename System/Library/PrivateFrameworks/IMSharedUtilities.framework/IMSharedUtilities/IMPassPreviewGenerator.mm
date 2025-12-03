@interface IMPassPreviewGenerator
+ (id)UTITypes;
+ (id)_dictionaryRepresentationForColor:(id)color;
+ (id)_dictionaryRepresentationForPassText:(id)text;
+ (id)generateAndPersistMetadataFromSourceURL:(id)l senderContext:(id)context withPreviewConstraints:(IMPreviewConstraints *)constraints error:(id *)error;
+ (id)previewFromSourceURL:(id)l senderContext:(id)context withPreviewConstraints:(IMPreviewConstraints *)constraints error:(id *)error;
+ (id)temporaryDirectory;
@end

@implementation IMPassPreviewGenerator

+ (id)UTITypes
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.pkpass";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)temporaryDirectory
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFF8];
  v3 = IMSafeTemporaryDirectory();
  path = [v3 path];
  v9[0] = path;
  v9[1] = @"PassPreview";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v2 fileURLWithPathComponents:v5];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:0];

  return v6;
}

+ (id)_dictionaryRepresentationForPassText:(id)text
{
  textCopy = text;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  text = [textCopy text];
  if (text)
  {
    CFDictionarySetValue(dictionary, @"text", text);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A88C6068();
  }

  color = [textCopy color];
  v8 = [self _dictionaryRepresentationForColor:color];

  if (v8)
  {
    CFDictionarySetValue(dictionary, @"color", v8);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A88C60F0();
  }

  return dictionary;
}

+ (id)_dictionaryRepresentationForColor:(id)color
{
  colorCopy = color;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = MEMORY[0x1E696AD98];
  [colorCopy red];
  v6 = [v5 numberWithDouble:?];
  if (v6)
  {
    CFDictionarySetValue(dictionary, @"red", v6);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A88C49A8();
  }

  v7 = MEMORY[0x1E696AD98];
  [colorCopy green];
  v8 = [v7 numberWithDouble:?];
  if (v8)
  {
    CFDictionarySetValue(dictionary, @"green", v8);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A88C4A30();
  }

  v9 = MEMORY[0x1E696AD98];
  [colorCopy blue];
  v10 = [v9 numberWithDouble:?];
  if (v10)
  {
    CFDictionarySetValue(dictionary, @"blue", v10);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A88C4AB8();
  }

  v11 = MEMORY[0x1E696AD98];
  [colorCopy alpha];
  v12 = [v11 numberWithDouble:?];
  if (v12)
  {
    CFDictionarySetValue(dictionary, @"alpha", v12);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A88C4B40();
  }

  return dictionary;
}

+ (id)generateAndPersistMetadataFromSourceURL:(id)l senderContext:(id)context withPreviewConstraints:(IMPreviewConstraints *)constraints error:(id *)error
{
  v62 = *MEMORY[0x1E69E9840];
  lCopy = l;
  contextCopy = context;
  v12 = _os_activity_create(&dword_1A85E5000, "com.apple.messages.AttachmentGeneratePreviewWallet", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v12, &state);
  v13 = *&constraints->var1.height;
  *buf = *&constraints->var0;
  *&buf[16] = v13;
  v61 = *&constraints->var3;
  v56 = lCopy;
  v14 = [self previewFromSourceURL:lCopy senderContext:contextCopy withPreviewConstraints:buf error:error];
  if (!v14)
  {
    v57 = 0;
    goto LABEL_61;
  }

  temporaryDirectory = [self temporaryDirectory];
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  v15 = [temporaryDirectory URLByAppendingPathComponent:? isDirectory:?];
  v57 = [v15 URLByAppendingPathExtension:@"plist"];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  backgroundColor = [v14 backgroundColor];
  v18 = [self _dictionaryRepresentationForColor:backgroundColor];

  if (v18)
  {
    CFDictionarySetValue(dictionary, @"backgroundColor", v18);
  }

  NSSelectorFromString(&cfstr_Background.isa);
  if (objc_opt_respondsToSelector())
  {
    v19 = [v14 valueForKeyPath:@"background.image.image"];
    v20 = [v19 dataUsingEncoding:0 error:0];
    if (v20)
    {
      CFDictionarySetValue(dictionary, @"backgroundImage", v20);
    }
  }

  primaryText = [v14 primaryText];

  if (primaryText)
  {
    primaryText2 = [v14 primaryText];
    v23 = [self _dictionaryRepresentationForPassText:primaryText2];

    if (v23)
    {
      CFDictionarySetValue(dictionary, @"primaryText", v23);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A88C4BC8();
    }
  }

  secondaryText = [v14 secondaryText];

  if (secondaryText)
  {
    secondaryText2 = [v14 secondaryText];
    v26 = [self _dictionaryRepresentationForPassText:secondaryText2];

    if (v26)
    {
      CFDictionarySetValue(dictionary, @"secondaryText", v26);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A88C6178();
    }
  }

  tertiaryText = [v14 tertiaryText];

  if (tertiaryText)
  {
    tertiaryText2 = [v14 tertiaryText];
    v29 = [self _dictionaryRepresentationForPassText:tertiaryText2];

    if (v29)
    {
      CFDictionarySetValue(dictionary, @"tertiaryText", v29);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A88C6200();
    }
  }

  headerImage = [v14 headerImage];
  image = [headerImage image];
  v32 = [image dataUsingEncoding:0 error:0];

  v33 = v32;
  if (v33)
  {
    CFDictionarySetValue(dictionary, @"image", v33);
  }

  icon = [v14 icon];
  image2 = [icon image];
  v36 = [image2 dataUsingEncoding:0 error:0];

  v37 = v36;
  if (v37)
  {
    CFDictionarySetValue(dictionary, @"icon", v37);
  }

  if (IMOSLoggingEnabled())
  {
    v38 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = dictionary;
      _os_log_impl(&dword_1A85E5000, v38, OS_LOG_TYPE_INFO, "Writing pass plist %p", buf, 0xCu);
    }
  }

  v58 = 0;
  v39 = [MEMORY[0x1E696AE40] dataWithPropertyList:dictionary format:200 options:0 error:&v58];
  v40 = v58;
  v41 = v40;
  if (v39)
  {
    path = [v57 path];
    v43 = [v39 writeToFile:path atomically:1];

    if (v43)
    {
      if (IMOSLoggingEnabled())
      {
        v44 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          path2 = [v57 path];
          *buf = 138412290;
          *&buf[4] = path2;
          _os_log_impl(&dword_1A85E5000, v44, OS_LOG_TYPE_INFO, "Wrote down pass plist to %@", buf, 0xCu);
        }
      }

      v46 = 0;
      v47 = 0;
      goto LABEL_52;
    }

    if (IMOSLoggingEnabled())
    {
      v49 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        path3 = [v57 path];
        *buf = 138412290;
        *&buf[4] = path3;
        _os_log_impl(&dword_1A85E5000, v49, OS_LOG_TYPE_INFO, "Couldn't write down pass plist to %@", buf, 0xCu);
      }
    }

    v46 = 0;
  }

  else
  {
    v46 = v40;
    if (IMOSLoggingEnabled())
    {
      v48 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v46;
        _os_log_impl(&dword_1A85E5000, v48, OS_LOG_TYPE_INFO, "Failed making plist %@", buf, 0xCu);
      }
    }
  }

  v47 = 1;
LABEL_52:

  if (error && v47 && v46)
  {
    v51 = v46;
    *error = v46;
  }

  if (IMOSLoggingEnabled())
  {
    v52 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = v57;
      *&buf[12] = 2112;
      *&buf[14] = v46;
      _os_log_impl(&dword_1A85E5000, v52, OS_LOG_TYPE_INFO, "Generated metadata to %@ with error: %@", buf, 0x16u);
    }
  }

LABEL_61:
  os_activity_scope_leave(&state);

  return v57;
}

+ (id)previewFromSourceURL:(id)l senderContext:(id)context withPreviewConstraints:(IMPreviewConstraints *)constraints error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  lCopy = l;
  contextCopy = context;
  if (lCopy)
  {
    *&v45 = 0;
    *(&v45 + 1) = &v45;
    v46 = 0x3032000000;
    v47 = sub_1A8602024;
    v48 = sub_1A8602204;
    v49 = 0;
    v10 = MEMORY[0x1E695DFF8];
    v11 = IMSafeTemporaryDirectory();
    path = [v11 path];
    v44[0] = path;
    v44[1] = @"PassPreview";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
    v14 = [v10 fileURLWithPathComponents:v13];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:0];

    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    v17 = [v14 URLByAppendingPathComponent:stringGUID isDirectory:0];
    v18 = [v17 URLByAppendingPathExtension:@"plist"];

    if (v18)
    {
      *&v39 = 0;
      *(&v39 + 1) = &v39;
      v40 = 0x3032000000;
      v41 = sub_1A8602024;
      v42 = sub_1A8602204;
      v43 = 0;
      v19 = dispatch_group_create();
      dispatch_group_enter(v19);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = sub_1A86F8B68;
      v31[3] = &unk_1E7829BE8;
      v33 = &v39;
      v34 = &v45;
      v20 = v19;
      v32 = v20;
      [IMAttachmentBlastdoor generatePassPreview:lCopy senderContext:contextCopy withCompletionBlock:v31];
      v21 = dispatch_time(0, 5000000000);
      if (dispatch_group_wait(v20, v21))
      {
        if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A85E5000, v22, OS_LOG_TYPE_INFO, "Blastdoor validation timed out", buf, 2u);
          }
        }

        if (error)
        {
          [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:12 userInfo:0];
          *error = v23 = 0;
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        if (error)
        {
          v27 = *(*(&v45 + 1) + 40);
          if (v27)
          {
            *error = v27;
          }
        }

        if (IMOSLoggingEnabled())
        {
          v28 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = *(*(&v45 + 1) + 40);
            *buf = 67109378;
            v36 = 0;
            v37 = 2112;
            v38 = v29;
            _os_log_impl(&dword_1A85E5000, v28, OS_LOG_TYPE_INFO, "Blastdoor validation completed, result: %d, err: %@", buf, 0x12u);
          }
        }

        v23 = *(*(&v39 + 1) + 40);
      }

      _Block_object_dispose(&v39, 8);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          LODWORD(v39) = 138412290;
          *(&v39 + 4) = stringGUID;
          _os_log_impl(&dword_1A85E5000, v26, OS_LOG_TYPE_INFO, "Failed to get a temporaryPreviewURL %@", &v39, 0xCu);
        }
      }

      if (error)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:12 userInfo:0];
        *error = v23 = 0;
      }

      else
      {
        v23 = 0;
      }
    }

    _Block_object_dispose(&v45, 8);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        LODWORD(v45) = 138412290;
        *(&v45 + 4) = objc_opt_class();
        v25 = *(&v45 + 4);
        _os_log_impl(&dword_1A85E5000, v24, OS_LOG_TYPE_INFO, "%@ - sourceURL is nil", &v45, 0xCu);
      }
    }

    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:5 userInfo:0];
      *error = v23 = 0;
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

@end