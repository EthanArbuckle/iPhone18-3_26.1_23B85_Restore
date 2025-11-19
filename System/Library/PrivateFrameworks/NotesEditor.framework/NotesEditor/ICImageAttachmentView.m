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
- (void)imageDidLoad:(id)a3 shouldFade:(BOOL)a4;
- (void)prepareForPrinting;
- (void)refreshLoadingImage;
- (void)setFrame:(CGRect)a3;
- (void)setHighlightColor:(id)a3;
- (void)setShowLoadingImage:(BOOL)a3;
- (void)setupBorderForLayer:(id)a3;
- (void)setupEventHandling;
- (void)setupImagePlaceholder;
- (void)setupImagePlaceholderIfNecessary;
- (void)sharedInit:(BOOL)a3;
- (void)updateImageInView:(BOOL)a3;
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
  v3 = [objc_opt_class() ICLoadingPlaceholderBackgroundColor];
  [(ICImageAttachmentView *)self setIc_backgroundColor:v3];

  v4 = [(ICImageAttachmentView *)self imageLayer];
  [(ICImageAttachmentView *)self setupBorderForLayer:v4];

  [(ICImageAttachmentView *)self setShouldShowLoadingImage:1];

  [(ICImageAttachmentView *)self refreshLoadingImage];
}

+ (id)ICLoadingPlaceholderBackgroundColor
{
  v2 = [MEMORY[0x277D75348] ic_systemGray5Color];
  v3 = [v2 ic_resolvedColorForNoteEditor];

  return v3;
}

- (BOOL)showLoadingImage
{
  v2 = [(ICImageAttachmentView *)self loadingImageView];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isThumbnailView
{
  v2 = [(ICImageAttachmentView *)self attachment];
  v3 = [v2 preferredViewSize] == 1;

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
  v11 = [(ICImageAttachmentView *)self imageLayer];
  [(ICImageAttachmentView *)self setupBorderForLayer:v11];

  IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
  v13 = [(ICImageAttachmentView *)self imageLayer];
  v14 = v13;
  if (IsTextKit2Enabled)
  {
    [v13 setFrame:{v4, v6, v8, v10}];

    v15 = MEMORY[0x277CD9FF0];

    [v15 commit];
    return;
  }

  [v13 frame];
  if (TSDNearlyEqualSizes())
  {
    v16 = [(ICImageAttachmentView *)self imageLayer];
    [v16 frame];
    v18 = v17;
    v20 = v19;
    v21 = *MEMORY[0x277CBF3A8];
    v22 = *(MEMORY[0x277CBF3A8] + 8);

    v23 = [(ICImageAttachmentView *)self imageLayer];
    [v23 setFrame:{v4, v6, v8, v10}];

    [MEMORY[0x277CD9FF0] commit];
    if (v18 != v21 || v20 != v22)
    {
      return;
    }
  }

  else
  {

    v25 = [(ICImageAttachmentView *)self imageLayer];
    [v25 setFrame:{v4, v6, v8, v10}];

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
      v11 = [(ICImageAttachmentView *)self textAttachment];
      v12 = [(ICAttachmentView *)self textContainer];
      [v11 attachmentSizeForTextContainer:v12];
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
    v3 = [(ICImageAttachmentView *)self attachment];
    [v3 sizeWidth];
    if (v4 <= 0.0)
    {
      v7 = 0;
    }

    else
    {
      v5 = [(ICImageAttachmentView *)self attachment];
      [v5 sizeHeight];
      v7 = v6 > 0.0;
    }

    v8 = [(ICImageAttachmentView *)self shouldShowLoadingImage]& v7;

    [(ICImageAttachmentView *)self setShowLoadingImage:v8];
  }
}

- (void)updateImageInViewIfNecessary
{
  v3 = [(ICImageAttachmentView *)self imageLoadingCancelBlock];

  if (v3)
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
  v3 = [(ICImageAttachmentView *)self imageLayer];
  v4 = [v3 contents];

  if (!v4)
  {

    [(ICImageAttachmentView *)self setupImagePlaceholder];
  }
}

+ (id)ICLoadingPlaceholderIconColor
{
  v2 = [MEMORY[0x277D75348] systemGrayColor];
  v3 = [v2 ic_resolvedColorForNoteEditor];

  return v3;
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
  v4 = [(ICImageAttachmentView *)self imageLayer];
  [v4 addAnimation:v3 forKey:@"opacity"];

  [(ICImageAttachmentView *)self setShowLoadingImage:0];
  v5 = [(ICImageAttachmentView *)self ic_backgroundColor];

  if (v5)
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
  v3 = [(ICImageAttachmentView *)self window];
  v4 = [v3 screen];

  if (v4)
  {
    v9 = [(ICImageAttachmentView *)self window];
    v5 = [v9 screen];
    [v5 scale];
    v7 = v6;
    v8 = [(ICImageAttachmentView *)self imageLayer];
    [v8 setContentsScale:v7];
  }
}

- (void)sharedInit:(BOOL)a3
{
  v19.receiver = self;
  v19.super_class = ICImageAttachmentView;
  [(ICAttachmentView *)&v19 sharedInit:a3];
  v4 = [(ICImageAttachmentView *)self imageLayer];

  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    [(ICImageAttachmentView *)self setImageLayer:v5];

    [(ICImageAttachmentView *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(ICImageAttachmentView *)self imageLayer];
    [v14 setFrame:{v7, v9, v11, v13}];

    v15 = [(ICImageAttachmentView *)self imageLayer];
    [v15 setMasksToBounds:1];

    v16 = [(ICImageAttachmentView *)self imageLayer];
    [v16 setAllowsEdgeAntialiasing:0];

    v17 = [(ICImageAttachmentView *)self layer];
    v18 = [(ICImageAttachmentView *)self imageLayer];
    [v17 addSublayer:v18];

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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

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
  v3 = [(ICImageAttachmentView *)self imageLoadingCancelBlock];

  if (v3)
  {
    v4 = [(ICImageAttachmentView *)self imageLoadingCancelBlock];
    v4[2]();

    [(ICImageAttachmentView *)self setImageLoadingCancelBlock:0];
  }

  v5 = [(ICImageAttachmentView *)self imageLayer];
  [v5 setContents:0];
}

- (BOOL)cancelDidScrollIntoVisibleRange
{
  v3 = [(ICImageAttachmentView *)self imageLoadingCancelBlock];
  if (v3)
  {
    v4 = v3;
    v5 = [(ICImageAttachmentView *)self imageLayer];
    v6 = [v5 contents];

    if (v6)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v7 = [(ICImageAttachmentView *)self imageLoadingCancelBlock];
      v7[2]();

      [(ICImageAttachmentView *)self setImageLoadingCancelBlock:0];
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (void)prepareForPrinting
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 attachment];
  v4 = [v3 ic_loggingDescription];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_2151A1000, a2, OS_LOG_TYPE_ERROR, "Unexpected nil image for attachment (%@)", &v5, 0xCu);
}

- (void)setupBorderForLayer:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v4 = [(ICImageAttachmentView *)self highlightColor];

  if (v4)
  {
    v5 = [(ICImageAttachmentView *)self highlightColor];
    [v8 setBorderColor:{objc_msgSend(v5, "CGColor")}];

    [v8 setBorderWidth:*MEMORY[0x277D364B0]];
  }

  else
  {
    DeviceGray = CGColorSpaceCreateDeviceGray();
    *components = xmmword_2154BC0A0;
    v7 = CGColorCreate(DeviceGray, components);
    [v8 setBorderColor:v7];
    [(ICImageAttachmentView *)self ic_hairlineWidth];
    [v8 setBorderWidth:?];

    CGColorRelease(v7);
    CGColorSpaceRelease(DeviceGray);
  }
}

- (void)updateImageInView:(BOOL)a3
{
  [(ICImageAttachmentView *)self setImageLoadingCancelBlock:0];
  v5 = [(ICImageAttachmentView *)self attachment];
  [v5 sizeWidth];
  if (v6 == 0.0)
  {

    goto LABEL_5;
  }

  v7 = [(ICImageAttachmentView *)self attachment];
  [v7 sizeHeight];
  v9 = v8;

  if (v9 == 0.0)
  {
LABEL_5:
    [(ICImageAttachmentView *)self setShouldUpdateLayoutInImageDidLoad:1];
  }

  v10 = [(ICAttachmentView *)self forManualRendering];
  v11 = [(ICImageAttachmentView *)self attachment];
  v12 = v11;
  if (v10)
  {
    v37 = [v11 image];

    [(ICImageAttachmentView *)self imageDidLoad:v37 shouldFade:0];

    return;
  }

  [v11 intrinsicContentSize];
  v14 = v13;
  v16 = v15;

  [MEMORY[0x277D36950] defaultAttachmentThumbnailViewHeight];
  v18 = v17;
  v19 = [(ICImageAttachmentView *)self textAttachment];
  if (([v19 supportsMultiplePresentationSizes] & 1) == 0)
  {

LABEL_18:
    v35 = [(ICImageAttachmentView *)self attachment];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __43__ICImageAttachmentView_updateImageInView___block_invoke_3;
    v39[3] = &unk_2781AD878;
    v39[4] = self;
    v40 = a3;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __43__ICImageAttachmentView_updateImageInView___block_invoke_5;
    v38[3] = &unk_2781ABCF8;
    v38[4] = self;
    v36 = [v35 loadImage:v39 aboutToLoadHandler:v38 forceFullSizeImage:0];
    [(ICImageAttachmentView *)self setImageLoadingCancelBlock:v36];

    return;
  }

  v20 = [(ICImageAttachmentView *)self attachment];
  v21 = [v20 preferredViewSize];

  if (v21 != 1 || v14 <= v18 || v16 <= v18)
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
  v44 = a3;
  v24 = _Block_copy(aBlock);
  v25 = objc_alloc_init(MEMORY[0x277D35FE0]);
  [(ICImageAttachmentView *)self ic_backingScaleFactor];
  v27 = v26;
  v28 = [(ICImageAttachmentView *)self attachment];
  if (v27 < 1.0)
  {
    v27 = 1.0;
  }

  v29 = [(ICImageAttachmentView *)self ic_appearanceInfo];
  v30 = [(ICImageAttachmentView *)self attachment];
  v31 = [v30 identifier];
  v32 = [(ICImageAttachmentView *)self attachment];
  v33 = [v32 attachmentModel];
  v34 = [v33 genericBrickThumbnailCreator];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __43__ICImageAttachmentView_updateImageInView___block_invoke_2;
  v41[3] = &unk_2781ABCF8;
  v41[4] = self;
  [v28 fetchThumbnailImageWithMinSize:v29 scale:v25 appearanceInfo:v31 cache:0 cacheKey:v24 processingBlock:v34 completionBlock:v23 fallbackBlock:v23 aboutToLoadHandler:{v27, v41}];

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

- (void)imageDidLoad:(id)a3 shouldFade:(BOOL)a4
{
  v4 = a4;
  v78[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(ICImageAttachmentView *)self setImageLoadingCancelBlock:0];
  [(ICImageAttachmentView *)self imageSize];
  if (v6)
  {
    [(ICImageAttachmentView *)self setShouldTryToReloadImageIfLoadingFails:0];
    if ([(ICImageAttachmentView *)self shouldUpdateLayoutInImageDidLoad])
    {
      [(ICImageAttachmentView *)self setShouldUpdateLayoutInImageDidLoad:0];
      v9 = [(ICImageAttachmentView *)self attachment];
      v10 = [v9 note];
      v11 = [(ICImageAttachmentView *)self attachment];
      v12 = [v10 rangeForAttachment:v11];
      v14 = v13;

      LODWORD(v9) = ICInternalSettingsIsTextKit2Enabled();
      v15 = [(ICAttachmentView *)self textView];
      v16 = v15;
      if (v9)
      {
        v17 = [v15 textLayoutManager];
        v18 = [v17 ic_textRangeForRange:{v12, v14}];

        v19 = [(ICAttachmentView *)self textView];
        v20 = [v19 textLayoutManager];
        [v20 invalidateLayoutForRange:v18];
      }

      else
      {
        v52 = [v15 layoutManager];
        [v52 invalidateLayoutForCharacterRange:v12 actualCharacterRange:{v14, 0}];

        v18 = [(ICAttachmentView *)self textView];
        v19 = [v18 layoutManager];
        [v19 invalidateDisplayForCharacterRange:{v12, v14}];
      }
    }

    [(ICImageAttachmentView *)self setImage:v6];
    v53 = [v6 ic_CGImage];
    v54 = [(ICImageAttachmentView *)self imageLayer];
    [v54 setContents:v53];

    v55 = [v6 imageOrientation];
    if (v55 <= 3)
    {
      if (v55 == 1)
      {
        v69 = 0uLL;
        v59 = xmmword_2154BC070;
        goto LABEL_44;
      }

      if (v55 == 2)
      {
        v69 = 0uLL;
        v58 = xmmword_2154BC080;
        goto LABEL_48;
      }

      if (v55 != 3)
      {
LABEL_42:
        v66 = *MEMORY[0x277CBF2C0];
        v68 = *(MEMORY[0x277CBF2C0] + 16);
        v69 = *(MEMORY[0x277CBF2C0] + 32);
LABEL_50:
        [MEMORY[0x277CD9FF0] begin];
        [MEMORY[0x277CD9FF0] setDisableActions:1];
        v60 = [(ICImageAttachmentView *)self imageLayer];
        *buf = v66;
        *&buf[16] = v68;
        v76 = v69;
        [v60 setAffineTransform:buf];

        [MEMORY[0x277CD9FF0] commit];
        goto LABEL_51;
      }

      v69 = 0uLL;
      v57 = xmmword_2154BC060;
    }

    else
    {
      if (v55 <= 5)
      {
        if (v55 != 4)
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

      if (v55 != 6)
      {
        if (v55 == 7)
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

  v24 = [(ICImageAttachmentView *)self attachment];
  v25 = [v24 media];
  v64 = v4;
  if (([v25 hasFile] & 1) == 0)
  {
    v26 = [(ICImageAttachmentView *)self attachment];
    v27 = [v26 media];
    v28 = [v27 generationManager];
    v29 = [v28 containerURL];

    if (!v29)
    {
      goto LABEL_25;
    }

    v30 = [MEMORY[0x277CCAA00] defaultManager];
    v67 = self;
    v31 = [(ICImageAttachmentView *)self attachment];
    v32 = [v31 media];
    v33 = [v32 generationManager];
    v34 = [v33 containerURL];
    v35 = *MEMORY[0x277CBE868];
    v78[0] = *MEMORY[0x277CBE868];
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:1];
    v37 = [v30 enumeratorAtURL:v34 includingPropertiesForKeys:v36 options:0 errorHandler:0];

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v25 = v37;
    v38 = [v25 countByEnumeratingWithState:&v71 objects:v77 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v72;
      v65 = v25;
      do
      {
        v41 = 0;
        do
        {
          if (*v72 != v40)
          {
            objc_enumerationMutation(v25);
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
              v47 = [(ICImageAttachmentView *)v67 attachment];
              v48 = [v47 media];
              v49 = [v48 shortLoggingDescription];
              *buf = 138412546;
              *&buf[4] = v49;
              *&buf[12] = 2112;
              *&buf[14] = v42;
              _os_log_error_impl(&dword_2151A1000, v46, OS_LOG_TYPE_ERROR, "ICImageAttachmentView - media %@ claims not to have file, but found orphaned resource in container: %@", buf, 0x16u);

              v25 = v65;
            }
          }

          ++v41;
        }

        while (v39 != v41);
        v39 = [v25 countByEnumeratingWithState:&v71 objects:v77 count:16];
      }

      while (v39);
    }

    v24 = v25;
    v6 = 0;
    self = v67;
  }

LABEL_25:
  if (v21 == 0.0 || v22 == 0.0)
  {
    goto LABEL_58;
  }

  [(ICImageAttachmentView *)self setShouldTryToReloadImageIfLoadingFails:0];
  [(ICImageAttachmentView *)self setImage:0];
  v50 = [0 ic_CGImage];
  v51 = [(ICImageAttachmentView *)self imageLayer];
  [v51 setContents:v50];

  v4 = v64;
LABEL_51:
  v61 = [(ICImageAttachmentView *)self imageContentsGravity];
  v62 = [(ICImageAttachmentView *)self imageLayer];
  [v62 setContentsGravity:v61];

  if (v6)
  {
    if (v4 && ([(ICImageAttachmentView *)self ic_backgroundColor], v63 = objc_claimAutoreleasedReturnValue(), v63, v63))
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

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = ICImageAttachmentView;
  [(ICImageAttachmentView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(ICImageAttachmentView *)self updateImageSize];
  [(ICImageAttachmentView *)self refreshLoadingImage];
}

- (void)setHighlightColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = ICImageAttachmentView;
  [(ICImageAttachmentView *)&v5 setHighlightColor:a3];
  v4 = [(ICImageAttachmentView *)self imageLayer];
  [(ICImageAttachmentView *)self setupBorderForLayer:v4];
}

- (void)setShowLoadingImage:(BOOL)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [(ICImageAttachmentView *)self showLoadingImage];
    v5 = MEMORY[0x277D755B8];
    v6 = [(ICImageAttachmentView *)self attachment];
    v7 = [v6 attachmentModel];
    v8 = [v7 placeholderImageSystemName];
    [objc_opt_class() ICLoadingPlaceholderIconSize];
    v9 = [v5 ic_systemImageNamed:v8 pointSize:?];

    if (!v4)
    {
      v10 = objc_alloc_init(MEMORY[0x277D755E8]);
      [v10 setContentMode:4];
      v11 = [objc_opt_class() ICLoadingPlaceholderIconColor];
      [v10 setTintColor:v11];

      [v10 setImage:v9];
      [(ICImageAttachmentView *)self setLoadingImageView:v10];
      v12 = [(ICImageAttachmentView *)self loadingImageView];
      [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

      v13 = [(ICImageAttachmentView *)self loadingImageView];
      [(ICImageAttachmentView *)self addSubview:v13];

      v24 = @"loadingImage";
      v14 = [(ICImageAttachmentView *)self loadingImageView];
      v25[0] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];

      v16 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-[loadingImage]-|" options:0 metrics:0 views:v15];
      v17 = MEMORY[0x277CCAAD0];
      v18 = [(ICImageAttachmentView *)self loadingImageView];
      v19 = [v17 constraintWithItem:v18 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];

      v20 = MEMORY[0x277CCAAD0];
      v21 = [v16 arrayByAddingObject:v19];
      [v20 activateConstraints:v21];
    }
  }

  else
  {
    [(ICImageAttachmentView *)self setShouldShowLoadingImage:?];
    v22 = [(ICImageAttachmentView *)self loadingImageView];

    if (v22)
    {
      v23 = [(ICImageAttachmentView *)self loadingImageView];
      [v23 removeFromSuperview];

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
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Double tap to view full-screen" value:&stru_282757698 table:0];

  return v3;
}

- (id)accessibilityLabel
{
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 localizedStringForKey:@"image attachment" value:&stru_282757698 table:0];

  v7 = [(ICAttachmentView *)self icaxAttachmentViewTypeDescription];
  v5 = __ICAccessibilityStringForVariables();

  return v5;
}

- (id)accessibilityUserInputLabels
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 localizedStringForKey:@"Image" value:&stru_282757698 table:0];
  v8[0] = v4;
  v5 = [(ICImageAttachmentView *)self accessibilityLabel];
  v8[1] = v5;
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