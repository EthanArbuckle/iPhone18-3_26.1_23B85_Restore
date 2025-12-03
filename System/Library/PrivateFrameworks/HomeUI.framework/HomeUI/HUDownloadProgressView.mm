@interface HUDownloadProgressView
- (HUDownloadProgressView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setCenterImage:(id)image;
- (void)setDownloadProgress:(double)progress;
- (void)setOuterRingColor:(id)color;
@end

@implementation HUDownloadProgressView

- (HUDownloadProgressView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = HUDownloadProgressView;
  v3 = [(HUDownloadProgressView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    [(HUDownloadProgressView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    outerRingView = v3->_outerRingView;
    v3->_outerRingView = v5;

    [(UIView *)v3->_outerRingView setClipsToBounds:1];
    [(HUDownloadProgressView *)v3 addSubview:v3->_outerRingView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = HUDownloadProgressView;
  [(HUDownloadProgressView *)&v28 layoutSubviews];
  traitCollection = [(HUDownloadProgressView *)self traitCollection];
  [traitCollection displayScale];
  v5 = HUGetSafeScaleForValue(v4);
  v26 = v5;

  [(HUDownloadProgressView *)self bounds];
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  v10 = CGRectGetWidth(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v11 = CGRectGetHeight(v30);
  if (v10 < v11)
  {
    v11 = v10;
  }

  v27 = v11 * 0.5;
  [(_HUDownloadProgressRingView *)self->_progressView setFrame:x, y, width, height];
  [(UIImageView *)self->_centerImageView frame];
  [(UIImageView *)self->_centerImageView sizeThatFits:width, height];
  v25 = v5;
  UIRectCenteredIntegralRectScale();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(UIImage *)self->_centerImage alignmentRectInsets];
  [(UIImageView *)self->_centerImageView setFrame:v13 + v23, v15 + v20, v17 - (v23 + v21), v19 - (v20 + v22)];
  [(UIView *)self->_outerRingView setFrame:x, y, width, height];
  layer = [(UIView *)self->_outerRingView layer];
  [layer setCornerRadius:v27];
  [layer setBorderWidth:1.0 / v26 + 2.0];
}

- (void)setCenterImage:(id)image
{
  imageCopy = image;
  if (self->_centerImage != imageCopy)
  {
    v10 = imageCopy;
    objc_storeStrong(&self->_centerImage, image);
    centerImageView = self->_centerImageView;
    if (self->_centerImage)
    {
      if (!centerImageView)
      {
        v7 = objc_alloc(MEMORY[0x277D755E8]);
        v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        v9 = self->_centerImageView;
        self->_centerImageView = v8;

        [(HUDownloadProgressView *)self addSubview:self->_centerImageView];
        centerImageView = self->_centerImageView;
      }

      [(UIImageView *)centerImageView setHidden:0];
      [(UIImageView *)self->_centerImageView setImage:self->_centerImage];
    }

    else
    {
      [(UIImageView *)centerImageView setHidden:1];
    }

    [(HUDownloadProgressView *)self setNeedsLayout];
    imageCopy = v10;
  }
}

- (void)setDownloadProgress:(double)progress
{
  downloadProgress = self->_downloadProgress;
  progressCopy = progress;
  if (vabds_f32(downloadProgress, progressCopy) >= 0.00000011921)
  {
    self->_downloadProgress = progress;
    *&v3 = fabsf(progressCopy);
    progressView = self->_progressView;
    v9 = progressCopy < 0.0;
    v8 = 3.18618444e-58;
    v9 = v9 || *&v3 < 0.00000011921;
    if (v9)
    {
      [(_HUDownloadProgressRingView *)progressView removeFromSuperview];
      v10 = self->_progressView;
      self->_progressView = 0;
    }

    else
    {
      if (!progressView)
      {
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __46__HUDownloadProgressView_setDownloadProgress___block_invoke;
        v11[3] = &unk_277DB8488;
        v11[4] = self;
        [MEMORY[0x277D75D18] performWithoutAnimation:v11];
        progressView = self->_progressView;
        progress = self->_downloadProgress;
      }

      [(_HUDownloadProgressRingView *)progressView setProgress:progress, v8, v3];
    }
  }
}

uint64_t __46__HUDownloadProgressView_setDownloadProgress___block_invoke(uint64_t a1)
{
  v2 = [_HUDownloadProgressRingView alloc];
  [*(a1 + 32) bounds];
  v3 = [(_HUDownloadProgressRingView *)v2 initWithFrame:?];
  v4 = *(a1 + 32);
  v5 = *(v4 + 424);
  *(v4 + 424) = v3;

  [*(*(a1 + 32) + 424) setProgress:0.0];
  v6 = *(a1 + 32);
  v7 = v6[53];

  return [v6 addSubview:v7];
}

- (void)setOuterRingColor:(id)color
{
  colorCopy = color;
  if (self->_outerRingColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_outerRingColor, color);
    layer = [(UIView *)self->_outerRingView layer];
    [layer setBorderColor:{-[UIColor CGColor](self->_outerRingColor, "CGColor")}];

    colorCopy = v7;
  }
}

@end