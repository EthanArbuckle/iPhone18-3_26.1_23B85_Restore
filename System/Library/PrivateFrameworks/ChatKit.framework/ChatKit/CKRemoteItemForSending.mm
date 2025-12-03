@interface CKRemoteItemForSending
+ (BOOL)hasAppendedVideo:(id)video;
+ (id)_sharedIOSurfaceCIContext;
+ (id)previewQueue;
- (BOOL)isAttachmentTooLarge:(id)large;
- (CKRemoteItemForSending)initWithAttachmentURL:(id)l description:(id)description previewImage:(id)image blockOnPreviewCreation:(BOOL)creation;
- (CKRemoteItemForSending)initWithCoder:(id)coder;
- (CKRemoteItemForSending)initWithMSMessage:(id)message;
- (CKRemoteItemForSending)initWithRichLinkWithURL:(id)l data:(id)data;
- (id)description;
- (id)previewUIImage;
- (void)_setPreviewUIImage:(id)image;
- (void)beginPreviewCreation;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)previewUIImage;
- (void)setPreviewImage:(__IOSurface *)image;
@end

@implementation CKRemoteItemForSending

+ (id)previewQueue
{
  if (previewQueue_onceToken != -1)
  {
    +[CKRemoteItemForSending previewQueue];
  }

  v3 = previewQueue__previewQueue;

  return v3;
}

void __38__CKRemoteItemForSending_previewQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = previewQueue__previewQueue;
  previewQueue__previewQueue = v0;

  [previewQueue__previewQueue setQualityOfService:33];
  v3 = [MEMORY[0x1E696AE30] processInfo];
  v2 = [v3 processorCount];
  [previewQueue__previewQueue setMaxConcurrentOperationCount:2 * v2];
}

+ (BOOL)hasAppendedVideo:(id)video
{
  pathExtension = [video pathExtension];
  v4 = [pathExtension isEqualToString:*MEMORY[0x1E69C0E28]];

  return v4;
}

- (BOOL)isAttachmentTooLarge:(id)large
{
  largeCopy = large;
  if (CKIsRunningInMacCatalyst())
  {
    lastPathComponent = [largeCopy lastPathComponent];
    v5 = IMUTITypeForFilename();

    v6 = *MEMORY[0x1E695DB50];
    v7 = *MEMORY[0x1E695DE98];
    v8 = *MEMORY[0x1E695DD60];
    v9 = *MEMORY[0x1E695DBE8];
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*MEMORY[0x1E695DB50], *MEMORY[0x1E695DE98], *MEMORY[0x1E695DD60], *MEMORY[0x1E695DBE8], 0}];
    v11 = [largeCopy resourceValuesForKeys:v10 error:0];

    v12 = [v11 objectForKey:v9];
    LODWORD(v10) = [v12 BOOLValue];

    if (v10)
    {
      v13 = [v11 objectForKey:v7];
      v14 = [v11 objectForKey:v8];
      unsignedIntegerValue = [v13 unsignedIntegerValue];
      unsignedIntegerValue2 = unsignedIntegerValue - [v14 unsignedIntegerValue];
    }

    else
    {
      v13 = [v11 objectForKey:v6];
      unsignedIntegerValue2 = [v13 unsignedIntegerValue];
    }

    IsSupportedForTranscodeOnSend = IMUTITypeIsSupportedForTranscodeOnSend();
    if (unsignedIntegerValue2 < 0x6400001)
    {
      v19 = 1;
    }

    else
    {
      v19 = IsSupportedForTranscodeOnSend;
    }

    if ((v19 & 1) == 0)
    {
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{largeCopy, @"kCKTransferFileTooLargeAttachmentURLKey", 0}];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"CKTransferFileTooLargeNotification" object:0 userInfo:v20];
    }

    v17 = v19 ^ 1;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (CKRemoteItemForSending)initWithAttachmentURL:(id)l description:(id)description previewImage:(id)image blockOnPreviewCreation:(BOOL)creation
{
  v47 = *MEMORY[0x1E69E9840];
  lCopy = l;
  descriptionCopy = description;
  imageCopy = image;
  v40.receiver = self;
  v40.super_class = CKRemoteItemForSending;
  v13 = [(CKRemoteItemForSending *)&v40 init];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_27;
  }

  if (![(CKRemoteItemForSending *)v13 isAttachmentTooLarge:lCopy])
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [CKRemoteItemForSending hasAppendedVideo:lCopy];
        v17 = @"NO";
        if (v16)
        {
          v17 = @"YES";
        }

        *buf = 138412290;
        v42 = v17;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "has appended video %@", buf, 0xCu);
      }
    }

    if (![CKRemoteItemForSending hasAppendedVideo:lCopy])
    {
      objc_storeStrong(&v14->_attachmentURL, l);
      appendedBundleURL = v14->_appendedBundleURL;
      v14->_appendedBundleURL = 0;

      appendedVideoURL = v14->_appendedVideoURL;
      v14->_appendedVideoURL = 0;
LABEL_18:

      objc_storeStrong(&v14->_attachmentDescription, description);
      v14->_accessedSecurityScope = [(NSURL *)v14->_attachmentURL startAccessingSecurityScopedResource];
      if (imageCopy)
      {
        [(CKRemoteItemForSending *)v14 _setPreviewUIImage:imageCopy];
      }

      else
      {
        [(CKRemoteItemForSending *)v14 beginPreviewCreation];
      }

LABEL_27:
      v38 = v14;
      goto LABEL_28;
    }

    v18 = [objc_alloc(MEMORY[0x1E69C0918]) initWithBundleAtURL:lCopy];
    appendedVideoURL = v18;
    if (v18)
    {
      imagePath = [(__CFString *)v18 imagePath];
      if (imagePath)
      {
        videoPath = [(__CFString *)appendedVideoURL videoPath];
        v22 = videoPath == 0;

        if (!v22)
        {
          v23 = MEMORY[0x1E695DFF8];
          imagePath2 = [(__CFString *)appendedVideoURL imagePath];
          v25 = [v23 fileURLWithPath:imagePath2];
          attachmentURL = v14->_attachmentURL;
          v14->_attachmentURL = v25;

          v27 = MEMORY[0x1E695DFF8];
          videoPath2 = [(__CFString *)appendedVideoURL videoPath];
          v29 = [v27 fileURLWithPath:videoPath2];
          v30 = v14->_appendedVideoURL;
          v14->_appendedVideoURL = v29;

          objc_storeStrong(&v14->_appendedBundleURL, l);
          if (IMOSLoggingEnabled())
          {
            v31 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              v32 = v14->_appendedVideoURL;
              v33 = v14->_appendedBundleURL;
              *buf = 138412546;
              v42 = v32;
              v43 = 2112;
              v44 = v33;
              _os_log_impl(&dword_19020E000, v31, OS_LOG_TYPE_INFO, "appended video URL %@, bundle URL %@", buf, 0x16u);
            }
          }

          goto LABEL_18;
        }
      }
    }

    if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        imagePath3 = [(__CFString *)appendedVideoURL imagePath];
        videoPath3 = [(__CFString *)appendedVideoURL videoPath];
        *buf = 138412802;
        v42 = appendedVideoURL;
        v43 = 2112;
        v44 = imagePath3;
        v45 = 2112;
        v46 = videoPath3;
        _os_log_impl(&dword_19020E000, v35, OS_LOG_TYPE_INFO, "CKRemoteItemForSending. Returning nil videoComplement %@, [videoComplement imagePath] %@, [videoComplement videoPath] %@", buf, 0x20u);
      }
    }
  }

  v38 = 0;
LABEL_28:

  return v38;
}

- (CKRemoteItemForSending)initWithRichLinkWithURL:(id)l data:(id)data
{
  lCopy = l;
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = CKRemoteItemForSending;
  v9 = [(CKRemoteItemForSending *)&v13 init];
  if (v9)
  {
    v10 = [dataCopy copy];
    appendedRichLinkData = v9->_appendedRichLinkData;
    v9->_appendedRichLinkData = v10;

    objc_storeStrong(&v9->_appendedRichLinkURL, l);
  }

  return v9;
}

- (CKRemoteItemForSending)initWithMSMessage:(id)message
{
  messageCopy = message;
  v9.receiver = self;
  v9.super_class = CKRemoteItemForSending;
  v6 = [(CKRemoteItemForSending *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appendedMessage, message);
  }

  return v7;
}

- (void)beginPreviewCreation
{
  v3 = [CKDBFileTransfer alloc];
  attachmentURL = [(CKRemoteItemForSending *)self attachmentURL];
  v5 = [(CKDBFileTransfer *)v3 initWithFileURL:attachmentURL transcoderUserInfo:0 attributionInfo:0 hideAttachment:0];

  attachmentDescription = [(CKRemoteItemForSending *)self attachmentDescription];
  [(CKDBFileTransfer *)v5 setFilename:attachmentDescription];

  [(CKDBFileTransfer *)v5 setTransferState:5];
  [(CKDBFileTransfer *)v5 setPreviewGenerationState:1];
  v7 = +[CKMediaObjectManager sharedInstance];
  filename = [(CKDBFileTransfer *)v5 filename];
  v9 = [v7 classForFilename:filename];

  v10 = +[CKMessageContext selfContext];
  v11 = [[v9 alloc] initWithTransfer:v5 context:v10 forceInlinePreview:1];
  v12 = +[CKUIBehavior sharedBehaviors];
  [v12 previewMaxWidth];
  v14 = v13;

  v15 = +[CKRemoteItemForSending previewQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __46__CKRemoteItemForSending_beginPreviewCreation__block_invoke;
  v17[3] = &unk_1E72EBC38;
  v20 = v14;
  v18 = v11;
  selfCopy = self;
  v16 = v11;
  [v15 addOperationWithBlock:v17];
}

void __46__CKRemoteItemForSending_beginPreviewCreation__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) previewForWidth:1 orientation:*(a1 + 48)];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v4 image];

    v3 = v2;
  }

  else
  {
    v3 = v4;
  }

  *(*(a1 + 40) + 8) = 1;
  v5 = v3;
  [*(a1 + 40) _setPreviewUIImage:v3];
}

- (void)dealloc
{
  if (self->_accessedSecurityScope)
  {
    [(NSURL *)self->_attachmentURL stopAccessingSecurityScopedResource];
  }

  previewImage = self->_previewImage;
  if (previewImage)
  {
    CFRelease(previewImage);
  }

  if (self->_blockSet)
  {
    CGImageBlockSetRelease();
  }

  v4.receiver = self;
  v4.super_class = CKRemoteItemForSending;
  [(CKRemoteItemForSending *)&v4 dealloc];
}

- (void)setPreviewImage:(__IOSurface *)image
{
  previewImage = self->_previewImage;
  if (previewImage != image)
  {
    if (previewImage)
    {
      CFRelease(previewImage);
    }

    self->_previewImage = image;

    CFRetain(image);
  }
}

- (void)_setPreviewUIImage:(id)image
{
  v4 = _setPreviewUIImage___pred_SBFCreateIOSurfaceForImageSpringBoardFoundation;
  imageCopy = image;
  if (v4 != -1)
  {
    [CKRemoteItemForSending _setPreviewUIImage:];
  }

  v7 = 0;
  v6 = _setPreviewUIImage___SBFCreateIOSurfaceForImage(imageCopy, &v7, 1);

  [(CKRemoteItemForSending *)self setPreviewImage:v6];
  [(CKRemoteItemForSending *)self setBlockSet:v7];
}

void *__45__CKRemoteItemForSending__setPreviewUIImage___block_invoke()
{
  result = MEMORY[0x193AF5ED0]("SBFCreateIOSurfaceForImage", @"SpringBoardFoundation");
  _setPreviewUIImage___SBFCreateIOSurfaceForImage = result;
  return result;
}

- (id)description
{
  v2 = @"raw preview";
  if (self->_previewIsFullyRealizedByChatKit)
  {
    v2 = @"fully realized preview";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"CKRemoteItemForSending <%@, %@, %@, %@, %@, %@>", self->_previewImage, self->_attachmentURL, self->_attachmentDescription, v2, self->_appendedVideoURL, self->_appendedBundleURL];
}

+ (id)_sharedIOSurfaceCIContext
{
  if (_sharedIOSurfaceCIContext_onceToken != -1)
  {
    +[CKRemoteItemForSending _sharedIOSurfaceCIContext];
  }

  v3 = _sharedIOSurfaceCIContext_sharedIOSurfaceCIContext;

  return v3;
}

void __51__CKRemoteItemForSending__sharedIOSurfaceCIContext__block_invoke()
{
  v7[3] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695F620]);
  v1 = *MEMORY[0x1E695F860];
  v6[0] = *MEMORY[0x1E695F830];
  v6[1] = v1;
  v7[0] = @"com.apple.chatkit.IOSurfaceCIContext";
  v7[1] = MEMORY[0x1E695E118];
  v6[2] = *MEMORY[0x1E695F838];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v7[2] = DeviceRGB;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v4 = [v0 initWithOptions:v3];
  v5 = _sharedIOSurfaceCIContext_sharedIOSurfaceCIContext;
  _sharedIOSurfaceCIContext_sharedIOSurfaceCIContext = v4;
}

- (id)previewUIImage
{
  if (self->_previewImage)
  {
    v2 = [objc_alloc(MEMORY[0x1E695F658]) initWithIOSurface:self->_previewImage];
    _sharedIOSurfaceCIContext = [objc_opt_class() _sharedIOSurfaceCIContext];
    [v2 extent];
    v4 = [_sharedIOSurfaceCIContext createCGImage:v2 fromRect:?];
    if (v4)
    {
      v5 = v4;
      v6 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v4];
      CGImageRelease(v5);
    }

    else
    {
      v7 = IMLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(CKRemoteItemForSending *)v2 previewUIImage];
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_alloc(MEMORY[0x1E69A8220]) initWithFileURL:self->_attachmentURL];
    [coderCopy encodeObject:v4 forKey:@"CKRemoteItemForSendingAttachmentURLKey"];
    [coderCopy encodeObject:self->_attachmentDescription forKey:@"CKRemoteItemForSendingAttachmentDescriptionKey"];
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_previewIsFullyRealizedByChatKit];
    [coderCopy encodeObject:v5 forKey:@"CKRemoteItemForSendingPreviewIsFullyRealizedByChatKitKey"];

    [coderCopy encodeObject:self->_appendedVideoURL forKey:@"CKRemoteItemForSendingAppendedAttachmentURLKey"];
    [coderCopy encodeObject:self->_appendedBundleURL forKey:@"CKRemoteItemForSendingAppendedBundleURLKey"];
    [coderCopy encodeObject:self->_appendedRichLinkURL forKey:@"CKRemoteItemForSendingAppendedRichLinkURLKey"];
    [coderCopy encodeObject:self->_appendedRichLinkData forKey:@"CKRemoteItemForSendingAppendedRichLinkDataKey"];
    [coderCopy encodeObject:self->_appendedMessage forKey:@"CKRemoteItemForSendingAppendedMessageKey"];
    previewImage = self->_previewImage;
    if (!previewImage)
    {
      goto LABEL_6;
    }

    XPCObject = IOSurfaceCreateXPCObject(previewImage);
    [coderCopy encodeXPCObject:XPCObject forKey:@"CKRemoteItemForSendingPreviewImageKey"];
  }

  else
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_opt_class();
    v4 = NSStringFromClass(v11);
    v12 = objc_opt_class();
    XPCObject = NSStringFromClass(v12);
    xPCObject = [v10 stringWithFormat:@"An %@ can only be encoded with an instance of NSXPCCoder attempting to encode with a %@", v4, XPCObject];;
    v14 = [v8 exceptionWithName:v9 reason:xPCObject userInfo:0];
    IMLogSimulateCrashForException();
  }

LABEL_6:
}

- (CKRemoteItemForSending)initWithCoder:(id)coder
{
  coderCopy = coder;
  v34.receiver = self;
  v34.super_class = CKRemoteItemForSending;
  v5 = [(CKRemoteItemForSending *)&v34 init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CKRemoteItemForSendingAttachmentURLKey"];
      securityScopedResourceURL = [v6 securityScopedResourceURL];
      attachmentURL = v5->_attachmentURL;
      v5->_attachmentURL = securityScopedResourceURL;

      v5->_accessedSecurityScope = [(NSURL *)v5->_attachmentURL startAccessingSecurityScopedResource];
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CKRemoteItemForSendingAttachmentDescriptionKey"];
      attachmentDescription = v5->_attachmentDescription;
      v5->_attachmentDescription = v9;

      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CKRemoteItemForSendingPreviewIsFullyRealizedByChatKitKey"];
      v5->_previewIsFullyRealizedByChatKit = [v11 BOOLValue];

      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CKRemoteItemForSendingAppendedAttachmentURLKey"];
      appendedVideoURL = v5->_appendedVideoURL;
      v5->_appendedVideoURL = v12;

      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CKRemoteItemForSendingAppendedBundleURLKey"];
      appendedBundleURL = v5->_appendedBundleURL;
      v5->_appendedBundleURL = v14;

      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CKRemoteItemForSendingAppendedRichLinkURLKey"];
      appendedRichLinkURL = v5->_appendedRichLinkURL;
      v5->_appendedRichLinkURL = v16;

      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CKRemoteItemForSendingAppendedRichLinkDataKey"];
      appendedRichLinkData = v5->_appendedRichLinkData;
      v5->_appendedRichLinkData = v18;

      v20 = [coderCopy decodeObjectOfClass:NSClassFromString(&cfstr_Msmessage.isa) forKey:@"CKRemoteItemForSendingAppendedMessageKey"];
      appendedMessage = v5->_appendedMessage;
      v5->_appendedMessage = v20;

      v22 = [coderCopy decodeXPCObjectForKey:@"CKRemoteItemForSendingPreviewImageKey"];
      v23 = v22;
      if (v22)
      {
        v24 = IOSurfaceLookupFromXPCObject(v22);
        [(CKRemoteItemForSending *)v5 setPreviewImage:v24];
        if (v24)
        {
          CFRelease(v24);
        }
      }
    }

    else
    {
      v25 = MEMORY[0x1E695DF30];
      v26 = *MEMORY[0x1E695D940];
      v27 = MEMORY[0x1E696AEC0];
      v28 = objc_opt_class();
      v6 = NSStringFromClass(v28);
      v29 = objc_opt_class();
      v23 = NSStringFromClass(v29);
      v30 = [v27 stringWithFormat:@"An %@ can only be decoded with an instance of NSXPCCoder attempting to encode with a %@", v6, v23];;
      v31 = [v25 exceptionWithName:v26 reason:v30 userInfo:0];
      IMLogSimulateCrashForException();
    }

    v32 = v5;
  }

  return v5;
}

- (void)previewUIImage
{
  v6 = *MEMORY[0x1E69E9840];
  [self extent];
  v3 = NSStringFromCGRect(v7);
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "-createCGImage:fromRect: returned nil. Requested rect: %@ – will not return a valid preview UIImage.", &v4, 0xCu);
}

@end