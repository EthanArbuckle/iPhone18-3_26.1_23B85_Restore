@interface CKAttachmentBalloonView
+ (id)_linkViewThumbnailFromMediaObject:(id)a3;
+ (id)linkMetadataFromMediaObject:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGRect)uncroppedSourceFrame;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5;
- (CKAttachmentBalloonView)initWithFrame:(CGRect)a3;
- (CKBalloonDescriptor_t)balloonDescriptor;
- (NSString)description;
- (UIEdgeInsets)alignmentRectInsetsForBoundsSize:(CGSize)a3;
- (UIEdgeInsets)pluginInsets;
- (UIView)uncroppedSourceView;
- (id)highlightOverlayColor;
- (id)imageForInvisibleInkEffectView;
- (id)traitMutationsForSnapshotRendering;
- (void)_setProgressWithMediaObject:(id)a3;
- (void)attachInvisibleInkEffectView;
- (void)configureForComposition:(id)a3;
- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5;
- (void)configureForMessagePart:(id)a3;
- (void)detachInvisibleInkEffectView;
- (void)insertHighlightOverlayLayer:(id)a3;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)richIconDidChange:(id)a3;
- (void)setMediaObject:(id)a3;
- (void)setOverrideBackgroundColor:(id)a3;
- (void)setProgressForTransfer:(id)a3 indicator:(int64_t)a4;
- (void)transferUpdated:(id)a3;
@end

@implementation CKAttachmentBalloonView

- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5
{
  v5 = a5;
  v9.receiver = self;
  v9.super_class = CKAttachmentBalloonView;
  v8 = a3;
  [(CKImageBalloonView *)&v9 configureForMediaObject:v8 previewWidth:v5 orientation:a4];
  [(CKAttachmentBalloonView *)self setMediaObject:v8, v9.receiver, v9.super_class];
}

- (void)configureForComposition:(id)a3
{
  v8.receiver = self;
  v8.super_class = CKAttachmentBalloonView;
  v4 = a3;
  [(CKImageBalloonView *)&v8 configureForComposition:v4];
  [(CKBalloonView *)self setColor:0xFFFFFFFFLL, v8.receiver, v8.super_class];
  v5 = [v4 mediaObjects];

  v6 = [v5 lastObject];
  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 previewMaxWidth];
  [(CKAttachmentBalloonView *)self configureForMediaObject:v6 previewWidth:1 orientation:?];
}

- (CKAttachmentBalloonView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = CKAttachmentBalloonView;
  v3 = [(CKImageBalloonView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = objc_opt_new();
    [v6 _setDisableAnimations:1];
    [v6 _setUsesDeferredLayout:0];
    [v6 _setApplyCornerRadius:0];
    [v6 _setDisableTapGesture:1];
    [v6 _setAllowsTapToLoad:0];
    [v6 setDelegate:v5];

    [v6 setUserInteractionEnabled:0];
    v7 = [MEMORY[0x1E69DC888] clearColor];
    [v6 _setOverrideBackgroundColor:v7];

    [v6 setOpaque:0];
    v8 = [MEMORY[0x1E69DC888] clearColor];
    [v6 setBackgroundColor:v8];

    v9 = v5[112];
    v5[112] = v6;

    v10 = +[CKUIBehavior sharedBehaviors];
    [v10 pluginBalloonInsetsForMessageFromMe:{objc_msgSend(v5, "_isFromMe")}];
    [v5[112] setContentInset:?];

    [v5 setBalloonStyle:0];
    [v5 addSubview:v5[112]];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(LPLinkView *)self->_attachmentView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5
{
  if (a4)
  {
    v6 = *(MEMORY[0x1E69DDCE0] + 16);
    *&a4->top = *MEMORY[0x1E69DDCE0];
    *&a4->bottom = v6;
  }

  [(LPLinkView *)self->_attachmentView sizeThatFits:a3.width, a3.height];
  v8 = v7;
  v10 = v9;
  if ([(CKBalloonView *)self hasSuggestedActionsMenu])
  {
    [(CKBalloonView *)self suggestedActionsMenuAdditionalHeight];
    v8 = v8 + 0.0;
    v10 = v10 + v11;
  }

  v12 = v8;
  v13 = v10;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = CKAttachmentBalloonView;
  [(CKImageBalloonView *)&v25 layoutSubviews];
  v3 = [(CKBalloonView *)self hasSuggestedActionsMenu];
  [(CKAttachmentBalloonView *)self bounds];
  v7 = v6;
  v9 = v8;
  if (v3)
  {
    [(CKBalloonView *)self suggestedActionsMenuAdditionalHeight];
    v10 = v7 + 0.0;
    v12 = v9 - v11;
    [(CKAttachmentBalloonView *)self bounds];
    v14 = v13;
    [(CKAttachmentBalloonView *)self bounds];
  }

  else
  {
    v16 = v4;
    v17 = v5;
    [(CKAttachmentBalloonView *)self pluginInsets];
    v19 = v18;
    v14 = v16 + v18;
    v15 = v17 + v20;
    v10 = v7 - (v19 + v21);
    v12 = v9 - (v20 + v22);
  }

  [(LPLinkView *)self->_attachmentView setFrame:v14, v15, v10, v12];
  v23 = [(CKImageBalloonView *)self isScheduled];
  v24 = 1.0;
  if (v23)
  {
    v24 = 0.5;
  }

  [(LPLinkView *)self->_attachmentView setAlpha:v24];
}

- (UIEdgeInsets)alignmentRectInsetsForBoundsSize:(CGSize)a3
{
  v4 = [(CKBalloonView *)self orientation:a3.width];
  v5 = +[CKUIBehavior sharedBehaviors];
  [(CKAttachmentBalloonView *)self balloonDescriptor];
  [v5 attachmentBalloonAlignmentRectInsetsWithTailShape:v18];
  v9 = v8;
  v11 = v10;
  if (v4)
  {
    v12 = v6;
  }

  else
  {
    v12 = v7;
  }

  if (v4)
  {
    v13 = v7;
  }

  else
  {
    v13 = v6;
  }

  v14 = v9;
  v15 = v12;
  v16 = v11;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  mediaObject = self->_mediaObject;
  v7.receiver = self;
  v7.super_class = CKAttachmentBalloonView;
  v4 = [(CKImageBalloonView *)&v7 description];
  v5 = [v2 stringWithFormat:@"[CKAttachmentBalloonView mediaObject:%@ %@]", mediaObject, v4];

  return v5;
}

- (void)prepareForDisplay
{
  v10.receiver = self;
  v10.super_class = CKAttachmentBalloonView;
  [(CKImageBalloonView *)&v10 prepareForDisplay];
  [(LPLinkView *)self->_attachmentView setHidden:0];
  v3 = [(CKBalloonView *)self orientation]== 1;
  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 pluginBalloonInsetsForMessageFromMe:v3];
  [(LPLinkView *)self->_attachmentView setContentInset:?];

  v5 = +[CKUIBehavior sharedBehaviors];
  -[CKBalloonView setColor:](self, "setColor:", [v5 attachmentBalloonFillColor]);

  v6 = [(CKAttachmentBalloonView *)self attachmentView];
  v7 = [v6 _dominantBackgroundColor];

  v8 = [(CKAttachmentBalloonView *)self attachmentView];
  if (v7)
  {
    [v8 _dominantBackgroundColor];
  }

  else
  {
    [CKMessagesCarouselView resolvedBackgroundColorFor:v8];
  }
  v9 = ;
  [(CKAttachmentBalloonView *)self setBackgroundColor:v9];
}

- (UIEdgeInsets)pluginInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  if ([(CKImageBalloonView *)self isScheduled])
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    [v6 linkPreviewSendLaterInsets];
  }

  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  result.right = v10;
  result.bottom = v9;
  result.left = v8;
  result.top = v7;
  return result;
}

- (id)traitMutationsForSnapshotRendering
{
  v9.receiver = self;
  v9.super_class = CKAttachmentBalloonView;
  v2 = [(CKBalloonView *)&v9 traitMutationsForSnapshotRendering];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__CKAttachmentBalloonView_traitMutationsForSnapshotRendering__block_invoke;
  aBlock[3] = &unk_1E72F0828;
  v8 = v2;
  v3 = v2;
  v4 = _Block_copy(aBlock);
  v5 = _Block_copy(v4);

  return v5;
}

void __61__CKAttachmentBalloonView_traitMutationsForSnapshotRendering__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = a2;
  v3(v2, v4);
  [v4 setNSIntegerValue:objc_msgSend(MEMORY[0x1E695E110] forTrait:{"integerValue"), objc_opt_class()}];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKAttachmentBalloonView;
  [(CKImageBalloonView *)&v3 prepareForReuse];
  [(LPLinkView *)self->_attachmentView setHidden:1];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v4 = [a4 view];
  v5 = objc_opt_class();
  LOBYTE(v5) = v5 != objc_opt_class();

  return v5;
}

- (CGRect)uncroppedSourceFrame
{
  v2 = [(CKAttachmentBalloonView *)self uncroppedSourceView];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (UIView)uncroppedSourceView
{
  v32 = *MEMORY[0x1E69E9840];
  if (!self->_attachmentView)
  {
    v10 = self;
    goto LABEL_29;
  }

  NSClassFromString(&cfstr_Lpflippedview.isa);
  v3 = _CKFirstSubviewOfType(self->_attachmentView);
  v4 = v3;
  if (v3)
  {
    v5 = _CKFirstSubviewOfType(v3);
    if (!v5)
    {
      v10 = self;
LABEL_27:

      goto LABEL_28;
    }

    NSClassFromString(&cfstr_Lpcaptionbarvi.isa);
    v6 = _CKFirstSubviewOfType(v5);
    if (v6)
    {
      NSClassFromString(&cfstr_Lpimageview.isa);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v7 = [v6 subviews];
      v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v8)
      {
        v9 = v8;
        v25 = v6;
        v26 = v4;
        v10 = 0;
        v11 = *v28;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v28 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v27 + 1) + 8 * i);
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              v14 = _CKFirstSubviewOfType(v13);
              v15 = v14;
              if (v14)
              {
                if (v10)
                {
                  [(CKAttachmentBalloonView *)v10 frame];
                  v17 = v16;
                  [(CKAttachmentBalloonView *)v10 frame];
                  v19 = v17 * v18;
                  [v15 frame];
                  v21 = v20;
                  [v15 frame];
                  if (v21 * v22 > v19)
                  {
                    v23 = v15;

                    v10 = v23;
                  }
                }

                else
                {
                  v10 = v14;
                }
              }
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v9);

        v4 = v26;
        v6 = v25;
        if (v10)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }
    }

    v10 = self;
LABEL_26:

    goto LABEL_27;
  }

  v10 = self;
LABEL_28:

LABEL_29:

  return v10;
}

- (void)setMediaObject:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_mediaObject == v5)
  {
    goto LABEL_16;
  }

  objc_storeStrong(&self->_mediaObject, a3);
  [(LPLinkView *)self->_attachmentView resetDownloadState];
  v6 = [objc_opt_class() linkMetadataFromMediaObject:self->_mediaObject];
  [(LPLinkView *)self->_attachmentView setMetadata:v6];
  v7 = [(CKMediaObject *)v5 transfer];
  if ([v7 isDownloadable])
  {
    goto LABEL_5;
  }

  v8 = +[CKApplicationState isResizing];

  if (!v8)
  {
    v7 = [(CKMediaObject *)v5 transfer];
    [(CKAttachmentBalloonView *)self setProgressForTransfer:v7 indicator:0];
LABEL_5:
  }

  [(CKBalloonView *)self setNeedsPrepareForDisplay];
  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 removeObserver:self name:@"CKFileTransferUpdatedNotification" object:0];
  if (v5)
  {
    v10 = [(CKMediaObject *)v5 transfer];
    if (([v10 isDownloadable] & 1) != 0 || objc_msgSend(v10, "isDownloading"))
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = 138412290;
          v13 = self;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Media object not available, listen for updated notifications on %@", &v12, 0xCu);
        }
      }

      [v9 addObserver:self selector:sel_transferUpdated_ name:@"CKFileTransferUpdatedNotification" object:v10];
    }

    [v9 addObserver:self selector:sel_richIconDidChange_ name:@"CKRichIconDidChangeNotification" object:v5];
  }

LABEL_16:
}

- (void)_setProgressWithMediaObject:(id)a3
{
  v11 = a3;
  v4 = objc_opt_respondsToSelector();
  v5 = v11;
  if (v4)
  {
    v6 = [v11 transfer];
    if ([v6 isDownloadable])
    {
      if ([v6 isDownloading])
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }

      if ([v6 isReset])
      {
        v8 = 2;
      }

      else
      {
        v8 = v7;
      }

      v9 = [v6 error];

      if (v9)
      {
        v10 = 2;
      }

      else
      {
        v10 = v8;
      }
    }

    else
    {
      v10 = 0;
    }

    [(CKAttachmentBalloonView *)self setProgressForTransfer:v6 indicator:v10];

    v5 = v11;
  }
}

- (void)attachInvisibleInkEffectView
{
  v3 = [(CKBalloonView *)self invisibleInkEffectController];
  v5 = [v3 effectView];

  v4 = [(LPLinkView *)self->_attachmentView superview];

  if (v4)
  {
    [(CKAttachmentBalloonView *)self insertSubview:v5 aboveSubview:self->_attachmentView];
  }

  else
  {
    [(CKAttachmentBalloonView *)self insertSubview:v5 atIndex:0];
  }
}

- (void)detachInvisibleInkEffectView
{
  v2 = [(CKBalloonView *)self invisibleInkEffectController];
  v3 = [v2 effectView];

  [v3 removeFromSuperview];
}

- (id)imageForInvisibleInkEffectView
{
  v3 = [(CKAttachmentBalloonView *)self attachmentView];
  v4 = v3;
  if (v3)
  {
    [v3 layoutSubviews];
    [(CKAttachmentBalloonView *)self bounds];
    v16.width = v5;
    v16.height = v6;
    UIGraphicsBeginImageContextWithOptions(v16, 1, 0.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    v8 = +[CKUIBehavior sharedBehaviors];
    v9 = [v8 theme];
    v10 = [v9 balloonColorsForColorType:0xFFFFFFFFLL];
    v11 = [v10 firstObject];

    CGContextSetFillColorWithColor(CurrentContext, [v11 CGColor]);
    [(CKAttachmentBalloonView *)self bounds];
    CGContextFillRect(CurrentContext, v17);
    v12 = [v4 layer];
    [v12 renderInContext:CurrentContext];

    v13 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)transferUpdated:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [(CKMediaObject *)self->_mediaObject transfer];
  v7 = [v6 guid];
  v8 = [v5 guid];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Transfer updated, marking needing display.", v11, 2u);
      }
    }

    [(CKAttachmentBalloonView *)self _setProgressWithMediaObject:self->_mediaObject];
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setProgressForTransfer:(id)a3 indicator:(int64_t)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v6 currentBytes];
      v9 = [v6 totalBytes];
      v10 = [v6 error];
      v11 = 134218754;
      v12 = a4;
      v13 = 2048;
      v14 = v8;
      v15 = 2048;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "indicator: %lu, currentBytes: %llu, totalBytes: %llu, error: %@", &v11, 0x2Au);
    }
  }

  switch(a4)
  {
    case 2:
      [(LPLinkView *)self->_attachmentView resetDownloadState];
      break;
    case 1:
      -[LPLinkView _setBytesLoaded:](self->_attachmentView, "_setBytesLoaded:", [v6 currentBytes]);
      break;
    case 0:
      -[LPLinkView _setBytesLoaded:](self->_attachmentView, "_setBytesLoaded:", [v6 totalBytes]);
      break;
  }
}

- (void)richIconDidChange:(id)a3
{
  v7 = a3;
  v5 = [v7 object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(CKAttachmentBalloonView *)v7 richIconDidChange:a2, self, v5];
  }

  if (self->_mediaObject == v5)
  {
    v6 = [objc_opt_class() linkMetadataFromMediaObject:self->_mediaObject];
    [(LPLinkView *)self->_attachmentView setMetadata:v6];
  }
}

- (id)highlightOverlayColor
{
  v2 = [MEMORY[0x1E69DC888] blackColor];
  v3 = [v2 colorWithAlphaComponent:0.2];

  return v3;
}

- (void)insertHighlightOverlayLayer:(id)a3
{
  v4 = a3;
  v6 = [(CKAttachmentBalloonView *)self layer];
  v5 = [(LPLinkView *)self->_attachmentView layer];
  [v6 insertSublayer:v4 below:v5];
}

+ (id)linkMetadataFromMediaObject:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E696ECA0]);
  v6 = [v4 filename];
  v7 = [v4 fileURL];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [v4 fileURL];
    v10 = [v9 path];
    v11 = [v8 displayNameAtPath:v10];

    v6 = v11;
  }

  v12 = objc_alloc_init(MEMORY[0x1E696ECF8]);
  v13 = objc_alloc_init(MEMORY[0x1E696EC58]);
  v14 = [v4 transfer];
  v15 = [v14 isThumbnail];

  if (v15)
  {
    v16 = [v4 transfer];
    v17 = [v16 originalFilename];
    [v13 setName:v17];

    v18 = *MEMORY[0x1E6963710];
    v19 = [v13 name];
    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(v18, [v19 pathExtension], 0);
  }

  else
  {
    [v13 setName:v6];
    PreferredIdentifierForTag = [v4 UTIType];
  }

  [v13 setType:PreferredIdentifierForTag];

  v21 = [v4 transfer];
  [v13 setSize:{objc_msgSend(v21, "totalBytes")}];

  v22 = [a1 _linkViewThumbnailFromMediaObject:v4];
  [v13 setThumbnail:v22];
  [v12 setSpecialization:v13];
  [v5 setSpecialization:v12];

  return v5;
}

+ (id)_linkViewThumbnailFromMediaObject:(id)a3
{
  v3 = a3;
  v4 = [v3 transfer];
  v5 = [v4 error];

  if (v5)
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    v7 = [v6 genericDocumentIcon];
  }

  else if (([v4 isDownloadable] & 1) != 0 && !objc_msgSend(v4, "isThumbnail"))
  {
    v7 = 0;
  }

  else
  {
    v7 = [v3 richIcon];
  }

  v8 = [objc_opt_class() canLazilyLoadImagesUsingLinkPresentation];
  if (v7)
  {
    goto LABEL_8;
  }

  if (!v8)
  {
    v7 = [v3 icon];
    if (!v7)
    {
      v22 = +[CKUIBehavior sharedBehaviors];
      v7 = [v22 genericDocumentIcon];
    }

    goto LABEL_8;
  }

  v7 = [v3 cachedIcon];
  if (v7)
  {
LABEL_8:
    v9 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v7];
    goto LABEL_9;
  }

  v11 = +[CKUIBehavior sharedBehaviors];
  v7 = [v11 genericDocumentIcon];

  v12 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v13 = [v3 UTIType];
  v14 = [v13 copy];

  v15 = [v3 fileURL];
  v16 = [v15 copy];

  v17 = objc_opt_class();
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __61__CKAttachmentBalloonView__linkViewThumbnailFromMediaObject___block_invoke;
  v26 = &unk_1E72F0878;
  v27 = v14;
  v28 = v16;
  v18 = v16;
  v19 = v14;
  [v12 registerObjectOfClass:v17 visibility:3 loadHandler:&v23];
  v20 = objc_alloc(MEMORY[0x1E696EC68]);
  v21 = [v20 initWithPlatformImage:{v7, v23, v24, v25, v26}];
  v9 = [objc_alloc(MEMORY[0x1E696EC68]) initWithItemProvider:v12 properties:0 placeholderImage:v21];

LABEL_9:

  return v9;
}

id __61__CKAttachmentBalloonView__linkViewThumbnailFromMediaObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  [v4 setCancellable:0];
  [v4 setPausable:0];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__CKAttachmentBalloonView__linkViewThumbnailFromMediaObject___block_invoke_2;
  v9[3] = &unk_1E72F0850;
  v10 = v3;
  v7 = v3;
  [CKMediaObject generateAndCacheIconForMediaObjectWithUTIType:v6 fileURL:v5 completion:v9];

  return v4;
}

- (void)setOverrideBackgroundColor:(id)a3
{
  v5 = a3;
  v4 = [(CKAttachmentBalloonView *)self attachmentView];
  [v4 _setOverrideBackgroundColor:v5];

  [(CKAttachmentBalloonView *)self setBackgroundColor:v5];
}

- (CKBalloonDescriptor_t)balloonDescriptor
{
  *&retstr->var9 = 0u;
  *&retstr->var11 = 0u;
  *&retstr->var8.red = 0u;
  *&retstr->var8.blue = 0u;
  *&retstr->var7.red = 0u;
  *&retstr->var7.blue = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var5 = 0u;
  v7.receiver = self;
  v7.super_class = CKAttachmentBalloonView;
  [(CKBalloonDescriptor_t *)&v7 balloonDescriptor];
  retstr->var6 = -1;
  result = [(CKImageBalloonView *)self isScheduled];
  if (result)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  retstr->var2 = v6;
  return result;
}

- (void)configureForMessagePart:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CKAttachmentBalloonView;
  [(CKImageBalloonView *)&v19 configureForMessagePart:v4];
  [v4 strokeColor];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (IMColorComponentsIsZero())
  {
    v13 = +[CKUIBehavior sharedBehaviors];
    v14 = [v13 theme];
    v15 = [v14 unfilledBalloonColorForColorType:8];
    [v15 ck_imColorComponents];
    [(CKBalloonView *)self setStrokeColor:?];
  }

  else
  {
    [(CKBalloonView *)self setStrokeColor:v6, v8, v10, v12];
  }

  [(CKBalloonView *)self setColor:8];
  v16 = [v4 mediaObject];
  v17 = +[CKUIBehavior sharedBehaviors];
  [v17 previewMaxWidth];
  -[CKAttachmentBalloonView configureForMediaObject:previewWidth:orientation:](self, "configureForMediaObject:previewWidth:orientation:", v16, [v4 balloonOrientation], v18);
}

- (void)richIconDidChange:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [a1 name];
  [v9 handleFailureInMethod:a2 object:a3 file:@"CKAttachmentBalloonView.m" lineNumber:446 description:{@"Received notification %@ but the object had an unexpected type or was nil. Expected: CKMediaObject. Got: %@", v8, a4}];
}

@end