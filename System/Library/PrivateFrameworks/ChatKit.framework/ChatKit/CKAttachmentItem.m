@interface CKAttachmentItem
+ (CGSize)defaultSize;
+ (id)previewSizingQueue;
+ (unint64_t)pxWidth;
- (BOOL)isEqual:(id)a3;
- (BOOL)isIrisAsset;
- (CGSize)size;
- (CKAttachmentItem)initWithFileURL:(id)a3 size:(CGSize)a4 transferGUID:(id)a5 guid:(id)a6 createdDate:(id)a7 shareURL:(id)a8;
- (NSString)description;
- (NSURL)previewItemURL;
- (id)UTIType;
- (id)_getIrisBundleLocation;
- (id)_getIrisBundleURL;
- (id)_savedPreviewFromURL:(id)a3;
- (id)cachedPreview;
- (id)calculateIrisVideoPath;
- (id)dragItem;
- (id)fileIcon;
- (id)pasteboardItem;
- (id)previewURL:(BOOL)a3;
- (id)uncachedPreviewURL;
- (void)_savePreview:(id)a3;
- (void)generatePreviewWithCompletion:(id)a3;
@end

@implementation CKAttachmentItem

+ (id)previewSizingQueue
{
  v2 = sPreviewSizingQueue;
  if (!sPreviewSizingQueue)
  {
    v3 = [MEMORY[0x1E69A6628] serialQueueWithDispatchPriority:-2];
    v4 = sPreviewSizingQueue;
    sPreviewSizingQueue = v3;

    v2 = sPreviewSizingQueue;
  }

  return v2;
}

+ (CGSize)defaultSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (CKAttachmentItem)initWithFileURL:(id)a3 size:(CGSize)a4 transferGUID:(id)a5 guid:(id)a6 createdDate:(id)a7 shareURL:(id)a8
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v21.receiver = self;
  v21.super_class = CKAttachmentItem;
  v16 = [(CKAttachmentItem *)&v21 init];
  v17 = v16;
  if (v16)
  {
    [(CKAttachmentItem *)v16 setFileURL:v12];
    [(CKAttachmentItem *)v17 setGuid:v14];
    [(CKAttachmentItem *)v17 setCreatedDate:v15];
    v18 = [v13 im_lastPathComponent];
    [(CKAttachmentItem *)v17 setTransferGUID:v18];

    appendedBundleURL = v17->_appendedBundleURL;
    v17->_appendedBundleURL = 0;

    [(CKAttachmentItem *)v17 setShowDocumentIcon:1];
  }

  return v17;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = CKAttachmentItem;
  v4 = [(CKAttachmentItem *)&v9 description];
  v5 = [(CKAttachmentItem *)self UTIType];
  v6 = [(CKAttachmentItem *)self fileURL];
  v7 = [v3 stringWithFormat:@"%@(%@) %@", v4, v5, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = [(CKAttachmentItem *)self guid];
    v8 = [v4 guid];
    v6 = [v7 isEqualToString:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)fileIcon
{
  v3 = [(CKAttachmentItem *)self UTIType];
  if (!v3)
  {
    v5 = 0;
    goto LABEL_13;
  }

  v4 = +[CKMediaObject iconCache];
  v5 = [v4 cachedPreviewForKey:v3];

  if (v5)
  {
    goto LABEL_13;
  }

  v6 = [(CKAttachmentItem *)self fileURL];
  v7 = MEMORY[0x1E6963658];
  v8 = [v6 lastPathComponent];
  v9 = [v7 documentProxyForName:v8 type:v3 MIMEType:0];

  if ([(CKAttachmentItem *)self showDocumentIcon])
  {
    v10 = [MEMORY[0x1E69DCAB8] _iconForResourceProxy:v9 format:3 options:{-[CKAttachmentItem showDocumentIcon](self, "showDocumentIcon") ^ 1}];
    if (!v10)
    {
      v11 = +[CKUIBehavior sharedBehaviors];
      v12 = [v11 genericDocumentIcon];
      goto LABEL_10;
    }

LABEL_8:
    v5 = v10;
LABEL_11:
    v13 = +[CKMediaObject iconCache];
    [v13 setObject:v5 forKeyedSubscript:v3];

    goto LABEL_12;
  }

  v10 = [MEMORY[0x1E69DCAB8] _iconForResourceProxy:v9 format:12 options:1];
  if (v10)
  {
    goto LABEL_8;
  }

  v11 = [MEMORY[0x1E6963658] documentProxyForName:0 type:*MEMORY[0x1E6963800] MIMEType:0];
  v12 = [MEMORY[0x1E69DCAB8] _iconForResourceProxy:v11 format:12 options:1];
LABEL_10:
  v5 = v12;

  if (v5)
  {
    goto LABEL_11;
  }

LABEL_12:

LABEL_13:

  return v5;
}

- (id)_savedPreviewFromURL:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (+[CKImageData supportsASTC])
    {
      v4 = MEMORY[0x1E69DCAB8];
      v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v3 options:1 error:0];
      v6 = [v4 imageWithData:v5];
    }

    else
    {
      v6 = CKJPEGUIImageFromURL(v3);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)generatePreviewWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (void)_savePreview:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_opt_class() previewCache];
  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v10 = self;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Queue save: %@", buf, 0xCu);
      }
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __33__CKAttachmentItem__savePreview___block_invoke;
    v7[3] = &unk_1E72EB8D0;
    v7[4] = self;
    v8 = v4;
    [v5 enqueueSaveBlock:v7 withPriority:0];
  }
}

void __33__CKAttachmentItem__savePreview___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Perform save: %@", buf, 0xCu);
    }
  }

  v4 = [*(a1 + 32) previewURL:1];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [v4 path];
    v7 = [v5 fileExistsAtPath:v6];

    if ((v7 & 1) == 0)
    {
      v8 = *(a1 + 40);
      v9 = v4;
      im_perform_with_task_assertion();
    }
  }
}

void __33__CKAttachmentItem__savePreview___block_invoke_49(uint64_t a1)
{
  v2 = +[CKImageData supportsASTC];
  v3 = *(a1 + 32);
  if (!v2)
  {
    v4 = CKUIImageJPEGRepresentationWithHardwareAcceleration(v3);
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = [v3 __ck_ASTCRepresentation];
  if (v4)
  {
LABEL_5:
    v5 = v4;
    CKFreeSpaceWriteDataToURL(v4, *(a1 + 40), 1);
    v4 = v5;
  }

LABEL_6:
}

- (id)previewURL:(BOOL)a3
{
  previewURL = self->_previewURL;
  if (!previewURL)
  {
    v5 = [(CKAttachmentItem *)self fileURL];
    +[CKImageData supportsASTC];
    v6 = IMAttachmentPreviewFileURL();
    v7 = self->_previewURL;
    self->_previewURL = v6;

    previewURL = self->_previewURL;
  }

  return previewURL;
}

- (id)uncachedPreviewURL
{
  v2 = [(CKAttachmentItem *)self fileURL];
  +[CKImageData supportsASTC];
  v3 = IMAttachmentPreviewFileURL();

  return v3;
}

- (id)cachedPreview
{
  v3 = [objc_opt_class() previewCache];
  v4 = [(CKAttachmentItem *)self guid];
  v5 = [v3 cachedPreviewForKey:v4];
  if (v5)
  {
    v6 = v5;
LABEL_5:
    v9 = v6;
    goto LABEL_6;
  }

  v7 = +[CKPreviewDispatchCache transcriptPreviewCache];
  v8 = [v7 cachedPreviewForKey:v4];

  if (v8)
  {
    [v3 setCachedPreview:v8 key:v4];
    v6 = v8;
    goto LABEL_5;
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [(CKAttachmentItem *)self previewURL:0];
  }

  else
  {
    [(CKAttachmentItem *)self uncachedPreviewURL];
  }
  v11 = ;
  v12 = [(CKAttachmentItem *)self _savedPreviewFromURL:v11];
  if (v12)
  {
    [v3 setCachedPreview:v12 key:v4];
  }

  v9 = v12;

LABEL_6:

  return v9;
}

- (BOOL)isIrisAsset
{
  v2 = [(CKAttachmentItem *)self calculateIrisVideoPath];
  v3 = v2 != 0;

  return v3;
}

- (id)UTIType
{
  v3 = +[CKMediaObjectManager sharedInstance];
  v4 = [(CKAttachmentItem *)self fileURL];
  v5 = [v4 lastPathComponent];
  v6 = [v3 UTITypeForFilename:v5];

  return v6;
}

- (id)pasteboardItem
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(CKAttachmentItem *)self fileURL];
  v4 = [v3 lastPathComponent];
  v5 = [v4 stringByDeletingPathExtension];

  if (v3)
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v3 options:8 error:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(CKAttachmentItem *)self isIrisAsset];
  v8 = [(CKAttachmentItem *)self calculateIrisVideoPath];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"NO";
      if (v7)
      {
        v10 = @"YES";
      }

      *buf = 138412546;
      v24 = v10;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "pasteBoardItem hasAppendedVideo %@ appendedVideoPath %@", buf, 0x16u);
    }
  }

  v11 = 0;
  if (v5 && v6)
  {
    if (v8)
    {
      v12 = v7;
    }

    else
    {
      v12 = 0;
    }

    v13 = [*MEMORY[0x1E69DE2A8] objectAtIndex:0];
    v14 = v13;
    if (v12)
    {
      v21[0] = v13;
      v15 = [v5 dataUsingEncoding:4];
      v22[0] = v15;
      v16 = [(CKAttachmentItem *)self UTIType];
      v21[1] = v16;
      v22[1] = v6;
      v21[2] = @"com.apple.MobileSMS.appendedURL";
      v17 = [v8 dataUsingEncoding:4];
      v22[2] = v17;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
    }

    else
    {
      v15 = [v5 dataUsingEncoding:{4, v13}];
      v20[0] = v15;
      v16 = [(CKAttachmentItem *)self UTIType];
      v19[1] = v16;
      v20[1] = v6;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    }
  }

  return v11;
}

- (id)dragItem
{
  v3 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v4 = [(CKAttachmentItem *)self fileURL];
  v5 = [(CKAttachmentItem *)self UTIType];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __28__CKAttachmentItem_dragItem__block_invoke;
  v16[3] = &unk_1E72F7458;
  v16[4] = self;
  [v3 registerFileRepresentationForTypeIdentifier:v5 fileOptions:1 visibility:0 loadHandler:v16];

  v6 = [*MEMORY[0x1E69DE2A8] objectAtIndex:0];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __28__CKAttachmentItem_dragItem__block_invoke_2;
  v14 = &unk_1E72EC878;
  v15 = v4;
  v7 = v4;
  [v3 registerDataRepresentationForTypeIdentifier:v6 visibility:0 loadHandler:&v11];

  v8 = objc_alloc(MEMORY[0x1E69DC990]);
  v9 = [v8 initWithItemProvider:{v3, v11, v12, v13, v14}];

  return v9;
}

uint64_t __28__CKAttachmentItem_dragItem__block_invoke(uint64_t a1, void (**a2)(void, void, void, void))
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 fileURL];
  (a2)[2](v4, v5, 0, 0);

  return 0;
}

uint64_t __28__CKAttachmentItem_dragItem__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 lastPathComponent];
  v5 = [v4 stringByDeletingPathExtension];

  v6 = [v5 dataUsingEncoding:4];
  v3[2](v3, v6, 0);

  return 0;
}

- (id)calculateIrisVideoPath
{
  irisVideoPath = self->_irisVideoPath;
  if (!irisVideoPath)
  {
    v4 = [(CKAttachmentItem *)self fileURL];
    v5 = [CKLivePhotoBundleUtilities calculateLivePhotoVideoPath:v4];
    v6 = self->_irisVideoPath;
    self->_irisVideoPath = v5;

    irisVideoPath = self->_irisVideoPath;
  }

  return irisVideoPath;
}

- (id)_getIrisBundleLocation
{
  v3 = [(CKAttachmentItem *)self fileURL];
  v4 = [v3 path];
  v5 = [v4 stringByDeletingLastPathComponent];

  if ([v5 length])
  {
    v6 = [(CKAttachmentItem *)self transferGUID];
    v7 = [v5 stringByAppendingPathComponent:v6];

    v5 = [v7 stringByAppendingPathExtension:*MEMORY[0x1E69C0E28]];

    v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_getIrisBundleURL
{
  v44 = *MEMORY[0x1E69E9840];
  if ([(CKAttachmentItem *)self isIrisAsset])
  {
    v3 = [(CKAttachmentItem *)self _getIrisBundleLocation];
    p_appendedBundleURL = &self->_appendedBundleURL;
    appendedBundleURL = self->_appendedBundleURL;
    self->_appendedBundleURL = v3;

    if (self->_appendedBundleURL && ([MEMORY[0x1E696AC08] defaultManager], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*p_appendedBundleURL, "path"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "fileExistsAtPath:", v7), v7, v6, v8))
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = *p_appendedBundleURL;
          *buf = 138412290;
          *&buf[4] = v10;
          _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "using pre existing bundle %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v13 = [(CKAttachmentItem *)self fileURL];
      v14 = [v13 path];

      v15 = [(CKAttachmentItem *)self calculateIrisVideoPath];
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = *p_appendedBundleURL;
          *buf = 138412290;
          *&buf[4] = v17;
          _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "_getIrisBundleURL Creating Iris bundle %@", buf, 0xCu);
        }
      }

      if (v14 && v15)
      {
        v18 = objc_alloc(MEMORY[0x1E69C0918]);
        v19 = MEMORY[0x193AF5ED0]("kCMTimeInvalid", @"CoreMedia");
        v20 = *v19;
        *&buf[16] = *(v19 + 16);
        *buf = v20;
        v21 = [v18 initWithPathToVideo:v15 pathToImage:v14 imageDisplayTime:buf pairingIdentifier:0];
        v22 = [(CKAttachmentItem *)self _getIrisBundleLocation];
        if (!v21)
        {
          goto LABEL_28;
        }

        v37 = 0;
        v23 = [v21 writeToBundleAtURL:v22 error:&v37];
        v24 = v37;
        if (v23)
        {
          v25 = [v22 absoluteString];
          [v25 im_markFileAsPurgeable:1];
        }

        if (v24)
        {
          if (IMOSLoggingEnabled())
          {
            v26 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              *buf = 138413314;
              *&buf[4] = v14;
              *&buf[12] = 2112;
              *&buf[14] = v15;
              *&buf[22] = 2112;
              v39 = v22;
              v40 = 2112;
              v41 = v21;
              v42 = 2112;
              v43 = v24;
              _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "Could not create iris bundle from image path %@ video path %@ URL %@ using videoComplement %@, error %@", buf, 0x34u);
            }
          }

          if (IMOSLoggingEnabled())
          {
            v27 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v28 = [v21 imagePath];
              v29 = [v21 videoPath];
              *buf = 138412546;
              *&buf[4] = v28;
              *&buf[12] = 2112;
              *&buf[14] = v29;
              _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "image path  %@, video path %@", buf, 0x16u);
            }
          }

          v30 = *p_appendedBundleURL;
          *p_appendedBundleURL = 0;
        }

        else
        {
LABEL_28:
          v31 = [v22 copy];
          v24 = *p_appendedBundleURL;
          *p_appendedBundleURL = v31;
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *&buf[4] = v14;
          *&buf[12] = 2112;
          *&buf[14] = v15;
          _os_log_impl(&dword_19020E000, v32, OS_LOG_TYPE_INFO, "Iris. This is unexpected. imageFilePath %@ videoFilePath %@", buf, 0x16u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v33 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = *p_appendedBundleURL;
          *buf = 138412290;
          *&buf[4] = v34;
          _os_log_impl(&dword_19020E000, v33, OS_LOG_TYPE_INFO, "_getIrisBundleURL %@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v12 = self->_appendedBundleURL;
    v11 = &self->_appendedBundleURL;
    *v11 = 0;

    p_appendedBundleURL = v11;
  }

  v35 = *p_appendedBundleURL;

  return v35;
}

- (NSURL)previewItemURL
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(CKAttachmentItem *)self _getIrisBundleURL];
  if (v3)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = [(CKAttachmentItem *)self fileURL];
        v9 = 138412546;
        v10 = v3;
        v11 = 2112;
        v12 = v5;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Passing back iris url %@ to QL for fileURL  %@", &v9, 0x16u);
      }
    }

    v6 = v3;
  }

  else
  {
    v6 = [(CKAttachmentItem *)self fileURL];
  }

  v7 = v6;

  return v7;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    width = 100.0;
    height = 100.0;
  }

  result.height = height;
  result.width = width;
  return result;
}

+ (unint64_t)pxWidth
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 previewMaxWidth];
  v4 = v3;
  v5 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v5 scale];
  v7 = (v4 * v6);

  return v7;
}

@end