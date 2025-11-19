@interface IMPreviewGeneratorManager
+ (id)sharedInstance;
- (BOOL)generateAndPersistContactCardPreviewFromSourceURL:(id)a3 previewURL:(id)a4 senderContext:(id)a5 size:(CGSize *)a6 previewConstraints:(IMPreviewConstraints *)a7 error:(id *)a8;
- (BOOL)generateAndPersistMapPreviewFromSourceURL:(id)a3 previewURL:(id)a4 senderContext:(id)a5 size:(CGSize *)a6 previewConstraints:(IMPreviewConstraints *)a7 error:(id *)a8;
- (BOOL)generateAndPersistMetadataFromSourceURL:(id)a3 destinationURL:(id)a4 senderContext:(id)a5 size:(CGSize *)a6 constraints:(IMPreviewConstraints *)a7 error:(id *)a8;
- (BOOL)generateAndPersistPreviewFromSourceURL:(id)a3 previewURL:(id)a4 senderContext:(id)a5 size:(CGSize *)a6 balloonBundleID:(id)a7 previewConstraints:(IMPreviewConstraints *)a8 error:(id *)a9;
- (BOOL)movePreviewToDiskCache:(id)a3 previewURL:(id)a4 error:(id *)a5;
- (BOOL)persistPreviewToDiskCache:(CGImage *)a3 previewURL:(id)a4 error:(id *)a5;
- (CGImage)newPreviewFromSourceURL:(id)a3 senderContext:(id)a4 withPreviewConstraints:(IMPreviewConstraints *)a5 error:(id *)a6;
- (Class)_previewGeneratorClassForSourceURL:(id)a3 previewConstraints:(IMPreviewConstraints *)a4;
- (Class)previewGeneratorClassForUTIType:(id)a3;
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
      v7 = [(__CFString *)v6 UTITypes];
      v8 = [v7 countByEnumeratingWithState:&v33 objects:v48 count:16];
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
              objc_enumerationMutation(v7);
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
              v14 = [(__CFString *)v17 lowercaseString];
              if (v14)
              {
                v18 = [v31 objectForKey:v14];
                v19 = v18 == 0;

                if (v19)
                {
                  [v31 setObject:v11 forKey:v14];
                }

                else if (IMOSLoggingEnabled())
                {
                  v20 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                  {
                    v21 = [v31 objectForKey:v14];
                    *buf = 138412802;
                    v43 = v14;
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

              v14 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
              {
                v15 = [v3 objectForKey:v11];
                *buf = 138412802;
                v43 = v11;
                v44 = 2112;
                v45 = v6;
                v46 = 2112;
                v47 = v15;
                _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Can't register UTIType %@ for class %@. It is already registered for %@. Please file a bug.", buf, 0x20u);
              }
            }

LABEL_27:
            ++v10;
          }

          while (v8 != v10);
          v23 = [v7 countByEnumeratingWithState:&v33 objects:v48 count:16];
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

- (BOOL)generateAndPersistPreviewFromSourceURL:(id)a3 previewURL:(id)a4 senderContext:(id)a5 size:(CGSize *)a6 balloonBundleID:(id)a7 previewConstraints:(IMPreviewConstraints *)a8 error:(id *)a9
{
  v83[2] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v72 = a7;
  v18 = *&a8->var1.height;
  *buf = *&a8->var0;
  *&buf[16] = v18;
  v83[0] = *&a8->var3;
  v19 = [(IMPreviewGeneratorManager *)self _previewGeneratorClassForSourceURL:v15 previewConstraints:buf];
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = v15;
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

    v22 = *&a8->var1.height;
    *buf = *&a8->var0;
    *&buf[16] = v22;
    v83[0] = *&a8->var3;
    v23 = [(IMPreviewGeneratorManager *)self generateAndPersistMapPreviewFromSourceURL:v15 previewURL:v16 senderContext:v17 size:a6 previewConstraints:buf error:a9];
LABEL_17:
    LOBYTE(v26) = v23;
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

    v25 = *&a8->var1.height;
    *buf = *&a8->var0;
    *&buf[16] = v25;
    v83[0] = *&a8->var3;
    v23 = [(IMPreviewGeneratorManager *)self generateAndPersistContactCardPreviewFromSourceURL:v15 previewURL:v16 senderContext:v17 size:a6 previewConstraints:buf error:a9];
    goto LABEL_17;
  }

  v26 = [(objc_class *)v19 generatesPreview];
  if (!v26)
  {
    goto LABEL_25;
  }

  if ([(objc_class *)v19 validPreviewExistsAtPreviewURL:v16])
  {
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v16;
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
    v38 = *&a8->var1.height;
    *buf = *&a8->var0;
    *&buf[16] = v38;
    v83[0] = *&a8->var3;
    v71 = [(objc_class *)v19 generateAndPersistPreviewFromSourceURL:v15 senderContext:v17 balloonBundleID:v72 withPreviewConstraints:buf outSize:&v78 error:&v77];
    v39 = v77;
    v27 = v39;
    v69 = 0;
    if (v71 && !v39)
    {
      v76 = 0;
      v69 = [(IMPreviewGeneratorManager *)self movePreviewToDiskCache:v71 previewURL:v16 error:&v76];
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

      if (a6)
      {
        *a6 = v78;
      }

      v41 = [v71 URLByDeletingPathExtension];
      v67 = [v41 URLByAppendingPathExtension:@"plist"];

      v42 = [v16 URLByDeletingPathExtension];
      v43 = [v42 URLByAppendingPathExtension:@"plist"];

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
        *&buf[14] = v16;
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
    v47 = *&a8->var1.height;
    *buf = *&a8->var0;
    *&buf[16] = v47;
    v83[0] = *&a8->var3;
    v48 = [(objc_class *)v19 newPreviewFromSourceURL:v15 senderContext:v17 withPreviewConstraints:buf error:&v80];
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

    if (a6)
    {
      Width = CGImageGetWidth(v48);
      Height = CGImageGetHeight(v48);
      a6->width = Width;
      a6->height = Height;
    }

    v79 = 0;
    v52 = [(IMPreviewGeneratorManager *)self persistPreviewToDiskCache:v48 previewURL:v16 error:&v79];
    v27 = v79;
    CFRelease(v48);
    if (!v52)
    {
LABEL_89:
      LOBYTE(v26) = 0;
      goto LABEL_90;
    }
  }

LABEL_26:
  if (a8->var4 && [(objc_class *)v19 generatesMetadata])
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

    v68 = [v16 lastPathComponent];
    v75 = 0;
    IMAttachmentFileNameAndExtension(v68, &v75, 0);
    v66 = v75;
    v31 = [(objc_class *)v19 metadataExtension];
    v65 = [v66 stringByAppendingFormat:@"-metadata.%@", v31];

    v32 = [v16 URLByDeletingLastPathComponent];
    v33 = [v32 path];
    v81[0] = v33;
    v81[1] = v65;
    v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:2];

    v63 = [MEMORY[0x1E696AEC0] pathWithComponents:v64];
    v70 = [MEMORY[0x1E695DFF8] fileURLWithPath:v63 isDirectory:0];
    if (v70)
    {
      v34 = [MEMORY[0x1E696AC08] defaultManager];
      v35 = [v70 URLByDeletingLastPathComponent];
      v62 = [v34 createDirectoryAtURL:v35 withIntermediateDirectories:1 attributes:0 error:0];

      if (v62)
      {
LABEL_74:
        v74 = v27;
        v55 = *&a8->var1.height;
        *buf = *&a8->var0;
        *&buf[16] = v55;
        v83[0] = *&a8->var3;
        v56 = [(objc_class *)v19 generateAndPersistMetadataFromSourceURL:v15 senderContext:v17 withPreviewConstraints:buf error:&v74];
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
              if (v26)
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
          LOBYTE(v26) = [(IMPreviewGeneratorManager *)self movePreviewToDiskCache:v56 previewURL:v70 error:&v73];
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

    v26 = 0;
    v27 = v54;
    goto LABEL_74;
  }

LABEL_90:
  if (a9)
  {
    v61 = v27;
    *a9 = v27;
  }

LABEL_18:

  return v26;
}

- (BOOL)generateAndPersistMapPreviewFromSourceURL:(id)a3 previewURL:(id)a4 senderContext:(id)a5 size:(CGSize *)a6 previewConstraints:(IMPreviewConstraints *)a7 error:(id *)a8
{
  v52[2] = *MEMORY[0x1E69E9840];
  v39 = a3;
  v37 = a4;
  v40 = a5;
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

      v19 = [*(*(&v45 + 1) + 8 * v18) integerValue];
      v44 = 0;
      v20 = *&a7->var1.height;
      *buf = *&a7->var0;
      *&buf[16] = v20;
      v50 = *&a7->var3;
      v21 = [IMMapPreviewGenerator newPreviewFromSourceURL:v39 senderContext:v40 withPreviewConstraints:buf interfaceStyle:v19 error:&v44];
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
          *&buf[24] = v19;
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

      if (a6)
      {
        Width = CGImageGetWidth(v21);
        Height = CGImageGetHeight(v21);
        a6->width = Width;
        a6->height = Height;
      }

      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%zd", v19];
      v28 = IMAttachmentPreviewFileURLFromURLWithSuffix(v37, v27);
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
        if (a8)
        {
          v31 = v22;
          *a8 = v22;
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
  v34 = [(IMContactCardPreviewGenerator *)IMMapPreviewGenerator generateContactPlistFrom:v39 previewURL:v37 senderContext:v40 error:&v42];
  v33 = v42;
  v32 = v33 == 0;
  if (a8 && v33)
  {
    v33 = v33;
    v32 = 0;
    *a8 = v33;
  }

LABEL_37:

LABEL_38:
  return v32;
}

- (BOOL)generateAndPersistContactCardPreviewFromSourceURL:(id)a3 previewURL:(id)a4 senderContext:(id)a5 size:(CGSize *)a6 previewConstraints:(IMPreviewConstraints *)a7 error:(id *)a8
{
  v33 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v30 = 0;
  v17 = *&a7->var1.height;
  *buf = *&a7->var0;
  *&buf[16] = v17;
  v32 = *&a7->var3;
  v18 = [IMContactCardPreviewGenerator newPreviewFromSourceURL:v14 previewURL:v15 senderContext:v16 withPreviewConstraints:buf error:&v30];
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
    if (!a8)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (a6)
  {
    Width = CGImageGetWidth(v18);
    Height = CGImageGetHeight(v18);
    a6->width = Width;
    a6->height = Height;
  }

  v29 = 0;
  v22 = [(IMPreviewGeneratorManager *)self persistPreviewToDiskCache:v18 previewURL:v15 error:&v29];
  v21 = v29;
  if (a8)
  {
LABEL_10:
    if (!v22)
    {
      v25 = v21;
      *a8 = v21;
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

- (BOOL)generateAndPersistMetadataFromSourceURL:(id)a3 destinationURL:(id)a4 senderContext:(id)a5 size:(CGSize *)a6 constraints:(IMPreviewConstraints *)a7 error:(id *)a8
{
  v35[3] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = *&a7->var1.height;
  *buf = *&a7->var0;
  *&buf[16] = v16;
  v35[0] = *&a7->var3;
  v17 = [(IMPreviewGeneratorManager *)self _previewGeneratorClassForSourceURL:v13 previewConstraints:buf];
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_INFO, "Generating metadata for source %@ with class %@", buf, 0x16u);
    }
  }

  if (([(objc_class *)v17 generatesMetadata]& 1) != 0)
  {
    v33 = 0;
    v19 = *&a7->var1.height;
    *buf = *&a7->var0;
    *&buf[16] = v19;
    v35[0] = *&a7->var3;
    v20 = [(objc_class *)v17 generateAndPersistMetadataFromSourceURL:v13 senderContext:v15 withPreviewConstraints:buf error:&v33];
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
          *&buf[14] = v14;
          *&buf[22] = 2112;
          *&buf[24] = @"NO";
          LOWORD(v35[0]) = 2112;
          *(v35 + 2) = 0;
          _os_log_impl(&dword_1A85E5000, v26, OS_LOG_TYPE_INFO, "Moving preview metadata from %@ to %@ success %@ error %@", buf, 0x2Au);
        }
      }

      v32 = 0;
      v27 = [(IMPreviewGeneratorManager *)self movePreviewToDiskCache:v20 previewURL:v14 error:&v32];
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
          *&buf[4] = v13;
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

  if (a8)
  {
    v30 = v22;
    *a8 = v22;
  }

  return v27;
}

- (CGImage)newPreviewFromSourceURL:(id)a3 senderContext:(id)a4 withPreviewConstraints:(IMPreviewConstraints *)a5 error:(id *)a6
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = *&a5->var1.height;
  v18 = *&a5->var0;
  v19 = v12;
  v20 = *&a5->var3;
  v13 = [(IMPreviewGeneratorManager *)self _previewGeneratorClassForSourceURL:v10 previewConstraints:&v18];
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

  v15 = *&a5->var1.height;
  v18 = *&a5->var0;
  v19 = v15;
  v20 = *&a5->var3;
  v16 = [(objc_class *)v13 newPreviewFromSourceURL:v10 senderContext:v11 withPreviewConstraints:&v18 error:a6];

  return v16;
}

- (BOOL)persistPreviewToDiskCache:(CGImage *)a3 previewURL:(id)a4 error:(id *)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Persisting preview to disk @ %@", &v13, 0xCu);
    }
  }

  if (IMSupportsASTC())
  {
    v9 = IMCreateASTCImageDataFromCGImageRef(a3);
    v10 = v9;
    if (v9)
    {
      v11 = IMFreeSpaceWriteDataToURL(v9, v7, 1);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = [IMImageUtilities persistCPBitmapWithImage:a3 url:v7];
  }

  if (a5 && (v11 & 1) == 0)
  {
    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:9 userInfo:0];
  }

  return v11;
}

- (BOOL)movePreviewToDiskCache:(id)a3 previewURL:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7 && v8)
  {
    v10 = [MEMORY[0x1E696AC08] defaultManager];
    [v10 removeItemAtURL:v9 error:0];

    v11 = [MEMORY[0x1E696AC08] defaultManager];
    v12 = [v11 moveItemAtURL:v7 toURL:v9 error:a5];
  }

  else
  {
    v13 = IMLogHandleForCategory("IMPreviewGeneratorManager");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C2410(v7, v9, v13);
    }

    v12 = 0;
  }

  return v12;
}

- (Class)_previewGeneratorClassForSourceURL:(id)a3 previewConstraints:(IMPreviewConstraints *)a4
{
  v6 = a3;
  v7 = v6;
  if (a4->var5)
  {
    v8 = objc_opt_class();
  }

  else
  {
    v9 = [v6 lastPathComponent];
    v10 = IMUTITypeForFilename(v9);

    v8 = [(IMPreviewGeneratorManager *)self previewGeneratorClassForUTIType:v10];
    if ([(objc_class *)v8 isEqual:objc_opt_class()]&& [IMImageUtilities imageIsAnimatedSequenceAtFileURL:v7])
    {
      v8 = objc_opt_class();
    }
  }

  v11 = v8;

  return v8;
}

- (Class)previewGeneratorClassForUTIType:(id)a3
{
  v4 = a3;
  v5 = [(IMPreviewGeneratorManager *)self UTITypes];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v6 = objc_opt_class();
    v7 = [(IMPreviewGeneratorManager *)self dynamicTypes];
    v8 = [v4 lowercaseString];
    v9 = [v7 objectForKey:v8];

    v10 = [(IMPreviewGeneratorManager *)self UTITypes];
    v11 = [v10 objectForKey:v9];

    if (v11)
    {
      v6 = v11;
    }
  }

  v12 = v6;

  return v6;
}

@end