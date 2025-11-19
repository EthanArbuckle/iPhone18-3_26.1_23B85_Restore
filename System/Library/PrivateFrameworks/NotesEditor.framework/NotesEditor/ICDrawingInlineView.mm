@interface ICDrawingInlineView
- (BOOL)cancelDidScrollIntoVisibleRange;
- (BOOL)hasImage;
- (BOOL)isReadyToPresent;
- (BOOL)isVisibleWithinScrollView;
- (BOOL)shouldUseLightDrawingBackground;
- (CGRect)boundsForDisplay;
- (CGRect)imageFrame;
- (CGSize)attachmentContentSize;
- (ICDrawingInlineView)initWithCoder:(id)a3;
- (ICDrawingInlineView)initWithFrame:(CGRect)a3;
- (ICDrawingInlineView)initWithFrame:(CGRect)a3 forManualRendering:(BOOL)a4;
- (ICLoadingPieLayer)loadingProgressLayer;
- (id)attachmentImage;
- (id)lowestSuperScrollView;
- (id)previewImage;
- (void)animateImageArrivalWithAnimationDuration:(double)a3;
- (void)attachmentPreviewDidStart:(id)a3;
- (void)attachmentPreviewImagesDidUpdate:(id)a3;
- (void)commonInit;
- (void)dealloc;
- (void)delayedPreviewImageChanged;
- (void)didMoveToWindow;
- (void)didScrollIntoVisibleRange;
- (void)didScrollOutOfVisibleRange;
- (void)observePreviewGenerationProgress:(id)a3;
- (void)registerForTraitChanges;
- (void)setAttachment:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)updateBorderWidth;
- (void)updateImageWithAnimation:(BOOL)a3;
- (void)updateLayerImage:(id)a3 animation:(BOOL)a4;
@end

@implementation ICDrawingInlineView

- (ICDrawingInlineView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ICDrawingInlineView;
  v3 = [(ICDrawingInlineView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICDrawingInlineView *)v3 commonInit];
  }

  return v4;
}

- (ICDrawingInlineView)initWithFrame:(CGRect)a3 forManualRendering:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = ICDrawingInlineView;
  v5 = [(ICDrawingInlineView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    [(ICDrawingInlineView *)v5 commonInit];
    v6->_forManualRendering = a4;
  }

  return v6;
}

- (ICDrawingInlineView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICDrawingInlineView;
  v3 = [(ICDrawingInlineView *)&v6 initWithCoder:a3];
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
  v5 = [(ICDrawingInlineView *)self layer];
  v6 = [(ICDrawingInlineView *)self imageLayer];
  [v5 addSublayer:v6];

  v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.1];
  [(ICDrawingInlineView *)self setBorderColor:v7];

  v8 = [objc_alloc(MEMORY[0x277D36258]) initWithTarget:self selector:sel_delayedPreviewImageChanged delay:1 waitToFireUntilRequestsStop:1 callOnMainThread:0.3];
  [(ICDrawingInlineView *)self setPreviewImageUpdateDelayer:v8];

  [(ICDrawingInlineView *)self registerForTraitChanges];
}

- (void)dealloc
{
  v3 = [(ICDrawingInlineView *)self previewImageUpdateDelayer];
  [v3 cancelPreviousFireRequests];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = ICDrawingInlineView;
  [(ICDrawingInlineView *)&v5 dealloc];
}

- (BOOL)shouldUseLightDrawingBackground
{
  v3 = [(ICDrawingInlineView *)self ic_appearanceInfo];
  if ([v3 isDark])
  {
    v4 = [(ICDrawingInlineView *)self isInAttachmentBrowser]|| [(ICDrawingInlineView *)self thumbnailDisplay];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAttachment:(id)a3
{
  v5 = a3;
  if (self->_attachment != v5)
  {
    v40 = v5;
    v6 = [(ICDrawingInlineView *)self attachment];

    v7 = MEMORY[0x277D35BB8];
    v8 = MEMORY[0x277D35B80];
    v9 = MEMORY[0x277D35BA8];
    if (v6)
    {
      v10 = [MEMORY[0x277CCAB98] defaultCenter];
      v11 = *MEMORY[0x277D35BB8];
      v12 = [(ICDrawingInlineView *)self attachment];
      v13 = [v12 objectID];
      [v10 removeObserver:self name:v11 object:v13];

      v14 = [MEMORY[0x277CCAB98] defaultCenter];
      v15 = *v8;
      v16 = [(ICDrawingInlineView *)self attachment];
      v17 = [v16 objectID];
      [v14 removeObserver:self name:v15 object:v17];

      v18 = [MEMORY[0x277CCAB98] defaultCenter];
      v19 = *v9;
      v20 = [(ICDrawingInlineView *)self attachment];
      v21 = [v20 objectID];
      v22 = v19;
      v7 = MEMORY[0x277D35BB8];
      [v18 removeObserver:self name:v22 object:v21];
    }

    objc_storeStrong(&self->_attachment, a3);
    v23 = [(ICDrawingInlineView *)self attachment];

    if (v23)
    {
      v24 = [MEMORY[0x277CCAB98] defaultCenter];
      v25 = *v7;
      v26 = [(ICDrawingInlineView *)self attachment];
      v27 = [v26 objectID];
      [v24 addObserver:self selector:sel_attachmentPreviewImagesDidUpdate_ name:v25 object:v27];

      v28 = [MEMORY[0x277CCAB98] defaultCenter];
      v29 = *v8;
      v30 = [(ICDrawingInlineView *)self attachment];
      v31 = [v30 objectID];
      [v28 addObserver:self selector:sel_attachmentPreviewImagesDidUpdate_ name:v29 object:v31];

      v32 = [MEMORY[0x277D366B0] sharedGenerator];
      v33 = [(ICDrawingInlineView *)self attachment];
      v34 = [v33 objectID];
      v35 = [v32 progressForObjectID:v34];

      if (v35)
      {
        [(ICDrawingInlineView *)self observePreviewGenerationProgress:v35];
      }

      v36 = [MEMORY[0x277CCAB98] defaultCenter];
      v37 = *MEMORY[0x277D35BA8];
      v38 = [(ICDrawingInlineView *)self attachment];
      v39 = [v38 objectID];
      [v36 addObserver:self selector:sel_attachmentPreviewDidStart_ name:v37 object:v39];
    }

    [(ICDrawingInlineView *)self updateImageWithAnimation:1];
    v5 = v40;
  }
}

- (CGRect)boundsForDisplay
{
  v3 = [(ICDrawingInlineView *)self attachment];
  v4 = [v3 drawingModel];
  v5 = [v4 drawing];
  [v5 bounds];
  x = v6;
  y = v8;
  height = v10;

  v12 = [(ICDrawingInlineView *)self attachment];
  v13 = [v12 drawingModel];
  v14 = [v13 drawing];
  [v14 fullBounds];
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

  v7 = [(ICDrawingInlineView *)self thumbnailDisplay];
  [(ICDrawingInlineView *)self boundsForDisplay];
  v11 = v10;
  v13 = v12;
  if (!v7)
  {
    v41 = MEMORY[0x277D35EC0];
    [MEMORY[0x277D35EC0] defaultSize];
    v43 = v42;
    v45 = v44;
    v46 = [(ICDrawingInlineView *)self attachment];
    [v41 fullSize:objc_msgSend(v46 forOrientation:{"orientation"), v43, v45}];
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
  v21 = [(ICDrawingInlineView *)self attachment];
  [v16 fullSize:objc_msgSend(v21 forOrientation:{"orientation"), v18, v20}];
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
  v34 = [(ICDrawingInlineView *)self attachment];
  [v34 bounds];
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

- (void)animateImageArrivalWithAnimationDuration:(double)a3
{
  v5 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v5 setFromValue:&unk_28277E690];
  [v5 setToValue:&unk_28277E6A0];
  [v5 setDuration:a3];
  v6 = [(ICDrawingInlineView *)self imageLayer];
  [v6 addAnimation:v5 forKey:@"opacity"];

  v7 = [(ICDrawingInlineView *)self shouldUseLightDrawingBackground];
  v8 = [(ICDrawingInlineView *)self ic_backgroundColor];

  if (v8)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__ICDrawingInlineView_animateImageArrivalWithAnimationDuration___block_invoke;
    v11[3] = &unk_2781ACFF8;
    v11[4] = self;
    v12 = v7;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__ICDrawingInlineView_animateImageArrivalWithAnimationDuration___block_invoke_2;
    v9[3] = &unk_2781ACFF8;
    v10 = v7;
    v9[4] = self;
    [MEMORY[0x277D75D18] ic_animateWithDuration:v11 animations:v9 completion:a3];
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
  v3 = [(ICDrawingInlineView *)self attachment];
  [MEMORY[0x277D35EC0] defaultPixelSize];
  v5 = v4;
  v7 = v6;
  v8 = [(ICDrawingInlineView *)self ic_appearanceInfo];
  v9 = [v3 attachmentPreviewImageWithMinSize:objc_msgSend(v8 scale:"type") appearanceType:1 requireAppearance:{v5, v7, 1.0}];

  v10 = [v9 orientedImage];

  return v10;
}

- (id)previewImage
{
  v3 = [(ICDrawingInlineView *)self attachment];

  if (v3)
  {
    [(ICDrawingInlineView *)self ic_backingScaleFactor];
    v5 = v4;
    [MEMORY[0x277D35EC0] defaultSize];
    v7 = v6;
    v9 = v8;
    v10 = [(ICDrawingInlineView *)self attachment];
    [v10 bounds];
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
      v24 = [(ICDrawingInlineView *)self attachment];
      [v24 orientation];
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

    v28 = [(ICDrawingInlineView *)self attachment];
    v29 = [(ICDrawingInlineView *)self ic_appearanceInfo];
    v23 = [v28 attachmentPreviewImageWithMinSize:objc_msgSend(v29 scale:"type") appearanceType:1 requireAppearance:{v20, v22, v5}];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)updateImageWithAnimation:(BOOL)a3
{
  v3 = a3;
  [(ICDrawingInlineView *)self bounds];
  if (v6 != *MEMORY[0x277CBF3A8] || v5 != *(MEMORY[0x277CBF3A8] + 8))
  {
    v8 = [(ICDrawingInlineView *)self previewImage];
    if (v8)
    {
      if ([(ICDrawingInlineView *)self forManualRendering])
      {
        v9 = [v8 image];
        [(ICDrawingInlineView *)self updateLayerImage:v9 animation:0];
      }

      else
      {
        v10 = [(ICDrawingInlineView *)self imageLoadingCancelBlock];

        if (v10)
        {
          [(ICDrawingInlineView *)self setNeedsToUpdateImage:1];
        }

        else
        {
          if (![(ICDrawingInlineView *)self hasImage]&& ([(ICDrawingInlineView *)self thumbnailDisplay]|| v3))
          {
            [MEMORY[0x277CD9FF0] begin];
            [MEMORY[0x277CD9FF0] setDisableActions:1];
            [MEMORY[0x277CD9FF0] setAnimationDuration:0.0];
            [(ICDrawingInlineView *)self imageFrame];
            v12 = v11;
            v14 = v13;
            v16 = v15;
            v18 = v17;
            v19 = [(ICDrawingInlineView *)self imageLayer];
            [v19 setFrame:{v12, v14, v16, v18}];

            v20 = [(ICDrawingInlineView *)self borderColor];
            v21 = [v20 CGColor];
            v22 = [(ICDrawingInlineView *)self layer];
            [v22 setBorderColor:v21];

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
          v35 = v3;
          v24 = [v8 asyncImage:v34 aboutToLoadHandler:0];
          v25 = [v24 copy];

          if (v25)
          {
            v27 = MEMORY[0x277D85DD0];
            v28 = 3221225472;
            v29 = __48__ICDrawingInlineView_updateImageWithAnimation___block_invoke_4;
            v30 = &unk_2781AFA98;
            v33 = v36;
            v31 = self;
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
  v2 = [(ICDrawingInlineView *)self imageLayer];
  v3 = [v2 contents];
  v4 = v3 != 0;

  return v4;
}

- (void)updateLayerImage:(id)a3 animation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(ICDrawingInlineView *)self setImageLoadingCancelBlock:0];
  [MEMORY[0x277CD9FF0] begin];
  v54 = 1;
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [MEMORY[0x277CD9FF0] setAnimationDuration:0.0];
  v7 = [(ICDrawingInlineView *)self attachment];
  v8 = [v7 orientation];

  [MEMORY[0x277D35EC0] defaultSizeOrientationTransform:v8];
  v9 = [(ICDrawingInlineView *)self imageLayer];
  v57[0] = *(&v57[3] + 8);
  v57[1] = *(&v57[4] + 8);
  v57[2] = *(&v57[5] + 8);
  [v9 setAffineTransform:v57];

  [(ICDrawingInlineView *)self imageFrame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(ICDrawingInlineView *)self imageLayer];
  [v18 setFrame:{v11, v13, v15, v17}];

  [MEMORY[0x277CD9FF0] commit];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v19 = 0.1;
  if (!v4)
  {
    v19 = 0.0;
  }

  [MEMORY[0x277CD9FF0] setAnimationDuration:v19];
  v20 = [(ICDrawingInlineView *)self attachment];
  v21 = [v20 previewUpdateDate];
  v22 = [(ICDrawingInlineView *)self attachment];
  v23 = [v22 modificationDate];
  v24 = [v21 compare:v23];

  if (v4)
  {
    v54 = [(ICDrawingInlineView *)self hasImage];
  }

  v25 = [(ICDrawingInlineView *)self attachment];
  [MEMORY[0x277D35EC0] defaultPixelSize];
  v27 = v26;
  v29 = v28;
  v30 = [(ICDrawingInlineView *)self ic_appearanceInfo];
  v31 = [v25 attachmentPreviewImageWithMinSize:objc_msgSend(v30 scale:"type") appearanceType:1 requireAppearance:{v27, v29, 1.0}];

  if ((v6 || v24 != -1) && (v31 || ([0 size], v35 = v34, v37 = v36, objc_msgSend(MEMORY[0x277D35EC0], "defaultPixelSize"), v35 == v39) && v37 == v38))
  {
    v40 = [(ICDrawingInlineView *)self thumbnailDisplay];
    v32 = [v6 ic_CGImage];
    if (!v40)
    {
      v46 = [(ICDrawingInlineView *)self layer];
      [v46 setBorderColor:0];

      v47 = [(ICDrawingInlineView *)self layer];
      [v47 setBorderWidth:0.0];

      goto LABEL_16;
    }

    v33 = 0;
  }

  else
  {
    v32 = [v6 ic_CGImage];
    v33 = 1;
  }

  v41 = [(ICDrawingInlineView *)self borderColor];
  v42 = [v41 CGColor];
  v43 = [(ICDrawingInlineView *)self layer];
  [v43 setBorderColor:v42];

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
    v48 = [(ICDrawingInlineView *)self drawingBackgroundColor];
    [(ICDrawingInlineView *)self setIc_backgroundColor:v48];
  }

  else
  {
    [(ICDrawingInlineView *)self setIc_backgroundColor:0];
  }

  v49 = [(ICDrawingInlineView *)self loadingProgressLayer];
  [v49 removeFromSuperlayer];

  [(ICDrawingInlineView *)self setLoadingProgressLayer:0];
  v45 = 1.0;
LABEL_20:
  if (!v54 || !v4)
  {
    v51 = [(ICDrawingInlineView *)self imageLayer];
    [v51 setContents:v32];

    if (!v6)
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
  v56 = v32;
  [v50 ic_animateWithDuration:v55 animations:0 completion:0.3];

  if (v6)
  {
LABEL_24:
    v52 = [(ICDrawingInlineView *)self imageLayer];
    *&v53 = v45;
    [v52 setOpacity:v53];
  }

LABEL_25:
  [MEMORY[0x277CD9FF0] commit];
  if ([(ICDrawingInlineView *)self needsToUpdateImage])
  {
    [(ICDrawingInlineView *)self setNeedsToUpdateImage:0];
    [(ICDrawingInlineView *)self updateImageWithAnimation:v4];
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
  v2 = [(ICDrawingInlineView *)self loadingProgressLayer];
  v3 = v2 == 0;

  return v3;
}

- (void)didScrollOutOfVisibleRange
{
  v3 = [(ICDrawingInlineView *)self imageLoadingCancelBlock];

  if (v3)
  {
    v4 = [(ICDrawingInlineView *)self imageLoadingCancelBlock];
    v4[2]();

    [(ICDrawingInlineView *)self setImageLoadingCancelBlock:0];
  }

  v5 = [(ICDrawingInlineView *)self imageLayer];
  [v5 setContents:0];

  v6 = [(ICDrawingInlineView *)self previewImageUpdateDelayer];
  [v6 cancelPreviousFireRequests];
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
  v3 = [(ICDrawingInlineView *)self imageLoadingCancelBlock];
  if (v3)
  {
    v4 = v3;
    v5 = [(ICDrawingInlineView *)self hasImage];

    if (v5)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v6 = [(ICDrawingInlineView *)self imageLoadingCancelBlock];
      v6[2]();

      [(ICDrawingInlineView *)self setImageLoadingCancelBlock:0];
      v7 = [(ICDrawingInlineView *)self previewImageUpdateDelayer];
      [v7 cancelPreviousFireRequests];

      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(ICDrawingInlineView *)self loadingProgressLayer];

  if (v8)
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
    v11 = [(ICDrawingInlineView *)self loadingProgressLayer];
    [v11 setPosition:{v9, v10}];
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

  v5 = [(ICDrawingInlineView *)self layer];
  [v5 setBorderWidth:v3];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)observePreviewGenerationProgress:(id)a3
{
  v11 = a3;
  v4 = [(ICDrawingInlineView *)self hideLoadingProgress];
  v5 = v11;
  if (!v4)
  {
    v6 = [(ICDrawingInlineView *)self loadingProgressLayer];

    if (!v6)
    {
      v7 = objc_alloc_init(MEMORY[0x277D36820]);
      [(ICDrawingInlineView *)self bounds];
      v8 = CGRectGetMaxX(v13) + -21.0;
      [(ICDrawingInlineView *)self bounds];
      [v7 setPosition:{v8, CGRectGetMaxY(v14) + -21.0}];
      [v7 setZPosition:1.0];
      [v7 setRemoveOnCompletion:1];
      v9 = [(ICDrawingInlineView *)self layer];
      [v9 addSublayer:v7];

      [(ICDrawingInlineView *)self setLoadingProgressLayer:v7];
    }

    v5 = v11;
    if (v11)
    {
      v10 = [(ICDrawingInlineView *)self loadingProgressLayer];
      [v10 setObservedProgress:v11];

      v5 = v11;
    }
  }
}

- (void)attachmentPreviewImagesDidUpdate:(id)a3
{
  v3 = [(ICDrawingInlineView *)self previewImageUpdateDelayer];
  [v3 requestFire];
}

- (void)attachmentPreviewDidStart:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 userInfo];

  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D35BB0]];
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
  v3 = [(ICDrawingInlineView *)self lowestSuperScrollView];
  if (v3)
  {
    [(ICDrawingInlineView *)self bounds];
    [(ICDrawingInlineView *)self convertRect:v3 toView:?];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [v3 bounds];
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
  v2 = self;
  if (v2)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3 = [(ICDrawingInlineView *)v2 superview];

      v2 = v3;
      if (!v3)
      {
        goto LABEL_6;
      }
    }

    v2 = v2;
  }

LABEL_6:

  return v2;
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