@interface ICPDFAttachmentView
+ (id)renderingQueue;
- (BOOL)availableImageIsAcceptable;
- (BOOL)cancelDidScrollIntoVisibleRange;
- (BOOL)cancelRenderingIfPossible;
- (BOOL)needToStartRender;
- (CGPDFPage)page;
- (ICPDFAttachmentView)initWithFrame:(CGRect)a3 textAttachment:(id)a4 textContainer:(id)a5 forManualRendering:(BOOL)a6;
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
- (void)setAttachment:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHighlightColor:(id)a3;
- (void)setImage:(id)a3;
- (void)setRendering:(BOOL)a3;
- (void)setupBorderForLayer:(id)a3;
- (void)startImageRenderIfNeeded;
- (void)startProgress;
- (void)stopProgress;
- (void)updateLayerContentsWithFade:(BOOL)a3;
@end

@implementation ICPDFAttachmentView

- (id)accessibilityLabel
{
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 localizedStringForKey:@"PDF attachment" value:&stru_282757698 table:0];

  v7 = [(ICAttachmentView *)self icaxAttachmentViewTypeDescription];
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

- (ICPDFAttachmentView)initWithFrame:(CGRect)a3 textAttachment:(id)a4 textContainer:(id)a5 forManualRendering:(BOOL)a6
{
  v7.receiver = self;
  v7.super_class = ICPDFAttachmentView;
  return [(ICAttachmentView *)&v7 initWithFrame:a4 textAttachment:a5 textContainer:a6 forManualRendering:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v2 = [(ICPDFAttachmentView *)self attachment];
  v3 = [v2 media];
  v4 = [v3 mediaURL];

  return v4;
}

- (CGPDFPage)page
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_page)
  {
    v3 = [(ICPDFAttachmentView *)v2 pdfURL];
    v4 = v3;
    if (v3)
    {
      v5 = CGPDFDocumentCreateWithURL(v3);
      v2->_pdf = v5;
      if (v5)
      {
        Page = CGPDFDocumentGetPage(v5, 1uLL);
        v2->_page = Page;
        if (Page)
        {
          CGPDFPageRetain(Page);
        }
      }
    }
  }

  objc_sync_exit(v2);

  return v2->_page;
}

- (void)setImage:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_image, a3);
  if (v8)
  {
    if (![(ICPDFAttachmentView *)self isManaullyGeneratingImage])
    {
      v5 = [(ICPDFAttachmentView *)self attachment];
      [v5 setCachedImage:v8];

      [(ICPDFAttachmentView *)self startImageRenderIfNeeded];
    }

    if (![(ICAttachmentView *)self forManualRendering])
    {
      v6 = [(ICPDFAttachmentView *)self progressView];
      [(ICPDFAttachmentView *)self updateLayerContentsWithFade:v6 != 0];

      goto LABEL_8;
    }
  }

  else
  {
    [(ICAttachmentView *)self forManualRendering];
  }

  [(ICPDFAttachmentView *)self updateLayerContentsWithFade:0];
LABEL_8:
  v7 = [(ICPDFAttachmentView *)self layer];
  [(ICPDFAttachmentView *)self setupBorderForLayer:v7];
}

- (void)setAttachment:(id)a3
{
  v4 = a3;
  v5 = [(ICPDFAttachmentView *)self attachment];

  if (v5 != v4)
  {
    v8.receiver = self;
    v8.super_class = ICPDFAttachmentView;
    [(ICPDFAttachmentView *)&v8 setAttachment:v4];
    v6 = [(ICPDFAttachmentView *)self attachment];
    v7 = [v6 cachedImage];
    [(ICPDFAttachmentView *)self setImage:v7];

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

  v4 = [(ICPDFAttachmentView *)self attachment];
  [v4 setCachedImage:0];

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
  v3 = [(ICPDFAttachmentView *)self image];

  if (v3)
  {
    return 0;
  }

  return [(ICPDFAttachmentView *)self cancelRenderingIfPossible];
}

- (void)didScrollIntoVisibleRange
{
  v3 = [(ICPDFAttachmentView *)self attachment];
  v4 = [v3 cachedImage];
  [(ICPDFAttachmentView *)self setImage:v4];

  [(ICPDFAttachmentView *)self startImageRenderIfNeeded];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = ICPDFAttachmentView;
  [(ICAttachmentView *)&v4 didMoveToWindow];
  [(ICPDFAttachmentView *)self startImageRenderIfNeeded];
  v3 = [(ICPDFAttachmentView *)self layer];
  [(ICPDFAttachmentView *)self setupBorderForLayer:v3];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = ICPDFAttachmentView;
  [(ICPDFAttachmentView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(ICPDFAttachmentView *)self startImageRenderIfNeeded];
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = ICPDFAttachmentView;
  [(ICPDFAttachmentView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(ICPDFAttachmentView *)self startImageRenderIfNeeded];
}

- (void)setHighlightColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = ICPDFAttachmentView;
  [(ICPDFAttachmentView *)&v5 setHighlightColor:a3];
  v4 = [(ICPDFAttachmentView *)self layer];
  [(ICPDFAttachmentView *)self setupBorderForLayer:v4];
}

- (BOOL)availableImageIsAcceptable
{
  v3 = [(ICPDFAttachmentView *)self image];

  if (!v3)
  {
    return 0;
  }

  [(ICPDFAttachmentView *)self bounds];
  v5 = v4;
  v6 = [(ICPDFAttachmentView *)self image];
  [v6 size];
  v8 = vabdd_f64(v7, v5) < 1.0;

  v9 = [(ICPDFAttachmentView *)self image];
  [v9 size];
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
    v4 = [(ICPDFAttachmentView *)self superview];
    if (v4)
    {
      v5 = [(ICPDFAttachmentView *)self window];
      if (v5)
      {
        v6 = [(ICPDFAttachmentView *)self renderOperation];
        if (v6)
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
  v3 = [(ICPDFAttachmentView *)self needToStartRender];
  if (![(ICPDFAttachmentView *)self isManaullyGeneratingImage]&& (v3 || [(ICAttachmentView *)self forManualRendering]))
  {
    v5 = [[ICPDFAttachmentRenderOperation alloc] initWithView:self];
    if ([(ICAttachmentView *)self forManualRendering])
    {
      [(ICPDFAttachmentView *)self setIsManaullyGeneratingImage:1];
      v4 = [(ICPDFAttachmentRenderOperation *)v5 generateImageForPrinting];
      [(ICPDFAttachmentView *)self setImage:v4];
      [(ICPDFAttachmentView *)self setIsManaullyGeneratingImage:0];
    }

    else
    {
      [(ICPDFAttachmentView *)self setRenderOperation:v5];
      [(ICPDFAttachmentView *)self setRendering:1];
      v4 = [objc_opt_class() renderingQueue];
      [v4 addOperation:v5];
    }
  }
}

- (void)updateLayerContentsWithFade:(BOOL)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
    [v4 setFromValue:&unk_28277E660];
    [v4 setToValue:&unk_28277E670];
    [v4 setDuration:0.1];
    v5 = [(ICPDFAttachmentView *)self layer];
    [v5 addAnimation:v4 forKey:@"opacity"];
  }

  v6 = [(UIImage *)self->_image CGImage];
  v7 = [(ICPDFAttachmentView *)self layer];
  [v7 setContents:v6];
}

- (void)setupBorderForLayer:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICPDFAttachmentView *)self highlightColor];

  if (v5)
  {
    v6 = [(ICPDFAttachmentView *)self highlightColor];
    [v4 setBorderColor:{objc_msgSend(v6, "CGColor")}];

    v7 = *MEMORY[0x277D364B0];
  }

  else
  {
    v8 = [(ICPDFAttachmentView *)self image];

    if (!v8)
    {
      DeviceGray = CGColorSpaceCreateDeviceGray();
      v12 = xmmword_2154BC1C0;
      v11 = CGColorCreate(DeviceGray, &v12);
      [v4 setBorderColor:v11];
      [(ICPDFAttachmentView *)self ic_hairlineWidth];
      [v4 setBorderWidth:?];
      CGColorRelease(v11);
      CGColorSpaceRelease(DeviceGray);
      goto LABEL_6;
    }

    v9 = [MEMORY[0x277D75348] tertiaryLabelColor];
    [v4 setBorderColor:{objc_msgSend(v9, "CGColor")}];

    [(ICPDFAttachmentView *)self ic_hairlineWidth];
  }

  [v4 setBorderWidth:v7];
LABEL_6:
}

- (BOOL)cancelRenderingIfPossible
{
  v3 = [objc_opt_class() renderingQueue];
  [v3 setSuspended:1];

  v4 = [(ICPDFAttachmentView *)self renderOperation];
  if ([v4 isExecuting] & 1) != 0 || (objc_msgSend(v4, "isFinished"))
  {
    v5 = 0;
  }

  else
  {
    [v4 cancel];
    [(ICPDFAttachmentView *)self setRenderOperation:0];
    v5 = 1;
  }

  v6 = [objc_opt_class() renderingQueue];
  [v6 setSuspended:0];

  [(ICPDFAttachmentView *)self setRendering:!v5];
  return v5;
}

- (void)setRendering:(BOOL)a3
{
  if (!a3 || self->_rendering)
  {
    if (self->_rendering && !a3)
    {
      self->_rendering = a3;
      v6 = [(ICPDFAttachmentView *)self startProgressSelectorDelayer];
      [v6 cancelPreviousFireRequests];

      [(ICPDFAttachmentView *)self stopProgress];
    }
  }

  else
  {
    self->_rendering = a3;
    v4 = [(ICPDFAttachmentView *)self startProgressSelectorDelayer];

    if (!v4)
    {
      v5 = [objc_alloc(MEMORY[0x277D36258]) initWithTarget:self selector:sel_startProgress delay:0 waitToFireUntilRequestsStop:1 callOnMainThread:0.3];
      [(ICPDFAttachmentView *)self setStartProgressSelectorDelayer:v5];
    }

    v7 = [(ICPDFAttachmentView *)self startProgressSelectorDelayer];
    [v7 requestFire];
  }
}

- (void)startProgress
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = [(ICPDFAttachmentView *)self progressView];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [(ICPDFAttachmentView *)self setProgressView:v4];

    v5 = [(ICPDFAttachmentView *)self progressView];
    [v5 startAnimating];

    v6 = [(ICPDFAttachmentView *)self progressView];
    [v6 setHidden:0];

    v7 = [(ICPDFAttachmentView *)self progressView];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [(ICPDFAttachmentView *)self progressView];
    [(ICPDFAttachmentView *)self addSubview:v8];

    v9 = MEMORY[0x277CCAAD0];
    v10 = [(ICPDFAttachmentView *)self progressView];
    v11 = [v9 constraintWithItem:self attribute:9 relatedBy:0 toItem:v10 attribute:9 multiplier:1.0 constant:0.0];
    v16[0] = v11;
    v12 = MEMORY[0x277CCAAD0];
    v13 = [(ICPDFAttachmentView *)self progressView];
    v14 = [v12 constraintWithItem:self attribute:10 relatedBy:0 toItem:v13 attribute:10 multiplier:1.0 constant:0.0];
    v16[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];

    [MEMORY[0x277CCAAD0] activateConstraints:v15];
  }
}

- (void)stopProgress
{
  v3 = [(ICPDFAttachmentView *)self progressView];

  if (v3)
  {
    v4 = [(ICPDFAttachmentView *)self progressView];
    [v4 removeFromSuperview];

    [(ICPDFAttachmentView *)self setProgressView:0];
  }
}

- (NSOperation)renderOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_renderOperation);

  return WeakRetained;
}

@end