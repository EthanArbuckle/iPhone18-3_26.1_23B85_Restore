@interface ICDrawingInlineView
- (BOOL)cancelDidScrollIntoVisibleRange;
- (BOOL)hasImage;
- (BOOL)isReadyToPresent;
- (BOOL)isVisibleWithinScrollView;
- (BOOL)shouldUseLightDrawingBackground;
- (CGRect)boundsForDisplay;
- (CGRect)imageFrame;
- (CGSize)attachmentContentSize;
- (ICDrawingInlineView)initWithCoder:(id)coder;
- (ICDrawingInlineView)initWithFrame:(CGRect)frame;
- (ICDrawingInlineView)initWithFrame:(CGRect)frame forManualRendering:(BOOL)rendering;
- (ICLoadingPieLayer)loadingProgressLayer;
- (id)attachmentImage;
- (id)lowestSuperScrollView;
- (id)previewImage;
- (void)animateImageArrivalWithAnimationDuration:(double)duration;
- (void)attachmentPreviewDidStart:(id)start;
- (void)attachmentPreviewImagesDidUpdate:(id)update;
- (void)commonInit;
- (void)dealloc;
- (void)delayedPreviewImageChanged;
- (void)didMoveToWindow;
- (void)didScrollIntoVisibleRange;
- (void)didScrollOutOfVisibleRange;
- (void)observePreviewGenerationProgress:(id)progress;
- (void)registerForTraitChanges;
- (void)setAttachment:(id)attachment;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)updateBorderWidth;
- (void)updateImageWithAnimation:(BOOL)animation;
- (void)updateLayerImage:(id)image animation:(BOOL)animation;
@end

@implementation ICDrawingInlineView

- (ICDrawingInlineView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ICDrawingInlineView;
  v3 = [(ICDrawingInlineView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICDrawingInlineView *)v3 commonInit];
  }

  return v4;
}

- (ICDrawingInlineView)initWithFrame:(CGRect)frame forManualRendering:(BOOL)rendering
{
  v8.receiver = self;
  v8.super_class = ICDrawingInlineView;
  v5 = [(ICDrawingInlineView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [(ICDrawingInlineView *)v5 commonInit];
    v6->_forManualRendering = rendering;
  }

  return v6;
}

- (ICDrawingInlineView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ICDrawingInlineView;
  v3 = [(ICDrawingInlineView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(ICDrawingInlineView *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v3 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  imageLayer = self->_imageLayer;
  self->_imageLayer = v3;

  [(ICDrawingInlineView *)self bounds];
  [(CALayer *)self->_imageLayer setFrame:?];
  [(CALayer *)self->_imageLayer setMasksToBounds:1];
  [(ICDrawingInlineView *)self setClipsToBounds:1];
  layer = [(ICDrawingInlineView *)self layer];
  imageLayer = [(ICDrawingInlineView *)self imageLayer];
  [layer addSublayer:imageLayer];

  v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.1];
  [(ICDrawingInlineView *)self setBorderColor:v7];

  v8 = [objc_alloc(MEMORY[0x277D36258]) initWithTarget:self selector:sel_delayedPreviewImageChanged delay:1 waitToFireUntilRequestsStop:1 callOnMainThread:0.3];
  [(ICDrawingInlineView *)self setPreviewImageUpdateDelayer:v8];

  [(ICDrawingInlineView *)self registerForTraitChanges];
}

- (void)dealloc
{
  previewImageUpdateDelayer = [(ICDrawingInlineView *)self previewImageUpdateDelayer];
  [previewImageUpdateDelayer cancelPreviousFireRequests];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = ICDrawingInlineView;
  [(ICDrawingInlineView *)&v5 dealloc];
}

- (BOOL)shouldUseLightDrawingBackground
{
  ic_appearanceInfo = [(ICDrawingInlineView *)self ic_appearanceInfo];
  if ([ic_appearanceInfo isDark])
  {
    thumbnailDisplay = [(ICDrawingInlineView *)self isInAttachmentBrowser]|| [(ICDrawingInlineView *)self thumbnailDisplay];
  }

  else
  {
    thumbnailDisplay = 0;
  }

  return thumbnailDisplay;
}

- (void)setAttachment:(id)attachment
{
  attachmentCopy = attachment;
  if (self->_attachment != attachmentCopy)
  {
    v40 = attachmentCopy;
    attachment = [(ICDrawingInlineView *)self attachment];

    v7 = MEMORY[0x277D35BB8];
    v8 = MEMORY[0x277D35B80];
    v9 = MEMORY[0x277D35BA8];
    if (attachment)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v11 = *MEMORY[0x277D35BB8];
      attachment2 = [(ICDrawingInlineView *)self attachment];
      objectID = [attachment2 objectID];
      [defaultCenter removeObserver:self name:v11 object:objectID];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      v15 = *v8;
      attachment3 = [(ICDrawingInlineView *)self attachment];
      objectID2 = [attachment3 objectID];
      [defaultCenter2 removeObserver:self name:v15 object:objectID2];

      defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
      v19 = *v9;
      attachment4 = [(ICDrawingInlineView *)self attachment];
      objectID3 = [attachment4 objectID];
      v22 = v19;
      v7 = MEMORY[0x277D35BB8];
      [defaultCenter3 removeObserver:self name:v22 object:objectID3];
    }

    objc_storeStrong(&self->_attachment, attachment);
    attachment5 = [(ICDrawingInlineView *)self attachment];

    if (attachment5)
    {
      defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
      v25 = *v7;
      attachment6 = [(ICDrawingInlineView *)self attachment];
      objectID4 = [attachment6 objectID];
      [defaultCenter4 addObserver:self selector:sel_attachmentPreviewImagesDidUpdate_ name:v25 object:objectID4];

      defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
      v29 = *v8;
      attachment7 = [(ICDrawingInlineView *)self attachment];
      objectID5 = [attachment7 objectID];
      [defaultCenter5 addObserver:self selector:sel_attachmentPreviewImagesDidUpdate_ name:v29 object:objectID5];

      mEMORY[0x277D366B0] = [MEMORY[0x277D366B0] sharedGenerator];
      attachment8 = [(ICDrawingInlineView *)self attachment];
      objectID6 = [attachment8 objectID];
      v35 = [mEMORY[0x277D366B0] progressForObjectID:objectID6];

      if (v35)
      {
        [(ICDrawingInlineView *)self observePreviewGenerationProgress:v35];
      }

      defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
      v37 = *MEMORY[0x277D35BA8];
      attachment9 = [(ICDrawingInlineView *)self attachment];
      objectID7 = [attachment9 objectID];
      [defaultCenter6 addObserver:self selector:sel_attachmentPreviewDidStart_ name:v37 object:objectID7];
    }

    [(ICDrawingInlineView *)self updateImageWithAnimation:1];
    attachmentCopy = v40;
  }
}

- (CGRect)boundsForDisplay
{
  attachment = [(ICDrawingInlineView *)self attachment];
  drawingModel = [attachment drawingModel];
  drawing = [drawingModel drawing];
  [drawing bounds];
  x = v6;
  y = v8;
  height = v10;

  attachment2 = [(ICDrawingInlineView *)self attachment];
  drawingModel2 = [attachment2 drawingModel];
  drawing2 = [drawingModel2 drawing];
  [drawing2 fullBounds];
  width = v15;

  if (TSDNearlyEqualSizes())
  {
    [MEMORY[0x277D35EC0] defaultSize];
    TSDRectWithSize();
    x = v17;
    y = v18;
    width = v19;
    height = v20;
  }

  if (![(ICDrawingInlineView *)self thumbnailDisplay])
  {
    if ((width + -250.0) * 0.5 <= 0.0)
    {
      v21 = (width + -250.0) * 0.5;
    }

    else
    {
      v21 = 0.0;
    }

    if ((height + -250.0) * 0.5 <= 0.0)
    {
      v22 = (height + -250.0) * 0.5;
    }

    else
    {
      v22 = 0.0;
    }

    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    v28 = CGRectInset(v27, v21, v22);
    v29 = CGRectIntegral(v28);
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
  }

  if (width < 1.0 || height < 1.0 || (TSDRectIsFinite() & 1) == 0)
  {
    y = 0.0;
    height = 250.0;
    width = 250.0;
    x = 0.0;
  }

  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGRect)imageFrame
{
  if ([(ICDrawingInlineView *)self fullscreen])
  {
    [(ICDrawingInlineView *)self bounds];
LABEL_17:
    y = v4;
    width = v5;
    height = v6;
    goto LABEL_18;
  }

  thumbnailDisplay = [(ICDrawingInlineView *)self thumbnailDisplay];
  [(ICDrawingInlineView *)self boundsForDisplay];
  v11 = v10;
  v13 = v12;
  if (!thumbnailDisplay)
  {
    v41 = MEMORY[0x277D35EC0];
    [MEMORY[0x277D35EC0] defaultSize];
    v43 = v42;
    v45 = v44;
    attachment = [(ICDrawingInlineView *)self attachment];
    [v41 fullSize:objc_msgSend(attachment forOrientation:{"orientation"), v43, v45}];
    v48 = v47;
    v50 = v49;

    [(ICDrawingInlineView *)self bounds];
    v52 = v51 / v48;
    [(ICDrawingInlineView *)self bounds];
    v54 = v53 / v13;
    v58.a = v52;
    if (v52 < v53 / v13)
    {
      v54 = v52;
    }

    v58.b = 0.0;
    v58.c = 0.0;
    v58.d = v54;
    v61.origin.y = -v11;
    v58.tx = 0.0;
    v58.ty = 0.0;
    v61.origin.x = 0.0;
    v61.size.width = v48;
    v61.size.height = v50;
    *&v3 = CGRectApplyAffineTransform(v61, &v58);
    goto LABEL_17;
  }

  v14 = v8;
  v15 = v9;
  v16 = MEMORY[0x277D35EC0];
  [MEMORY[0x277D35EC0] defaultSize];
  v18 = v17;
  v20 = v19;
  attachment2 = [(ICDrawingInlineView *)self attachment];
  [v16 fullSize:objc_msgSend(attachment2 forOrientation:{"orientation"), v18, v20}];
  v23 = v22;
  v25 = v24;

  [(ICDrawingInlineView *)self bounds];
  v28 = v27 / v15;
  v29 = 1.0;
  if (v27 / v15 > 1.0)
  {
    v28 = 1.0;
  }

  if (v26 / v13 <= 1.0)
  {
    v29 = v26 / v13;
  }

  if (v28 < v29)
  {
    v29 = v28;
  }

  v58.a = v29;
  v59.origin.x = -v14;
  v58.b = 0.0;
  v58.c = 0.0;
  v58.d = v29;
  v59.origin.y = -v11;
  v58.tx = 0.0;
  v58.ty = 0.0;
  v59.size.width = v23;
  v59.size.height = v25;
  v60 = CGRectApplyAffineTransform(v59, &v58);
  x = v60.origin.x;
  y = v60.origin.y;
  width = v60.size.width;
  height = v60.size.height;
  attachment3 = [(ICDrawingInlineView *)self attachment];
  [attachment3 bounds];
  v36 = v35;
  v38 = v37;

  [(ICDrawingInlineView *)self frame];
  v3 = x + floor((v40 - v36) * 0.5);
  if (v36 >= v40)
  {
    v3 = x;
  }

  if (v38 < v39)
  {
    y = y + floor((v39 - v38) * 0.5);
  }

LABEL_18:
  v55 = y;
  v56 = width;
  v57 = height;
  result.size.height = v57;
  result.size.width = v56;
  result.origin.y = v55;
  result.origin.x = v3;
  return result;
}

- (void)animateImageArrivalWithAnimationDuration:(double)duration
{
  v5 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v5 setFromValue:&unk_28277E690];
  [v5 setToValue:&unk_28277E6A0];
  [v5 setDuration:duration];
  imageLayer = [(ICDrawingInlineView *)self imageLayer];
  [imageLayer addAnimation:v5 forKey:@"opacity"];

  shouldUseLightDrawingBackground = [(ICDrawingInlineView *)self shouldUseLightDrawingBackground];
  ic_backgroundColor = [(ICDrawingInlineView *)self ic_backgroundColor];

  if (ic_backgroundColor)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__ICDrawingInlineView_animateImageArrivalWithAnimationDuration___block_invoke;
    v11[3] = &unk_2781ACFF8;
    v11[4] = self;
    v12 = shouldUseLightDrawingBackground;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__ICDrawingInlineView_animateImageArrivalWithAnimationDuration___block_invoke_2;
    v9[3] = &unk_2781ACFF8;
    v10 = shouldUseLightDrawingBackground;
    v9[4] = self;
    [MEMORY[0x277D75D18] ic_animateWithDuration:v11 animations:v9 completion:duration];
  }
}

void __64__ICDrawingInlineView_animateImageArrivalWithAnimationDuration___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = (a1 + 32);
    v3 = [*(a1 + 32) drawingBackgroundColor];
  }

  else
  {
    v3 = [MEMORY[0x277D75348] clearColor];
    v2 = (a1 + 32);
  }

  v4 = v3;
  [*v2 setIc_backgroundColor:v3];
}

uint64_t __64__ICDrawingInlineView_animateImageArrivalWithAnimationDuration___block_invoke_2(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    return [*(result + 32) setIc_backgroundColor:0];
  }

  return result;
}

- (id)attachmentImage
{
  attachment = [(ICDrawingInlineView *)self attachment];
  [MEMORY[0x277D35EC0] defaultPixelSize];
  v5 = v4;
  v7 = v6;
  ic_appearanceInfo = [(ICDrawingInlineView *)self ic_appearanceInfo];
  v9 = [attachment attachmentPreviewImageWithMinSize:objc_msgSend(ic_appearanceInfo scale:"type") appearanceType:1 requireAppearance:{v5, v7, 1.0}];

  orientedImage = [v9 orientedImage];

  return orientedImage;
}

- (id)previewImage
{
  attachment = [(ICDrawingInlineView *)self attachment];

  if (attachment)
  {
    [(ICDrawingInlineView *)self ic_backingScaleFactor];
    v5 = v4;
    [MEMORY[0x277D35EC0] defaultSize];
    v7 = v6;
    v9 = v8;
    attachment2 = [(ICDrawingInlineView *)self attachment];
    [attachment2 bounds];
    v12 = v11;
    v14 = v13;

    [(ICDrawingInlineView *)self frame];
    v16 = v15;
    v18 = v17;
    if ([(ICDrawingInlineView *)self thumbnailDisplay])
    {
      v19 = fmax(v16, 256.0);
      if (v12 >= v16)
      {
        v20 = v16;
      }

      else
      {
        v20 = v19;
      }

      v21 = fmax(v18, 256.0);
      if (v14 >= v18)
      {
        v22 = v18;
      }

      else
      {
        v22 = v21;
      }
    }

    else
    {
      attachment3 = [(ICDrawingInlineView *)self attachment];
      [attachment3 orientation];
      IsLandscape = ICDrawingOrientationIsLandscape();

      v26 = v7 / v12;
      v27 = v9 / v14;
      if (IsLandscape)
      {
        v20 = v26 * v16;
        v22 = v27 * v18;
      }

      else
      {
        v22 = v26 * v18;
        v20 = v27 * v16;
      }
    }

    attachment4 = [(ICDrawingInlineView *)self attachment];
    ic_appearanceInfo = [(ICDrawingInlineView *)self ic_appearanceInfo];
    v23 = [attachment4 attachmentPreviewImageWithMinSize:objc_msgSend(ic_appearanceInfo scale:"type") appearanceType:1 requireAppearance:{v20, v22, v5}];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)updateImageWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  [(ICDrawingInlineView *)self bounds];
  if (v6 != *MEMORY[0x277CBF3A8] || v5 != *(MEMORY[0x277CBF3A8] + 8))
  {
    previewImage = [(ICDrawingInlineView *)self previewImage];
    if (previewImage)
    {
      if ([(ICDrawingInlineView *)self forManualRendering])
      {
        image = [previewImage image];
        [(ICDrawingInlineView *)self updateLayerImage:image animation:0];
      }

      else
      {
        imageLoadingCancelBlock = [(ICDrawingInlineView *)self imageLoadingCancelBlock];

        if (imageLoadingCancelBlock)
        {
          [(ICDrawingInlineView *)self setNeedsToUpdateImage:1];
        }

        else
        {
          if (![(ICDrawingInlineView *)self hasImage]&& ([(ICDrawingInlineView *)self thumbnailDisplay]|| animationCopy))
          {
            [MEMORY[0x277CD9FF0] begin];
            [MEMORY[0x277CD9FF0] setDisableActions:1];
            [MEMORY[0x277CD9FF0] setAnimationDuration:0.0];
            [(ICDrawingInlineView *)self imageFrame];
            v12 = v11;
            v14 = v13;
            v16 = v15;
            v18 = v17;
            imageLayer = [(ICDrawingInlineView *)self imageLayer];
            [imageLayer setFrame:{v12, v14, v16, v18}];

            borderColor = [(ICDrawingInlineView *)self borderColor];
            cGColor = [borderColor CGColor];
            layer = [(ICDrawingInlineView *)self layer];
            [layer setBorderColor:cGColor];

            [(ICDrawingInlineView *)self updateBorderWidth];
            v23 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.04];
            [(ICDrawingInlineView *)self setIc_backgroundColor:v23];

            [MEMORY[0x277CD9FF0] commit];
          }

          v36[0] = 0;
          v36[1] = v36;
          v36[2] = 0x2020000000;
          v37 = 0;
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __48__ICDrawingInlineView_updateImageWithAnimation___block_invoke;
          v34[3] = &unk_2781AFA70;
          v34[4] = self;
          v34[5] = v36;
          v35 = animationCopy;
          v24 = [previewImage asyncImage:v34 aboutToLoadHandler:0];
          v25 = [v24 copy];

          if (v25)
          {
            v27 = MEMORY[0x277D85DD0];
            v28 = 3221225472;
            v29 = __48__ICDrawingInlineView_updateImageWithAnimation___block_invoke_4;
            v30 = &unk_2781AFA98;
            v33 = v36;
            selfCopy = self;
            v32 = v25;
            v26 = _Block_copy(&v27);
            [(ICDrawingInlineView *)self setImageLoadingCancelBlock:v26, v27, v28, v29, v30];
          }

          _Block_object_dispose(v36, 8);
        }
      }
    }
  }
}

void __48__ICDrawingInlineView_updateImageWithAnimation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__ICDrawingInlineView_updateImageWithAnimation___block_invoke_2;
  v5[3] = &unk_2781AFA48;
  v6 = v3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __48__ICDrawingInlineView_updateImageWithAnimation___block_invoke_2(uint64_t a1)
{
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    if (*(a1 + 32))
    {
      objc_initWeak(&location, *(a1 + 40));
      v2 = *(a1 + 32);
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __48__ICDrawingInlineView_updateImageWithAnimation___block_invoke_3;
      v5[3] = &unk_2781AFA20;
      objc_copyWeak(&v6, &location);
      v7 = *(a1 + 56);
      [v2 ic_decodeWithCompletion:v5];
      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }

    else
    {
      v3 = *(a1 + 40);
      v4 = *(a1 + 56);

      [v3 updateLayerImage:0 animation:v4];
    }
  }
}

void __48__ICDrawingInlineView_updateImageWithAnimation___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained updateLayerImage:v5 animation:*(a1 + 40)];
  }
}

void __48__ICDrawingInlineView_updateImageWithAnimation___block_invoke_4(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = 1;
  (*(*(a1 + 40) + 16))();
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [MEMORY[0x277CD9FF0] setAnimationDuration:0.0];
  if (([*(a1 + 32) thumbnailDisplay] & 1) == 0)
  {
    v2 = [*(a1 + 32) layer];
    [v2 setBorderColor:0];

    v3 = [*(a1 + 32) layer];
    [v3 setBorderWidth:0.0];
  }

  v4 = [*(a1 + 32) shouldUseLightDrawingBackground];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 drawingBackgroundColor];
    [*(a1 + 32) setIc_backgroundColor:v6];
  }

  else
  {
    [v5 setIc_backgroundColor:0];
  }

  [MEMORY[0x277CD9FF0] commit];
  [*(a1 + 32) setNeedsToUpdateImage:0];
  v7 = [*(a1 + 32) previewImageUpdateDelayer];
  [v7 cancelPreviousFireRequests];
}

- (BOOL)hasImage
{
  imageLayer = [(ICDrawingInlineView *)self imageLayer];
  contents = [imageLayer contents];
  v4 = contents != 0;

  return v4;
}

- (void)updateLayerImage:(id)image animation:(BOOL)animation
{
  animationCopy = animation;
  imageCopy = image;
  [(ICDrawingInlineView *)self setImageLoadingCancelBlock:0];
  [MEMORY[0x277CD9FF0] begin];
  hasImage = 1;
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [MEMORY[0x277CD9FF0] setAnimationDuration:0.0];
  attachment = [(ICDrawingInlineView *)self attachment];
  orientation = [attachment orientation];

  [MEMORY[0x277D35EC0] defaultSizeOrientationTransform:orientation];
  imageLayer = [(ICDrawingInlineView *)self imageLayer];
  v57[0] = *(&v57[3] + 8);
  v57[1] = *(&v57[4] + 8);
  v57[2] = *(&v57[5] + 8);
  [imageLayer setAffineTransform:v57];

  [(ICDrawingInlineView *)self imageFrame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  imageLayer2 = [(ICDrawingInlineView *)self imageLayer];
  [imageLayer2 setFrame:{v11, v13, v15, v17}];

  [MEMORY[0x277CD9FF0] commit];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v19 = 0.1;
  if (!animationCopy)
  {
    v19 = 0.0;
  }

  [MEMORY[0x277CD9FF0] setAnimationDuration:v19];
  attachment2 = [(ICDrawingInlineView *)self attachment];
  previewUpdateDate = [attachment2 previewUpdateDate];
  attachment3 = [(ICDrawingInlineView *)self attachment];
  modificationDate = [attachment3 modificationDate];
  v24 = [previewUpdateDate compare:modificationDate];

  if (animationCopy)
  {
    hasImage = [(ICDrawingInlineView *)self hasImage];
  }

  attachment4 = [(ICDrawingInlineView *)self attachment];
  [MEMORY[0x277D35EC0] defaultPixelSize];
  v27 = v26;
  v29 = v28;
  ic_appearanceInfo = [(ICDrawingInlineView *)self ic_appearanceInfo];
  v31 = [attachment4 attachmentPreviewImageWithMinSize:objc_msgSend(ic_appearanceInfo scale:"type") appearanceType:1 requireAppearance:{v27, v29, 1.0}];

  if ((imageCopy || v24 != -1) && (v31 || ([0 size], v35 = v34, v37 = v36, objc_msgSend(MEMORY[0x277D35EC0], "defaultPixelSize"), v35 == v39) && v37 == v38))
  {
    thumbnailDisplay = [(ICDrawingInlineView *)self thumbnailDisplay];
    ic_CGImage = [imageCopy ic_CGImage];
    if (!thumbnailDisplay)
    {
      layer = [(ICDrawingInlineView *)self layer];
      [layer setBorderColor:0];

      layer2 = [(ICDrawingInlineView *)self layer];
      [layer2 setBorderWidth:0.0];

      goto LABEL_16;
    }

    v33 = 0;
  }

  else
  {
    ic_CGImage = [imageCopy ic_CGImage];
    v33 = 1;
  }

  borderColor = [(ICDrawingInlineView *)self borderColor];
  cGColor = [borderColor CGColor];
  layer3 = [(ICDrawingInlineView *)self layer];
  [layer3 setBorderColor:cGColor];

  [(ICDrawingInlineView *)self updateBorderWidth];
  if (v33)
  {
    v44 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.04];
    [(ICDrawingInlineView *)self setIc_backgroundColor:v44];

    [(ICDrawingInlineView *)self observePreviewGenerationProgress:0];
    v45 = *"333?";
    goto LABEL_20;
  }

LABEL_16:
  if ([(ICDrawingInlineView *)self shouldUseLightDrawingBackground])
  {
    drawingBackgroundColor = [(ICDrawingInlineView *)self drawingBackgroundColor];
    [(ICDrawingInlineView *)self setIc_backgroundColor:drawingBackgroundColor];
  }

  else
  {
    [(ICDrawingInlineView *)self setIc_backgroundColor:0];
  }

  loadingProgressLayer = [(ICDrawingInlineView *)self loadingProgressLayer];
  [loadingProgressLayer removeFromSuperlayer];

  [(ICDrawingInlineView *)self setLoadingProgressLayer:0];
  v45 = 1.0;
LABEL_20:
  if (!hasImage || !animationCopy)
  {
    imageLayer3 = [(ICDrawingInlineView *)self imageLayer];
    [imageLayer3 setContents:ic_CGImage];

    if (!imageCopy)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v50 = MEMORY[0x277D75D18];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __50__ICDrawingInlineView_updateLayerImage_animation___block_invoke;
  v55[3] = &unk_2781ABEB8;
  v55[4] = self;
  v56 = ic_CGImage;
  [v50 ic_animateWithDuration:v55 animations:0 completion:0.3];

  if (imageCopy)
  {
LABEL_24:
    imageLayer4 = [(ICDrawingInlineView *)self imageLayer];
    *&v53 = v45;
    [imageLayer4 setOpacity:v53];
  }

LABEL_25:
  [MEMORY[0x277CD9FF0] commit];
  if ([(ICDrawingInlineView *)self needsToUpdateImage])
  {
    [(ICDrawingInlineView *)self setNeedsToUpdateImage:0];
    [(ICDrawingInlineView *)self updateImageWithAnimation:animationCopy];
  }
}

void __50__ICDrawingInlineView_updateLayerImage_animation___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) imageLayer];
  [v2 setContents:v1];
}

- (BOOL)isReadyToPresent
{
  loadingProgressLayer = [(ICDrawingInlineView *)self loadingProgressLayer];
  v3 = loadingProgressLayer == 0;

  return v3;
}

- (void)didScrollOutOfVisibleRange
{
  imageLoadingCancelBlock = [(ICDrawingInlineView *)self imageLoadingCancelBlock];

  if (imageLoadingCancelBlock)
  {
    imageLoadingCancelBlock2 = [(ICDrawingInlineView *)self imageLoadingCancelBlock];
    imageLoadingCancelBlock2[2]();

    [(ICDrawingInlineView *)self setImageLoadingCancelBlock:0];
  }

  imageLayer = [(ICDrawingInlineView *)self imageLayer];
  [imageLayer setContents:0];

  previewImageUpdateDelayer = [(ICDrawingInlineView *)self previewImageUpdateDelayer];
  [previewImageUpdateDelayer cancelPreviousFireRequests];
}

- (void)didScrollIntoVisibleRange
{
  if (![(ICDrawingInlineView *)self hasImage])
  {

    [(ICDrawingInlineView *)self updateImageWithAnimation:1];
  }
}

- (BOOL)cancelDidScrollIntoVisibleRange
{
  imageLoadingCancelBlock = [(ICDrawingInlineView *)self imageLoadingCancelBlock];
  if (imageLoadingCancelBlock)
  {
    v4 = imageLoadingCancelBlock;
    hasImage = [(ICDrawingInlineView *)self hasImage];

    if (hasImage)
    {
      LOBYTE(imageLoadingCancelBlock) = 0;
    }

    else
    {
      imageLoadingCancelBlock2 = [(ICDrawingInlineView *)self imageLoadingCancelBlock];
      imageLoadingCancelBlock2[2]();

      [(ICDrawingInlineView *)self setImageLoadingCancelBlock:0];
      previewImageUpdateDelayer = [(ICDrawingInlineView *)self previewImageUpdateDelayer];
      [previewImageUpdateDelayer cancelPreviousFireRequests];

      LOBYTE(imageLoadingCancelBlock) = 1;
    }
  }

  return imageLoadingCancelBlock;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  loadingProgressLayer = [(ICDrawingInlineView *)self loadingProgressLayer];

  if (loadingProgressLayer)
  {
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    v9 = CGRectGetMaxX(v15) + -21.0;
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    v10 = CGRectGetMaxY(v16) + -21.0;
    loadingProgressLayer2 = [(ICDrawingInlineView *)self loadingProgressLayer];
    [loadingProgressLayer2 setPosition:{v9, v10}];
  }

  [(ICDrawingInlineView *)self frame];
  v12 = v17.size.width;
  v13 = v17.size.height;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  if (!CGRectEqualToRect(v17, v18))
  {
    v14.receiver = self;
    v14.super_class = ICDrawingInlineView;
    [(ICDrawingInlineView *)&v14 setFrame:x, y, width, height];
    if (v12 != width || v13 != height)
    {
      [(ICDrawingInlineView *)self updateImageWithAnimation:1];
    }
  }
}

- (void)didMoveToWindow
{
  if ([(ICDrawingInlineView *)self thumbnailDisplay])
  {

    [(ICDrawingInlineView *)self updateBorderWidth];
  }
}

- (void)updateBorderWidth
{
  v3 = 1.0;
  if ([(ICDrawingInlineView *)self thumbnailDisplay])
  {
    [(ICDrawingInlineView *)self ic_backingScaleFactor];
    v3 = 1.0 / v4;
  }

  layer = [(ICDrawingInlineView *)self layer];
  [layer setBorderWidth:v3];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(ICDrawingInlineView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = ICDrawingInlineView;
  [(ICDrawingInlineView *)&v13 setBounds:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(ICDrawingInlineView *)self updateImageWithAnimation:1];
  }
}

- (void)observePreviewGenerationProgress:(id)progress
{
  progressCopy = progress;
  hideLoadingProgress = [(ICDrawingInlineView *)self hideLoadingProgress];
  v5 = progressCopy;
  if (!hideLoadingProgress)
  {
    loadingProgressLayer = [(ICDrawingInlineView *)self loadingProgressLayer];

    if (!loadingProgressLayer)
    {
      v7 = objc_alloc_init(MEMORY[0x277D36820]);
      [(ICDrawingInlineView *)self bounds];
      v8 = CGRectGetMaxX(v13) + -21.0;
      [(ICDrawingInlineView *)self bounds];
      [v7 setPosition:{v8, CGRectGetMaxY(v14) + -21.0}];
      [v7 setZPosition:1.0];
      [v7 setRemoveOnCompletion:1];
      layer = [(ICDrawingInlineView *)self layer];
      [layer addSublayer:v7];

      [(ICDrawingInlineView *)self setLoadingProgressLayer:v7];
    }

    v5 = progressCopy;
    if (progressCopy)
    {
      loadingProgressLayer2 = [(ICDrawingInlineView *)self loadingProgressLayer];
      [loadingProgressLayer2 setObservedProgress:progressCopy];

      v5 = progressCopy;
    }
  }
}

- (void)attachmentPreviewImagesDidUpdate:(id)update
{
  previewImageUpdateDelayer = [(ICDrawingInlineView *)self previewImageUpdateDelayer];
  [previewImageUpdateDelayer requestFire];
}

- (void)attachmentPreviewDidStart:(id)start
{
  startCopy = start;
  objc_opt_class();
  userInfo = [startCopy userInfo];

  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D35BB0]];
  v7 = ICDynamicCast();

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__ICDrawingInlineView_attachmentPreviewDidStart___block_invoke;
  v9[3] = &unk_2781ABEB8;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

- (void)delayedPreviewImageChanged
{
  if ([(ICDrawingInlineView *)self isVisibleWithinScrollView])
  {

    [(ICDrawingInlineView *)self updateImageWithAnimation:1];
  }
}

- (BOOL)isVisibleWithinScrollView
{
  lowestSuperScrollView = [(ICDrawingInlineView *)self lowestSuperScrollView];
  if (lowestSuperScrollView)
  {
    [(ICDrawingInlineView *)self bounds];
    [(ICDrawingInlineView *)self convertRect:lowestSuperScrollView toView:?];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [lowestSuperScrollView bounds];
    v15.origin.x = v5;
    v15.origin.y = v7;
    v15.size.width = v9;
    v15.size.height = v11;
    v12 = CGRectIntersectsRect(v14, v15);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)lowestSuperScrollView
{
  selfCopy = self;
  if (selfCopy)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview = [(ICDrawingInlineView *)selfCopy superview];

      selfCopy = superview;
      if (!superview)
      {
        goto LABEL_6;
      }
    }

    selfCopy = selfCopy;
  }

LABEL_6:

  return selfCopy;
}

- (void)registerForTraitChanges
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__ICDrawingInlineView_registerForTraitChanges__block_invoke;
  v5[3] = &unk_2781AFAC0;
  v5[4] = self;
  v4 = [(ICDrawingInlineView *)self registerForTraitChanges:v3 withHandler:v5];
}

void __46__ICDrawingInlineView_registerForTraitChanges__block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateImageWithAnimation:1];
  v2 = [*(a1 + 32) shouldUseLightDrawingBackground];
  if ([*(a1 + 32) hasImage])
  {
    v3 = *(a1 + 32);
    if (v2)
    {
      v4 = [v3 drawingBackgroundColor];
      [*(a1 + 32) setBackgroundColor:v4];
    }

    else
    {

      [v3 setBackgroundColor:0];
    }
  }
}

- (CGSize)attachmentContentSize
{
  width = self->_attachmentContentSize.width;
  height = self->_attachmentContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (ICLoadingPieLayer)loadingProgressLayer
{
  WeakRetained = objc_loadWeakRetained(&self->_loadingProgressLayer);

  return WeakRetained;
}

@end