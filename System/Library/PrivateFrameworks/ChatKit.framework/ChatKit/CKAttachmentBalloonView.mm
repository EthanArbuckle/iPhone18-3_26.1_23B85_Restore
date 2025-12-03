@interface CKAttachmentBalloonView
+ (id)_linkViewThumbnailFromMediaObject:(id)object;
+ (id)linkMetadataFromMediaObject:(id)object;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGRect)uncroppedSourceFrame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets;
- (CKAttachmentBalloonView)initWithFrame:(CGRect)frame;
- (CKBalloonDescriptor_t)balloonDescriptor;
- (NSString)description;
- (UIEdgeInsets)alignmentRectInsetsForBoundsSize:(CGSize)size;
- (UIEdgeInsets)pluginInsets;
- (UIView)uncroppedSourceView;
- (id)highlightOverlayColor;
- (id)imageForInvisibleInkEffectView;
- (id)traitMutationsForSnapshotRendering;
- (void)_setProgressWithMediaObject:(id)object;
- (void)attachInvisibleInkEffectView;
- (void)configureForComposition:(id)composition;
- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation;
- (void)configureForMessagePart:(id)part;
- (void)detachInvisibleInkEffectView;
- (void)insertHighlightOverlayLayer:(id)layer;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)richIconDidChange:(id)change;
- (void)setMediaObject:(id)object;
- (void)setOverrideBackgroundColor:(id)color;
- (void)setProgressForTransfer:(id)transfer indicator:(int64_t)indicator;
- (void)transferUpdated:(id)updated;
@end

@implementation CKAttachmentBalloonView

- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation
{
  orientationCopy = orientation;
  v9.receiver = self;
  v9.super_class = CKAttachmentBalloonView;
  objectCopy = object;
  [(CKImageBalloonView *)&v9 configureForMediaObject:objectCopy previewWidth:orientationCopy orientation:width];
  [(CKAttachmentBalloonView *)self setMediaObject:objectCopy, v9.receiver, v9.super_class];
}

- (void)configureForComposition:(id)composition
{
  v8.receiver = self;
  v8.super_class = CKAttachmentBalloonView;
  compositionCopy = composition;
  [(CKImageBalloonView *)&v8 configureForComposition:compositionCopy];
  [(CKBalloonView *)self setColor:0xFFFFFFFFLL, v8.receiver, v8.super_class];
  mediaObjects = [compositionCopy mediaObjects];

  lastObject = [mediaObjects lastObject];
  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 previewMaxWidth];
  [(CKAttachmentBalloonView *)self configureForMediaObject:lastObject previewWidth:1 orientation:?];
}

- (CKAttachmentBalloonView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = CKAttachmentBalloonView;
  v3 = [(CKImageBalloonView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v6 _setOverrideBackgroundColor:clearColor];

    [v6 setOpaque:0];
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [v6 setBackgroundColor:clearColor2];

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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(LPLinkView *)self->_attachmentView sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets
{
  if (insets)
  {
    v6 = *(MEMORY[0x1E69DDCE0] + 16);
    *&insets->top = *MEMORY[0x1E69DDCE0];
    *&insets->bottom = v6;
  }

  [(LPLinkView *)self->_attachmentView sizeThatFits:fits.width, fits.height];
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
  hasSuggestedActionsMenu = [(CKBalloonView *)self hasSuggestedActionsMenu];
  [(CKAttachmentBalloonView *)self bounds];
  v7 = v6;
  v9 = v8;
  if (hasSuggestedActionsMenu)
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
  isScheduled = [(CKImageBalloonView *)self isScheduled];
  v24 = 1.0;
  if (isScheduled)
  {
    v24 = 0.5;
  }

  [(LPLinkView *)self->_attachmentView setAlpha:v24];
}

- (UIEdgeInsets)alignmentRectInsetsForBoundsSize:(CGSize)size
{
  v4 = [(CKBalloonView *)self orientation:size.width];
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

  attachmentView = [(CKAttachmentBalloonView *)self attachmentView];
  _dominantBackgroundColor = [attachmentView _dominantBackgroundColor];

  attachmentView2 = [(CKAttachmentBalloonView *)self attachmentView];
  if (_dominantBackgroundColor)
  {
    [attachmentView2 _dominantBackgroundColor];
  }

  else
  {
    [CKMessagesCarouselView resolvedBackgroundColorFor:attachmentView2];
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
  traitMutationsForSnapshotRendering = [(CKBalloonView *)&v9 traitMutationsForSnapshotRendering];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__CKAttachmentBalloonView_traitMutationsForSnapshotRendering__block_invoke;
  aBlock[3] = &unk_1E72F0828;
  v8 = traitMutationsForSnapshotRendering;
  v3 = traitMutationsForSnapshotRendering;
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

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  view = [touch view];
  v5 = objc_opt_class();
  LOBYTE(v5) = v5 != objc_opt_class();

  return v5;
}

- (CGRect)uncroppedSourceFrame
{
  uncroppedSourceView = [(CKAttachmentBalloonView *)self uncroppedSourceView];
  [uncroppedSourceView frame];
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
    selfCopy4 = self;
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
      selfCopy4 = self;
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
      subviews = [v6 subviews];
      v8 = [subviews countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v8)
      {
        v9 = v8;
        v25 = v6;
        v26 = v4;
        selfCopy4 = 0;
        v11 = *v28;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v28 != v11)
            {
              objc_enumerationMutation(subviews);
            }

            v13 = *(*(&v27 + 1) + 8 * i);
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              v14 = _CKFirstSubviewOfType(v13);
              v15 = v14;
              if (v14)
              {
                if (selfCopy4)
                {
                  [(CKAttachmentBalloonView *)selfCopy4 frame];
                  v17 = v16;
                  [(CKAttachmentBalloonView *)selfCopy4 frame];
                  v19 = v17 * v18;
                  [v15 frame];
                  v21 = v20;
                  [v15 frame];
                  if (v21 * v22 > v19)
                  {
                    v23 = v15;

                    selfCopy4 = v23;
                  }
                }

                else
                {
                  selfCopy4 = v14;
                }
              }
            }
          }

          v9 = [subviews countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v9);

        v4 = v26;
        v6 = v25;
        if (selfCopy4)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }
    }

    selfCopy4 = self;
LABEL_26:

    goto LABEL_27;
  }

  selfCopy4 = self;
LABEL_28:

LABEL_29:

  return selfCopy4;
}

- (void)setMediaObject:(id)object
{
  v14 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  if (self->_mediaObject == objectCopy)
  {
    goto LABEL_16;
  }

  objc_storeStrong(&self->_mediaObject, object);
  [(LPLinkView *)self->_attachmentView resetDownloadState];
  v6 = [objc_opt_class() linkMetadataFromMediaObject:self->_mediaObject];
  [(LPLinkView *)self->_attachmentView setMetadata:v6];
  transfer = [(CKMediaObject *)objectCopy transfer];
  if ([transfer isDownloadable])
  {
    goto LABEL_5;
  }

  v8 = +[CKApplicationState isResizing];

  if (!v8)
  {
    transfer = [(CKMediaObject *)objectCopy transfer];
    [(CKAttachmentBalloonView *)self setProgressForTransfer:transfer indicator:0];
LABEL_5:
  }

  [(CKBalloonView *)self setNeedsPrepareForDisplay];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"CKFileTransferUpdatedNotification" object:0];
  if (objectCopy)
  {
    transfer2 = [(CKMediaObject *)objectCopy transfer];
    if (([transfer2 isDownloadable] & 1) != 0 || objc_msgSend(transfer2, "isDownloading"))
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = 138412290;
          selfCopy = self;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Media object not available, listen for updated notifications on %@", &v12, 0xCu);
        }
      }

      [defaultCenter addObserver:self selector:sel_transferUpdated_ name:@"CKFileTransferUpdatedNotification" object:transfer2];
    }

    [defaultCenter addObserver:self selector:sel_richIconDidChange_ name:@"CKRichIconDidChangeNotification" object:objectCopy];
  }

LABEL_16:
}

- (void)_setProgressWithMediaObject:(id)object
{
  objectCopy = object;
  v4 = objc_opt_respondsToSelector();
  v5 = objectCopy;
  if (v4)
  {
    transfer = [objectCopy transfer];
    if ([transfer isDownloadable])
    {
      if ([transfer isDownloading])
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }

      if ([transfer isReset])
      {
        v8 = 2;
      }

      else
      {
        v8 = v7;
      }

      error = [transfer error];

      if (error)
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

    [(CKAttachmentBalloonView *)self setProgressForTransfer:transfer indicator:v10];

    v5 = objectCopy;
  }
}

- (void)attachInvisibleInkEffectView
{
  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
  effectView = [invisibleInkEffectController effectView];

  superview = [(LPLinkView *)self->_attachmentView superview];

  if (superview)
  {
    [(CKAttachmentBalloonView *)self insertSubview:effectView aboveSubview:self->_attachmentView];
  }

  else
  {
    [(CKAttachmentBalloonView *)self insertSubview:effectView atIndex:0];
  }
}

- (void)detachInvisibleInkEffectView
{
  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
  effectView = [invisibleInkEffectController effectView];

  [effectView removeFromSuperview];
}

- (id)imageForInvisibleInkEffectView
{
  attachmentView = [(CKAttachmentBalloonView *)self attachmentView];
  v4 = attachmentView;
  if (attachmentView)
  {
    [attachmentView layoutSubviews];
    [(CKAttachmentBalloonView *)self bounds];
    v16.width = v5;
    v16.height = v6;
    UIGraphicsBeginImageContextWithOptions(v16, 1, 0.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    v8 = +[CKUIBehavior sharedBehaviors];
    theme = [v8 theme];
    v10 = [theme balloonColorsForColorType:0xFFFFFFFFLL];
    firstObject = [v10 firstObject];

    CGContextSetFillColorWithColor(CurrentContext, [firstObject CGColor]);
    [(CKAttachmentBalloonView *)self bounds];
    CGContextFillRect(CurrentContext, v17);
    layer = [v4 layer];
    [layer renderInContext:CurrentContext];

    v13 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)transferUpdated:(id)updated
{
  updatedCopy = updated;
  object = [updatedCopy object];
  transfer = [(CKMediaObject *)self->_mediaObject transfer];
  guid = [transfer guid];
  guid2 = [object guid];
  v9 = [guid isEqualToString:guid2];

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

- (void)setProgressForTransfer:(id)transfer indicator:(int64_t)indicator
{
  v19 = *MEMORY[0x1E69E9840];
  transferCopy = transfer;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      currentBytes = [transferCopy currentBytes];
      totalBytes = [transferCopy totalBytes];
      error = [transferCopy error];
      v11 = 134218754;
      indicatorCopy = indicator;
      v13 = 2048;
      v14 = currentBytes;
      v15 = 2048;
      v16 = totalBytes;
      v17 = 2112;
      v18 = error;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "indicator: %lu, currentBytes: %llu, totalBytes: %llu, error: %@", &v11, 0x2Au);
    }
  }

  switch(indicator)
  {
    case 2:
      [(LPLinkView *)self->_attachmentView resetDownloadState];
      break;
    case 1:
      -[LPLinkView _setBytesLoaded:](self->_attachmentView, "_setBytesLoaded:", [transferCopy currentBytes]);
      break;
    case 0:
      -[LPLinkView _setBytesLoaded:](self->_attachmentView, "_setBytesLoaded:", [transferCopy totalBytes]);
      break;
  }
}

- (void)richIconDidChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(CKAttachmentBalloonView *)changeCopy richIconDidChange:a2, self, object];
  }

  if (self->_mediaObject == object)
  {
    v6 = [objc_opt_class() linkMetadataFromMediaObject:self->_mediaObject];
    [(LPLinkView *)self->_attachmentView setMetadata:v6];
  }
}

- (id)highlightOverlayColor
{
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v3 = [blackColor colorWithAlphaComponent:0.2];

  return v3;
}

- (void)insertHighlightOverlayLayer:(id)layer
{
  layerCopy = layer;
  layer = [(CKAttachmentBalloonView *)self layer];
  layer2 = [(LPLinkView *)self->_attachmentView layer];
  [layer insertSublayer:layerCopy below:layer2];
}

+ (id)linkMetadataFromMediaObject:(id)object
{
  objectCopy = object;
  v5 = objc_alloc_init(MEMORY[0x1E696ECA0]);
  filename = [objectCopy filename];
  fileURL = [objectCopy fileURL];

  if (fileURL)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    fileURL2 = [objectCopy fileURL];
    path = [fileURL2 path];
    v11 = [defaultManager displayNameAtPath:path];

    filename = v11;
  }

  v12 = objc_alloc_init(MEMORY[0x1E696ECF8]);
  v13 = objc_alloc_init(MEMORY[0x1E696EC58]);
  transfer = [objectCopy transfer];
  isThumbnail = [transfer isThumbnail];

  if (isThumbnail)
  {
    transfer2 = [objectCopy transfer];
    originalFilename = [transfer2 originalFilename];
    [v13 setName:originalFilename];

    v18 = *MEMORY[0x1E6963710];
    name = [v13 name];
    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(v18, [name pathExtension], 0);
  }

  else
  {
    [v13 setName:filename];
    PreferredIdentifierForTag = [objectCopy UTIType];
  }

  [v13 setType:PreferredIdentifierForTag];

  transfer3 = [objectCopy transfer];
  [v13 setSize:{objc_msgSend(transfer3, "totalBytes")}];

  v22 = [self _linkViewThumbnailFromMediaObject:objectCopy];
  [v13 setThumbnail:v22];
  [v12 setSpecialization:v13];
  [v5 setSpecialization:v12];

  return v5;
}

+ (id)_linkViewThumbnailFromMediaObject:(id)object
{
  objectCopy = object;
  transfer = [objectCopy transfer];
  error = [transfer error];

  if (error)
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    genericDocumentIcon = [v6 genericDocumentIcon];
  }

  else if (([transfer isDownloadable] & 1) != 0 && !objc_msgSend(transfer, "isThumbnail"))
  {
    genericDocumentIcon = 0;
  }

  else
  {
    genericDocumentIcon = [objectCopy richIcon];
  }

  canLazilyLoadImagesUsingLinkPresentation = [objc_opt_class() canLazilyLoadImagesUsingLinkPresentation];
  if (genericDocumentIcon)
  {
    goto LABEL_8;
  }

  if (!canLazilyLoadImagesUsingLinkPresentation)
  {
    genericDocumentIcon = [objectCopy icon];
    if (!genericDocumentIcon)
    {
      v22 = +[CKUIBehavior sharedBehaviors];
      genericDocumentIcon = [v22 genericDocumentIcon];
    }

    goto LABEL_8;
  }

  genericDocumentIcon = [objectCopy cachedIcon];
  if (genericDocumentIcon)
  {
LABEL_8:
    v9 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:genericDocumentIcon];
    goto LABEL_9;
  }

  v11 = +[CKUIBehavior sharedBehaviors];
  genericDocumentIcon = [v11 genericDocumentIcon];

  v12 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  uTIType = [objectCopy UTIType];
  v14 = [uTIType copy];

  fileURL = [objectCopy fileURL];
  v16 = [fileURL copy];

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
  v21 = [v20 initWithPlatformImage:{genericDocumentIcon, v23, v24, v25, v26}];
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

- (void)setOverrideBackgroundColor:(id)color
{
  colorCopy = color;
  attachmentView = [(CKAttachmentBalloonView *)self attachmentView];
  [attachmentView _setOverrideBackgroundColor:colorCopy];

  [(CKAttachmentBalloonView *)self setBackgroundColor:colorCopy];
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

- (void)configureForMessagePart:(id)part
{
  partCopy = part;
  v19.receiver = self;
  v19.super_class = CKAttachmentBalloonView;
  [(CKImageBalloonView *)&v19 configureForMessagePart:partCopy];
  [partCopy strokeColor];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (IMColorComponentsIsZero())
  {
    v13 = +[CKUIBehavior sharedBehaviors];
    theme = [v13 theme];
    v15 = [theme unfilledBalloonColorForColorType:8];
    [v15 ck_imColorComponents];
    [(CKBalloonView *)self setStrokeColor:?];
  }

  else
  {
    [(CKBalloonView *)self setStrokeColor:v6, v8, v10, v12];
  }

  [(CKBalloonView *)self setColor:8];
  mediaObject = [partCopy mediaObject];
  v17 = +[CKUIBehavior sharedBehaviors];
  [v17 previewMaxWidth];
  -[CKAttachmentBalloonView configureForMediaObject:previewWidth:orientation:](self, "configureForMediaObject:previewWidth:orientation:", mediaObject, [partCopy balloonOrientation], v18);
}

- (void)richIconDidChange:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [a1 name];
  [v9 handleFailureInMethod:a2 object:a3 file:@"CKAttachmentBalloonView.m" lineNumber:446 description:{@"Received notification %@ but the object had an unexpected type or was nil. Expected: CKMediaObject. Got: %@", v8, a4}];
}

@end