@interface MSTableCell
- (void)_destroyPreviewProgressView;
- (void)_flipFromPreviewProgressView;
- (void)_flipToPreviewProgressView;
- (void)dealloc;
- (void)setPreviewStatus:(id)a3 animated:(BOOL)a4;
@end

@implementation MSTableCell

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MSTableCell;
  [(SUTableCell *)&v3 dealloc];
}

- (void)setPreviewStatus:(id)a3 animated:(BOOL)a4
{
  previewStatus = self->_previewStatus;
  if (previewStatus != a3)
  {
    v5 = a4;

    v8 = a3;
    self->_previewStatus = v8;
    if (v8)
    {
      if (self->_previewContainerView)
      {
        v9 = v8;
      }

      else
      {
        v10 = [(MSTableCell *)self contentView];
        v11 = [MEMORY[0x277D755B8] imageNamed:@"PreviewFlipBackground" inBundle:{objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class())}];
        [v10 frame];
        v13 = v12;
        v15 = v14;
        [v11 size];
        v18 = [v10 newSnapshotWithRect:{v13, v15, v16, v17}];
        [(UIImageView *)self->_backsideSnapshotView removeFromSuperview];

        self->_backsideSnapshotView = 0;
        if (v18)
        {
          v19 = objc_alloc(MEMORY[0x277D755E8]);
          self->_backsideSnapshotView = [v19 initWithImage:{objc_msgSend(MEMORY[0x277D755B8], "imageWithCGImage:", v18)}];
          CGImageRelease(v18);
        }

        self->_previewContainerView = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v11];
        v20 = [(SUTableCell *)self clippingPath];
        if (v20)
        {
          v21 = v20;
          [(UIView *)self->_previewContainerView bounds];
          v23 = v22;
          v25 = v24;
          [v11 scale];
          v27 = v26;
          v34.width = v23;
          v34.height = v25;
          UIGraphicsBeginImageContextWithOptions(v34, 0, v27);
          [objc_msgSend(MEMORY[0x277D75348] "blackColor")];
          [(UIBezierPath *)v21 fill];
          ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
          v29 = objc_alloc_init(MEMORY[0x277CD9ED0]);
          [v29 setContents:{-[UIImage CGImage](ImageFromCurrentImageContext, "CGImage")}];
          [(CALayer *)[(UIView *)self->_previewContainerView layer] bounds];
          [v29 setFrame:?];
          [(CALayer *)[(UIView *)self->_previewContainerView layer] setMask:v29];

          UIGraphicsEndImageContext();
        }

        [v10 addSubview:self->_previewContainerView];
        v30 = [MSAudioProgressView alloc];
        [(UIView *)self->_previewContainerView bounds];
        v31 = [(MSAudioProgressView *)v30 initWithFrame:?];
        self->_previewProgressView = v31;
        [(MSAudioProgressView *)v31 setBackgroundColor:[(MSTableCell *)self backgroundColor]];
        if (v5)
        {
          [(MSTableCell *)self _flipToPreviewProgressView];
        }

        else
        {
          [(UIView *)self->_previewContainerView addSubview:self->_previewProgressView];
        }

        [(MSTableCell *)self setNeedsLayout];
        v9 = self->_previewStatus;
      }

      previewProgressView = self->_previewProgressView;

      [(MSAudioProgressView *)previewProgressView setPlayerStatus:v9];
    }

    else if (v5)
    {

      [(MSTableCell *)self _flipFromPreviewProgressView];
    }

    else
    {

      [(MSTableCell *)self _destroyPreviewProgressView];
    }
  }
}

- (void)_destroyPreviewProgressView
{
  [(UIImageView *)self->_backsideSnapshotView removeFromSuperview];

  self->_backsideSnapshotView = 0;
  [(UIView *)self->_previewContainerView removeFromSuperview];

  self->_previewContainerView = 0;
  [(MSAudioProgressView *)self->_previewProgressView removeFromSuperview];

  self->_previewProgressView = 0;

  [(MSTableCell *)self setNeedsLayout];
}

- (void)_flipFromPreviewProgressView
{
  [(NSArray *)[(UIView *)self->_previewContainerView subviews] makeObjectsPerformSelector:sel_removeFromSuperview];
  [(UIView *)self->_previewContainerView bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v3, v5, v7, v9}];
  [(UIView *)self->_previewContainerView addSubview:v11];
  [v11 addSubview:self->_previewProgressView];
  v12 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v6, v8, v10}];
  [v12 setBackgroundColor:{-[MSTableCell backgroundColor](self, "backgroundColor")}];
  if (self->_backsideSnapshotView)
  {
    [v12 addSubview:?];
  }

  [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
  v13 = dispatch_time(0, 10000000);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __43__MSTableCell__flipFromPreviewProgressView__block_invoke;
  v14[3] = &unk_279926CC8;
  v14[4] = self;
  v14[5] = v12;
  dispatch_after(v13, MEMORY[0x277D85CD0], v14);
}

uint64_t __43__MSTableCell__flipFromPreviewProgressView__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 1120);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__MSTableCell__flipFromPreviewProgressView__block_invoke_2;
  v5[3] = &unk_279926BB8;
  v5[4] = v2;
  [MEMORY[0x277D75D18] transitionFromView:v3 toView:v1 duration:0x100000 options:v5 completion:0.6];
  return [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
}

- (void)_flipToPreviewProgressView
{
  [(UIView *)self->_previewContainerView bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v3, v5, v7, v9}];
  [(UIView *)self->_previewContainerView addSubview:v11];
  v12 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v6, v8, v10}];
  [v12 setBackgroundColor:{-[MSTableCell backgroundColor](self, "backgroundColor")}];
  if (self->_backsideSnapshotView)
  {
    [v12 addSubview:?];
  }

  [v11 addSubview:v12];
  [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
  v13 = dispatch_time(0, 10000000);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __41__MSTableCell__flipToPreviewProgressView__block_invoke;
  v14[3] = &unk_279926CC8;
  v14[4] = v12;
  v14[5] = self;
  dispatch_after(v13, MEMORY[0x277D85CD0], v14);
}

uint64_t __41__MSTableCell__flipToPreviewProgressView__block_invoke(uint64_t a1)
{
  [MEMORY[0x277D75D18] transitionFromView:*(a1 + 32) toView:*(*(a1 + 40) + 1120) duration:0x200000 options:0 completion:0.6];
  v1 = [MEMORY[0x277D75128] sharedApplication];

  return [v1 endIgnoringInteractionEvents];
}

@end