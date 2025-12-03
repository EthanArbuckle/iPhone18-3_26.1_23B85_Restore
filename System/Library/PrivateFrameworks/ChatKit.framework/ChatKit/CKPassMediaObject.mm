@interface CKPassMediaObject
- (CKPassMediaObject)initWithTransfer:(id)transfer context:(id)context forceInlinePreview:(BOOL)preview;
- (UIImage)icon;
- (id)generateThumbnailFillToSize:(CGSize)size contentAlignmentInsets:(UIEdgeInsets)insets;
- (id)passView;
- (id)subtitle;
- (id)title;
@end

@implementation CKPassMediaObject

- (CKPassMediaObject)initWithTransfer:(id)transfer context:(id)context forceInlinePreview:(BOOL)preview
{
  v10.receiver = self;
  v10.super_class = CKPassMediaObject;
  v5 = [(CKMediaObject *)&v10 initWithTransfer:transfer context:context forceInlinePreview:preview];
  if (v5)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      icon = [(CKPassMediaObject *)v5 icon];
    }
  }

  return v5;
}

- (id)title
{
  if ([(CKMediaObject *)self transcoderPreviewGenerationFailed])
  {
    v6.receiver = self;
    v6.super_class = CKPassMediaObject;
    title = [(CKMediaObject *)&v6 title];
  }

  else
  {
    pass = [(CKPassbookMediaObject *)self pass];
    title = [CKPassKitHelper localizedNameForPass:pass];
  }

  return title;
}

- (id)subtitle
{
  if ([(CKMediaObject *)self transcoderPreviewGenerationFailed])
  {
    v6.receiver = self;
    v6.super_class = CKPassMediaObject;
    subtitle = [(CKMediaObject *)&v6 subtitle];
  }

  else
  {
    pass = [(CKPassbookMediaObject *)self pass];
    subtitle = [CKPassKitHelper organizationNameForPass:pass];
  }

  return subtitle;
}

- (UIImage)icon
{
  if ([(CKMediaObject *)self transcoderPreviewGenerationFailed])
  {
    v25.receiver = self;
    v25.super_class = CKPassMediaObject;
    icon = [(CKMediaObject *)&v25 icon];
  }

  else
  {
    icon = self->_icon;
    if (!icon)
    {
      pass = [(CKPassbookMediaObject *)self pass];
      v6 = [CKPassKitHelper mailAttachmentIconForPass:pass];

      if (v6)
      {
        v7 = *MEMORY[0x1E695F058];
        v8 = *(MEMORY[0x1E695F058] + 8);
        v9 = +[CKUIBehavior sharedBehaviors];
        genericDocumentIcon = [v9 genericDocumentIcon];
        [genericDocumentIcon size];
        v12 = v11;
        v14 = v13;

        [v6 size];
        v17 = v12 / v15;
        v18 = 0.0;
        if (v15 == 0.0)
        {
          v17 = 0.0;
        }

        if (v16 != 0.0)
        {
          v18 = v14 / v16;
        }

        v19 = fmax(v17, v18);
        v27.width = v15 * v19;
        width = v27.width;
        v27.height = v16 * v19;
        height = v27.height;
        UIGraphicsBeginImageContextWithOptions(v27, 0, 0.0);
        [v6 drawInRect:{v7, v8, width, height}];
        v22 = UIGraphicsGetImageFromCurrentImageContext();
        v23 = self->_icon;
        self->_icon = v22;

        UIGraphicsEndImageContext();
      }

      icon = self->_icon;
    }

    icon = icon;
  }

  return icon;
}

- (id)generateThumbnailFillToSize:(CGSize)size contentAlignmentInsets:(UIEdgeInsets)insets
{
  height = size.height;
  width = size.width;
  if ([(CKMediaObject *)self transcoderPreviewGenerationFailed:size.width])
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CKPassMediaObject generateThumbnailFillToSize:v7 contentAlignmentInsets:?];
    }

    v8 = 0;
  }

  else
  {
    passView = [(CKPassMediaObject *)self passView];
    snapshotOfFrontFace = [passView snapshotOfFrontFace];

    [snapshotOfFrontFace size];
    v13 = width / v12;
    v14 = v12 == 0.0;
    v15 = 0.0;
    if (v14)
    {
      v13 = 0.0;
    }

    if (v11 != 0.0)
    {
      v15 = height / v11;
    }

    v16 = fmax(v13, v15);
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v19 = v18 / v16;

    v8 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:objc_msgSend(snapshotOfFrontFace scale:"CGImage") orientation:{0, v19}];
  }

  return v8;
}

- (id)passView
{
  if ([(CKMediaObject *)self transcoderPreviewGenerationFailed])
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(CKPassMediaObject *)v3 passView];
    }

    v4 = 0;
  }

  else
  {
    if (passView_onceToken != -1)
    {
      [CKPassMediaObject passView];
    }

    pass = [(CKPassbookMediaObject *)self pass];
    v4 = [CKPassKitHelper passViewForPass:pass content:5];

    [v4 setSuppressedContent:6];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v4 setBackgroundColor:clearColor];
  }

  return v4;
}

uint64_t __29__CKPassMediaObject_passView__block_invoke()
{
  result = MEMORY[0x193AF5EC0](@"PKPassView", @"PassKitUI");
  sPKPassViewClass = result;
  return result;
}

@end