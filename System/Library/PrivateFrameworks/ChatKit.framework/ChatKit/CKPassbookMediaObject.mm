@interface CKPassbookMediaObject
+ (BOOL)isPreviewable;
+ (id)UTITypes;
- (BOOL)isSupported;
- (BOOL)shouldShowViewer;
- (Class)previewBalloonViewClass;
- (PKPass)pass;
- (id)attachmentSummary:(unint64_t)summary;
- (id)generateThumbnailForWidth:(double)width orientation:(char)orientation;
- (id)previewForWidth:(double)width orientation:(char)orientation;
- (id)previewItemTitle;
@end

@implementation CKPassbookMediaObject

- (BOOL)isSupported
{
  v2 = +[CKUIBehavior sharedBehaviors];
  supportsPassbookAttachments = [v2 supportsPassbookAttachments];

  return supportsPassbookAttachments;
}

+ (BOOL)isPreviewable
{
  v2 = +[CKUIBehavior sharedBehaviors];
  supportsPassbookAttachments = [v2 supportsPassbookAttachments];

  return supportsPassbookAttachments;
}

+ (id)UTITypes
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.pkpass";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)attachmentSummary:(unint64_t)summary
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = IMSharedUtilitiesFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"%lu Passes" value:&stru_1F04268F8 table:@"IMSharedUtilities"];
  summary = [v4 localizedStringWithFormat:v6, summary];

  return summary;
}

- (Class)previewBalloonViewClass
{
  if ([(CKPassbookMediaObject *)self isSupported])
  {
    v5.receiver = self;
    v5.super_class = CKPassbookMediaObject;
    previewBalloonViewClass = [(CKMediaObject *)&v5 previewBalloonViewClass];
  }

  else
  {
    previewBalloonViewClass = [(CKMediaObject *)self placeholderBalloonViewClass];
  }

  return previewBalloonViewClass;
}

- (id)previewForWidth:(double)width orientation:(char)orientation
{
  orientationCopy = orientation;
  if ([(CKPassbookMediaObject *)self isSupported])
  {
    v9.receiver = self;
    v9.super_class = CKPassbookMediaObject;
    v7 = [(CKMediaObject *)&v9 previewForWidth:orientationCopy orientation:width];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)generateThumbnailForWidth:(double)width orientation:(char)orientation
{
  orientationCopy = orientation;
  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 thumbnailFillSizeForWidth:width imageSize:{3.0, 4.0}];
  v9 = v8;
  v11 = v10;

  v12 = +[CKUIBehavior sharedBehaviors];
  [v12 thumbnailContentAlignmentInsetsForOrientation:orientationCopy];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  return [(CKMediaObject *)self generateThumbnailFillToSize:v9 contentAlignmentInsets:v11, v14, v16, v18, v20];
}

- (BOOL)shouldShowViewer
{
  transfer = [(CKMediaObject *)self transfer];
  isFileDataReady = [transfer isFileDataReady];

  return isFileDataReady;
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
      data = [(CKMediaObject *)self data];
      v8 = [v6 initWithData:data error:0];
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