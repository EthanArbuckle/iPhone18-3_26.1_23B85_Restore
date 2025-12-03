@interface ICPDFAttachmentView
+ (id)renderingQueue;
- (BOOL)availableImageIsAcceptable;
- (BOOL)cancelDidScrollIntoVisibleRange;
- (BOOL)cancelRenderingIfPossible;
- (BOOL)needToStartRender;
- (CGPDFPage)page;
- (ICPDFAttachmentView)initWithFrame:(CGRect)frame textAttachment:(id)attachment textContainer:(id)container forManualRendering:(BOOL)rendering;
- (NSOperation)renderOperation;
- (id)accessibilityLabel;
- (id)pdfURL;
- (void)cleanupPDFDocument;
- (void)dealloc;
- (void)didChangeMedia;
- (void)didMoveToWindow;
- (void)didScrollIntoVisibleRange;
- (void)didScrollOutOfVisibleRange;
- (void)prepareForPrinting;
- (void)setAttachment:(id)attachment;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setHighlightColor:(id)color;
- (void)setImage:(id)image;
- (void)setRendering:(BOOL)rendering;
- (void)setupBorderForLayer:(id)layer;
- (void)startImageRenderIfNeeded;
- (void)startProgress;
- (void)stopProgress;
- (void)updateLayerContentsWithFade:(BOOL)fade;
@end

@implementation ICPDFAttachmentView

- (id)accessibilityLabel
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle localizedStringForKey:@"PDF attachment" value:&stru_282757698 table:0];

  icaxAttachmentViewTypeDescription = [(ICAttachmentView *)self icaxAttachmentViewTypeDescription];
  v5 = __ICAccessibilityStringForVariables();

  return v5;
}

+ (id)renderingQueue
{
  if (renderingQueue_onceToken != -1)
  {
    +[ICPDFAttachmentView renderingQueue];
  }

  v3 = renderingQueue_renderingQueue;

  return v3;
}

uint64_t __37__ICPDFAttachmentView_renderingQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v1 = renderingQueue_renderingQueue;
  renderingQueue_renderingQueue = v0;

  [renderingQueue_renderingQueue setName:@"com.apple.notes.PDF-rendering-queue"];
  v2 = renderingQueue_renderingQueue;

  return [v2 setMaxConcurrentOperationCount:1];
}

- (ICPDFAttachmentView)initWithFrame:(CGRect)frame textAttachment:(id)attachment textContainer:(id)container forManualRendering:(BOOL)rendering
{
  v7.receiver = self;
  v7.super_class = ICPDFAttachmentView;
  return [(ICAttachmentView *)&v7 initWithFrame:attachment textAttachment:container textContainer:rendering forManualRendering:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (void)dealloc
{
  [(ICPDFAttachmentView *)self cancelRenderingIfPossible];
  [(ICPDFAttachmentView *)self cleanupPDFDocument];
  v3.receiver = self;
  v3.super_class = ICPDFAttachmentView;
  [(ICAttachmentView *)&v3 dealloc];
}

- (void)cleanupPDFDocument
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  page = obj->_page;
  if (page)
  {
    CGPDFPageRelease(page);
    v2 = obj;
    obj->_page = 0;
  }

  pdf = v2->_pdf;
  if (pdf)
  {
    CGPDFDocumentRelease(pdf);
    v2 = obj;
    obj->_pdf = 0;
  }

  objc_sync_exit(v2);
}

- (void)prepareForPrinting
{
  v3.receiver = self;
  v3.super_class = ICPDFAttachmentView;
  [(ICAttachmentView *)&v3 prepareForPrinting];
  [(ICPDFAttachmentView *)self startImageRenderIfNeeded];
}

- (id)pdfURL
{
  attachment = [(ICPDFAttachmentView *)self attachment];
  media = [attachment media];
  mediaURL = [media mediaURL];

  return mediaURL;
}

- (CGPDFPage)page
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_page)
  {
    pdfURL = [(ICPDFAttachmentView *)selfCopy pdfURL];
    v4 = pdfURL;
    if (pdfURL)
    {
      v5 = CGPDFDocumentCreateWithURL(pdfURL);
      selfCopy->_pdf = v5;
      if (v5)
      {
        Page = CGPDFDocumentGetPage(v5, 1uLL);
        selfCopy->_page = Page;
        if (Page)
        {
          CGPDFPageRetain(Page);
        }
      }
    }
  }

  objc_sync_exit(selfCopy);

  return selfCopy->_page;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  objc_storeStrong(&self->_image, image);
  if (imageCopy)
  {
    if (![(ICPDFAttachmentView *)self isManaullyGeneratingImage])
    {
      attachment = [(ICPDFAttachmentView *)self attachment];
      [attachment setCachedImage:imageCopy];

      [(ICPDFAttachmentView *)self startImageRenderIfNeeded];
    }

    if (![(ICAttachmentView *)self forManualRendering])
    {
      progressView = [(ICPDFAttachmentView *)self progressView];
      [(ICPDFAttachmentView *)self updateLayerContentsWithFade:progressView != 0];

      goto LABEL_8;
    }
  }

  else
  {
    [(ICAttachmentView *)self forManualRendering];
  }

  [(ICPDFAttachmentView *)self updateLayerContentsWithFade:0];
LABEL_8:
  layer = [(ICPDFAttachmentView *)self layer];
  [(ICPDFAttachmentView *)self setupBorderForLayer:layer];
}

- (void)setAttachment:(id)attachment
{
  attachmentCopy = attachment;
  attachment = [(ICPDFAttachmentView *)self attachment];

  if (attachment != attachmentCopy)
  {
    v8.receiver = self;
    v8.super_class = ICPDFAttachmentView;
    [(ICPDFAttachmentView *)&v8 setAttachment:attachmentCopy];
    attachment2 = [(ICPDFAttachmentView *)self attachment];
    cachedImage = [attachment2 cachedImage];
    [(ICPDFAttachmentView *)self setImage:cachedImage];

    [(ICPDFAttachmentView *)self startImageRenderIfNeeded];
  }
}

- (void)didChangeMedia
{
  v5.receiver = self;
  v5.super_class = ICPDFAttachmentView;
  [(ICPDFAttachmentView *)&v5 didChangeMedia];
  image = self->_image;
  self->_image = 0;

  attachment = [(ICPDFAttachmentView *)self attachment];
  [attachment setCachedImage:0];

  [(ICPDFAttachmentView *)self cleanupPDFDocument];
  [(ICPDFAttachmentView *)self startImageRenderIfNeeded];
}

- (void)didScrollOutOfVisibleRange
{
  if (![(ICAttachmentView *)self forManualRendering])
  {
    image = self->_image;
    self->_image = 0;

    [(ICPDFAttachmentView *)self updateLayerContentsWithFade:0];

    [(ICPDFAttachmentView *)self cancelRenderingIfPossible];
  }
}

- (BOOL)cancelDidScrollIntoVisibleRange
{
  image = [(ICPDFAttachmentView *)self image];

  if (image)
  {
    return 0;
  }

  return [(ICPDFAttachmentView *)self cancelRenderingIfPossible];
}

- (void)didScrollIntoVisibleRange
{
  attachment = [(ICPDFAttachmentView *)self attachment];
  cachedImage = [attachment cachedImage];
  [(ICPDFAttachmentView *)self setImage:cachedImage];

  [(ICPDFAttachmentView *)self startImageRenderIfNeeded];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = ICPDFAttachmentView;
  [(ICAttachmentView *)&v4 didMoveToWindow];
  [(ICPDFAttachmentView *)self startImageRenderIfNeeded];
  layer = [(ICPDFAttachmentView *)self layer];
  [(ICPDFAttachmentView *)self setupBorderForLayer:layer];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = ICPDFAttachmentView;
  [(ICPDFAttachmentView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(ICPDFAttachmentView *)self startImageRenderIfNeeded];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = ICPDFAttachmentView;
  [(ICPDFAttachmentView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(ICPDFAttachmentView *)self startImageRenderIfNeeded];
}

- (void)setHighlightColor:(id)color
{
  v5.receiver = self;
  v5.super_class = ICPDFAttachmentView;
  [(ICPDFAttachmentView *)&v5 setHighlightColor:color];
  layer = [(ICPDFAttachmentView *)self layer];
  [(ICPDFAttachmentView *)self setupBorderForLayer:layer];
}

- (BOOL)availableImageIsAcceptable
{
  image = [(ICPDFAttachmentView *)self image];

  if (!image)
  {
    return 0;
  }

  [(ICPDFAttachmentView *)self bounds];
  v5 = v4;
  image2 = [(ICPDFAttachmentView *)self image];
  [image2 size];
  v8 = vabdd_f64(v7, v5) < 1.0;

  image3 = [(ICPDFAttachmentView *)self image];
  [image3 size];
  v11 = vabdd_f64(v10, v5);

  return v11 < 1.0 && v8;
}

- (BOOL)needToStartRender
{
  if ([(ICPDFAttachmentView *)self isManaullyGeneratingImage])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    superview = [(ICPDFAttachmentView *)self superview];
    if (superview)
    {
      window = [(ICPDFAttachmentView *)self window];
      if (window)
      {
        renderOperation = [(ICPDFAttachmentView *)self renderOperation];
        if (renderOperation)
        {
          LOBYTE(v3) = 0;
        }

        else
        {
          v3 = ![(ICPDFAttachmentView *)self availableImageIsAcceptable];
        }
      }

      else
      {
        LOBYTE(v3) = 0;
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)startImageRenderIfNeeded
{
  needToStartRender = [(ICPDFAttachmentView *)self needToStartRender];
  if (![(ICPDFAttachmentView *)self isManaullyGeneratingImage]&& (needToStartRender || [(ICAttachmentView *)self forManualRendering]))
  {
    v5 = [[ICPDFAttachmentRenderOperation alloc] initWithView:self];
    if ([(ICAttachmentView *)self forManualRendering])
    {
      [(ICPDFAttachmentView *)self setIsManaullyGeneratingImage:1];
      generateImageForPrinting = [(ICPDFAttachmentRenderOperation *)v5 generateImageForPrinting];
      [(ICPDFAttachmentView *)self setImage:generateImageForPrinting];
      [(ICPDFAttachmentView *)self setIsManaullyGeneratingImage:0];
    }

    else
    {
      [(ICPDFAttachmentView *)self setRenderOperation:v5];
      [(ICPDFAttachmentView *)self setRendering:1];
      generateImageForPrinting = [objc_opt_class() renderingQueue];
      [generateImageForPrinting addOperation:v5];
    }
  }
}

- (void)updateLayerContentsWithFade:(BOOL)fade
{
  if (fade)
  {
    v4 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
    [v4 setFromValue:&unk_28277E660];
    [v4 setToValue:&unk_28277E670];
    [v4 setDuration:0.1];
    layer = [(ICPDFAttachmentView *)self layer];
    [layer addAnimation:v4 forKey:@"opacity"];
  }

  cGImage = [(UIImage *)self->_image CGImage];
  layer2 = [(ICPDFAttachmentView *)self layer];
  [layer2 setContents:cGImage];
}

- (void)setupBorderForLayer:(id)layer
{
  v13 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  highlightColor = [(ICPDFAttachmentView *)self highlightColor];

  if (highlightColor)
  {
    highlightColor2 = [(ICPDFAttachmentView *)self highlightColor];
    [layerCopy setBorderColor:{objc_msgSend(highlightColor2, "CGColor")}];

    v7 = *MEMORY[0x277D364B0];
  }

  else
  {
    image = [(ICPDFAttachmentView *)self image];

    if (!image)
    {
      DeviceGray = CGColorSpaceCreateDeviceGray();
      v12 = xmmword_2154BC1C0;
      v11 = CGColorCreate(DeviceGray, &v12);
      [layerCopy setBorderColor:v11];
      [(ICPDFAttachmentView *)self ic_hairlineWidth];
      [layerCopy setBorderWidth:?];
      CGColorRelease(v11);
      CGColorSpaceRelease(DeviceGray);
      goto LABEL_6;
    }

    tertiaryLabelColor = [MEMORY[0x277D75348] tertiaryLabelColor];
    [layerCopy setBorderColor:{objc_msgSend(tertiaryLabelColor, "CGColor")}];

    [(ICPDFAttachmentView *)self ic_hairlineWidth];
  }

  [layerCopy setBorderWidth:v7];
LABEL_6:
}

- (BOOL)cancelRenderingIfPossible
{
  renderingQueue = [objc_opt_class() renderingQueue];
  [renderingQueue setSuspended:1];

  renderOperation = [(ICPDFAttachmentView *)self renderOperation];
  if ([renderOperation isExecuting] & 1) != 0 || (objc_msgSend(renderOperation, "isFinished"))
  {
    v5 = 0;
  }

  else
  {
    [renderOperation cancel];
    [(ICPDFAttachmentView *)self setRenderOperation:0];
    v5 = 1;
  }

  renderingQueue2 = [objc_opt_class() renderingQueue];
  [renderingQueue2 setSuspended:0];

  [(ICPDFAttachmentView *)self setRendering:!v5];
  return v5;
}

- (void)setRendering:(BOOL)rendering
{
  if (!rendering || self->_rendering)
  {
    if (self->_rendering && !rendering)
    {
      self->_rendering = rendering;
      startProgressSelectorDelayer = [(ICPDFAttachmentView *)self startProgressSelectorDelayer];
      [startProgressSelectorDelayer cancelPreviousFireRequests];

      [(ICPDFAttachmentView *)self stopProgress];
    }
  }

  else
  {
    self->_rendering = rendering;
    startProgressSelectorDelayer2 = [(ICPDFAttachmentView *)self startProgressSelectorDelayer];

    if (!startProgressSelectorDelayer2)
    {
      v5 = [objc_alloc(MEMORY[0x277D36258]) initWithTarget:self selector:sel_startProgress delay:0 waitToFireUntilRequestsStop:1 callOnMainThread:0.3];
      [(ICPDFAttachmentView *)self setStartProgressSelectorDelayer:v5];
    }

    startProgressSelectorDelayer3 = [(ICPDFAttachmentView *)self startProgressSelectorDelayer];
    [startProgressSelectorDelayer3 requestFire];
  }
}

- (void)startProgress
{
  v16[2] = *MEMORY[0x277D85DE8];
  progressView = [(ICPDFAttachmentView *)self progressView];

  if (!progressView)
  {
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [(ICPDFAttachmentView *)self setProgressView:v4];

    progressView2 = [(ICPDFAttachmentView *)self progressView];
    [progressView2 startAnimating];

    progressView3 = [(ICPDFAttachmentView *)self progressView];
    [progressView3 setHidden:0];

    progressView4 = [(ICPDFAttachmentView *)self progressView];
    [progressView4 setTranslatesAutoresizingMaskIntoConstraints:0];

    progressView5 = [(ICPDFAttachmentView *)self progressView];
    [(ICPDFAttachmentView *)self addSubview:progressView5];

    v9 = MEMORY[0x277CCAAD0];
    progressView6 = [(ICPDFAttachmentView *)self progressView];
    v11 = [v9 constraintWithItem:self attribute:9 relatedBy:0 toItem:progressView6 attribute:9 multiplier:1.0 constant:0.0];
    v16[0] = v11;
    v12 = MEMORY[0x277CCAAD0];
    progressView7 = [(ICPDFAttachmentView *)self progressView];
    v14 = [v12 constraintWithItem:self attribute:10 relatedBy:0 toItem:progressView7 attribute:10 multiplier:1.0 constant:0.0];
    v16[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];

    [MEMORY[0x277CCAAD0] activateConstraints:v15];
  }
}

- (void)stopProgress
{
  progressView = [(ICPDFAttachmentView *)self progressView];

  if (progressView)
  {
    progressView2 = [(ICPDFAttachmentView *)self progressView];
    [progressView2 removeFromSuperview];

    [(ICPDFAttachmentView *)self setProgressView:0];
  }
}

- (NSOperation)renderOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_renderOperation);

  return WeakRetained;
}

@end