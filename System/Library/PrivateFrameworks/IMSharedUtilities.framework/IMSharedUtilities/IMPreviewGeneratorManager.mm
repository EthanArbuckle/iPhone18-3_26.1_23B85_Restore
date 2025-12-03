@interface IMPreviewGeneratorManager
+ (id)sharedInstance;
- (BOOL)generateAndPersistContactCardPreviewFromSourceURL:(id)l previewURL:(id)rL senderContext:(id)context size:(CGSize *)size previewConstraints:(IMPreviewConstraints *)constraints error:(id *)error;
- (BOOL)generateAndPersistMapPreviewFromSourceURL:(id)l previewURL:(id)rL senderContext:(id)context size:(CGSize *)size previewConstraints:(IMPreviewConstraints *)constraints error:(id *)error;
- (BOOL)generateAndPersistMetadataFromSourceURL:(id)l destinationURL:(id)rL senderContext:(id)context size:(CGSize *)size constraints:(IMPreviewConstraints *)constraints error:(id *)error;
- (BOOL)generateAndPersistPreviewFromSourceURL:(id)l previewURL:(id)rL senderContext:(id)context size:(CGSize *)size balloonBundleID:(id)d previewConstraints:(IMPreviewConstraints *)constraints error:(id *)error;
- (BOOL)movePreviewToDiskCache:(id)cache previewURL:(id)l error:(id *)error;
- (BOOL)persistPreviewToDiskCache:(CGImage *)cache previewURL:(id)l error:(id *)error;
- (CGImage)newPreviewFromSourceURL:(id)l senderContext:(id)context withPreviewConstraints:(IMPreviewConstraints *)constraints error:(id *)error;
- (Class)_previewGeneratorClassForSourceURL:(id)l previewConstraints:(IMPreviewConstraints *)constraints;
- (Class)previewGeneratorClassForUTIType:(id)type;
- (IMPreviewGeneratorManager)init;
@end

@implementation IMPreviewGeneratorManager

- (IMPreviewGeneratorManager)init
{
  v50 = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = IMPreviewGeneratorManager;
  v26 = [(IMPreviewGeneratorManager *)&v41 init];
  if (!v26)
  {
    return v26;
  }

  v2 = IMPreviewGeneratorClasses();
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v2;
  v29 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (!v29)
  {
    goto LABEL_33;
  }

  v28 = *v38;
  inTagClass = *MEMORY[0x1E6963710];
  do
  {
    v4 = 0;
    do
    {
      if (*v38 != v28)
      {
        v5 = v4;
        objc_enumerationMutation(obj);
        v4 = v5;
      }

      v30 = v4;
      v6 = *(*(&v37 + 1) + 8 * v4);
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      uTITypes = [(__CFString *)v6 UTITypes];
      v8 = [uTITypes countByEnumeratingWithState:&v33 objects:v48 count:16];
      if (v8)
      {
        v9 = *v34;
        do
        {
          v10 = 0;
          do
          {
            if (*v34 != v9)
            {
              objc_enumerationMutation(uTITypes);
            }

            v11 = *(*(&v33 + 1) + 8 * v10);
            v12 = [v3 objectForKey:v11];
            v13 = v12 == 0;

            if (v13)
            {
              [v3 setObject:v6 forKey:v11];
              if (!IMUTTypeIsDynamic(v11, v16))
              {
                goto LABEL_27;
              }

              v17 = UTTypeCopyPreferredTagWithClass(v11, inTagClass);
              lowercaseString = [(__CFString *)v17 lowercaseString];
              if (lowercaseString)
              {
                v18 = [v31 objectForKey:lowercaseString];
                v19 = v18 == 0;

                if (v19)
                {
                  [v31 setObject:v11 forKey:lowercaseString];
                }

                else if (IMOSLoggingEnabled())
                {
                  v20 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                  {
                    v21 = [v31 objectForKey:lowercaseString];
                    *buf = 138412802;
                    v43 = lowercaseString;
                    v44 = 2112;
                    v45 = v11;
                    v46 = 2112;
                    v47 = v21;
                    v22 = v21;
                    _os_log_impl(&dword_1A85E5000, v20, OS_LOG_TYPE_INFO, "Can't register extension %@ for UTIType %@. It is already registered for %@. Please file a bug.", buf, 0x20u);
                  }
                }
              }

              if (v17)
              {
                CFRelease(v17);
              }
            }

            else
            {
              if (!IMOSLoggingEnabled())
              {
                goto LABEL_27;
              }

              lowercaseString = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(lowercaseString, OS_LOG_TYPE_INFO))
              {
                v15 = [v3 objectForKey:v11];
                *buf = 138412802;
                v43 = v11;
                v44 = 2112;
                v45 = v6;
                v46 = 2112;
                v47 = v15;
                _os_log_impl(&dword_1A85E5000, lowercaseString, OS_LOG_TYPE_INFO, "Can't register UTIType %@ for class %@. It is already registered for %@. Please file a bug.", buf, 0x20u);
              }
            }

LABEL_27:
            ++v10;
          }

          while (v8 != v10);
          v23 = [uTITypes countByEnumeratingWithState:&v33 objects:v48 count:16];
          v8 = v23;
        }

        while (v23);
      }

      v4 = v30 + 1;
    }

    while (v30 + 1 != v29);
    v29 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
  }

  while (v29);
LABEL_33:

  [(IMPreviewGeneratorManager *)v26 setUTITypes:v3];
  [(IMPreviewGeneratorManager *)v26 setDynamicTypes:v31];
  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v43 = v3;
      _os_log_impl(&dword_1A85E5000, v24, OS_LOG_TYPE_INFO, "The generated UTI type class mapping is: %@", buf, 0xCu);
    }
  }

  return v26;
}

+ (id)sharedInstance
{
  if (qword_1ED8C9938 != -1)
  {
    sub_1A88C23FC();
  }

  v3 = qword_1ED8C9868;

  return v3;
}

- (BOOL)generateAndPersistPreviewFromSourceURL:(id)l previewURL:(id)rL senderContext:(id)context size:(CGSize *)size balloonBundleID:(id)d previewConstraints:(IMPreviewConstraints *)constraints error:(id *)error
{
  v83[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  contextCopy = context;
  dCopy = d;
  v18 = *&constraints->var1.height;
  *buf = *&constraints->var0;
  *&buf[16] = v18;
  v83[0] = *&constraints->var3;
  v19 = [(IMPreviewGeneratorManager *)self _previewGeneratorClassForSourceURL:lCopy previewConstraints:buf];
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = lCopy;
      *&buf[12] = 2112;
      *&buf[14] = v19;
      _os_log_impl(&dword_1A85E5000, v20, OS_LOG_TYPE_INFO, "Generating preview for source %@ with class %@", buf, 0x16u);
    }
  }

  if ([(objc_class *)v19 isEqual:objc_opt_class()])
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v21, OS_LOG_TYPE_INFO, "Going down map generation path", buf, 2u);
      }
    }

    v22 = *&constraints->var1.height;
    *buf = *&constraints->var0;
    *&buf[16] = v22;
    v83[0] = *&constraints->var3;
    v23 = [(IMPreviewGeneratorManager *)self generateAndPersistMapPreviewFromSourceURL:lCopy previewURL:rLCopy senderContext:contextCopy size:size previewConstraints:buf error:error];
LABEL_17:
    LOBYTE(generatesPreview) = v23;
    v27 = 0;
    goto LABEL_18;
  }

  if ([(objc_class *)v19 isEqual:objc_opt_class()])
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v24, OS_LOG_TYPE_INFO, "Going down contact card generation path", buf, 2u);
      }
    }

    v25 = *&constraints->var1.height;
    *buf = *&constraints->var0;
    *&buf[16] = v25;
    v83[0] = *&constraints->var3;
    v23 = [(IMPreviewGeneratorManager *)self generateAndPersistContactCardPreviewFromSourceURL:lCopy previewURL:rLCopy senderContext:contextCopy size:size previewConstraints:buf error:error];
    goto LABEL_17;
  }

  generatesPreview = [(objc_class *)v19 generatesPreview];
  if (!generatesPreview)
  {
    goto LABEL_25;
  }

  if ([(objc_class *)v19 validPreviewExistsAtPreviewURL:rLCopy])
  {
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = rLCopy;
        _os_log_impl(&dword_1A85E5000, v29, OS_LOG_TYPE_INFO, "Preview already exists at %@, skipping generation", buf, 0xCu);
      }
    }

LABEL_25:
    v27 = 0;
    goto LABEL_26;
  }

  if (([(objc_class *)v19 writesToDisk]& 1) != 0)
  {
    v78 = 0;
    v77 = 0;
    v38 = *&constraints->var1.height;
    *buf = *&constraints->var0;
    *&buf[16] = v38;
    v83[0] = *&constraints->var3;
    v71 = [(objc_class *)v19 generateAndPersistPreviewFromSourceURL:lCopy senderContext:contextCopy balloonBundleID:dCopy withPreviewConstraints:buf outSize:&v78 error:&v77];
    v39 = v77;
    v27 = v39;
    v69 = 0;
    if (v71 && !v39)
    {
      v76 = 0;
      v69 = [(IMPreviewGeneratorManager *)self movePreviewToDiskCache:v71 previewURL:rLCopy error:&v76];
      v27 = v76;
      if (IMOSLoggingEnabled())
      {
        v40 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          *&buf[4] = v78.width;
          *&buf[12] = 2048;
          *&buf[14] = v78.height;
          _os_log_impl(&dword_1A85E5000, v40, OS_LOG_TYPE_INFO, "Size for persisted preview is %f-%f", buf, 0x16u);
        }
      }

      if (size)
      {
        *size = v78;
      }

      uRLByDeletingPathExtension = [v71 URLByDeletingPathExtension];
      v67 = [uRLByDeletingPathExtension URLByAppendingPathExtension:@"plist"];

      uRLByDeletingPathExtension2 = [rLCopy URLByDeletingPathExtension];
      v43 = [uRLByDeletingPathExtension2 URLByAppendingPathExtension:@"plist"];

      if ([(IMPreviewGeneratorManager *)self movePreviewToDiskCache:v67 previewURL:v43 error:0]&& IMOSLoggingEnabled())
      {
        v44 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A85E5000, v44, OS_LOG_TYPE_INFO, "Successfully moved preview metadata", buf, 2u);
        }
      }
    }

    if (IMOSLoggingEnabled())
    {
      v45 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = @"NO";
        *buf = 138413058;
        *&buf[4] = v71;
        if (v69)
        {
          v46 = @"YES";
        }

        *&buf[12] = 2112;
        *&buf[14] = rLCopy;
        *&buf[22] = 2112;
        *&buf[24] = v46;
        LOWORD(v83[0]) = 2112;
        *(v83 + 2) = v27;
        _os_log_impl(&dword_1A85E5000, v45, OS_LOG_TYPE_INFO, "Moving preview from %@ to %@ success %@ error %@", buf, 0x2Au);
      }
    }

    if (!v69)
    {
      goto LABEL_89;
    }
  }

  else
  {
    v80 = 0;
    v47 = *&constraints->var1.height;
    *buf = *&constraints->var0;
    *&buf[16] = v47;
    v83[0] = *&constraints->var3;
    v48 = [(objc_class *)v19 newPreviewFromSourceURL:lCopy senderContext:contextCopy withPreviewConstraints:buf error:&v80];
    v49 = v80;
    v27 = v49;
    if (!v48 || v49)
    {
      if (v48)
      {
        CFRelease(v48);
      }

      goto LABEL_89;
    }

    if (size)
    {
      Width = CGImageGetWidth(v48);
      Height = CGImageGetHeight(v48);
      size->width = Width;
      size->height = Height;
    }

    v79 = 0;
    v52 = [(IMPreviewGeneratorManager *)self persistPreviewToDiskCache:v48 previewURL:rLCopy error:&v79];
    v27 = v79;
    CFRelease(v48);
    if (!v52)
    {
LABEL_89:
      LOBYTE(generatesPreview) = 0;
      goto LABEL_90;
    }
  }

LABEL_26:
  if (constraints->var4 && [(objc_class *)v19 generatesMetadata])
  {
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v30, OS_LOG_TYPE_INFO, "Going down metadata generation path", buf, 2u);
      }
    }

    lastPathComponent = [rLCopy lastPathComponent];
    v75 = 0;
    IMAttachmentFileNameAndExtension(lastPathComponent, &v75, 0);
    v66 = v75;
    metadataExtension = [(objc_class *)v19 metadataExtension];
    v65 = [v66 stringByAppendingFormat:@"-metadata.%@", metadataExtension];

    uRLByDeletingLastPathComponent = [rLCopy URLByDeletingLastPathComponent];
    path = [uRLByDeletingLastPathComponent path];
    v81[0] = path;
    v81[1] = v65;
    v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:2];

    v63 = [MEMORY[0x1E696AEC0] pathWithComponents:v64];
    v70 = [MEMORY[0x1E695DFF8] fileURLWithPath:v63 isDirectory:0];
    if (v70)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      uRLByDeletingLastPathComponent2 = [v70 URLByDeletingLastPathComponent];
      v62 = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent2 withIntermediateDirectories:1 attributes:0 error:0];

      if (v62)
      {
LABEL_74:
        v74 = v27;
        v55 = *&constraints->var1.height;
        *buf = *&constraints->var0;
        *&buf[16] = v55;
        v83[0] = *&constraints->var3;
        v56 = [(objc_class *)v19 generateAndPersistMetadataFromSourceURL:lCopy senderContext:contextCopy withPreviewConstraints:buf error:&v74];
        v57 = v74;

        v58 = v70 == 0;
        if (!v56)
        {
          v58 = 1;
        }

        if (v58 || v57)
        {
          v27 = v57;
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v59 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
            {
              v60 = @"NO";
              *buf = 138413058;
              *&buf[4] = v56;
              *&buf[12] = 2112;
              if (generatesPreview)
              {
                v60 = @"YES";
              }

              *&buf[14] = v70;
              *&buf[22] = 2112;
              *&buf[24] = v60;
              LOWORD(v83[0]) = 2112;
              *(v83 + 2) = 0;
              _os_log_impl(&dword_1A85E5000, v59, OS_LOG_TYPE_INFO, "Moving preview metadata from %@ to %@ success %@ error %@", buf, 0x2Au);
            }
          }

          v73 = 0;
          LOBYTE(generatesPreview) = [(IMPreviewGeneratorManager *)self movePreviewToDiskCache:v56 previewURL:v70 error:&v73];
          v27 = v73;
        }

        goto LABEL_90;
      }

      if (IMOSLoggingEnabled())
      {
        v36 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A85E5000, v36, OS_LOG_TYPE_INFO, "Failed to create metadata destination directory", buf, 2u);
        }
      }

      v37 = 9;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v53 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A85E5000, v53, OS_LOG_TYPE_INFO, "Failed to generate preview metadata URL", buf, 2u);
        }
      }

      v37 = 6;
    }

    v54 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:v37 userInfo:0];

    generatesPreview = 0;
    v27 = v54;
    goto LABEL_74;
  }

LABEL_90:
  if (error)
  {
    v61 = v27;
    *error = v27;
  }

LABEL_18:

  return generatesPreview;
}

- (BOOL)generateAndPersistMapPreviewFromSourceURL:(id)l previewURL:(id)rL senderContext:(id)context size:(CGSize *)size previewConstraints:(IMPreviewConstraints *)constraints error:(id *)error
{
  v52[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  contextCopy = context;
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:1];
  v52[0] = v12;
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:2];
  v52[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v14;
  v15 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v15)
  {
    v16 = *v46;
    LOBYTE(v17) = 1;
LABEL_3:
    v18 = 0;
    while (1)
    {
      if (*v46 != v16)
      {
        objc_enumerationMutation(obj);
      }

      if ((v17 & 1) == 0)
      {
        v32 = 0;
        v33 = obj;
        goto LABEL_37;
      }

      integerValue = [*(*(&v45 + 1) + 8 * v18) integerValue];
      v44 = 0;
      v20 = *&constraints->var1.height;
      *buf = *&constraints->var0;
      *&buf[16] = v20;
      v50 = *&constraints->var3;
      v21 = [IMMapPreviewGenerator newPreviewFromSourceURL:lCopy senderContext:contextCopy withPreviewConstraints:buf interfaceStyle:integerValue error:&v44];
      v22 = v44;
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          *&buf[4] = v21;
          *&buf[12] = 2112;
          *&buf[14] = v22;
          *&buf[22] = 2048;
          *&buf[24] = integerValue;
          _os_log_impl(&dword_1A85E5000, v23, OS_LOG_TYPE_INFO, "Got map preview %@ error %@ style %ld", buf, 0x20u);
        }
      }

      if (v21)
      {
        v24 = v22 == 0;
      }

      else
      {
        v24 = 0;
      }

      if (!v24)
      {
        goto LABEL_24;
      }

      if (size)
      {
        Width = CGImageGetWidth(v21);
        Height = CGImageGetHeight(v21);
        size->width = Width;
        size->height = Height;
      }

      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%zd", integerValue];
      v28 = IMAttachmentPreviewFileURLFromURLWithSuffix(rLCopy, v27);
      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *&buf[4] = v21;
          *&buf[12] = 2112;
          *&buf[14] = v28;
          _os_log_impl(&dword_1A85E5000, v29, OS_LOG_TYPE_INFO, "Persisting map preview %@ to %@", buf, 0x16u);
        }
      }

      v43 = 0;
      v30 = [(IMPreviewGeneratorManager *)self persistPreviewToDiskCache:v21 previewURL:v28 error:&v43];
      v22 = v43;

      if (v30)
      {
        v17 = 1;
      }

      else
      {
LABEL_24:
        if (error)
        {
          v31 = v22;
          *error = v22;
        }

        v17 = 0;
        if (!v21)
        {
          goto LABEL_28;
        }
      }

      CFRelease(v21);
LABEL_28:

      if (v15 == ++v18)
      {
        v15 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
        if (v15)
        {
          goto LABEL_3;
        }

        if (!v17)
        {
          v32 = 0;
          goto LABEL_38;
        }

        goto LABEL_34;
      }
    }
  }

LABEL_34:
  v42 = 0;
  v34 = [(IMContactCardPreviewGenerator *)IMMapPreviewGenerator generateContactPlistFrom:lCopy previewURL:rLCopy senderContext:contextCopy error:&v42];
  v33 = v42;
  v32 = v33 == 0;
  if (error && v33)
  {
    v33 = v33;
    v32 = 0;
    *error = v33;
  }

LABEL_37:

LABEL_38:
  return v32;
}

- (BOOL)generateAndPersistContactCardPreviewFromSourceURL:(id)l previewURL:(id)rL senderContext:(id)context size:(CGSize *)size previewConstraints:(IMPreviewConstraints *)constraints error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  contextCopy = context;
  v30 = 0;
  v17 = *&constraints->var1.height;
  *buf = *&constraints->var0;
  *&buf[16] = v17;
  v32 = *&constraints->var3;
  v18 = [IMContactCardPreviewGenerator newPreviewFromSourceURL:lCopy previewURL:rLCopy senderContext:contextCopy withPreviewConstraints:buf error:&v30];
  v19 = v30;
  if (v18)
  {
    v20 = v19 == 0;
  }

  else
  {
    v20 = 0;
  }

  if (!v20)
  {
    v21 = v19;
    v22 = 0;
    if (!error)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (size)
  {
    Width = CGImageGetWidth(v18);
    Height = CGImageGetHeight(v18);
    size->width = Width;
    size->height = Height;
  }

  v29 = 0;
  v22 = [(IMPreviewGeneratorManager *)self persistPreviewToDiskCache:v18 previewURL:rLCopy error:&v29];
  v21 = v29;
  if (error)
  {
LABEL_10:
    if (!v22)
    {
      v25 = v21;
      *error = v21;
    }
  }

LABEL_12:
  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = @"NO";
      *buf = 138412802;
      *&buf[4] = v18;
      *&buf[12] = 2112;
      if (v22)
      {
        v27 = @"YES";
      }

      *&buf[14] = v21;
      *&buf[22] = 2112;
      *&buf[24] = v27;
      _os_log_impl(&dword_1A85E5000, v26, OS_LOG_TYPE_INFO, "Got contact card preview %@ error %@ success %@", buf, 0x20u);
    }
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v22;
}

- (BOOL)generateAndPersistMetadataFromSourceURL:(id)l destinationURL:(id)rL senderContext:(id)context size:(CGSize *)size constraints:(IMPreviewConstraints *)constraints error:(id *)error
{
  v35[3] = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  contextCopy = context;
  v16 = *&constraints->var1.height;
  *buf = *&constraints->var0;
  *&buf[16] = v16;
  v35[0] = *&constraints->var3;
  v17 = [(IMPreviewGeneratorManager *)self _previewGeneratorClassForSourceURL:lCopy previewConstraints:buf];
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = lCopy;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_INFO, "Generating metadata for source %@ with class %@", buf, 0x16u);
    }
  }

  if (([(objc_class *)v17 generatesMetadata]& 1) != 0)
  {
    v33 = 0;
    v19 = *&constraints->var1.height;
    *buf = *&constraints->var0;
    *&buf[16] = v19;
    v35[0] = *&constraints->var3;
    v20 = [(objc_class *)v17 generateAndPersistMetadataFromSourceURL:lCopy senderContext:contextCopy withPreviewConstraints:buf error:&v33];
    v21 = v33;
    v22 = v21;
    if (v20)
    {
      v23 = v21 == 0;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;
    v25 = IMOSLoggingEnabled();
    if (v24)
    {
      if (v25)
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 138413058;
          *&buf[4] = v20;
          *&buf[12] = 2112;
          *&buf[14] = rLCopy;
          *&buf[22] = 2112;
          *&buf[24] = @"NO";
          LOWORD(v35[0]) = 2112;
          *(v35 + 2) = 0;
          _os_log_impl(&dword_1A85E5000, v26, OS_LOG_TYPE_INFO, "Moving preview metadata from %@ to %@ success %@ error %@", buf, 0x2Au);
        }
      }

      v32 = 0;
      v27 = [(IMPreviewGeneratorManager *)self movePreviewToDiskCache:v20 previewURL:rLCopy error:&v32];
      v22 = v32;
    }

    else
    {
      if (v25)
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = lCopy;
          _os_log_impl(&dword_1A85E5000, v29, OS_LOG_TYPE_INFO, "Preview generation failed for: %@", buf, 0xCu);
        }
      }

      v27 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v17;
        _os_log_impl(&dword_1A85E5000, v28, OS_LOG_TYPE_INFO, "Preview generator does not support metadata: %@", buf, 0xCu);
      }
    }

    v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:2 userInfo:0];
    v27 = 0;
  }

  if (error)
  {
    v30 = v22;
    *error = v22;
  }

  return v27;
}

- (CGImage)newPreviewFromSourceURL:(id)l senderContext:(id)context withPreviewConstraints:(IMPreviewConstraints *)constraints error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  lCopy = l;
  contextCopy = context;
  v12 = *&constraints->var1.height;
  v18 = *&constraints->var0;
  v19 = v12;
  v20 = *&constraints->var3;
  v13 = [(IMPreviewGeneratorManager *)self _previewGeneratorClassForSourceURL:lCopy previewConstraints:&v18];
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LODWORD(v18) = 138412290;
      *(&v18 + 4) = v13;
      _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Generate Preview for class: %@", &v18, 0xCu);
    }
  }

  v15 = *&constraints->var1.height;
  v18 = *&constraints->var0;
  v19 = v15;
  v20 = *&constraints->var3;
  v16 = [(objc_class *)v13 newPreviewFromSourceURL:lCopy senderContext:contextCopy withPreviewConstraints:&v18 error:error];

  return v16;
}

- (BOOL)persistPreviewToDiskCache:(CGImage *)cache previewURL:(id)l error:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = lCopy;
      _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Persisting preview to disk @ %@", &v13, 0xCu);
    }
  }

  if (IMSupportsASTC())
  {
    v9 = IMCreateASTCImageDataFromCGImageRef(cache);
    v10 = v9;
    if (v9)
    {
      v11 = IMFreeSpaceWriteDataToURL(v9, lCopy, 1);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = [IMImageUtilities persistCPBitmapWithImage:cache url:lCopy];
  }

  if (error && (v11 & 1) == 0)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:9 userInfo:0];
  }

  return v11;
}

- (BOOL)movePreviewToDiskCache:(id)cache previewURL:(id)l error:(id *)error
{
  cacheCopy = cache;
  lCopy = l;
  v9 = lCopy;
  if (cacheCopy && lCopy)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager removeItemAtURL:v9 error:0];

    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v12 = [defaultManager2 moveItemAtURL:cacheCopy toURL:v9 error:error];
  }

  else
  {
    v13 = IMLogHandleForCategory("IMPreviewGeneratorManager");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C2410(cacheCopy, v9, v13);
    }

    v12 = 0;
  }

  return v12;
}

- (Class)_previewGeneratorClassForSourceURL:(id)l previewConstraints:(IMPreviewConstraints *)constraints
{
  lCopy = l;
  v7 = lCopy;
  if (constraints->var5)
  {
    v8 = objc_opt_class();
  }

  else
  {
    lastPathComponent = [lCopy lastPathComponent];
    v10 = IMUTITypeForFilename(lastPathComponent);

    v8 = [(IMPreviewGeneratorManager *)self previewGeneratorClassForUTIType:v10];
    if ([(objc_class *)v8 isEqual:objc_opt_class()]&& [IMImageUtilities imageIsAnimatedSequenceAtFileURL:v7])
    {
      v8 = objc_opt_class();
    }
  }

  v11 = v8;

  return v8;
}

- (Class)previewGeneratorClassForUTIType:(id)type
{
  typeCopy = type;
  uTITypes = [(IMPreviewGeneratorManager *)self UTITypes];
  v6 = [uTITypes objectForKey:typeCopy];

  if (!v6)
  {
    v6 = objc_opt_class();
    dynamicTypes = [(IMPreviewGeneratorManager *)self dynamicTypes];
    lowercaseString = [typeCopy lowercaseString];
    v9 = [dynamicTypes objectForKey:lowercaseString];

    uTITypes2 = [(IMPreviewGeneratorManager *)self UTITypes];
    v11 = [uTITypes2 objectForKey:v9];

    if (v11)
    {
      v6 = v11;
    }
  }

  v12 = v6;

  return v6;
}

@end