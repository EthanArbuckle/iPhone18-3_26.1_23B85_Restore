@interface IMImagePreviewGenerator
+ (BOOL)_getUncroppedSizeForImageAtURL:(id)l scale:(double)scale withImageSizeInPx:(CGSize)px maximumSizeInPx:(CGSize)inPx minimumSizeInPx:(CGSize)sizeInPx previewSize:(CGSize *)size senderContext:(id)context;
+ (CGImage)_newBlastdoorPreviewForFileAtURL:(id)l senderContext:(id)context maxPxWidth:(double)width scale:(double)scale isScreenshot:(BOOL *)screenshot isMonoskiAsset:(BOOL *)asset stickerEffect:(id *)effect error:(id *)self0;
+ (CGImage)_newCroppedAndScaledImageWithImageSource:(CGImageSource *)source withPreviewConstraints:(IMPreviewConstraints *)constraints;
+ (CGImage)newPreviewFromSourceURL:(id)l senderContext:(id)context withPreviewConstraints:(IMPreviewConstraints *)constraints error:(id *)error;
+ (id)generateAndPersistPreviewFromSourceURL:(id)l senderContext:(id)context balloonBundleID:(id)d withPreviewConstraints:(IMPreviewConstraints *)constraints outSize:(CGSize *)size error:(id *)error;
@end

@implementation IMImagePreviewGenerator

+ (CGImage)newPreviewFromSourceURL:(id)l senderContext:(id)context withPreviewConstraints:(IMPreviewConstraints *)constraints error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  lCopy = l;
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v20 = 138412546;
      *&v20[4] = self;
      *&v20[12] = 2112;
      *&v20[14] = lCopy;
      _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Generating preview for class %@ from sourceURL %@", v20, 0x16u);
    }
  }

  if (!lCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *v20 = 0;
        _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_INFO, "IMImagePreviewGenerator - sourceURL is nil", v20, 2u);
      }
    }

    if (error)
    {
      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:5 userInfo:0];
      goto LABEL_20;
    }

LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

  v13 = CGImageSourceCreateWithURL(lCopy, 0);
  if (!v13)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *v20 = 138412290;
        *&v20[4] = lCopy;
        _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "IMImagePreviewGenerator - Unable to generate image ref for %@", v20, 0xCu);
      }
    }

    if (error)
    {
      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:3 userInfo:0];
LABEL_20:
      v15 = 0;
      *error = v17;
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v14 = *&constraints->var1.height;
  *v20 = *&constraints->var0;
  *&v20[16] = v14;
  v21 = *&constraints->var3;
  v15 = [self _newCroppedAndScaledImageWithImageSource:v13 withPreviewConstraints:v20];
  CFRelease(v13);
LABEL_22:

  return v15;
}

+ (CGImage)_newCroppedAndScaledImageWithImageSource:(CGImageSource *)source withPreviewConstraints:(IMPreviewConstraints *)constraints
{
  v25 = *MEMORY[0x1E69E9840];
  [IMImageUtilities imageSourcePxSize:?];
  v8 = v7;
  v10 = v9;
  var0 = constraints->var0;
  v12 = fmax(v8 / v9, 0.75);
  if (v12 > 1.77777778)
  {
    v12 = 1.77777778;
  }

  v13 = round(var0);
  v14 = round(var0 / v12);
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = IMStringFromCGSize(v8, v10);
      v17 = constraints->var0;
      v18 = IMStringFromCGSize(v13, v14);
      *v23 = 138412802;
      *&v23[4] = v16;
      *&v23[12] = 2048;
      *&v23[14] = v17;
      *&v23[22] = 2112;
      *&v23[24] = v18;
      _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "Generating thumbnail for image with px size %@ maxWidth: %f thumbnailSize %@", v23, 0x20u);
    }
  }

  v19 = [self newThumbnailFillToSize:source imagePxSize:v13 imageSource:v14 scale:{v8, v10, constraints->var2}];
  v20 = *&constraints->var1.height;
  *v23 = *&constraints->var0;
  *&v23[16] = v20;
  v24 = *&constraints->var3;
  v21 = [self newCroppedAndRescaledImageFromImage:v19 constraints:v23 targetPxSize:{v13, v14}];
  if (v19)
  {
    CFRelease(v19);
  }

  return v21;
}

+ (CGImage)_newBlastdoorPreviewForFileAtURL:(id)l senderContext:(id)context maxPxWidth:(double)width scale:(double)scale isScreenshot:(BOOL *)screenshot isMonoskiAsset:(BOOL *)asset stickerEffect:(id *)effect error:(id *)self0
{
  assetCopy = asset;
  v52 = *MEMORY[0x1E69E9840];
  lCopy = l;
  contextCopy = context;
  *&v17 = width;
  *&v18 = scale;
  v19 = [IMAttachmentBlastdoor generateImagePreviewForFileURL:lCopy senderContext:contextCopy maxPixelDimension:&assetCopy + 8 scale:v17 error:v18];
  v20 = *(&assetCopy + 1);
  if (v19 && ([v19 utTypeString], (v21 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(v19, "utTypeString"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "length") == 0, v22, v21, !v23))
  {
    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    utTypeString = [v19 utTypeString];
    [v24 setValue:utTypeString forKey:@"uti_type"];

    v26 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(contextCopy, "isFromMe")}];
    [v24 setValue:v26 forKey:@"is_from_me"];
    v27 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(contextCopy, "isTrustedSender")}];
    [v24 setValue:v27 forKey:@"is_trusted_sender"];
    serviceName = [contextCopy serviceName];
    [v24 setValue:serviceName forKey:@"service"];

    v29 = +[IMMetricsCollector sharedInstance];
    [v29 trackEvent:@"com.apple.Messages.IMMetricsCollectorEventImagePreviewGenerationSuccess" withDictionary:v24];
  }

  else
  {
    v24 = +[IMMetricsCollector sharedInstance];
    [v24 trackEvent:@"com.apple.Messages.IMMetricsCollectorEventImagePreviewGenerationFailure"];
  }

  v30 = +[IMDefaults sharedInstance];
  v31 = [v30 getBoolFromDomain:@"com.apple.imtranscoding.IMTranscoderAgent" forKey:@"failBDPreviewGeneration" defaultValue:0];

  if (v31)
  {
    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        v45 = @"com.apple.imtranscoding.IMTranscoderAgent";
        v46 = 2112;
        v47 = @"failBDPreviewGeneration";
        v48 = 2112;
        v49 = v19;
        v50 = 2112;
        v51 = v20;
        _os_log_impl(&dword_1A85E5000, v32, OS_LOG_TYPE_INFO, "Forcing PreviewGeneration to fail due to default %@ %@. Actual result: image %@ error %@", buf, 0x2Au);
      }
    }

    v33 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMPreviewGenerationErrorDomain" code:14 userInfo:0];
    v20 = v33;
    goto LABEL_16;
  }

  if (!v19)
  {
LABEL_16:
    if (!v20)
    {
      v20 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMPreviewGenerationErrorDomain" code:1 userInfo:0];
    }

    v19 = 0;
    isScreenshot = 0;
    v35 = 0;
    goto LABEL_19;
  }

  image = [v19 image];
  v35 = CGImageRetain([image cgImage]);

  if (+[IMImageUtilities isCroppingAvoidanceEnabled]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    isScreenshot = [v19 isScreenshot];
  }

  else
  {
    isScreenshot = 0;
  }

  *assetCopy = 0;
  if (objc_opt_respondsToSelector())
  {
    *assetCopy = [v19 isMonoskiAsset];
  }

  v39 = +[IMFeatureFlags sharedFeatureFlags];
  isClingEnabled = [v39 isClingEnabled];

  v41 = isClingEnabled ^ 1;
  if (!effect)
  {
    v41 = 1;
  }

  if (v41 & 1) == 0 && (objc_opt_respondsToSelector())
  {
    *effect = [v19 stickerEffect];
  }

LABEL_19:
  if (error && !v35)
  {
    v37 = v20;
    *error = v20;
  }

  if (screenshot)
  {
    *screenshot = isScreenshot;
  }

  return v35;
}

+ (BOOL)_getUncroppedSizeForImageAtURL:(id)l scale:(double)scale withImageSizeInPx:(CGSize)px maximumSizeInPx:(CGSize)inPx minimumSizeInPx:(CGSize)sizeInPx previewSize:(CGSize *)size senderContext:(id)context
{
  height = sizeInPx.height;
  width = sizeInPx.width;
  v13 = inPx.height;
  v14 = inPx.width;
  v15 = px.height;
  v16 = px.width;
  lCopy = l;
  contextCopy = context;
  if (![IMImageUtilities shouldCropImageOfSize:v16 maximumSizeInPx:v15 minimumSizeInPx:v14, v13, width, height])
  {
    v31 = 0;
    v30 = 0;
    v22 = [self _newBlastdoorPreviewForFileAtURL:lCopy senderContext:contextCopy maxPxWidth:&v31 + 1 scale:&v31 isScreenshot:0 isMonoskiAsset:&v30 stickerEffect:v14 error:scale];
    v23 = v30;
    if (v22)
    {
      [IMImageUtilities uncroppedPreviewImageSizeFromImageSizeInPx:v16 maximumSizeInPx:v15, v14, v13];
      v25 = v24;
      v27 = v26;
      if (HIBYTE(v31) == 1 || [IMImageUtilities imageIsSubjectLift:v22])
      {
        size->width = v25;
        size->height = v27;
        CGImageRelease(v22);
        v21 = 1;
LABEL_12:

        goto LABEL_13;
      }

      CGImageRelease(v22);
    }

    else
    {
      v28 = IMLogHandleForCategory("IMImagePreviewGenerator");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C5C04(v23, lCopy, v28);
      }
    }

    v21 = 0;
    goto LABEL_12;
  }

  v21 = 0;
LABEL_13:

  return v21;
}

+ (id)generateAndPersistPreviewFromSourceURL:(id)l senderContext:(id)context balloonBundleID:(id)d withPreviewConstraints:(IMPreviewConstraints *)constraints outSize:(CGSize *)size error:(id *)error
{
  v86[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  contextCopy = context;
  dCopy = d;
  v15 = _os_activity_create(&dword_1A85E5000, "com.apple.messages.AttachmentGeneratePreviewImage", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v15, &state);
  if (lCopy && size && error)
  {
    errorCopy = error;
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = lCopy;
        _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "Invoking Blastdoor for image at source URL: %@", buf, 0xCu);
      }
    }

    v17 = MEMORY[0x1E695DFF8];
    v18 = IMSafeTemporaryDirectory();
    path = [v18 path];
    v86[0] = path;
    v86[1] = @"ImagePreview";
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:2];
    v21 = [v17 fileURLWithPathComponents:v20];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:0];

    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    v24 = [v21 URLByAppendingPathComponent:stringGUID isDirectory:0];
    v25 = [v24 URLByAppendingPathExtension:@"ktx"];

    if (!v25)
    {
      if (IMOSLoggingEnabled())
      {
        v61 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = lCopy;
          _os_log_impl(&dword_1A85E5000, v61, OS_LOG_TYPE_INFO, "Failed to get a temporaryPreviewURL for sourceURL: %@", buf, 0xCu);
        }
      }

      [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:6 userInfo:0];
      v25 = 0;
      *error = v60 = 0;
      goto LABEL_88;
    }

    if (![self writesToDisk])
    {
      v60 = 0;
LABEL_88:

      goto LABEL_89;
    }

    v81 = 0;
    var0 = constraints->var0;
    if (constraints->var0 < *"")
    {
      var0 = *"";
    }

    var2 = constraints->var2;
    v79 = 0;
    v80 = 0;
    v28 = [self _newBlastdoorPreviewForFileAtURL:lCopy senderContext:contextCopy maxPxWidth:&v81 + 1 scale:&v81 isScreenshot:&v80 isMonoskiAsset:&v79 stickerEffect:var0 error:var2];
    v72 = v80;
    v29 = v79;
    v71 = v29;
    if (!v28 || v29)
    {
      if (v29)
      {
        v62 = v29;

        goto LABEL_86;
      }

      v62 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"__kIMPreviewGenerationErrorDomain" code:1 userInfo:0];

      if (v62)
      {
        goto LABEL_86;
      }

LABEL_62:
      v62 = 0;
      v25 = 0;
LABEL_87:
      v25 = v25;

      v60 = v25;
      goto LABEL_88;
    }

    image = v28;
    [IMImageUtilities imageRefPxSize:v28];
    v31 = v30;
    v33 = v32;
    v34 = constraints->var0;
    v35 = fmax(v30 / v32, 0.75);
    if (v35 <= 1.77777778)
    {
      v36 = v35;
    }

    else
    {
      v36 = 1.77777778;
    }

    v37 = +[IMImageUtilities isCroppingAvoidanceEnabled];
    v38 = v34 / v36;
    v39 = round(v34);
    v40 = round(v38);
    if (v37)
    {
      if (constraints->var3)
      {
        v40 = v33;
        v39 = v31;
      }

      v41 = [IMImageUtilities newUncroppedPreviewImageFromImage:v28 isScreenshot:HIBYTE(v81) maximumSizeInPx:v39 minimumSizeInPx:v40, constraints->var1.width, constraints->var1.height];
      if (v41)
      {
        goto LABEL_22;
      }
    }

    v42 = *&constraints->var1.height;
    *buf = *&constraints->var0;
    v84 = v42;
    v85 = *&constraints->var3;
    v43 = [self newCroppedAndRescaledImageFromImage:v28 constraints:buf targetPxSize:{v39, v40}];
    v41 = v43;
    if (v43)
    {
LABEL_22:
      v78 = 0;
      v44 = v41;
      v45 = [IMImageUtilities persistPreviewToDiskCache:v41 previewURL:v25 error:&v78];
      v73 = v78;
      if (v45)
      {
        [IMImageUtilities imageRefPxSize:v44];
        v31 = v46;
        v33 = v47;
        uRLByDeletingPathExtension = [v25 URLByDeletingPathExtension];
        v49 = [uRLByDeletingPathExtension URLByAppendingPathExtension:@"plist"];

        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v50 = +[IMFeatureFlags sharedFeatureFlags];
        isClingEnabled = [v50 isClingEnabled];

        if (isClingEnabled && [v72 length] && (objc_msgSend(v72, "isEqualToString:", @"none") & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v52 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v72;
              _os_log_impl(&dword_1A85E5000, v52, OS_LOG_TYPE_INFO, "Sticker had effect: %@", buf, 0xCu);
            }
          }

          [dictionary setObject:v72 forKeyedSubscript:@"stickerEffectType"];
        }

        if (v81 == 1)
        {
          if (IMOSLoggingEnabled())
          {
            v53 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1A85E5000, v53, OS_LOG_TYPE_INFO, "Image was monoski.", buf, 2u);
            }
          }

          v54 = [MEMORY[0x1E696AD98] numberWithBool:v81];
          [dictionary setObject:v54 forKeyedSubscript:@"IMIsMonoskiAssetKey"];
        }

        if (![dictionary count])
        {
          goto LABEL_79;
        }

        if (IMOSLoggingEnabled())
        {
          v55 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A85E5000, v55, OS_LOG_TYPE_INFO, "Writing preview metadata", buf, 2u);
          }
        }

        v77 = 0;
        v56 = [MEMORY[0x1E696AE40] dataWithPropertyList:dictionary format:200 options:0 error:&v77];
        v57 = v77;
        if (v56)
        {
          if ([v56 writeToURL:v49 atomically:1])
          {
            if (IMOSLoggingEnabled())
            {
              v58 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = v49;
                _os_log_impl(&dword_1A85E5000, v58, OS_LOG_TYPE_INFO, "Wrote down preview metadata plist to %@", buf, 0xCu);
              }

LABEL_77:
            }
          }

          else if (IMOSLoggingEnabled())
          {
            v58 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v49;
              _os_log_impl(&dword_1A85E5000, v58, OS_LOG_TYPE_INFO, "Couldn't write down preview metadata plist to %@", buf, 0xCu);
            }

            goto LABEL_77;
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v58 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v57;
            _os_log_impl(&dword_1A85E5000, v58, OS_LOG_TYPE_INFO, "Failed making preview metadata plist %@", buf, 0xCu);
          }

          goto LABEL_77;
        }

LABEL_79:
        v63 = 0;
        v65 = 1;
        goto LABEL_80;
      }

      v43 = v73;
    }

    else
    {
      v44 = 0;
    }

    v73 = v43;
    v63 = [(CGImage *)v43 copy];
    if (IMOSLoggingEnabled())
    {
      v64 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v63;
        _os_log_impl(&dword_1A85E5000, v64, OS_LOG_TYPE_INFO, "IMImagePreviewGenerator - Unable to generate image: error=%@", buf, 0xCu);
      }
    }

    v65 = 0;
LABEL_80:
    CGImageRelease(v44);
    v62 = v63;
    CGImageRelease(image);

    if (v63)
    {
      v66 = 0;
    }

    else
    {
      v66 = v65;
    }

    if (v66 == 1)
    {
      v62 = 0;
      size->width = v31;
      size->height = v33;
      goto LABEL_87;
    }

    if (v63)
    {
LABEL_86:
      v67 = v62;
      v25 = 0;
      *errorCopy = v62;
      goto LABEL_87;
    }

    goto LABEL_62;
  }

  if (IMOSLoggingEnabled())
  {
    v59 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v59, OS_LOG_TYPE_INFO, "Invalid parameters", buf, 2u);
    }
  }

  v60 = 0;
LABEL_89:
  os_activity_scope_leave(&state);

  return v60;
}

@end