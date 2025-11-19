@interface CKPassbookMediaObject
+ (BOOL)isPreviewable;
+ (id)UTITypes;
- (BOOL)isSupported;
- (BOOL)shouldShowViewer;
- (Class)previewBalloonViewClass;
- (PKPass)pass;
- (id)attachmentSummary:(unint64_t)a3;
- (id)generateThumbnailForWidth:(double)a3 orientation:(char)a4;
- (id)previewForWidth:(double)a3 orientation:(char)a4;
- (id)previewItemTitle;
@end

@implementation CKPassbookMediaObject

- (BOOL)isSupported
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 supportsPassbookAttachments];

  return v3;
}

+ (BOOL)isPreviewable
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 supportsPassbookAttachments];

  return v3;
}

+ (id)UTITypes
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.pkpass";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)attachmentSummary:(unint64_t)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = IMSharedUtilitiesFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"%lu Passes" value:&stru_1F04268F8 table:@"IMSharedUtilities"];
  v7 = [v4 localizedStringWithFormat:v6, a3];

  return v7;
}

- (Class)previewBalloonViewClass
{
  if ([(CKPassbookMediaObject *)self isSupported])
  {
    v5.receiver = self;
    v5.super_class = CKPassbookMediaObject;
    v3 = [(CKMediaObject *)&v5 previewBalloonViewClass];
  }

  else
  {
    v3 = [(CKMediaObject *)self placeholderBalloonViewClass];
  }

  return v3;
}

- (id)previewForWidth:(double)a3 orientation:(char)a4
{
  v4 = a4;
  if ([(CKPassbookMediaObject *)self isSupported])
  {
    v9.receiver = self;
    v9.super_class = CKPassbookMediaObject;
    v7 = [(CKMediaObject *)&v9 previewForWidth:v4 orientation:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)generateThumbnailForWidth:(double)a3 orientation:(char)a4
{
  v4 = a4;
  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 thumbnailFillSizeForWidth:a3 imageSize:{3.0, 4.0}];
  v9 = v8;
  v11 = v10;

  v12 = +[CKUIBehavior sharedBehaviors];
  [v12 thumbnailContentAlignmentInsetsForOrientation:v4];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  return [(CKMediaObject *)self generateThumbnailFillToSize:v9 contentAlignmentInsets:v11, v14, v16, v18, v20];
}

- (BOOL)shouldShowViewer
{
  v2 = [(CKMediaObject *)self transfer];
  v3 = [v2 isFileDataReady];

  return v3;
}

- (id)previewItemTitle
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"PREVIEW_TITLE_PASS" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

- (PKPass)pass
{
  if ([(CKMediaObject *)self transcoderPreviewGenerationFailed])
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(CKPassbookMediaObject *)v3 pass];
    }

    v4 = 0;
  }

  else
  {
    pass = self->_pass;
    if (!pass)
    {
      if (pass_onceToken != -1)
      {
        [CKPassbookMediaObject pass];
      }

      v6 = [sPKPassClass alloc];
      v7 = [(CKMediaObject *)self data];
      v8 = [v6 initWithData:v7 error:0];
      v9 = self->_pass;
      self->_pass = v8;

      [(PKPass *)self->_pass loadContentSync];
      pass = self->_pass;
    }

    v4 = pass;
  }

  return v4;
}

uint64_t __29__CKPassbookMediaObject_pass__block_invoke()
{
  result = MEMORY[0x193AF5EC0](@"PKPass", @"PassKit");
  sPKPassClass = result;
  return result;
}

@end