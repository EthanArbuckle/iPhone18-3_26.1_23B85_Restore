@interface CKPassMediaObject
- (CKPassMediaObject)initWithTransfer:(id)a3 context:(id)a4 forceInlinePreview:(BOOL)a5;
- (UIImage)icon;
- (id)generateThumbnailFillToSize:(CGSize)a3 contentAlignmentInsets:(UIEdgeInsets)a4;
- (id)passView;
- (id)subtitle;
- (id)title;
@end

@implementation CKPassMediaObject

- (CKPassMediaObject)initWithTransfer:(id)a3 context:(id)a4 forceInlinePreview:(BOOL)a5
{
  v10.receiver = self;
  v10.super_class = CKPassMediaObject;
  v5 = [(CKMediaObject *)&v10 initWithTransfer:a3 context:a4 forceInlinePreview:a5];
  if (v5)
  {
    v6 = [MEMORY[0x1E69DC938] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v8 = [(CKPassMediaObject *)v5 icon];
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
    v3 = [(CKMediaObject *)&v6 title];
  }

  else
  {
    v4 = [(CKPassbookMediaObject *)self pass];
    v3 = [CKPassKitHelper localizedNameForPass:v4];
  }

  return v3;
}

- (id)subtitle
{
  if ([(CKMediaObject *)self transcoderPreviewGenerationFailed])
  {
    v6.receiver = self;
    v6.super_class = CKPassMediaObject;
    v3 = [(CKMediaObject *)&v6 subtitle];
  }

  else
  {
    v4 = [(CKPassbookMediaObject *)self pass];
    v3 = [CKPassKitHelper organizationNameForPass:v4];
  }

  return v3;
}

- (UIImage)icon
{
  if ([(CKMediaObject *)self transcoderPreviewGenerationFailed])
  {
    v25.receiver = self;
    v25.super_class = CKPassMediaObject;
    v3 = [(CKMediaObject *)&v25 icon];
  }

  else
  {
    icon = self->_icon;
    if (!icon)
    {
      v5 = [(CKPassbookMediaObject *)self pass];
      v6 = [CKPassKitHelper mailAttachmentIconForPass:v5];

      if (v6)
      {
        v7 = *MEMORY[0x1E695F058];
        v8 = *(MEMORY[0x1E695F058] + 8);
        v9 = +[CKUIBehavior sharedBehaviors];
        v10 = [v9 genericDocumentIcon];
        [v10 size];
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

    v3 = icon;
  }

  return v3;
}

- (id)generateThumbnailFillToSize:(CGSize)a3 contentAlignmentInsets:(UIEdgeInsets)a4
{
  height = a3.height;
  width = a3.width;
  if ([(CKMediaObject *)self transcoderPreviewGenerationFailed:a3.width])
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
    v9 = [(CKPassMediaObject *)self passView];
    v10 = [v9 snapshotOfFrontFace];

    [v10 size];
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
    v17 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v17 scale];
    v19 = v18 / v16;

    v8 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:objc_msgSend(v10 scale:"CGImage") orientation:{0, v19}];
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

    v5 = [(CKPassbookMediaObject *)self pass];
    v4 = [CKPassKitHelper passViewForPass:v5 content:5];

    [v4 setSuppressedContent:6];
    v6 = [MEMORY[0x1E69DC888] clearColor];
    [v4 setBackgroundColor:v6];
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