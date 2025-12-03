@interface ICImageAttachmentView
+ (id)ICLoadingPlaceholderBackgroundColor;
+ (id)ICLoadingPlaceholderIconColor;
- (BOOL)cancelDidScrollIntoVisibleRange;
- (BOOL)isThumbnailView;
- (BOOL)showLoadingImage;
- (CGRect)frameForContent;
- (CGRect)imageFrame;
- (CGSize)imageSize;
- (UIImage)image;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)icaxHintString;
- (void)animateImageArrival;
- (void)dealloc;
- (void)didChangeAttachment;
- (void)didChangeMedia;
- (void)didMoveToWindow;
- (void)didScrollOutOfVisibleRange;
- (void)didUpdatePreviewImages;
- (void)imageDidLoad:(id)load shouldFade:(BOOL)fade;
- (void)prepareForPrinting;
- (void)refreshLoadingImage;
- (void)setFrame:(CGRect)frame;
- (void)setHighlightColor:(id)color;
- (void)setShowLoadingImage:(BOOL)image;
- (void)setupBorderForLayer:(id)layer;
- (void)setupEventHandling;
- (void)setupImagePlaceholder;
- (void)setupImagePlaceholderIfNecessary;
- (void)sharedInit:(BOOL)init;
- (void)updateImageInView:(BOOL)view;
- (void)updateImageInViewIfNecessary;
- (void)updateImageSize;
@end

@implementation ICImageAttachmentView

- (void)setupEventHandling
{
  v2.receiver = self;
  v2.super_class = ICImageAttachmentView;
  [(ICAttachmentView *)&v2 setupEventHandling];
}

- (void)setupImagePlaceholder
{
  iCLoadingPlaceholderBackgroundColor = [objc_opt_class() ICLoadingPlaceholderBackgroundColor];
  [(ICImageAttachmentView *)self setIc_backgroundColor:iCLoadingPlaceholderBackgroundColor];

  imageLayer = [(ICImageAttachmentView *)self imageLayer];
  [(ICImageAttachmentView *)self setupBorderForLayer:imageLayer];

  [(ICImageAttachmentView *)self setShouldShowLoadingImage:1];

  [(ICImageAttachmentView *)self refreshLoadingImage];
}

+ (id)ICLoadingPlaceholderBackgroundColor
{
  ic_systemGray5Color = [MEMORY[0x277D75348] ic_systemGray5Color];
  ic_resolvedColorForNoteEditor = [ic_systemGray5Color ic_resolvedColorForNoteEditor];

  return ic_resolvedColorForNoteEditor;
}

- (BOOL)showLoadingImage
{
  loadingImageView = [(ICImageAttachmentView *)self loadingImageView];
  v3 = loadingImageView != 0;

  return v3;
}

- (BOOL)isThumbnailView
{
  attachment = [(ICImageAttachmentView *)self attachment];
  v3 = [attachment preferredViewSize] == 1;

  return v3;
}

- (void)didChangeAttachment
{
  v3.receiver = self;
  v3.super_class = ICImageAttachmentView;
  [(ICImageAttachmentView *)&v3 didChangeAttachment];
  [(ICImageAttachmentView *)self updateImageInViewIfNecessary];
}

- (void)updateImageSize
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setAnimationDuration:0.0];
  [(ICImageAttachmentView *)self imageFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  imageLayer = [(ICImageAttachmentView *)self imageLayer];
  [(ICImageAttachmentView *)self setupBorderForLayer:imageLayer];

  IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
  imageLayer2 = [(ICImageAttachmentView *)self imageLayer];
  v14 = imageLayer2;
  if (IsTextKit2Enabled)
  {
    [imageLayer2 setFrame:{v4, v6, v8, v10}];

    v15 = MEMORY[0x277CD9FF0];

    [v15 commit];
    return;
  }

  [imageLayer2 frame];
  if (TSDNearlyEqualSizes())
  {
    imageLayer3 = [(ICImageAttachmentView *)self imageLayer];
    [imageLayer3 frame];
    v18 = v17;
    v20 = v19;
    v21 = *MEMORY[0x277CBF3A8];
    v22 = *(MEMORY[0x277CBF3A8] + 8);

    imageLayer4 = [(ICImageAttachmentView *)self imageLayer];
    [imageLayer4 setFrame:{v4, v6, v8, v10}];

    [MEMORY[0x277CD9FF0] commit];
    if (v18 != v21 || v20 != v22)
    {
      return;
    }
  }

  else
  {

    imageLayer5 = [(ICImageAttachmentView *)self imageLayer];
    [imageLayer5 setFrame:{v4, v6, v8, v10}];

    [MEMORY[0x277CD9FF0] commit];
  }

  if ([(ICAttachmentView *)self finishedInit])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__ICImageAttachmentView_updateImageSize__block_invoke;
    block[3] = &unk_2781ABCF8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (CGRect)imageFrame
{
  [(ICImageAttachmentView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v3;
  if (v8 != 0.0 && v3 != 0.0 && [(ICImageAttachmentView *)self isThumbnailView]&& ![(ICAttachmentView *)self forManualRendering])
  {
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      textAttachment = [(ICImageAttachmentView *)self textAttachment];
      textContainer = [(ICAttachmentView *)self textContainer];
      [textAttachment attachmentSizeForTextContainer:textContainer];
      v14 = v13;
      v16 = v15;
    }

    else
    {
      [(ICImageAttachmentView *)self attachmentContentSize];
      v14 = v17;
      v16 = v18;
    }

    v19 = (v9 - v14) * 0.5;
    if (v14 < v9)
    {
      v9 = v14;
      v5 = v19;
    }

    v20 = (v10 - v16) * 0.5;
    if (v16 < v10)
    {
      v10 = v16;
      v7 = v20;
    }
  }

  v21 = v5;
  v22 = v7;
  v23 = v9;
  v24 = v10;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)refreshLoadingImage
{
  if (![(ICImageAttachmentView *)self isThumbnailView])
  {
    attachment = [(ICImageAttachmentView *)self attachment];
    [attachment sizeWidth];
    if (v4 <= 0.0)
    {
      v7 = 0;
    }

    else
    {
      attachment2 = [(ICImageAttachmentView *)self attachment];
      [attachment2 sizeHeight];
      v7 = v6 > 0.0;
    }

    v8 = [(ICImageAttachmentView *)self shouldShowLoadingImage]& v7;

    [(ICImageAttachmentView *)self setShowLoadingImage:v8];
  }
}

- (void)updateImageInViewIfNecessary
{
  imageLoadingCancelBlock = [(ICImageAttachmentView *)self imageLoadingCancelBlock];

  if (imageLoadingCancelBlock)
  {

    [(ICImageAttachmentView *)self setShouldTryToReloadImageIfLoadingFails:1];
  }

  else
  {

    [(ICImageAttachmentView *)self updateImageInView:0];
  }
}

- (void)setupImagePlaceholderIfNecessary
{
  imageLayer = [(ICImageAttachmentView *)self imageLayer];
  contents = [imageLayer contents];

  if (!contents)
  {

    [(ICImageAttachmentView *)self setupImagePlaceholder];
  }
}

+ (id)ICLoadingPlaceholderIconColor
{
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  ic_resolvedColorForNoteEditor = [systemGrayColor ic_resolvedColorForNoteEditor];

  return ic_resolvedColorForNoteEditor;
}

- (CGSize)imageSize
{
  [(ICImageAttachmentView *)self bounds];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (void)animateImageArrival
{
  v3 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v3 setFromValue:&unk_28277E640];
  [v3 setToValue:&unk_28277E650];
  [v3 setDuration:0.1];
  imageLayer = [(ICImageAttachmentView *)self imageLayer];
  [imageLayer addAnimation:v3 forKey:@"opacity"];

  [(ICImageAttachmentView *)self setShowLoadingImage:0];
  ic_backgroundColor = [(ICImageAttachmentView *)self ic_backgroundColor];

  if (ic_backgroundColor)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__ICImageAttachmentView_animateImageArrival__block_invoke;
    v7[3] = &unk_2781ABCF8;
    v7[4] = self;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__ICImageAttachmentView_animateImageArrival__block_invoke_2;
    v6[3] = &unk_2781AD098;
    v6[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v7 animations:v6 completion:0.1];
  }
}

void __44__ICImageAttachmentView_animateImageArrival__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75348] clearColor];
  [*(a1 + 32) setBackgroundColor:v2];
}

- (void)didMoveToWindow
{
  window = [(ICImageAttachmentView *)self window];
  screen = [window screen];

  if (screen)
  {
    window2 = [(ICImageAttachmentView *)self window];
    screen2 = [window2 screen];
    [screen2 scale];
    v7 = v6;
    imageLayer = [(ICImageAttachmentView *)self imageLayer];
    [imageLayer setContentsScale:v7];
  }
}

- (void)sharedInit:(BOOL)init
{
  v19.receiver = self;
  v19.super_class = ICImageAttachmentView;
  [(ICAttachmentView *)&v19 sharedInit:init];
  imageLayer = [(ICImageAttachmentView *)self imageLayer];

  if (!imageLayer)
  {
    v5 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    [(ICImageAttachmentView *)self setImageLayer:v5];

    [(ICImageAttachmentView *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    imageLayer2 = [(ICImageAttachmentView *)self imageLayer];
    [imageLayer2 setFrame:{v7, v9, v11, v13}];

    imageLayer3 = [(ICImageAttachmentView *)self imageLayer];
    [imageLayer3 setMasksToBounds:1];

    imageLayer4 = [(ICImageAttachmentView *)self imageLayer];
    [imageLayer4 setAllowsEdgeAntialiasing:0];

    layer = [(ICImageAttachmentView *)self layer];
    imageLayer5 = [(ICImageAttachmentView *)self imageLayer];
    [layer addSublayer:imageLayer5];

    [(ICImageAttachmentView *)self setClipsToBounds:1];
  }
}

- (CGRect)frameForContent
{
  [(ICImageAttachmentView *)self frame];
  v4 = v3;
  v6 = v5;
  [(ICImageAttachmentView *)self imageFrame];
  v10 = v4 + v9;
  v12 = v6 + v11;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v12;
  result.origin.x = v10;
  return result;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICImageAttachmentView;
  [(ICAttachmentView *)&v4 dealloc];
}

- (void)didChangeMedia
{
  [(ICImageAttachmentView *)self setShouldUpdateLayoutInImageDidLoad:1];
  v3.receiver = self;
  v3.super_class = ICImageAttachmentView;
  [(ICImageAttachmentView *)&v3 didChangeMedia];
  [(ICImageAttachmentView *)self updateImageInViewIfNecessary];
}

- (void)didUpdatePreviewImages
{
  v3.receiver = self;
  v3.super_class = ICImageAttachmentView;
  [(ICImageAttachmentView *)&v3 didUpdatePreviewImages];
  [(ICImageAttachmentView *)self updateImageInViewIfNecessary];
}

- (void)didScrollOutOfVisibleRange
{
  imageLoadingCancelBlock = [(ICImageAttachmentView *)self imageLoadingCancelBlock];

  if (imageLoadingCancelBlock)
  {
    imageLoadingCancelBlock2 = [(ICImageAttachmentView *)self imageLoadingCancelBlock];
    imageLoadingCancelBlock2[2]();

    [(ICImageAttachmentView *)self setImageLoadingCancelBlock:0];
  }

  imageLayer = [(ICImageAttachmentView *)self imageLayer];
  [imageLayer setContents:0];
}

- (BOOL)cancelDidScrollIntoVisibleRange
{
  imageLoadingCancelBlock = [(ICImageAttachmentView *)self imageLoadingCancelBlock];
  if (imageLoadingCancelBlock)
  {
    v4 = imageLoadingCancelBlock;
    imageLayer = [(ICImageAttachmentView *)self imageLayer];
    contents = [imageLayer contents];

    if (contents)
    {
      LOBYTE(imageLoadingCancelBlock) = 0;
    }

    else
    {
      imageLoadingCancelBlock2 = [(ICImageAttachmentView *)self imageLoadingCancelBlock];
      imageLoadingCancelBlock2[2]();

      [(ICImageAttachmentView *)self setImageLoadingCancelBlock:0];
      LOBYTE(imageLoadingCancelBlock) = 1;
    }
  }

  return imageLoadingCancelBlock;
}

- (void)prepareForPrinting
{
  v7 = *MEMORY[0x277D85DE8];
  attachment = [self attachment];
  ic_loggingDescription = [attachment ic_loggingDescription];
  v5 = 138412290;
  v6 = ic_loggingDescription;
  _os_log_error_impl(&dword_2151A1000, a2, OS_LOG_TYPE_ERROR, "Unexpected nil image for attachment (%@)", &v5, 0xCu);
}

- (void)setupBorderForLayer:(id)layer
{
  v10 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  highlightColor = [(ICImageAttachmentView *)self highlightColor];

  if (highlightColor)
  {
    highlightColor2 = [(ICImageAttachmentView *)self highlightColor];
    [layerCopy setBorderColor:{objc_msgSend(highlightColor2, "CGColor")}];

    [layerCopy setBorderWidth:*MEMORY[0x277D364B0]];
  }

  else
  {
    DeviceGray = CGColorSpaceCreateDeviceGray();
    *components = xmmword_2154BC0A0;
    v7 = CGColorCreate(DeviceGray, components);
    [layerCopy setBorderColor:v7];
    [(ICImageAttachmentView *)self ic_hairlineWidth];
    [layerCopy setBorderWidth:?];

    CGColorRelease(v7);
    CGColorSpaceRelease(DeviceGray);
  }
}

- (void)updateImageInView:(BOOL)view
{
  [(ICImageAttachmentView *)self setImageLoadingCancelBlock:0];
  attachment = [(ICImageAttachmentView *)self attachment];
  [attachment sizeWidth];
  if (v6 == 0.0)
  {

    goto LABEL_5;
  }

  attachment2 = [(ICImageAttachmentView *)self attachment];
  [attachment2 sizeHeight];
  v9 = v8;

  if (v9 == 0.0)
  {
LABEL_5:
    [(ICImageAttachmentView *)self setShouldUpdateLayoutInImageDidLoad:1];
  }

  forManualRendering = [(ICAttachmentView *)self forManualRendering];
  attachment3 = [(ICImageAttachmentView *)self attachment];
  v12 = attachment3;
  if (forManualRendering)
  {
    image = [attachment3 image];

    [(ICImageAttachmentView *)self imageDidLoad:image shouldFade:0];

    return;
  }

  [attachment3 intrinsicContentSize];
  v14 = v13;
  v16 = v15;

  [MEMORY[0x277D36950] defaultAttachmentThumbnailViewHeight];
  v18 = v17;
  textAttachment = [(ICImageAttachmentView *)self textAttachment];
  if (([textAttachment supportsMultiplePresentationSizes] & 1) == 0)
  {

LABEL_18:
    attachment4 = [(ICImageAttachmentView *)self attachment];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __43__ICImageAttachmentView_updateImageInView___block_invoke_3;
    v39[3] = &unk_2781AD878;
    v39[4] = self;
    viewCopy = view;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __43__ICImageAttachmentView_updateImageInView___block_invoke_5;
    v38[3] = &unk_2781ABCF8;
    v38[4] = self;
    v36 = [attachment4 loadImage:v39 aboutToLoadHandler:v38 forceFullSizeImage:0];
    [(ICImageAttachmentView *)self setImageLoadingCancelBlock:v36];

    return;
  }

  attachment5 = [(ICImageAttachmentView *)self attachment];
  preferredViewSize = [attachment5 preferredViewSize];

  if (preferredViewSize != 1 || v14 <= v18 || v16 <= v18)
  {
    goto LABEL_18;
  }

  [MEMORY[0x277D36950] defaultAttachmentThumbnailViewHeight];
  v23 = v22;
  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__ICImageAttachmentView_updateImageInView___block_invoke;
  aBlock[3] = &unk_2781AD828;
  objc_copyWeak(&v43, location);
  viewCopy2 = view;
  v24 = _Block_copy(aBlock);
  v25 = objc_alloc_init(MEMORY[0x277D35FE0]);
  [(ICImageAttachmentView *)self ic_backingScaleFactor];
  v27 = v26;
  attachment6 = [(ICImageAttachmentView *)self attachment];
  if (v27 < 1.0)
  {
    v27 = 1.0;
  }

  ic_appearanceInfo = [(ICImageAttachmentView *)self ic_appearanceInfo];
  attachment7 = [(ICImageAttachmentView *)self attachment];
  identifier = [attachment7 identifier];
  attachment8 = [(ICImageAttachmentView *)self attachment];
  attachmentModel = [attachment8 attachmentModel];
  genericBrickThumbnailCreator = [attachmentModel genericBrickThumbnailCreator];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __43__ICImageAttachmentView_updateImageInView___block_invoke_2;
  v41[3] = &unk_2781ABCF8;
  v41[4] = self;
  [attachment6 fetchThumbnailImageWithMinSize:ic_appearanceInfo scale:v25 appearanceInfo:identifier cache:0 cacheKey:v24 processingBlock:genericBrickThumbnailCreator completionBlock:v23 fallbackBlock:v23 aboutToLoadHandler:{v27, v41}];

  objc_destroyWeak(&v43);
  objc_destroyWeak(location);
}

void __43__ICImageAttachmentView_updateImageInView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained imageDidLoad:v3 shouldFade:*(a1 + 40)];
}

void __43__ICImageAttachmentView_updateImageInView___block_invoke_3(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a3 && [MEMORY[0x277CCACC8] isMainThread])
  {
    [*(a1 + 32) imageDidLoad:v5 shouldFade:*(a1 + 40)];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__ICImageAttachmentView_updateImageInView___block_invoke_4;
    block[3] = &unk_2781AD850;
    block[4] = *(a1 + 32);
    v7 = v5;
    v8 = a3;
    v9 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __43__ICImageAttachmentView_updateImageInView___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(a1 + 48) == 1)
  {
    v4 = *(a1 + 49);
  }

  else
  {
    v4 = 1;
  }

  return [v2 imageDidLoad:v3 shouldFade:v4 & 1];
}

- (void)imageDidLoad:(id)load shouldFade:(BOOL)fade
{
  fadeCopy = fade;
  v78[1] = *MEMORY[0x277D85DE8];
  loadCopy = load;
  [(ICImageAttachmentView *)self setImageLoadingCancelBlock:0];
  [(ICImageAttachmentView *)self imageSize];
  if (loadCopy)
  {
    [(ICImageAttachmentView *)self setShouldTryToReloadImageIfLoadingFails:0];
    if ([(ICImageAttachmentView *)self shouldUpdateLayoutInImageDidLoad])
    {
      [(ICImageAttachmentView *)self setShouldUpdateLayoutInImageDidLoad:0];
      attachment = [(ICImageAttachmentView *)self attachment];
      note = [attachment note];
      attachment2 = [(ICImageAttachmentView *)self attachment];
      v12 = [note rangeForAttachment:attachment2];
      v14 = v13;

      LODWORD(attachment) = ICInternalSettingsIsTextKit2Enabled();
      textView = [(ICAttachmentView *)self textView];
      v16 = textView;
      if (attachment)
      {
        textLayoutManager = [textView textLayoutManager];
        textView3 = [textLayoutManager ic_textRangeForRange:{v12, v14}];

        textView2 = [(ICAttachmentView *)self textView];
        textLayoutManager2 = [textView2 textLayoutManager];
        [textLayoutManager2 invalidateLayoutForRange:textView3];
      }

      else
      {
        layoutManager = [textView layoutManager];
        [layoutManager invalidateLayoutForCharacterRange:v12 actualCharacterRange:{v14, 0}];

        textView3 = [(ICAttachmentView *)self textView];
        textView2 = [textView3 layoutManager];
        [textView2 invalidateDisplayForCharacterRange:{v12, v14}];
      }
    }

    [(ICImageAttachmentView *)self setImage:loadCopy];
    ic_CGImage = [loadCopy ic_CGImage];
    imageLayer = [(ICImageAttachmentView *)self imageLayer];
    [imageLayer setContents:ic_CGImage];

    imageOrientation = [loadCopy imageOrientation];
    if (imageOrientation <= 3)
    {
      if (imageOrientation == 1)
      {
        v69 = 0uLL;
        v59 = xmmword_2154BC070;
        goto LABEL_44;
      }

      if (imageOrientation == 2)
      {
        v69 = 0uLL;
        v58 = xmmword_2154BC080;
        goto LABEL_48;
      }

      if (imageOrientation != 3)
      {
LABEL_42:
        v66 = *MEMORY[0x277CBF2C0];
        v68 = *(MEMORY[0x277CBF2C0] + 16);
        v69 = *(MEMORY[0x277CBF2C0] + 32);
LABEL_50:
        [MEMORY[0x277CD9FF0] begin];
        [MEMORY[0x277CD9FF0] setDisableActions:1];
        imageLayer2 = [(ICImageAttachmentView *)self imageLayer];
        *buf = v66;
        *&buf[16] = v68;
        v76 = v69;
        [imageLayer2 setAffineTransform:buf];

        [MEMORY[0x277CD9FF0] commit];
        goto LABEL_51;
      }

      v69 = 0uLL;
      v57 = xmmword_2154BC060;
    }

    else
    {
      if (imageOrientation <= 5)
      {
        if (imageOrientation != 4)
        {
          v69 = 0uLL;
          v68 = xmmword_2154BC070;
          v56 = xmmword_2154BC080;
LABEL_49:
          v66 = v56;
          goto LABEL_50;
        }

        v69 = 0uLL;
        v59 = xmmword_2154BC090;
LABEL_44:
        v68 = v59;
        v56 = xmmword_2154BC060;
        goto LABEL_49;
      }

      if (imageOrientation != 6)
      {
        if (imageOrientation == 7)
        {
          v69 = 0uLL;
          v58 = xmmword_2154BC060;
LABEL_48:
          v68 = v58;
          v56 = xmmword_2154BC070;
          goto LABEL_49;
        }

        goto LABEL_42;
      }

      v69 = 0uLL;
      v57 = xmmword_2154BC080;
    }

    v68 = v57;
    v56 = xmmword_2154BC090;
    goto LABEL_49;
  }

  v21 = v7;
  v22 = v8;
  if ([(ICImageAttachmentView *)self shouldTryToReloadImageIfLoadingFails])
  {
    [(ICImageAttachmentView *)self setShouldTryToReloadImageIfLoadingFails:0];
    [(ICImageAttachmentView *)self updateImageInViewIfNecessary];
    goto LABEL_58;
  }

  v23 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [ICImageAttachmentView imageDidLoad:v23 shouldFade:?];
  }

  attachment3 = [(ICImageAttachmentView *)self attachment];
  media = [attachment3 media];
  v64 = fadeCopy;
  if (([media hasFile] & 1) == 0)
  {
    attachment4 = [(ICImageAttachmentView *)self attachment];
    media2 = [attachment4 media];
    generationManager = [media2 generationManager];
    containerURL = [generationManager containerURL];

    if (!containerURL)
    {
      goto LABEL_25;
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    selfCopy = self;
    attachment5 = [(ICImageAttachmentView *)self attachment];
    media3 = [attachment5 media];
    generationManager2 = [media3 generationManager];
    containerURL2 = [generationManager2 containerURL];
    v35 = *MEMORY[0x277CBE868];
    v78[0] = *MEMORY[0x277CBE868];
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:1];
    v37 = [defaultManager enumeratorAtURL:containerURL2 includingPropertiesForKeys:v36 options:0 errorHandler:0];

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    media = v37;
    v38 = [media countByEnumeratingWithState:&v71 objects:v77 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v72;
      v65 = media;
      do
      {
        v41 = 0;
        do
        {
          if (*v72 != v40)
          {
            objc_enumerationMutation(media);
          }

          v42 = *(*(&v71 + 1) + 8 * v41);
          v70 = 0;
          v43 = [v42 getResourceValue:&v70 forKey:v35 error:0];
          v44 = v70;
          v45 = v44;
          if (!v43 || ([v44 BOOLValue] & 1) == 0)
          {
            v46 = os_log_create("com.apple.notes", "UI");
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              attachment6 = [(ICImageAttachmentView *)selfCopy attachment];
              media4 = [attachment6 media];
              shortLoggingDescription = [media4 shortLoggingDescription];
              *buf = 138412546;
              *&buf[4] = shortLoggingDescription;
              *&buf[12] = 2112;
              *&buf[14] = v42;
              _os_log_error_impl(&dword_2151A1000, v46, OS_LOG_TYPE_ERROR, "ICImageAttachmentView - media %@ claims not to have file, but found orphaned resource in container: %@", buf, 0x16u);

              media = v65;
            }
          }

          ++v41;
        }

        while (v39 != v41);
        v39 = [media countByEnumeratingWithState:&v71 objects:v77 count:16];
      }

      while (v39);
    }

    attachment3 = media;
    loadCopy = 0;
    self = selfCopy;
  }

LABEL_25:
  if (v21 == 0.0 || v22 == 0.0)
  {
    goto LABEL_58;
  }

  [(ICImageAttachmentView *)self setShouldTryToReloadImageIfLoadingFails:0];
  [(ICImageAttachmentView *)self setImage:0];
  ic_CGImage2 = [0 ic_CGImage];
  imageLayer3 = [(ICImageAttachmentView *)self imageLayer];
  [imageLayer3 setContents:ic_CGImage2];

  fadeCopy = v64;
LABEL_51:
  imageContentsGravity = [(ICImageAttachmentView *)self imageContentsGravity];
  imageLayer4 = [(ICImageAttachmentView *)self imageLayer];
  [imageLayer4 setContentsGravity:imageContentsGravity];

  if (loadCopy)
  {
    if (fadeCopy && ([(ICImageAttachmentView *)self ic_backgroundColor], v63 = objc_claimAutoreleasedReturnValue(), v63, v63))
    {
      [(ICImageAttachmentView *)self animateImageArrival];
    }

    else
    {
      [(ICImageAttachmentView *)self setIc_backgroundColor:0];
      [(ICImageAttachmentView *)self setShowLoadingImage:0];
    }
  }

  else
  {
    [(ICImageAttachmentView *)self setupImagePlaceholder];
  }

  [(ICImageAttachmentView *)self updateImageSize];
LABEL_58:
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = ICImageAttachmentView;
  [(ICImageAttachmentView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(ICImageAttachmentView *)self updateImageSize];
  [(ICImageAttachmentView *)self refreshLoadingImage];
}

- (void)setHighlightColor:(id)color
{
  v5.receiver = self;
  v5.super_class = ICImageAttachmentView;
  [(ICImageAttachmentView *)&v5 setHighlightColor:color];
  imageLayer = [(ICImageAttachmentView *)self imageLayer];
  [(ICImageAttachmentView *)self setupBorderForLayer:imageLayer];
}

- (void)setShowLoadingImage:(BOOL)image
{
  v25[1] = *MEMORY[0x277D85DE8];
  if (image)
  {
    showLoadingImage = [(ICImageAttachmentView *)self showLoadingImage];
    v5 = MEMORY[0x277D755B8];
    attachment = [(ICImageAttachmentView *)self attachment];
    attachmentModel = [attachment attachmentModel];
    placeholderImageSystemName = [attachmentModel placeholderImageSystemName];
    [objc_opt_class() ICLoadingPlaceholderIconSize];
    v9 = [v5 ic_systemImageNamed:placeholderImageSystemName pointSize:?];

    if (!showLoadingImage)
    {
      v10 = objc_alloc_init(MEMORY[0x277D755E8]);
      [v10 setContentMode:4];
      iCLoadingPlaceholderIconColor = [objc_opt_class() ICLoadingPlaceholderIconColor];
      [v10 setTintColor:iCLoadingPlaceholderIconColor];

      [v10 setImage:v9];
      [(ICImageAttachmentView *)self setLoadingImageView:v10];
      loadingImageView = [(ICImageAttachmentView *)self loadingImageView];
      [loadingImageView setTranslatesAutoresizingMaskIntoConstraints:0];

      loadingImageView2 = [(ICImageAttachmentView *)self loadingImageView];
      [(ICImageAttachmentView *)self addSubview:loadingImageView2];

      v24 = @"loadingImage";
      loadingImageView3 = [(ICImageAttachmentView *)self loadingImageView];
      v25[0] = loadingImageView3;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];

      v16 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-[loadingImage]-|" options:0 metrics:0 views:v15];
      v17 = MEMORY[0x277CCAAD0];
      loadingImageView4 = [(ICImageAttachmentView *)self loadingImageView];
      v19 = [v17 constraintWithItem:loadingImageView4 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];

      v20 = MEMORY[0x277CCAAD0];
      v21 = [v16 arrayByAddingObject:v19];
      [v20 activateConstraints:v21];
    }
  }

  else
  {
    [(ICImageAttachmentView *)self setShouldShowLoadingImage:?];
    loadingImageView5 = [(ICImageAttachmentView *)self loadingImageView];

    if (loadingImageView5)
    {
      loadingImageView6 = [(ICImageAttachmentView *)self loadingImageView];
      [loadingImageView6 removeFromSuperview];

      [(ICImageAttachmentView *)self setLoadingImageView:0];
    }
  }
}

- (UIImage)image
{
  WeakRetained = objc_loadWeakRetained(&self->_image);

  return WeakRetained;
}

- (id)icaxHintString
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Double tap to view full-screen" value:&stru_282757698 table:0];

  return v3;
}

- (id)accessibilityLabel
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle localizedStringForKey:@"image attachment" value:&stru_282757698 table:0];

  icaxAttachmentViewTypeDescription = [(ICAttachmentView *)self icaxAttachmentViewTypeDescription];
  v5 = __ICAccessibilityStringForVariables();

  return v5;
}

- (id)accessibilityUserInputLabels
{
  v8[2] = *MEMORY[0x277D85DE8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle localizedStringForKey:@"Image" value:&stru_282757698 table:0];
  v8[0] = v4;
  accessibilityLabel = [(ICImageAttachmentView *)self accessibilityLabel];
  v8[1] = accessibilityLabel;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];

  return v6;
}

- (void)imageDidLoad:(void *)a1 shouldFade:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a1 attachment];
  v5 = [v4 ic_loggingDescription];
  v6 = [a1 attachment];
  v7 = [v6 media];
  v8 = [v7 ic_loggingDescription];
  v9 = 138412546;
  v10 = v5;
  v11 = 2112;
  v12 = v8;
  _os_log_error_impl(&dword_2151A1000, a2, OS_LOG_TYPE_ERROR, "ICImageAttachmentView failed to load image for attachment: %@ --- media:\n%@", &v9, 0x16u);
}

@end