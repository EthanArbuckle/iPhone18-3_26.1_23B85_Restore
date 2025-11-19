@interface NMBUIDownloadProgressView
- (CGRect)_contentFrame;
- (CGSize)intrinsicContentSize;
- (NMBUIDownloadProgressView)initWithFrame:(CGRect)a3;
- (void)_updateDownloadingRingProgressLayerStrokeEnd;
- (void)layoutSubviews;
- (void)setProgress:(float)a3;
- (void)setState:(unint64_t)a3;
@end

@implementation NMBUIDownloadProgressView

- (NMBUIDownloadProgressView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = NMBUIDownloadProgressView;
  result = [(NMBUIDownloadProgressView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_state = 5;
    result->_progress = 1.0;
  }

  return result;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = NMBUIDownloadProgressView;
  [(NMBUIDownloadProgressView *)&v11 layoutSubviews];
  [(NMBUIDownloadProgressView *)self _contentFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIButton *)self->_errorIconButton setFrame:?];
  [(UIImageView *)self->_downloadableIconView setFrame:v4, v6, v8, v10];
  [(CAShapeLayer *)self->_waitingRingLayer setFrame:v4, v6, v8, v10];
  [(CAShapeLayer *)self->_downloadingRingTrackLayer setFrame:v4, v6, v8, v10];
  [(CAShapeLayer *)self->_downloadingRingProgressLayer setFrame:v4, v6, v8, v10];
  [(NMBUIDownloadProgressView *)self _updateDownloadingRingProgressLayerStrokeEnd];
}

- (void)setState:(unint64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    [(UIButton *)self->_errorIconButton removeFromSuperview];
    [(UIImageView *)self->_downloadableIconView removeFromSuperview];
    [(CAShapeLayer *)self->_waitingRingLayer removeFromSuperlayer];
    [(CAShapeLayer *)self->_downloadingRingTrackLayer removeFromSuperlayer];
    [(CAShapeLayer *)self->_downloadingRingProgressLayer removeFromSuperlayer];
    state = self->_state;
    if (state > 3)
    {
      if (state != 4)
      {
        if (state != 6)
        {
LABEL_20:
          [(NMBUIDownloadProgressView *)self setNeedsLayout];
          return;
        }

        errorIconButton = self->_errorIconButton;
        if (!errorIconButton)
        {
          v13 = [MEMORY[0x277D75220] buttonWithType:118];
          v14 = self->_errorIconButton;
          self->_errorIconButton = v13;

          v15 = [MEMORY[0x277D75348] systemYellowColor];
          [(UIButton *)self->_errorIconButton setTintColor:v15];

          [(UIButton *)self->_errorIconButton setUserInteractionEnabled:0];
          errorIconButton = self->_errorIconButton;
        }

LABEL_10:
        [(NMBUIDownloadProgressView *)self addSubview:errorIconButton];
        goto LABEL_20;
      }

      if (!self->_downloadingRingTrackLayer && !self->_downloadingRingProgressLayer)
      {
        v24 = [(NMBUIDownloadProgressView *)self _ringPath];
        v25 = [MEMORY[0x277CD9F90] layer];
        downloadingRingTrackLayer = self->_downloadingRingTrackLayer;
        self->_downloadingRingTrackLayer = v25;

        -[CAShapeLayer setPath:](self->_downloadingRingTrackLayer, "setPath:", [v24 CGPath]);
        [(CAShapeLayer *)self->_downloadingRingTrackLayer setFillColor:0];
        v27 = BPSProgressBarTrackTintColor();
        -[CAShapeLayer setStrokeColor:](self->_downloadingRingTrackLayer, "setStrokeColor:", [v27 CGColor]);

        [(CAShapeLayer *)self->_downloadingRingTrackLayer setLineWidth:3.0];
        v28 = [MEMORY[0x277CD9F90] layer];
        downloadingRingProgressLayer = self->_downloadingRingProgressLayer;
        self->_downloadingRingProgressLayer = v28;

        -[CAShapeLayer setPath:](self->_downloadingRingProgressLayer, "setPath:", [v24 CGPath]);
        [(CAShapeLayer *)self->_downloadingRingProgressLayer setFillColor:0];
        v30 = BPSProgressBarTintColor();
        -[CAShapeLayer setStrokeColor:](self->_downloadingRingProgressLayer, "setStrokeColor:", [v30 CGColor]);

        [(CAShapeLayer *)self->_downloadingRingProgressLayer setLineWidth:3.0];
        [(CAShapeLayer *)self->_downloadingRingProgressLayer setLineCap:*MEMORY[0x277CDA780]];
        CGAffineTransformMakeRotation(&v33, -1.57079633);
        v31 = self->_downloadingRingProgressLayer;
        v34 = v33;
        [(CAShapeLayer *)v31 setAffineTransform:&v34];
        [(NMBUIDownloadProgressView *)self _updateDownloadingRingProgressLayerStrokeEnd];
      }

      v32 = [(NMBUIDownloadProgressView *)self layer];
      [v32 addSublayer:self->_downloadingRingTrackLayer];

      v22 = [(NMBUIDownloadProgressView *)self layer];
      [v22 addSublayer:self->_downloadingRingProgressLayer];
    }

    else
    {
      if ((state - 1) < 2)
      {
        errorIconButton = self->_downloadableIconView;
        if (!errorIconButton)
        {
          v6 = objc_alloc(MEMORY[0x277D755E8]);
          v7 = MEMORY[0x277D755B8];
          v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v9 = [v7 imageNamed:@"downloadCloud" inBundle:v8];
          v10 = [v6 initWithImage:v9];
          downloadableIconView = self->_downloadableIconView;
          self->_downloadableIconView = v10;

          [(UIImageView *)self->_downloadableIconView setContentMode:4];
          v12 = BPSDetailTextColor();
          [(UIImageView *)self->_downloadableIconView setTintColor:v12];

          errorIconButton = self->_downloadableIconView;
        }

        goto LABEL_10;
      }

      if (state != 3)
      {
        goto LABEL_20;
      }

      if (!self->_waitingRingLayer)
      {
        v16 = [(NMBUIDownloadProgressView *)self _ringPath];
        v17 = [MEMORY[0x277CD9F90] layer];
        waitingRingLayer = self->_waitingRingLayer;
        self->_waitingRingLayer = v17;

        -[CAShapeLayer setPath:](self->_waitingRingLayer, "setPath:", [v16 CGPath]);
        [(CAShapeLayer *)self->_waitingRingLayer setFillColor:0];
        v19 = BPSProgressBarTintColor();
        -[CAShapeLayer setStrokeColor:](self->_waitingRingLayer, "setStrokeColor:", [v19 CGColor]);

        [(CAShapeLayer *)self->_waitingRingLayer setLineWidth:3.0];
        [(CAShapeLayer *)self->_waitingRingLayer setLineCap:*MEMORY[0x277CDA780]];
        CGAffineTransformMakeRotation(&v35, -1.57079633);
        v20 = self->_waitingRingLayer;
        v34 = v35;
        [(CAShapeLayer *)v20 setAffineTransform:&v34];
        [(CAShapeLayer *)self->_waitingRingLayer setStrokeEnd:0.8];
      }

      v21 = [(NMBUIDownloadProgressView *)self layer];
      [v21 addSublayer:self->_waitingRingLayer];

      v22 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.z"];
      [v22 setFromValue:&unk_286C82860];
      [v22 setToValue:&unk_286C82878];
      [v22 setBeginTime:(CACurrentMediaTime() % 0x1E)];
      [v22 setRemovedOnCompletion:0];
      LODWORD(v23) = 2139095040;
      [v22 setRepeatCount:v23];
      [v22 setFrameInterval:0.0333333333];
      [v22 setDuration:1.0];
      [(CAShapeLayer *)self->_waitingRingLayer addAnimation:v22 forKey:@"waiting"];
    }

    goto LABEL_20;
  }
}

- (void)setProgress:(float)a3
{
  if (self->_progress != a3)
  {
    self->_progress = a3;
    [(NMBUIDownloadProgressView *)self _updateDownloadingRingProgressLayerStrokeEnd];
  }
}

- (CGSize)intrinsicContentSize
{
  [(NMBUIDownloadProgressView *)self _contentFrame];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (CGRect)_contentFrame
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 28.0;
  v5 = 28.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_updateDownloadingRingProgressLayerStrokeEnd
{
  progress = self->_progress;
  if (progress == 1.0)
  {
    v4 = progress;
  }

  else
  {
    v4 = progress * 0.9;
  }

  [(CAShapeLayer *)self->_downloadingRingProgressLayer lineWidth];
  v6 = v5;
  [(CAShapeLayer *)self->_downloadingRingProgressLayer bounds];
  Width = CGRectGetWidth(v11);
  [(CAShapeLayer *)self->_downloadingRingProgressLayer bounds];
  v8 = v6 / ((Width + CGRectGetHeight(v12)) * 3.14159265 * 0.5);
  if (v4 >= v8)
  {
    v8 = v4;
  }

  downloadingRingProgressLayer = self->_downloadingRingProgressLayer;

  [(CAShapeLayer *)downloadingRingProgressLayer setStrokeEnd:v8];
}

@end