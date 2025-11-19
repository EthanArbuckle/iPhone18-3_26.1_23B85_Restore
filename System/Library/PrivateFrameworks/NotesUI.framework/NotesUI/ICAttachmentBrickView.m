@interface ICAttachmentBrickView
+ (BOOL)usesSmallSizeForAttachment:(id)a3 withMetadata:(id)a4 type:(unint64_t)a5 insideSystemPaper:(BOOL)a6;
+ (CGSize)defaultBrickSize;
+ (CGSize)sizeForAttachment:(id)a3 usesSmallSize:(BOOL)a4;
- (BOOL)isMetadataComplete;
- (CGSize)computedSize;
- (ICAddAttachmentsManagerAttachmentInfo)shareExtensionAttachmentInfo;
- (ICAttachment)attachment;
- (ICAttachmentBrickView)initWithType:(unint64_t)a3;
- (double)effectiveLayoutCornerRadius;
- (id)_linkView:(id)a3 playerForAudio:(id)a4;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)quickLookTransitionView;
- (id)typeDescriptionForAccessibility;
- (void)addClient:(id)a3;
- (void)adjustSizeIfNecessary;
- (void)applicationDidBecomeActive;
- (void)attachmentDidLoadNotification:(id)a3;
- (void)attachmentPreviewImagesDidUpdateNotification:(id)a3;
- (void)constrainViews;
- (void)didFailFetchingMetadataNotification:(id)a3;
- (void)displayFilePreview;
- (void)displayGenericURLPreview;
- (void)displayRemoteAttachmentPreview;
- (void)displayScannedDocumentsPreview;
- (void)displaySynapseAttachmentPreview;
- (void)displayUnsupportedAttachmentPreview;
- (void)initialAttachmentPreviewDidLoad:(id)a3;
- (void)layoutSubviews;
- (void)linkView:(id)a3 didFetchMetadata:(id)a4;
- (void)linkViewNeedsResize:(id)a3;
- (void)notifyClientsAboutSizeChangesIfNecessary;
- (void)pause;
- (void)play;
- (void)playbackStartedNotification:(id)a3;
- (void)prepareForReuse;
- (void)progressChangedNotification:(id)a3;
- (void)registerForTraitChanges;
- (void)reloadData;
- (void)removeClient:(id)a3;
- (void)reset;
- (void)resetPlaybackProgressAndState;
- (void)setAttachment:(id)a3;
- (void)setHighlightColor:(id)a3;
- (void)setHighlightPatternRegexFinder:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setShareExtensionAttachmentInfo:(id)a3;
- (void)updateAttachmentBackgroundColorIfNecessary;
- (void)updateAudioClientsProgress:(float)a3;
- (void)updateAudioClientsState:(unint64_t)a3;
- (void)updateSearchResultBackgroundColorIfNecessary;
- (void)updateTitle;
- (void)updateUIWithMetadata:(id)a3;
@end

@implementation ICAttachmentBrickView

+ (CGSize)defaultBrickSize
{
  v2 = 327.0;
  v3 = 72.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (BOOL)usesSmallSizeForAttachment:(id)a3 withMetadata:(id)a4 type:(unint64_t)a5 insideSystemPaper:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  if (!v10 || [v9 attachmentType] == 6 || objc_msgSend(v9, "attachmentType") == 4 || objc_msgSend(v9, "attachmentType") == 2)
  {
    v11 = 1;
  }

  else
  {
    v13 = [v9 preferredViewSize];
    v14 = 1;
    if ([v9 isURL] && !v13)
    {
      v14 = a5 != 2 || v6;
    }

    v15 = 1;
    if ([v9 hasSynapseLink] && v6)
    {
      v16 = [v10 selectedText];
      v15 = v16 == 0;
    }

    v11 = v14 & v15;
  }

  return v11;
}

+ (CGSize)sizeForAttachment:(id)a3 usesSmallSize:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 || [v5 alwaysUsesSmallSize])
  {
    [objc_opt_class() defaultBrickSize];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v10 = 0x406B800000000000;
    v8 = 0x4074700000000000;
  }

  v11 = *&v8;
  v12 = *&v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (ICAttachmentBrickView)initWithType:(unint64_t)a3
{
  [objc_opt_class() defaultBrickSize];
  v6 = v5;
  v8 = v7;
  v16.receiver = self;
  v16.super_class = ICAttachmentBrickView;
  v9 = [(ICAttachmentBrickView *)&v16 initWithFrame:0.0, 0.0, v5, v7];
  if (v9)
  {
    gotLoadHelper_x8__OBJC_CLASS___LPLinkView(v10);
    v12 = [objc_alloc(*(v11 + 3272)) initWithFrame:{0.0, 0.0, v6, v8}];
    linkView = v9->_linkView;
    v9->_linkView = v12;

    v9->_type = a3;
    [(LPLinkView *)v9->_linkView _setPreferredSizeClass:8];
    [(LPLinkView *)v9->_linkView setDelegate:v9];
    [(LPLinkView *)v9->_linkView _setDisableTapGesture:1];
    [(LPLinkView *)v9->_linkView _setDisableHighlightGesture:0];
    if (a3 != 2)
    {
      [(LPLinkView *)v9->_linkView _setDisableAnimations:1];
      [(LPLinkView *)v9->_linkView _setDisableHighlightGesture:1];
      [(LPLinkView *)v9->_linkView _setDisableAutoPlay:1];
    }

    if ([MEMORY[0x1E69DC938] ic_isVision] && (a3 > 4 || ((1 << a3) & 0x1A) == 0))
    {
      [(LPLinkView *)v9->_linkView setOverrideUserInterfaceStyle:1];
      v14 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
      [(LPLinkView *)v9->_linkView _setOverrideBackgroundColor:v14];
    }

    [(ICAttachmentBrickView *)v9 updateSearchResultBackgroundColorIfNecessary];
    [(ICAttachmentBrickView *)v9 registerForTraitChanges];
    [(ICAttachmentBrickView *)v9 updateAttachmentBackgroundColorIfNecessary];
    [(ICAttachmentBrickView *)v9 addSubview:v9->_linkView];
    [(ICAttachmentBrickView *)v9 constrainViews];
  }

  return v9;
}

- (void)setAttachment:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_attachment);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_attachment, obj);
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = *MEMORY[0x1E69B73F0];
    [v6 removeObserver:self name:*MEMORY[0x1E69B73F0] object:0];

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = *MEMORY[0x1E69B7420];
    [v8 removeObserver:self name:*MEMORY[0x1E69B7420] object:0];

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    v11 = *MEMORY[0x1E69B74B8];
    [v10 removeObserver:self name:*MEMORY[0x1E69B74B8] object:0];

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 removeObserver:self name:@"ICAttachmentDidFailFetchingMetadataNotification" object:0];

    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      v5 = [(ICAttachmentBrickView *)self app_updateViewAnnotation];
    }

    if (obj)
    {
      v13 = [MEMORY[0x1E696AD88] defaultCenter];
      v14 = [obj objectID];
      [v13 addObserver:self selector:sel_attachmentDidLoadNotification_ name:v7 object:v14];

      if ([obj attachmentType] == 6 || objc_msgSend(obj, "attachmentType") == 4 || objc_msgSend(obj, "attachmentType") == 2)
      {
        v15 = 1;
      }

      else
      {
        v15 = [obj hasFallbackPDF];
      }

      if ([obj attachmentType] == 8 || objc_msgSend(obj, "attachmentType") == 15 || (objc_msgSend(obj, "attachmentType") == 11) | v15 & 1)
      {
        v16 = [MEMORY[0x1E696AD88] defaultCenter];
        v17 = [obj objectID];
        [v16 addObserver:self selector:sel_attachmentPreviewImagesDidUpdateNotification_ name:v9 object:v17];
      }

      if ([obj attachmentType] == 8 || objc_msgSend(obj, "attachmentType") == 7)
      {
        v18 = [MEMORY[0x1E696AD88] defaultCenter];
        v19 = [obj objectID];
        [v18 addObserver:self selector:sel_initialAttachmentPreviewDidLoad_ name:@"ICAttachmentInitialPreviewDidLoadNotification" object:v19];

        v20 = [MEMORY[0x1E696AD88] defaultCenter];
        [v20 addObserver:self selector:sel_didFailFetchingMetadataNotification_ name:@"ICAttachmentDidFailFetchingMetadataNotification" object:obj];
      }

      else
      {
        if (!v15)
        {
          goto LABEL_17;
        }

        v20 = [MEMORY[0x1E696AD88] defaultCenter];
        v22 = [obj media];
        v23 = [v22 objectID];
        [v20 addObserver:self selector:sel_mediaDidLoadNotification_ name:v11 object:v23];
      }

LABEL_17:
      v21 = [MEMORY[0x1E696AD88] defaultCenter];
      [v21 addObserver:self selector:sel_applicationDidBecomeActive name:*MEMORY[0x1E69DDAB0] object:0];

      v5 = [(ICAttachmentBrickView *)self reloadData];
    }
  }

  MEMORY[0x1EEE66BB8](v5);
}

- (void)setHighlightPatternRegexFinder:(id)a3
{
  objc_storeStrong(&self->_highlightPatternRegexFinder, a3);
  v5 = a3;
  v7 = [v5 normalRegex];

  v6 = [(ICAttachmentBrickView *)self linkView];
  [v6 _setEmphasizedTextExpression:v7];
}

- (void)setShareExtensionAttachmentInfo:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_shareExtensionAttachmentInfo, v4);
  v5 = [v4 attachment];

  if (v5)
  {
    v6 = [v4 attachment];
    [(ICAttachmentBrickView *)self setAttachment:v6];
  }

  else
  {
    v6 = [v4 mediaURL];
    objc_initWeak(&location, self);
    gotLoadHelper_x8__OBJC_CLASS___LPMetadataProvider(v7);
    v9 = objc_alloc_init(*(v8 + 3296));
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__ICAttachmentBrickView_setShareExtensionAttachmentInfo___block_invoke;
    v11[3] = &unk_1E846E228;
    objc_copyWeak(&v12, &location);
    [v9 startFetchingMetadataForURL:v6 completionHandler:v11];
    objc_destroyWeak(&v12);

    objc_destroyWeak(&location);
  }

  v10 = [(ICAttachmentBrickView *)self linkView];
  [v10 _setDisablePlayback:1];
}

void __57__ICAttachmentBrickView_setShareExtensionAttachmentInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v8, (a1 + 32));
  v7 = v5;
  performBlockOnMainThread();

  objc_destroyWeak(&v8);
}

void __57__ICAttachmentBrickView_setShareExtensionAttachmentInfo___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  v3 = [WeakRetained linkView];
  [v3 setMetadata:v2];

  [WeakRetained notifyClientsAboutSizeChangesIfNecessary];
}

- (void)reloadData
{
  v3 = [(ICAttachmentBrickView *)self attachment];

  if (!v3)
  {
    return;
  }

  v4 = [(ICAttachmentBrickView *)self attachment];
  v5 = [v4 hasSynapseLink];

  if (!v5)
  {
    v6 = [(ICAttachmentBrickView *)self attachment];
    v7 = [v6 URL];
    v8 = [v7 ic_isWebURL];

    if (v8)
    {
      [(ICAttachmentBrickView *)self displayRemoteAttachmentPreview];
      goto LABEL_15;
    }

    v9 = [(ICAttachmentBrickView *)self attachment];
    v10 = [v9 URL];
    if (v10)
    {
      v11 = v10;
      v12 = [(ICAttachmentBrickView *)self attachment];
      v13 = [v12 URL];
      v14 = [v13 ic_isWebURL];

      if ((v14 & 1) == 0)
      {
        [(ICAttachmentBrickView *)self displayGenericURLPreview];
        goto LABEL_15;
      }
    }

    else
    {
    }

    v15 = [(ICAttachmentBrickView *)self attachment];
    if ([v15 attachmentType] == 11)
    {

LABEL_14:
      [(ICAttachmentBrickView *)self displayScannedDocumentsPreview];
      goto LABEL_15;
    }

    v16 = [(ICAttachmentBrickView *)self attachment];
    v17 = [v16 attachmentType];

    if (v17 == 15)
    {
      goto LABEL_14;
    }

    v18 = [(ICAttachmentBrickView *)self attachment];
    if ([v18 isPasswordProtected])
    {
    }

    else
    {
      v19 = [(ICAttachmentBrickView *)self attachment];
      v20 = [v19 hasFallbackPDF];

      if (v20)
      {
        goto LABEL_25;
      }
    }

    v21 = [(ICAttachmentBrickView *)self attachment];
    v22 = [v21 attachmentType];

    if (v22 == 1)
    {
      [(ICAttachmentBrickView *)self displayUnsupportedAttachmentPreview];
      goto LABEL_15;
    }

    v23 = [(ICAttachmentBrickView *)self attachment];
    v24 = [v23 isLoadingFromCloud];

    if (v24)
    {
      v25 = [(ICAttachmentBrickView *)self linkView];
      v26 = [(ICAttachmentBrickView *)self attachment];
      v27 = [v26 loadingAttachmentsMetadata];
      [v25 _setMetadata:v27 isFinal:0];

      goto LABEL_15;
    }

LABEL_25:
    [(ICAttachmentBrickView *)self displayFilePreview];
    goto LABEL_15;
  }

  [(ICAttachmentBrickView *)self displaySynapseAttachmentPreview];
LABEL_15:
  [(ICAttachmentBrickView *)self adjustSizeIfNecessary];

  [(ICAttachmentBrickView *)self updateAttachmentBackgroundColorIfNecessary];
}

- (void)updateTitle
{
  v3 = [(ICAttachmentBrickView *)self linkView];
  v4 = [v3 metadata];

  v5 = [(ICAttachmentBrickView *)self attachment];
  v6 = [v5 title];

  if (v6)
  {
    objc_initWeak(&location, self);
    v7 = [(ICAttachmentBrickView *)self attachment];
    v8 = [v7 managedObjectContext];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36__ICAttachmentBrickView_updateTitle__block_invoke;
    v9[3] = &unk_1E846E250;
    objc_copyWeak(&v12, &location);
    v10 = v4;
    v11 = v5;
    [v8 performBlock:v9];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __36__ICAttachmentBrickView_updateTitle__block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v2 = [a1[5] title];
  [a1[4] setTitle:v2];

  v3 = [a1[4] specialization];
  gotLoadHelper_x8__OBJC_CLASS___LPFileMetadata(v4);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [a1[4] specialization];
    if (v6)
    {
      v7 = [a1[5] title];
      [v6 setName:v7];

      [a1[4] setSpecialization:v6];
    }
  }

  [WeakRetained updateUIWithMetadata:a1[4]];
}

- (void)prepareForReuse
{
  [(ICAttachmentBrickView *)self setSelected:0];
  [(ICAttachmentBrickView *)self setHighlightColor:0];
  [(ICAttachmentBrickView *)self setHighlightPatternRegexFinder:0];

  [(ICAttachmentBrickView *)self setAttachment:0];
}

- (void)setHighlightColor:(id)a3
{
  objc_storeStrong(&self->_highlightColor, a3);
  v5 = a3;
  if (v5)
  {
    v6 = 2.0;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = [(ICAttachmentBrickView *)self linkView];
  v8 = [v7 layer];
  [v8 setBorderWidth:v6];

  v9 = [v5 CGColor];
  v11 = [(ICAttachmentBrickView *)self linkView];
  v10 = [v11 layer];
  [v10 setBorderColor:v9];
}

- (double)effectiveLayoutCornerRadius
{
  v2 = [(ICAttachmentBrickView *)self linkView];
  [v2 _cornerRadius];
  v4 = v3;

  return v4;
}

- (CGSize)computedSize
{
  v3 = [(ICAttachmentBrickView *)self linkView];
  [(ICAttachmentBrickView *)self frame];
  [v3 sizeThatFits:{CGRectGetWidth(v13), 800.0}];
  v5 = v4;

  v6 = [(ICAttachmentBrickView *)self linkView];
  [v6 systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
  v8 = v7;

  if (v5 >= v8)
  {
    v9 = v5;
  }

  else
  {
    v9 = v8;
  }

  v10 = 72.0;
  if (v9 >= 72.0)
  {
    v10 = v9;
  }

  v11 = 327.0;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)updateAttachmentBackgroundColorIfNecessary
{
  if (([MEMORY[0x1E69DC938] ic_isVision] & 1) == 0)
  {
    v8 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F4FC3BB8];
    v3 = MEMORY[0x1E696AD98];
    v4 = [(ICAttachmentBrickView *)self attachment];
    v5 = [v3 numberWithShort:{objc_msgSend(v4, "attachmentType")}];
    v6 = [v8 containsObject:v5];

    if (v6)
    {
      v7 = [objc_opt_class() standardBackgroundColor];
      [(LPLinkView *)self->_linkView _setOverrideBackgroundColor:v7];
    }

    else
    {
      [(LPLinkView *)self->_linkView _setOverrideBackgroundColor:0];
    }
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  self->_selected = a3;
  [(ICAttachmentBrickView *)self updateSearchResultBackgroundColorIfNecessary];
  if (v3)
  {
    v6 = [MEMORY[0x1E69DC888] ICSelectedAttachmentBrickHighlightColor];
  }

  else
  {
    v6 = 0;
  }

  v5 = [(ICAttachmentBrickView *)self linkView];
  [v5 setTintColor:v6];

  if (v3)
  {
  }
}

- (id)quickLookTransitionView
{
  v2 = [(ICAttachmentBrickView *)self linkView];
  v3 = [v2 _primaryMediaView];

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ICAttachmentBrickView;
  [(ICAttachmentBrickView *)&v3 layoutSubviews];
  [(ICAttachmentBrickView *)self setHasPerformedInitialLayout:1];
}

- (id)accessibilityLabel
{
  v3 = [(ICAttachmentBrickView *)self typeDescriptionForAccessibility];
  v4 = [(ICAttachmentBrickView *)self linkView];
  v5 = [v4 accessibilityLabel];
  v12 = __ICAccessibilityStringForVariables(1, v3, v6, v7, v8, v9, v10, v11, v5);

  return v12;
}

- (id)accessibilityValue
{
  v2 = [(ICAttachmentBrickView *)self linkView];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (id)typeDescriptionForAccessibility
{
  v3 = [(ICAttachmentBrickView *)self attachment];
  v4 = [v3 attachmentType];

  switch(v4)
  {
    case 0:
    case 1:
      v7 = @"attachment";
      goto LABEL_13;
    case 2:
      v7 = @"file attachment";
      goto LABEL_13;
    case 3:
    case 5:
    case 9:
    case 10:
    case 12:
    case 13:
      v5 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(ICAttachmentBrickView *)v5 typeDescriptionForAccessibility];
      }

      v6 = &stru_1F4F94F00;
      goto LABEL_14;
    case 4:
      v7 = @"audio attachment";
      goto LABEL_13;
    case 6:
    case 14:
      v7 = @"PDF attachment";
      goto LABEL_13;
    case 7:
      v7 = @"map attachment";
      goto LABEL_13;
    case 8:
      v8 = [(ICAttachmentBrickView *)self attachment];
      v9 = [v8 isAppStore];

      if (v9)
      {
        v7 = @"app attachment";
LABEL_13:
        v6 = __ICLocalizedFrameworkString_impl(v7, v7, 0, 1);
        goto LABEL_14;
      }

      v11 = [(ICAttachmentBrickView *)self attachment];
      v12 = [v11 isiTunes];

      if (!v12)
      {
        v17 = [(ICAttachmentBrickView *)self attachment];
        v18 = [v17 isNews];

        if (v18)
        {
          v7 = @"news article attachment";
        }

        else
        {
          v7 = @"website attachment";
        }

        goto LABEL_13;
      }

      v6 = __ICLocalizedFrameworkString_impl(@"iTunes media attachment", @"iTunes media attachment", 0, 1);
      v13 = [(ICAttachmentBrickView *)self attachment];
      v14 = [v13 metadata];

      if (v14)
      {
        v15 = [v14 objectForKeyedSubscript:*MEMORY[0x1E69B73F8]];

        if (v15)
        {
          v16 = __ICLocalizedFrameworkString_impl(@"book attachment", @"book attachment", 0, 1);

          v6 = v16;
        }
      }

LABEL_14:

      return v6;
    case 11:
    case 15:
      v7 = @"scanned document attachment";
      goto LABEL_13;
    default:
      v6 = 0;
      goto LABEL_14;
  }
}

- (void)linkViewNeedsResize:(id)a3
{
  if ([(ICAttachmentBrickView *)self type]== 2)
  {

    [(ICAttachmentBrickView *)self notifyClientsAboutSizeChangesIfNecessary];
  }
}

- (void)linkView:(id)a3 didFetchMetadata:(id)a4
{
  v5 = a4;
  v6 = [(ICAttachmentBrickView *)self attachment];
  [v6 persistLinkMetadata:v5];

  if ([(ICAttachmentBrickView *)self type]== 2)
  {

    [(ICAttachmentBrickView *)self notifyClientsAboutSizeChangesIfNecessary];
  }
}

- (void)attachmentDidLoadNotification:(id)a3
{
  if (![(ICAttachmentBrickView *)self isMetadataComplete])
  {

    [(ICAttachmentBrickView *)self reloadData];
  }
}

- (void)attachmentPreviewImagesDidUpdateNotification:(id)a3
{
  v5 = [(ICAttachmentBrickView *)self isMetadataComplete];
  if (!v5)
  {
    v3 = [(ICAttachmentBrickView *)self attachment];
    if (![v3 hasSynapseLink])
    {
LABEL_5:

LABEL_9:
      v9 = [(ICAttachmentBrickView *)self linkView];
      v10 = [v9 metadata];
      v11 = [v10 image];
      if (v11)
      {

        [(ICAttachmentBrickView *)self reloadData];
      }

      else
      {
        v12 = [(ICAttachmentBrickView *)self attachment];
        v13 = [v12 metadataExists];

        [(ICAttachmentBrickView *)self reloadData];
        if (v13 && [(ICAttachmentBrickView *)self type]== 2)
        {

          [(ICAttachmentBrickView *)self notifyClientsAboutSizeChangesIfNecessary];
        }
      }

      return;
    }
  }

  v6 = [(ICAttachmentBrickView *)self attachment];
  if ([v6 attachmentType] == 11)
  {

    if (v5)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

  v7 = [(ICAttachmentBrickView *)self attachment];
  v8 = [v7 attachmentType];

  if (!v5)
  {
  }

  if (v8 == 15)
  {
    goto LABEL_9;
  }
}

- (void)initialAttachmentPreviewDidLoad:(id)a3
{
  [(ICAttachmentBrickView *)self reloadData];
  if ([(ICAttachmentBrickView *)self type]== 2)
  {

    [(ICAttachmentBrickView *)self notifyClientsAboutSizeChangesIfNecessary];
  }
}

- (void)didFailFetchingMetadataNotification:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  objc_copyWeak(&v5, &location);
  performBlockOnMainThread();
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __61__ICAttachmentBrickView_didFailFetchingMetadataNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained linkView];
  v2 = [v1 metadata];

  [WeakRetained setWaitingForMetadata:0];
  v3 = [WeakRetained linkView];
  [v3 _setMetadata:v2 isFinal:1];
}

- (void)applicationDidBecomeActive
{
  v3 = [(ICAttachmentBrickView *)self attachment];
  v4 = [v3 preferredViewSize];

  v5 = [(ICAttachmentBrickView *)self attachment];
  v6 = [v5 URL];
  v7 = [v6 ic_isBooksURL];

  if (v7 && !v4)
  {

    [(ICAttachmentBrickView *)self reloadData];
  }
}

- (void)play
{
  v3 = [(ICAttachmentBrickView *)self attachment];
  v4 = [v3 isAudio];

  if (v4)
  {
    v8 = +[ICAudioController sharedAudioController];
    v5 = [v8 currentAttachment];
    v6 = [(ICAttachmentBrickView *)self attachment];

    if (v5 != v6)
    {
      [v8 stop];
    }

    v7 = [(ICAttachmentBrickView *)self attachment];
    [v8 play:v7];
  }
}

- (void)pause
{
  v2 = [(ICAttachmentBrickView *)self attachment];
  v3 = [v2 isAudio];

  if (v3)
  {
    v4 = +[ICAudioController sharedAudioController];
    [v4 pause];
  }
}

- (void)reset
{
  v2 = [(ICAttachmentBrickView *)self attachment];
  v3 = [v2 isAudio];

  if (v3)
  {
    v4 = +[ICAudioController sharedAudioController];
    [v4 stop];
  }
}

- (void)addClient:(id)a3
{
  v16 = a3;
  v4 = [(ICAttachmentBrickView *)self attachment];
  v5 = [v4 isAudio];

  if (v5)
  {
    v6 = [(ICAttachmentBrickView *)self audioPlayerClients];

    if (!v6)
    {
      v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      [(ICAttachmentBrickView *)self setAudioPlayerClients:v7];

      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      v9 = [(ICAttachmentBrickView *)self attachment];
      [v8 addObserver:self selector:sel_progressChangedNotification_ name:@"ICAudioPlaybackTimeChangedNotification" object:v9];

      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      [v10 addObserver:self selector:sel_playbackStartedNotification_ name:@"ICAudioPlaybackPlayNotification" object:0];

      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      v12 = [(ICAttachmentBrickView *)self attachment];
      [v11 addObserver:self selector:sel_playbackPausedNotification_ name:@"ICAudioPlaybackPauseNotification" object:v12];

      v13 = [MEMORY[0x1E696AD88] defaultCenter];
      v14 = [(ICAttachmentBrickView *)self attachment];
      [v13 addObserver:self selector:sel_playbackStoppedNotification_ name:@"ICAudioPlaybackStopNotification" object:v14];
    }

    v15 = [(ICAttachmentBrickView *)self audioPlayerClients];
    [v15 addObject:v16];
  }
}

- (void)removeClient:(id)a3
{
  v7 = a3;
  v4 = [(ICAttachmentBrickView *)self attachment];
  v5 = [v4 isAudio];

  if (v5)
  {
    v6 = [(ICAttachmentBrickView *)self audioPlayerClients];
    [v6 removeObject:v7];
  }
}

- (id)_linkView:(id)a3 playerForAudio:(id)a4
{
  v5 = [(ICAttachmentBrickView *)self attachment:a3];
  v6 = [v5 isAudio];

  if (v6)
  {
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)playbackStartedNotification:(id)a3
{
  v4 = [a3 object];
  v5 = [(ICAttachmentBrickView *)self attachment];
  if (v4 == v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 4;
  }

  [(ICAttachmentBrickView *)self updateAudioClientsState:v6];
}

- (void)progressChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v11 = [v5 objectForKeyedSubscript:@"ICAudioPlaybackNotificationTimeKey"];

  v6 = [v4 userInfo];

  v7 = [v6 objectForKeyedSubscript:@"ICAudioPlaybackNotificationDurationKey"];

  [v11 floatValue];
  v9 = v8;
  [v7 floatValue];
  if ((v9 / v10) >= 1.0)
  {
    [(ICAttachmentBrickView *)self resetPlaybackProgressAndState];
  }

  else
  {
    [(ICAttachmentBrickView *)self updateAudioClientsProgress:?];
  }
}

- (void)resetPlaybackProgressAndState
{
  [(ICAttachmentBrickView *)self updateAudioClientsState:0];

  [(ICAttachmentBrickView *)self updateAudioClientsProgress:0.0];
}

- (void)updateAudioClientsState:(unint64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(ICAttachmentBrickView *)self audioPlayerClients];
  v6 = [v5 objectEnumerator];
  v7 = [v6 allObjects];

  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) audioPlayer:self didTransitionToState:a3];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [(ICAttachmentBrickView *)self setPlayerState:a3];
}

- (void)updateAudioClientsProgress:(float)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(ICAttachmentBrickView *)self audioPlayerClients];
  v6 = [v5 objectEnumerator];
  v7 = [v6 allObjects];

  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v7);
        }

        *&v9 = a3;
        [*(*(&v14 + 1) + 8 * v12++) audioPlayer:self didChangeProgress:v9];
      }

      while (v10 != v12);
      v10 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  *&v13 = a3;
  [(ICAttachmentBrickView *)self setPlaybackProgress:v13];
}

- (void)displaySynapseAttachmentPreview
{
  v3 = [(ICAttachmentBrickView *)self attachment];
  v4 = [v3 synapseBasedMetadata];

  [(ICAttachmentBrickView *)self updateUIWithMetadata:v4];
}

- (void)displayRemoteAttachmentPreview
{
  v3 = [(ICAttachmentBrickView *)self attachment];
  v18 = [v3 retrieveLinkMetadata];

  if (v18)
  {
    [(ICAttachmentBrickView *)self setWaitingForMetadata:0];
    goto LABEL_9;
  }

  v4 = [(ICAttachmentBrickView *)self attachment];
  v5 = [v4 wasCreatedByCurrentUser];

  if (v5)
  {
    v6 = [(ICAttachmentBrickView *)self shareExtensionAttachmentInfo];
    if (!v6)
    {
      if ([(ICAttachmentBrickView *)self waitingForMetadata])
      {
LABEL_8:
        [(ICAttachmentBrickView *)self setWaitingForMetadata:1];
        v7 = [(ICAttachmentBrickView *)self attachment];
        v18 = [v7 fallbackRemoteAttachmentMetadata];

LABEL_9:
        v8 = [(ICAttachmentBrickView *)self attachment];
        [v8 addPreviewImageToMetadata:v18];

        if ([(ICAttachmentBrickView *)self waitingForMetadata])
        {
          v9 = [(ICAttachmentBrickView *)self attachment];
          v10 = [v9 urlExpired];

          v11 = [(ICAttachmentBrickView *)self linkView];
          [v11 _setMetadata:v18 isFinal:v10];

          if ((v10 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v12 = [(ICAttachmentBrickView *)self linkView];
          [v12 _setMetadata:v18 isFinal:1];
        }

        [(ICAttachmentBrickView *)self notifyClientsAboutSizeChangesIfNecessary];
LABEL_14:
        v13 = v18;
        goto LABEL_15;
      }

      v6 = [(ICAttachmentBrickView *)self attachment];
      [v6 requestRemoteMetadata];
    }

    goto LABEL_8;
  }

  v14 = [(ICAttachmentBrickView *)self attachment];
  v15 = [v14 URL];
  v16 = [(ICAttachmentBrickView *)self linkView];
  [v16 setURL:v15];

  v17 = [(ICAttachmentBrickView *)self linkView];
  [v17 _setAllowsTapToLoad:1];

  v13 = 0;
LABEL_15:
}

- (void)displayGenericURLPreview
{
  v4 = [(ICAttachmentBrickView *)self attachment];
  v3 = [v4 plainURLMetadata];
  [(ICAttachmentBrickView *)self updateUIWithMetadata:v3];
}

- (void)displayFilePreview
{
  v3 = [(ICAttachmentBrickView *)self attachment];
  if ([v3 attachmentType] == 4)
  {
  }

  else
  {
    v4 = [(ICAttachmentBrickView *)self attachment];
    v5 = [v4 metadataExists];

    if (v5)
    {
      v6 = [(ICAttachmentBrickView *)self attachment];
      v7 = [v6 retrieveLinkMetadata];
      goto LABEL_6;
    }
  }

  v6 = [(ICAttachmentBrickView *)self attachment];
  v7 = [v6 fileMetadata];
LABEL_6:
  v9 = v7;

  [(ICAttachmentBrickView *)self updateUIWithMetadata:v9];
  v8 = [(ICAttachmentBrickView *)self attachment];
  [v8 requestFileMetadataIfNecessary];
}

- (void)displayScannedDocumentsPreview
{
  v4 = [(ICAttachmentBrickView *)self attachment];
  v3 = [v4 scannedDocumentsMetadata];
  [(ICAttachmentBrickView *)self updateUIWithMetadata:v3];
}

- (void)displayUnsupportedAttachmentPreview
{
  gotLoadHelper_x8__OBJC_CLASS___LPLinkMetadata(v2);
  v15 = objc_alloc_init(*(v4 + 3232));
  v5 = [(ICAttachmentBrickView *)self attachment];
  v6 = [v5 unsupportedAttachmentTitle];
  [v15 setTitle:v6];

  v7 = [(ICAttachmentBrickView *)self attachment];
  v8 = [v7 unsupportedAttachmentSubtitle];
  [v15 setSummary:v8];

  v9 = [(ICAttachmentBrickView *)self attachment];
  [v9 addPreviewImageToMetadata:v15];

  v10 = [v15 image];

  if (!v10)
  {
    v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"paperclip"];
    gotLoadHelper_x8__OBJC_CLASS___LPImage(v12);
    v14 = [objc_alloc(*(v13 + 3176)) initWithPlatformImage:v11];
    [v15 setImage:v14];
  }

  [(ICAttachmentBrickView *)self updateUIWithMetadata:v15];
}

- (void)updateUIWithMetadata:(id)a3
{
  v4 = a3;
  if (!ICInternalSettingsIsPDFsInNotesEnabled())
  {
    goto LABEL_9;
  }

  v5 = [(ICAttachmentBrickView *)self attachment];
  if ([v5 attachmentType] != 6)
  {
    v6 = [(ICAttachmentBrickView *)self attachment];
    if ([v6 attachmentType] != 14)
    {
      v13 = [(ICAttachmentBrickView *)self attachment];
      v14 = [v13 attachmentType];

      if (v14 != 15)
      {
        v15 = [(ICAttachmentBrickView *)self attachment];
        v16 = [v15 attachmentType];

        if (v16 != 11)
        {
          goto LABEL_9;
        }

        v10 = [v4 title];
        v11 = [v10 ic_truncatedStringWithMaxLength:30 truncated:0];
        [v4 setTitle:v11];
        goto LABEL_8;
      }

      goto LABEL_6;
    }
  }

LABEL_6:
  v7 = [v4 specialization];
  gotLoadHelper_x8__OBJC_CLASS___LPFileMetadata(v8);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [v4 specialization];
    v11 = [v10 name];
    v12 = [v11 ic_truncatedStringWithMaxLength:30 truncated:0];
    [v10 setName:v12];

LABEL_8:
  }

LABEL_9:
  objc_initWeak(&location, self);
  objc_copyWeak(&v18, &location);
  v17 = v4;
  performBlockOnMainThread();

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __46__ICAttachmentBrickView_updateUIWithMetadata___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  v3 = [WeakRetained linkView];
  [v3 setMetadata:v2];
}

- (void)adjustSizeIfNecessary
{
  v3 = objc_opt_class();
  v4 = [(ICAttachmentBrickView *)self attachment];
  v5 = [(ICAttachmentBrickView *)self linkView];
  v6 = [v5 metadata];
  LODWORD(v3) = [v3 usesSmallSizeForAttachment:v4 withMetadata:v6 type:-[ICAttachmentBrickView type](self insideSystemPaper:{"type"), -[ICAttachmentBrickView isInsideSystemPaper](self, "isInsideSystemPaper")}];

  if (v3)
  {
    v7 = 8;
  }

  else
  {
    v7 = 9;
  }

  v8 = [(ICAttachmentBrickView *)self linkView];
  [v8 _setPreferredSizeClass:v7];

  [(ICAttachmentBrickView *)self effectiveLayoutCornerRadius];
  v10 = v9;
  v11 = [(ICAttachmentBrickView *)self layer];
  [v11 setCornerRadius:v10];

  [(ICAttachmentBrickView *)self effectiveLayoutCornerRadius];
  v13 = v12;
  v15 = [(ICAttachmentBrickView *)self linkView];
  v14 = [v15 layer];
  [v14 setCornerRadius:v13];
}

- (void)notifyClientsAboutSizeChangesIfNecessary
{
  v3 = [(ICAttachmentBrickView *)self window];

  if (v3)
  {
    v4 = [(ICAttachmentBrickView *)self linkView];
    [v4 sizeThatFits:{327.0, 800.0}];
    v6 = v5;

    if ([(ICAttachmentBrickView *)self hasPerformedInitialLayout])
    {
      if (v6 > 72.0)
      {
        v7 = [(ICAttachmentBrickView *)self linkView];
        [v7 frame];
        Height = CGRectGetHeight(v14);

        if (v6 != Height)
        {
          v12 = [MEMORY[0x1E696AD88] defaultCenter];
          v9 = *MEMORY[0x1E69B73D8];
          v10 = [(ICAttachmentBrickView *)self attachment];
          v11 = [v10 objectID];
          [v12 postNotificationName:v9 object:v11];
        }
      }
    }
  }
}

- (void)constrainViews
{
  v27[4] = *MEMORY[0x1E69E9840];
  [(ICAttachmentBrickView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [(ICAttachmentBrickView *)self linkView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(ICAttachmentBrickView *)self linkView];
  v5 = [v4 topAnchor];
  v6 = [(ICAttachmentBrickView *)self topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  v8 = [(ICAttachmentBrickView *)self linkView];
  v9 = [v8 bottomAnchor];
  v10 = [(ICAttachmentBrickView *)self bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  v12 = [(ICAttachmentBrickView *)self linkView];
  v13 = [v12 leadingAnchor];
  v14 = [(ICAttachmentBrickView *)self leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  v16 = [(ICAttachmentBrickView *)self linkView];
  v17 = [v16 trailingAnchor];
  v18 = [(ICAttachmentBrickView *)self trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  v20 = MEMORY[0x1E696ACD8];
  v27[0] = v7;
  v27[1] = v11;
  v27[2] = v15;
  v27[3] = v19;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
  [v20 activateConstraints:v21];

  if ([(ICAttachmentBrickView *)self type]&& [(ICAttachmentBrickView *)self type]!= 1 && ![(ICAttachmentBrickView *)self isInsideSystemPaper])
  {
    if ([(ICAttachmentBrickView *)self type]== 3)
    {
      v22 = -1;
    }

    else if ([(ICAttachmentBrickView *)self type]== 4)
    {
      v22 = -1;
    }

    else
    {
      v22 = 0;
    }

    v23 = [MEMORY[0x1E696ACD8] constraintWithItem:self attribute:7 relatedBy:v22 toItem:0 attribute:0 multiplier:1.0 constant:327.0];
    [(ICAttachmentBrickView *)self setWidthConstraint:v23];

    v24 = [(ICAttachmentBrickView *)self widthConstraint];
    [v24 setActive:1];
  }

  if ([(ICAttachmentBrickView *)self type]== 4 || [(ICAttachmentBrickView *)self type]== 1)
  {
    v25 = [MEMORY[0x1E696ACD8] constraintWithItem:self attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:72.0];
    [(ICAttachmentBrickView *)self setHeightConstraint:v25];

    v26 = [(ICAttachmentBrickView *)self heightConstraint];
    [v26 setActive:1];
  }
}

- (void)updateSearchResultBackgroundColorIfNecessary
{
  if ([(ICAttachmentBrickView *)self type]== 1)
  {
    v3 = [(ICAttachmentBrickView *)self traitCollection];
    v4 = [v3 userInterfaceStyle];

    if ([(ICAttachmentBrickView *)self selected])
    {
      v5 = [MEMORY[0x1E69DC888] ICTintColor];
    }

    else
    {
      if (v4 != 1)
      {
        v7 = 0;
        goto LABEL_11;
      }

      v5 = [MEMORY[0x1E69DC888] secondarySystemFillColor];
    }

    v7 = v5;
LABEL_11:
    v6 = [(ICAttachmentBrickView *)self linkView];
    [v6 _setOverrideBackgroundColor:v7];

    return;
  }

  [(ICAttachmentBrickView *)self updateAttachmentBackgroundColorIfNecessary];
}

- (void)registerForTraitChanges
{
  v4 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
  v3 = [(ICAttachmentBrickView *)self registerForTraitChanges:v4 withAction:sel_updateSearchResultBackgroundColorIfNecessary];
}

- (BOOL)isMetadataComplete
{
  v3 = [(ICAttachmentBrickView *)self linkView];
  v4 = [v3 metadata];
  v5 = [v4 image];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(ICAttachmentBrickView *)self linkView];
    v8 = [v7 metadata];
    v9 = [v8 icon];
    v6 = v9 != 0;
  }

  return v6;
}

- (ICAttachment)attachment
{
  WeakRetained = objc_loadWeakRetained(&self->_attachment);

  return WeakRetained;
}

- (ICAddAttachmentsManagerAttachmentInfo)shareExtensionAttachmentInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_shareExtensionAttachmentInfo);

  return WeakRetained;
}

@end