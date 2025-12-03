@interface ICAttachmentBrickView
+ (BOOL)usesSmallSizeForAttachment:(id)attachment withMetadata:(id)metadata type:(unint64_t)type insideSystemPaper:(BOOL)paper;
+ (CGSize)defaultBrickSize;
+ (CGSize)sizeForAttachment:(id)attachment usesSmallSize:(BOOL)size;
- (BOOL)isMetadataComplete;
- (CGSize)computedSize;
- (ICAddAttachmentsManagerAttachmentInfo)shareExtensionAttachmentInfo;
- (ICAttachment)attachment;
- (ICAttachmentBrickView)initWithType:(unint64_t)type;
- (double)effectiveLayoutCornerRadius;
- (id)_linkView:(id)view playerForAudio:(id)audio;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)quickLookTransitionView;
- (id)typeDescriptionForAccessibility;
- (void)addClient:(id)client;
- (void)adjustSizeIfNecessary;
- (void)applicationDidBecomeActive;
- (void)attachmentDidLoadNotification:(id)notification;
- (void)attachmentPreviewImagesDidUpdateNotification:(id)notification;
- (void)constrainViews;
- (void)didFailFetchingMetadataNotification:(id)notification;
- (void)displayFilePreview;
- (void)displayGenericURLPreview;
- (void)displayRemoteAttachmentPreview;
- (void)displayScannedDocumentsPreview;
- (void)displaySynapseAttachmentPreview;
- (void)displayUnsupportedAttachmentPreview;
- (void)initialAttachmentPreviewDidLoad:(id)load;
- (void)layoutSubviews;
- (void)linkView:(id)view didFetchMetadata:(id)metadata;
- (void)linkViewNeedsResize:(id)resize;
- (void)notifyClientsAboutSizeChangesIfNecessary;
- (void)pause;
- (void)play;
- (void)playbackStartedNotification:(id)notification;
- (void)prepareForReuse;
- (void)progressChangedNotification:(id)notification;
- (void)registerForTraitChanges;
- (void)reloadData;
- (void)removeClient:(id)client;
- (void)reset;
- (void)resetPlaybackProgressAndState;
- (void)setAttachment:(id)attachment;
- (void)setHighlightColor:(id)color;
- (void)setHighlightPatternRegexFinder:(id)finder;
- (void)setSelected:(BOOL)selected;
- (void)setShareExtensionAttachmentInfo:(id)info;
- (void)updateAttachmentBackgroundColorIfNecessary;
- (void)updateAudioClientsProgress:(float)progress;
- (void)updateAudioClientsState:(unint64_t)state;
- (void)updateSearchResultBackgroundColorIfNecessary;
- (void)updateTitle;
- (void)updateUIWithMetadata:(id)metadata;
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

+ (BOOL)usesSmallSizeForAttachment:(id)attachment withMetadata:(id)metadata type:(unint64_t)type insideSystemPaper:(BOOL)paper
{
  paperCopy = paper;
  attachmentCopy = attachment;
  metadataCopy = metadata;
  if (!metadataCopy || [attachmentCopy attachmentType] == 6 || objc_msgSend(attachmentCopy, "attachmentType") == 4 || objc_msgSend(attachmentCopy, "attachmentType") == 2)
  {
    v11 = 1;
  }

  else
  {
    preferredViewSize = [attachmentCopy preferredViewSize];
    v14 = 1;
    if ([attachmentCopy isURL] && !preferredViewSize)
    {
      v14 = type != 2 || paperCopy;
    }

    v15 = 1;
    if ([attachmentCopy hasSynapseLink] && paperCopy)
    {
      selectedText = [metadataCopy selectedText];
      v15 = selectedText == 0;
    }

    v11 = v14 & v15;
  }

  return v11;
}

+ (CGSize)sizeForAttachment:(id)attachment usesSmallSize:(BOOL)size
{
  attachmentCopy = attachment;
  v6 = attachmentCopy;
  if (size || [attachmentCopy alwaysUsesSmallSize])
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

- (ICAttachmentBrickView)initWithType:(unint64_t)type
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

    v9->_type = type;
    [(LPLinkView *)v9->_linkView _setPreferredSizeClass:8];
    [(LPLinkView *)v9->_linkView setDelegate:v9];
    [(LPLinkView *)v9->_linkView _setDisableTapGesture:1];
    [(LPLinkView *)v9->_linkView _setDisableHighlightGesture:0];
    if (type != 2)
    {
      [(LPLinkView *)v9->_linkView _setDisableAnimations:1];
      [(LPLinkView *)v9->_linkView _setDisableHighlightGesture:1];
      [(LPLinkView *)v9->_linkView _setDisableAutoPlay:1];
    }

    if ([MEMORY[0x1E69DC938] ic_isVision] && (type > 4 || ((1 << type) & 0x1A) == 0))
    {
      [(LPLinkView *)v9->_linkView setOverrideUserInterfaceStyle:1];
      quaternarySystemFillColor = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
      [(LPLinkView *)v9->_linkView _setOverrideBackgroundColor:quaternarySystemFillColor];
    }

    [(ICAttachmentBrickView *)v9 updateSearchResultBackgroundColorIfNecessary];
    [(ICAttachmentBrickView *)v9 registerForTraitChanges];
    [(ICAttachmentBrickView *)v9 updateAttachmentBackgroundColorIfNecessary];
    [(ICAttachmentBrickView *)v9 addSubview:v9->_linkView];
    [(ICAttachmentBrickView *)v9 constrainViews];
  }

  return v9;
}

- (void)setAttachment:(id)attachment
{
  obj = attachment;
  WeakRetained = objc_loadWeakRetained(&self->_attachment);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_attachment, obj);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = *MEMORY[0x1E69B73F0];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69B73F0] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = *MEMORY[0x1E69B7420];
    [defaultCenter2 removeObserver:self name:*MEMORY[0x1E69B7420] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    v11 = *MEMORY[0x1E69B74B8];
    [defaultCenter3 removeObserver:self name:*MEMORY[0x1E69B74B8] object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 removeObserver:self name:@"ICAttachmentDidFailFetchingMetadataNotification" object:0];

    app_updateViewAnnotation = objc_opt_respondsToSelector();
    if (app_updateViewAnnotation)
    {
      app_updateViewAnnotation = [(ICAttachmentBrickView *)self app_updateViewAnnotation];
    }

    if (obj)
    {
      defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
      objectID = [obj objectID];
      [defaultCenter5 addObserver:self selector:sel_attachmentDidLoadNotification_ name:v7 object:objectID];

      if ([obj attachmentType] == 6 || objc_msgSend(obj, "attachmentType") == 4 || objc_msgSend(obj, "attachmentType") == 2)
      {
        hasFallbackPDF = 1;
      }

      else
      {
        hasFallbackPDF = [obj hasFallbackPDF];
      }

      if ([obj attachmentType] == 8 || objc_msgSend(obj, "attachmentType") == 15 || (objc_msgSend(obj, "attachmentType") == 11) | hasFallbackPDF & 1)
      {
        defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
        objectID2 = [obj objectID];
        [defaultCenter6 addObserver:self selector:sel_attachmentPreviewImagesDidUpdateNotification_ name:v9 object:objectID2];
      }

      if ([obj attachmentType] == 8 || objc_msgSend(obj, "attachmentType") == 7)
      {
        defaultCenter7 = [MEMORY[0x1E696AD88] defaultCenter];
        objectID3 = [obj objectID];
        [defaultCenter7 addObserver:self selector:sel_initialAttachmentPreviewDidLoad_ name:@"ICAttachmentInitialPreviewDidLoadNotification" object:objectID3];

        defaultCenter8 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter8 addObserver:self selector:sel_didFailFetchingMetadataNotification_ name:@"ICAttachmentDidFailFetchingMetadataNotification" object:obj];
      }

      else
      {
        if (!hasFallbackPDF)
        {
          goto LABEL_17;
        }

        defaultCenter8 = [MEMORY[0x1E696AD88] defaultCenter];
        media = [obj media];
        objectID4 = [media objectID];
        [defaultCenter8 addObserver:self selector:sel_mediaDidLoadNotification_ name:v11 object:objectID4];
      }

LABEL_17:
      defaultCenter9 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter9 addObserver:self selector:sel_applicationDidBecomeActive name:*MEMORY[0x1E69DDAB0] object:0];

      app_updateViewAnnotation = [(ICAttachmentBrickView *)self reloadData];
    }
  }

  MEMORY[0x1EEE66BB8](app_updateViewAnnotation);
}

- (void)setHighlightPatternRegexFinder:(id)finder
{
  objc_storeStrong(&self->_highlightPatternRegexFinder, finder);
  finderCopy = finder;
  normalRegex = [finderCopy normalRegex];

  linkView = [(ICAttachmentBrickView *)self linkView];
  [linkView _setEmphasizedTextExpression:normalRegex];
}

- (void)setShareExtensionAttachmentInfo:(id)info
{
  infoCopy = info;
  objc_storeWeak(&self->_shareExtensionAttachmentInfo, infoCopy);
  attachment = [infoCopy attachment];

  if (attachment)
  {
    attachment2 = [infoCopy attachment];
    [(ICAttachmentBrickView *)self setAttachment:attachment2];
  }

  else
  {
    attachment2 = [infoCopy mediaURL];
    objc_initWeak(&location, self);
    gotLoadHelper_x8__OBJC_CLASS___LPMetadataProvider(v7);
    v9 = objc_alloc_init(*(v8 + 3296));
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__ICAttachmentBrickView_setShareExtensionAttachmentInfo___block_invoke;
    v11[3] = &unk_1E846E228;
    objc_copyWeak(&v12, &location);
    [v9 startFetchingMetadataForURL:attachment2 completionHandler:v11];
    objc_destroyWeak(&v12);

    objc_destroyWeak(&location);
  }

  linkView = [(ICAttachmentBrickView *)self linkView];
  [linkView _setDisablePlayback:1];
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
  attachment = [(ICAttachmentBrickView *)self attachment];

  if (!attachment)
  {
    return;
  }

  attachment2 = [(ICAttachmentBrickView *)self attachment];
  hasSynapseLink = [attachment2 hasSynapseLink];

  if (!hasSynapseLink)
  {
    attachment3 = [(ICAttachmentBrickView *)self attachment];
    v7 = [attachment3 URL];
    ic_isWebURL = [v7 ic_isWebURL];

    if (ic_isWebURL)
    {
      [(ICAttachmentBrickView *)self displayRemoteAttachmentPreview];
      goto LABEL_15;
    }

    attachment4 = [(ICAttachmentBrickView *)self attachment];
    v10 = [attachment4 URL];
    if (v10)
    {
      v11 = v10;
      attachment5 = [(ICAttachmentBrickView *)self attachment];
      v13 = [attachment5 URL];
      ic_isWebURL2 = [v13 ic_isWebURL];

      if ((ic_isWebURL2 & 1) == 0)
      {
        [(ICAttachmentBrickView *)self displayGenericURLPreview];
        goto LABEL_15;
      }
    }

    else
    {
    }

    attachment6 = [(ICAttachmentBrickView *)self attachment];
    if ([attachment6 attachmentType] == 11)
    {

LABEL_14:
      [(ICAttachmentBrickView *)self displayScannedDocumentsPreview];
      goto LABEL_15;
    }

    attachment7 = [(ICAttachmentBrickView *)self attachment];
    attachmentType = [attachment7 attachmentType];

    if (attachmentType == 15)
    {
      goto LABEL_14;
    }

    attachment8 = [(ICAttachmentBrickView *)self attachment];
    if ([attachment8 isPasswordProtected])
    {
    }

    else
    {
      attachment9 = [(ICAttachmentBrickView *)self attachment];
      hasFallbackPDF = [attachment9 hasFallbackPDF];

      if (hasFallbackPDF)
      {
        goto LABEL_25;
      }
    }

    attachment10 = [(ICAttachmentBrickView *)self attachment];
    attachmentType2 = [attachment10 attachmentType];

    if (attachmentType2 == 1)
    {
      [(ICAttachmentBrickView *)self displayUnsupportedAttachmentPreview];
      goto LABEL_15;
    }

    attachment11 = [(ICAttachmentBrickView *)self attachment];
    isLoadingFromCloud = [attachment11 isLoadingFromCloud];

    if (isLoadingFromCloud)
    {
      linkView = [(ICAttachmentBrickView *)self linkView];
      attachment12 = [(ICAttachmentBrickView *)self attachment];
      loadingAttachmentsMetadata = [attachment12 loadingAttachmentsMetadata];
      [linkView _setMetadata:loadingAttachmentsMetadata isFinal:0];

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
  linkView = [(ICAttachmentBrickView *)self linkView];
  metadata = [linkView metadata];

  attachment = [(ICAttachmentBrickView *)self attachment];
  title = [attachment title];

  if (title)
  {
    objc_initWeak(&location, self);
    attachment2 = [(ICAttachmentBrickView *)self attachment];
    managedObjectContext = [attachment2 managedObjectContext];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36__ICAttachmentBrickView_updateTitle__block_invoke;
    v9[3] = &unk_1E846E250;
    objc_copyWeak(&v12, &location);
    v10 = metadata;
    v11 = attachment;
    [managedObjectContext performBlock:v9];

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

- (void)setHighlightColor:(id)color
{
  objc_storeStrong(&self->_highlightColor, color);
  colorCopy = color;
  if (colorCopy)
  {
    v6 = 2.0;
  }

  else
  {
    v6 = 0.0;
  }

  linkView = [(ICAttachmentBrickView *)self linkView];
  layer = [linkView layer];
  [layer setBorderWidth:v6];

  cGColor = [colorCopy CGColor];
  linkView2 = [(ICAttachmentBrickView *)self linkView];
  layer2 = [linkView2 layer];
  [layer2 setBorderColor:cGColor];
}

- (double)effectiveLayoutCornerRadius
{
  linkView = [(ICAttachmentBrickView *)self linkView];
  [linkView _cornerRadius];
  v4 = v3;

  return v4;
}

- (CGSize)computedSize
{
  linkView = [(ICAttachmentBrickView *)self linkView];
  [(ICAttachmentBrickView *)self frame];
  [linkView sizeThatFits:{CGRectGetWidth(v13), 800.0}];
  v5 = v4;

  linkView2 = [(ICAttachmentBrickView *)self linkView];
  [linkView2 systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
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
    attachment = [(ICAttachmentBrickView *)self attachment];
    v5 = [v3 numberWithShort:{objc_msgSend(attachment, "attachmentType")}];
    v6 = [v8 containsObject:v5];

    if (v6)
    {
      standardBackgroundColor = [objc_opt_class() standardBackgroundColor];
      [(LPLinkView *)self->_linkView _setOverrideBackgroundColor:standardBackgroundColor];
    }

    else
    {
      [(LPLinkView *)self->_linkView _setOverrideBackgroundColor:0];
    }
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  self->_selected = selected;
  [(ICAttachmentBrickView *)self updateSearchResultBackgroundColorIfNecessary];
  if (selectedCopy)
  {
    iCSelectedAttachmentBrickHighlightColor = [MEMORY[0x1E69DC888] ICSelectedAttachmentBrickHighlightColor];
  }

  else
  {
    iCSelectedAttachmentBrickHighlightColor = 0;
  }

  linkView = [(ICAttachmentBrickView *)self linkView];
  [linkView setTintColor:iCSelectedAttachmentBrickHighlightColor];

  if (selectedCopy)
  {
  }
}

- (id)quickLookTransitionView
{
  linkView = [(ICAttachmentBrickView *)self linkView];
  _primaryMediaView = [linkView _primaryMediaView];

  return _primaryMediaView;
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
  typeDescriptionForAccessibility = [(ICAttachmentBrickView *)self typeDescriptionForAccessibility];
  linkView = [(ICAttachmentBrickView *)self linkView];
  accessibilityLabel = [linkView accessibilityLabel];
  v12 = __ICAccessibilityStringForVariables(1, typeDescriptionForAccessibility, v6, v7, v8, v9, v10, v11, accessibilityLabel);

  return v12;
}

- (id)accessibilityValue
{
  linkView = [(ICAttachmentBrickView *)self linkView];
  accessibilityValue = [linkView accessibilityValue];

  return accessibilityValue;
}

- (id)typeDescriptionForAccessibility
{
  attachment = [(ICAttachmentBrickView *)self attachment];
  attachmentType = [attachment attachmentType];

  switch(attachmentType)
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
      attachment2 = [(ICAttachmentBrickView *)self attachment];
      isAppStore = [attachment2 isAppStore];

      if (isAppStore)
      {
        v7 = @"app attachment";
LABEL_13:
        v6 = __ICLocalizedFrameworkString_impl(v7, v7, 0, 1);
        goto LABEL_14;
      }

      attachment3 = [(ICAttachmentBrickView *)self attachment];
      isiTunes = [attachment3 isiTunes];

      if (!isiTunes)
      {
        attachment4 = [(ICAttachmentBrickView *)self attachment];
        isNews = [attachment4 isNews];

        if (isNews)
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
      attachment5 = [(ICAttachmentBrickView *)self attachment];
      metadata = [attachment5 metadata];

      if (metadata)
      {
        v15 = [metadata objectForKeyedSubscript:*MEMORY[0x1E69B73F8]];

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

- (void)linkViewNeedsResize:(id)resize
{
  if ([(ICAttachmentBrickView *)self type]== 2)
  {

    [(ICAttachmentBrickView *)self notifyClientsAboutSizeChangesIfNecessary];
  }
}

- (void)linkView:(id)view didFetchMetadata:(id)metadata
{
  metadataCopy = metadata;
  attachment = [(ICAttachmentBrickView *)self attachment];
  [attachment persistLinkMetadata:metadataCopy];

  if ([(ICAttachmentBrickView *)self type]== 2)
  {

    [(ICAttachmentBrickView *)self notifyClientsAboutSizeChangesIfNecessary];
  }
}

- (void)attachmentDidLoadNotification:(id)notification
{
  if (![(ICAttachmentBrickView *)self isMetadataComplete])
  {

    [(ICAttachmentBrickView *)self reloadData];
  }
}

- (void)attachmentPreviewImagesDidUpdateNotification:(id)notification
{
  isMetadataComplete = [(ICAttachmentBrickView *)self isMetadataComplete];
  if (!isMetadataComplete)
  {
    attachment = [(ICAttachmentBrickView *)self attachment];
    if (![attachment hasSynapseLink])
    {
LABEL_5:

LABEL_9:
      linkView = [(ICAttachmentBrickView *)self linkView];
      metadata = [linkView metadata];
      image = [metadata image];
      if (image)
      {

        [(ICAttachmentBrickView *)self reloadData];
      }

      else
      {
        attachment2 = [(ICAttachmentBrickView *)self attachment];
        metadataExists = [attachment2 metadataExists];

        [(ICAttachmentBrickView *)self reloadData];
        if (metadataExists && [(ICAttachmentBrickView *)self type]== 2)
        {

          [(ICAttachmentBrickView *)self notifyClientsAboutSizeChangesIfNecessary];
        }
      }

      return;
    }
  }

  attachment3 = [(ICAttachmentBrickView *)self attachment];
  if ([attachment3 attachmentType] == 11)
  {

    if (isMetadataComplete)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

  attachment4 = [(ICAttachmentBrickView *)self attachment];
  attachmentType = [attachment4 attachmentType];

  if (!isMetadataComplete)
  {
  }

  if (attachmentType == 15)
  {
    goto LABEL_9;
  }
}

- (void)initialAttachmentPreviewDidLoad:(id)load
{
  [(ICAttachmentBrickView *)self reloadData];
  if ([(ICAttachmentBrickView *)self type]== 2)
  {

    [(ICAttachmentBrickView *)self notifyClientsAboutSizeChangesIfNecessary];
  }
}

- (void)didFailFetchingMetadataNotification:(id)notification
{
  notificationCopy = notification;
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
  attachment = [(ICAttachmentBrickView *)self attachment];
  preferredViewSize = [attachment preferredViewSize];

  attachment2 = [(ICAttachmentBrickView *)self attachment];
  v6 = [attachment2 URL];
  ic_isBooksURL = [v6 ic_isBooksURL];

  if (ic_isBooksURL && !preferredViewSize)
  {

    [(ICAttachmentBrickView *)self reloadData];
  }
}

- (void)play
{
  attachment = [(ICAttachmentBrickView *)self attachment];
  isAudio = [attachment isAudio];

  if (isAudio)
  {
    v8 = +[ICAudioController sharedAudioController];
    currentAttachment = [v8 currentAttachment];
    attachment2 = [(ICAttachmentBrickView *)self attachment];

    if (currentAttachment != attachment2)
    {
      [v8 stop];
    }

    attachment3 = [(ICAttachmentBrickView *)self attachment];
    [v8 play:attachment3];
  }
}

- (void)pause
{
  attachment = [(ICAttachmentBrickView *)self attachment];
  isAudio = [attachment isAudio];

  if (isAudio)
  {
    v4 = +[ICAudioController sharedAudioController];
    [v4 pause];
  }
}

- (void)reset
{
  attachment = [(ICAttachmentBrickView *)self attachment];
  isAudio = [attachment isAudio];

  if (isAudio)
  {
    v4 = +[ICAudioController sharedAudioController];
    [v4 stop];
  }
}

- (void)addClient:(id)client
{
  clientCopy = client;
  attachment = [(ICAttachmentBrickView *)self attachment];
  isAudio = [attachment isAudio];

  if (isAudio)
  {
    audioPlayerClients = [(ICAttachmentBrickView *)self audioPlayerClients];

    if (!audioPlayerClients)
    {
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      [(ICAttachmentBrickView *)self setAudioPlayerClients:weakObjectsHashTable];

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      attachment2 = [(ICAttachmentBrickView *)self attachment];
      [defaultCenter addObserver:self selector:sel_progressChangedNotification_ name:@"ICAudioPlaybackTimeChangedNotification" object:attachment2];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel_playbackStartedNotification_ name:@"ICAudioPlaybackPlayNotification" object:0];

      defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
      attachment3 = [(ICAttachmentBrickView *)self attachment];
      [defaultCenter3 addObserver:self selector:sel_playbackPausedNotification_ name:@"ICAudioPlaybackPauseNotification" object:attachment3];

      defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
      attachment4 = [(ICAttachmentBrickView *)self attachment];
      [defaultCenter4 addObserver:self selector:sel_playbackStoppedNotification_ name:@"ICAudioPlaybackStopNotification" object:attachment4];
    }

    audioPlayerClients2 = [(ICAttachmentBrickView *)self audioPlayerClients];
    [audioPlayerClients2 addObject:clientCopy];
  }
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  attachment = [(ICAttachmentBrickView *)self attachment];
  isAudio = [attachment isAudio];

  if (isAudio)
  {
    audioPlayerClients = [(ICAttachmentBrickView *)self audioPlayerClients];
    [audioPlayerClients removeObject:clientCopy];
  }
}

- (id)_linkView:(id)view playerForAudio:(id)audio
{
  v5 = [(ICAttachmentBrickView *)self attachment:view];
  isAudio = [v5 isAudio];

  if (isAudio)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)playbackStartedNotification:(id)notification
{
  object = [notification object];
  attachment = [(ICAttachmentBrickView *)self attachment];
  if (object == attachment)
  {
    v6 = 2;
  }

  else
  {
    v6 = 4;
  }

  [(ICAttachmentBrickView *)self updateAudioClientsState:v6];
}

- (void)progressChangedNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v11 = [userInfo objectForKeyedSubscript:@"ICAudioPlaybackNotificationTimeKey"];

  userInfo2 = [notificationCopy userInfo];

  v7 = [userInfo2 objectForKeyedSubscript:@"ICAudioPlaybackNotificationDurationKey"];

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

- (void)updateAudioClientsState:(unint64_t)state
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  audioPlayerClients = [(ICAttachmentBrickView *)self audioPlayerClients];
  objectEnumerator = [audioPlayerClients objectEnumerator];
  allObjects = [objectEnumerator allObjects];

  v8 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v12 + 1) + 8 * v11++) audioPlayer:self didTransitionToState:state];
      }

      while (v9 != v11);
      v9 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [(ICAttachmentBrickView *)self setPlayerState:state];
}

- (void)updateAudioClientsProgress:(float)progress
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  audioPlayerClients = [(ICAttachmentBrickView *)self audioPlayerClients];
  objectEnumerator = [audioPlayerClients objectEnumerator];
  allObjects = [objectEnumerator allObjects];

  v8 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        *&v9 = progress;
        [*(*(&v14 + 1) + 8 * v12++) audioPlayer:self didChangeProgress:v9];
      }

      while (v10 != v12);
      v10 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  *&v13 = progress;
  [(ICAttachmentBrickView *)self setPlaybackProgress:v13];
}

- (void)displaySynapseAttachmentPreview
{
  attachment = [(ICAttachmentBrickView *)self attachment];
  synapseBasedMetadata = [attachment synapseBasedMetadata];

  [(ICAttachmentBrickView *)self updateUIWithMetadata:synapseBasedMetadata];
}

- (void)displayRemoteAttachmentPreview
{
  attachment = [(ICAttachmentBrickView *)self attachment];
  retrieveLinkMetadata = [attachment retrieveLinkMetadata];

  if (retrieveLinkMetadata)
  {
    [(ICAttachmentBrickView *)self setWaitingForMetadata:0];
    goto LABEL_9;
  }

  attachment2 = [(ICAttachmentBrickView *)self attachment];
  wasCreatedByCurrentUser = [attachment2 wasCreatedByCurrentUser];

  if (wasCreatedByCurrentUser)
  {
    shareExtensionAttachmentInfo = [(ICAttachmentBrickView *)self shareExtensionAttachmentInfo];
    if (!shareExtensionAttachmentInfo)
    {
      if ([(ICAttachmentBrickView *)self waitingForMetadata])
      {
LABEL_8:
        [(ICAttachmentBrickView *)self setWaitingForMetadata:1];
        attachment3 = [(ICAttachmentBrickView *)self attachment];
        retrieveLinkMetadata = [attachment3 fallbackRemoteAttachmentMetadata];

LABEL_9:
        attachment4 = [(ICAttachmentBrickView *)self attachment];
        [attachment4 addPreviewImageToMetadata:retrieveLinkMetadata];

        if ([(ICAttachmentBrickView *)self waitingForMetadata])
        {
          attachment5 = [(ICAttachmentBrickView *)self attachment];
          urlExpired = [attachment5 urlExpired];

          linkView = [(ICAttachmentBrickView *)self linkView];
          [linkView _setMetadata:retrieveLinkMetadata isFinal:urlExpired];

          if ((urlExpired & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          linkView2 = [(ICAttachmentBrickView *)self linkView];
          [linkView2 _setMetadata:retrieveLinkMetadata isFinal:1];
        }

        [(ICAttachmentBrickView *)self notifyClientsAboutSizeChangesIfNecessary];
LABEL_14:
        v13 = retrieveLinkMetadata;
        goto LABEL_15;
      }

      shareExtensionAttachmentInfo = [(ICAttachmentBrickView *)self attachment];
      [shareExtensionAttachmentInfo requestRemoteMetadata];
    }

    goto LABEL_8;
  }

  attachment6 = [(ICAttachmentBrickView *)self attachment];
  v15 = [attachment6 URL];
  linkView3 = [(ICAttachmentBrickView *)self linkView];
  [linkView3 setURL:v15];

  linkView4 = [(ICAttachmentBrickView *)self linkView];
  [linkView4 _setAllowsTapToLoad:1];

  v13 = 0;
LABEL_15:
}

- (void)displayGenericURLPreview
{
  attachment = [(ICAttachmentBrickView *)self attachment];
  plainURLMetadata = [attachment plainURLMetadata];
  [(ICAttachmentBrickView *)self updateUIWithMetadata:plainURLMetadata];
}

- (void)displayFilePreview
{
  attachment = [(ICAttachmentBrickView *)self attachment];
  if ([attachment attachmentType] == 4)
  {
  }

  else
  {
    attachment2 = [(ICAttachmentBrickView *)self attachment];
    metadataExists = [attachment2 metadataExists];

    if (metadataExists)
    {
      attachment3 = [(ICAttachmentBrickView *)self attachment];
      retrieveLinkMetadata = [attachment3 retrieveLinkMetadata];
      goto LABEL_6;
    }
  }

  attachment3 = [(ICAttachmentBrickView *)self attachment];
  retrieveLinkMetadata = [attachment3 fileMetadata];
LABEL_6:
  v9 = retrieveLinkMetadata;

  [(ICAttachmentBrickView *)self updateUIWithMetadata:v9];
  attachment4 = [(ICAttachmentBrickView *)self attachment];
  [attachment4 requestFileMetadataIfNecessary];
}

- (void)displayScannedDocumentsPreview
{
  attachment = [(ICAttachmentBrickView *)self attachment];
  scannedDocumentsMetadata = [attachment scannedDocumentsMetadata];
  [(ICAttachmentBrickView *)self updateUIWithMetadata:scannedDocumentsMetadata];
}

- (void)displayUnsupportedAttachmentPreview
{
  gotLoadHelper_x8__OBJC_CLASS___LPLinkMetadata(v2);
  v15 = objc_alloc_init(*(v4 + 3232));
  attachment = [(ICAttachmentBrickView *)self attachment];
  unsupportedAttachmentTitle = [attachment unsupportedAttachmentTitle];
  [v15 setTitle:unsupportedAttachmentTitle];

  attachment2 = [(ICAttachmentBrickView *)self attachment];
  unsupportedAttachmentSubtitle = [attachment2 unsupportedAttachmentSubtitle];
  [v15 setSummary:unsupportedAttachmentSubtitle];

  attachment3 = [(ICAttachmentBrickView *)self attachment];
  [attachment3 addPreviewImageToMetadata:v15];

  image = [v15 image];

  if (!image)
  {
    v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"paperclip"];
    gotLoadHelper_x8__OBJC_CLASS___LPImage(v12);
    v14 = [objc_alloc(*(v13 + 3176)) initWithPlatformImage:v11];
    [v15 setImage:v14];
  }

  [(ICAttachmentBrickView *)self updateUIWithMetadata:v15];
}

- (void)updateUIWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (!ICInternalSettingsIsPDFsInNotesEnabled())
  {
    goto LABEL_9;
  }

  attachment = [(ICAttachmentBrickView *)self attachment];
  if ([attachment attachmentType] != 6)
  {
    attachment2 = [(ICAttachmentBrickView *)self attachment];
    if ([attachment2 attachmentType] != 14)
    {
      attachment3 = [(ICAttachmentBrickView *)self attachment];
      attachmentType = [attachment3 attachmentType];

      if (attachmentType != 15)
      {
        attachment4 = [(ICAttachmentBrickView *)self attachment];
        attachmentType2 = [attachment4 attachmentType];

        if (attachmentType2 != 11)
        {
          goto LABEL_9;
        }

        title = [metadataCopy title];
        name = [title ic_truncatedStringWithMaxLength:30 truncated:0];
        [metadataCopy setTitle:name];
        goto LABEL_8;
      }

      goto LABEL_6;
    }
  }

LABEL_6:
  specialization = [metadataCopy specialization];
  gotLoadHelper_x8__OBJC_CLASS___LPFileMetadata(v8);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    title = [metadataCopy specialization];
    name = [title name];
    v12 = [name ic_truncatedStringWithMaxLength:30 truncated:0];
    [title setName:v12];

LABEL_8:
  }

LABEL_9:
  objc_initWeak(&location, self);
  objc_copyWeak(&v18, &location);
  v17 = metadataCopy;
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
  attachment = [(ICAttachmentBrickView *)self attachment];
  linkView = [(ICAttachmentBrickView *)self linkView];
  metadata = [linkView metadata];
  LODWORD(v3) = [v3 usesSmallSizeForAttachment:attachment withMetadata:metadata type:-[ICAttachmentBrickView type](self insideSystemPaper:{"type"), -[ICAttachmentBrickView isInsideSystemPaper](self, "isInsideSystemPaper")}];

  if (v3)
  {
    v7 = 8;
  }

  else
  {
    v7 = 9;
  }

  linkView2 = [(ICAttachmentBrickView *)self linkView];
  [linkView2 _setPreferredSizeClass:v7];

  [(ICAttachmentBrickView *)self effectiveLayoutCornerRadius];
  v10 = v9;
  layer = [(ICAttachmentBrickView *)self layer];
  [layer setCornerRadius:v10];

  [(ICAttachmentBrickView *)self effectiveLayoutCornerRadius];
  v13 = v12;
  linkView3 = [(ICAttachmentBrickView *)self linkView];
  layer2 = [linkView3 layer];
  [layer2 setCornerRadius:v13];
}

- (void)notifyClientsAboutSizeChangesIfNecessary
{
  window = [(ICAttachmentBrickView *)self window];

  if (window)
  {
    linkView = [(ICAttachmentBrickView *)self linkView];
    [linkView sizeThatFits:{327.0, 800.0}];
    v6 = v5;

    if ([(ICAttachmentBrickView *)self hasPerformedInitialLayout])
    {
      if (v6 > 72.0)
      {
        linkView2 = [(ICAttachmentBrickView *)self linkView];
        [linkView2 frame];
        Height = CGRectGetHeight(v14);

        if (v6 != Height)
        {
          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          v9 = *MEMORY[0x1E69B73D8];
          attachment = [(ICAttachmentBrickView *)self attachment];
          objectID = [attachment objectID];
          [defaultCenter postNotificationName:v9 object:objectID];
        }
      }
    }
  }
}

- (void)constrainViews
{
  v27[4] = *MEMORY[0x1E69E9840];
  [(ICAttachmentBrickView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  linkView = [(ICAttachmentBrickView *)self linkView];
  [linkView setTranslatesAutoresizingMaskIntoConstraints:0];

  linkView2 = [(ICAttachmentBrickView *)self linkView];
  topAnchor = [linkView2 topAnchor];
  topAnchor2 = [(ICAttachmentBrickView *)self topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2];

  linkView3 = [(ICAttachmentBrickView *)self linkView];
  bottomAnchor = [linkView3 bottomAnchor];
  bottomAnchor2 = [(ICAttachmentBrickView *)self bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  linkView4 = [(ICAttachmentBrickView *)self linkView];
  leadingAnchor = [linkView4 leadingAnchor];
  leadingAnchor2 = [(ICAttachmentBrickView *)self leadingAnchor];
  v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  linkView5 = [(ICAttachmentBrickView *)self linkView];
  trailingAnchor = [linkView5 trailingAnchor];
  trailingAnchor2 = [(ICAttachmentBrickView *)self trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

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

    widthConstraint = [(ICAttachmentBrickView *)self widthConstraint];
    [widthConstraint setActive:1];
  }

  if ([(ICAttachmentBrickView *)self type]== 4 || [(ICAttachmentBrickView *)self type]== 1)
  {
    v25 = [MEMORY[0x1E696ACD8] constraintWithItem:self attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:72.0];
    [(ICAttachmentBrickView *)self setHeightConstraint:v25];

    heightConstraint = [(ICAttachmentBrickView *)self heightConstraint];
    [heightConstraint setActive:1];
  }
}

- (void)updateSearchResultBackgroundColorIfNecessary
{
  if ([(ICAttachmentBrickView *)self type]== 1)
  {
    traitCollection = [(ICAttachmentBrickView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if ([(ICAttachmentBrickView *)self selected])
    {
      iCTintColor = [MEMORY[0x1E69DC888] ICTintColor];
    }

    else
    {
      if (userInterfaceStyle != 1)
      {
        v7 = 0;
        goto LABEL_11;
      }

      iCTintColor = [MEMORY[0x1E69DC888] secondarySystemFillColor];
    }

    v7 = iCTintColor;
LABEL_11:
    linkView = [(ICAttachmentBrickView *)self linkView];
    [linkView _setOverrideBackgroundColor:v7];

    return;
  }

  [(ICAttachmentBrickView *)self updateAttachmentBackgroundColorIfNecessary];
}

- (void)registerForTraitChanges
{
  systemTraitsAffectingColorAppearance = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
  v3 = [(ICAttachmentBrickView *)self registerForTraitChanges:systemTraitsAffectingColorAppearance withAction:sel_updateSearchResultBackgroundColorIfNecessary];
}

- (BOOL)isMetadataComplete
{
  linkView = [(ICAttachmentBrickView *)self linkView];
  metadata = [linkView metadata];
  image = [metadata image];
  if (image)
  {
    v6 = 1;
  }

  else
  {
    linkView2 = [(ICAttachmentBrickView *)self linkView];
    metadata2 = [linkView2 metadata];
    icon = [metadata2 icon];
    v6 = icon != 0;
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