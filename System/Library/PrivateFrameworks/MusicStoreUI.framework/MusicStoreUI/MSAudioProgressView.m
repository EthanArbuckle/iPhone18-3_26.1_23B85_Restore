@interface MSAudioProgressView
- (MSAudioProgressView)initWithFrame:(CGRect)a3;
- (id)_newBufferingImageView;
- (id)_newProgressView;
- (void)_cancelBufferingTimer;
- (void)_showBufferingImageView;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setPlayerStatus:(id)a3;
@end

@implementation MSAudioProgressView

- (MSAudioProgressView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = MSAudioProgressView;
  v3 = [(MSAudioProgressView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(MSAudioProgressView *)v3 _newProgressView];
    v4->_progressView = v5;
    [(MSAudioProgressView *)v4 addSubview:v5];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = objc_alloc(MEMORY[0x277D755E8]);
    v8 = [MEMORY[0x277D755B8] imageNamed:@"StopButton" inBundle:v6];
    v9 = [v7 initWithImage:v8 highlightedImage:{objc_msgSend(MEMORY[0x277D755B8], "imageNamed:inBundle:", @"StopButtonPressed", v6)}];
    v4->_stopImageView = v9;
    [(UIImageView *)v9 setContentMode:4];
    [(MSAudioProgressView *)v4 addSubview:v4->_stopImageView];
  }

  return v4;
}

- (void)dealloc
{
  [(MSAudioProgressView *)self _cancelBufferingTimer];

  v3.receiver = self;
  v3.super_class = MSAudioProgressView;
  [(MSAudioProgressView *)&v3 dealloc];
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    self->_highlighted = a3;
    [(UIImageView *)self->_stopImageView setHighlighted:?];
  }
}

- (void)setPlayerStatus:(id)a3
{
  playerStatus = self->_playerStatus;
  if (playerStatus != a3)
  {

    v6 = [a3 copy];
    self->_playerStatus = v6;
    if ([(SUPlayerStatus *)v6 playerState]== 1)
    {
      if (!self->_bufferingTimer && !self->_bufferingImageView)
      {
        v7 = [MEMORY[0x277D69D50] weakReferenceWithObject:self];
        v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
        self->_bufferingTimer = v8;
        v9 = dispatch_time(0, 500000000);
        dispatch_source_set_timer(v8, v9, 0, 0);
        bufferingTimer = self->_bufferingTimer;
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __39__MSAudioProgressView_setPlayerStatus___block_invoke;
        handler[3] = &unk_279926BE0;
        handler[4] = v7;
        dispatch_source_set_event_handler(bufferingTimer, handler);
        dispatch_resume(self->_bufferingTimer);
      }
    }

    else
    {
      [(MSAudioProgressView *)self _cancelBufferingTimer];
      [(UIImageView *)self->_bufferingImageView stopAnimating];
      [(UIImageView *)self->_bufferingImageView removeFromSuperview];

      self->_bufferingImageView = 0;
      if (!self->_progressView)
      {
        v11 = [(MSAudioProgressView *)self _newProgressView];
        self->_progressView = v11;
        [(MSAudioProgressView *)self insertSubview:v11 belowSubview:self->_stopImageView];
      }

      [(SUPlayerStatus *)self->_playerStatus duration];
      v13 = v12;
      if (v12 < 0.00000011920929)
      {
        progressView = self->_progressView;
        v15 = 0.0;
      }

      else
      {
        [(SUPlayerStatus *)self->_playerStatus currentTime];
        if (v16 < 0.00000011920929)
        {
          v16 = 0.0;
        }

        progressView = self->_progressView;
        v15 = v16 / v13;
      }

      [(MSPieImageView *)progressView setPieFraction:v15];
    }

    [(MSAudioProgressView *)self setNeedsLayout];
  }
}

uint64_t __39__MSAudioProgressView_setPlayerStatus___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) object];

  return [v1 _showBufferingImageView];
}

- (void)layoutSubviews
{
  [(MSAudioProgressView *)self bounds];
  v4 = v3;
  v6 = v5;
  bufferingImageView = self->_bufferingImageView;
  if (bufferingImageView)
  {
    [(UIImageView *)bufferingImageView frame];
    v9 = (v4 - v8) * 0.5;
    v11 = (v6 - v10) * 0.5;
    [(UIImageView *)self->_bufferingImageView setFrame:floorf(v9), floorf(v11)];
  }

  progressView = self->_progressView;
  if (progressView)
  {
    [(MSPieImageView *)progressView frame];
    v14 = (v4 - v13) * 0.5;
    v16 = (v6 - v15) * 0.5;
    [(MSPieImageView *)self->_progressView setFrame:floorf(v14), floorf(v16)];
  }

  [(UIImageView *)self->_stopImageView frame];
  stopImageView = self->_stopImageView;

  [(UIImageView *)stopImageView setFrame:?];
}

- (void)_cancelBufferingTimer
{
  bufferingTimer = self->_bufferingTimer;
  if (bufferingTimer)
  {
    dispatch_source_cancel(bufferingTimer);
    dispatch_release(self->_bufferingTimer);
    self->_bufferingTimer = 0;
  }
}

- (id)_newBufferingImageView
{
  v2 = objc_alloc_init(MEMORY[0x277D755E8]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  for (i = 1; i != 13; ++i)
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"PreviewLoading%ld", i];
    v7 = [MEMORY[0x277D755B8] imageNamed:v6 inBundle:v4];
    if (v7)
    {
      [v3 addObject:v7];
    }
  }

  [v2 setAnimationDuration:{objc_msgSend(v3, "count") / 15.0}];
  [v2 setAnimationImages:v3];
  if ([v3 count])
  {
    [v2 frame];
    v9 = v8;
    v11 = v10;
    [objc_msgSend(v3 "lastObject")];
    [v2 setFrame:{v9, v11, v12, v13}];
  }

  return v2;
}

- (id)_newProgressView
{
  v2 = objc_alloc_init(MSPieImageView);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  -[MSPieImageView setBackgroundColor:](v2, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
  -[MSPieImageView setBackgroundImage:](v2, "setBackgroundImage:", [MEMORY[0x277D755B8] imageNamed:@"PreviewProgressBackground" inBundle:v3]);
  -[MSPieImageView setForegroundImage:](v2, "setForegroundImage:", [MEMORY[0x277D755B8] imageNamed:@"PreviewProgressForeground" inBundle:v3]);
  [(MSPieImageView *)v2 setPieRadius:24.5];
  [(MSPieImageView *)v2 sizeToFit];
  return v2;
}

- (void)_showBufferingImageView
{
  if ([(SUPlayerStatus *)self->_playerStatus playerState]== 1)
  {
    [(MSPieImageView *)self->_progressView removeFromSuperview];

    self->_progressView = 0;
    bufferingImageView = self->_bufferingImageView;
    if (!bufferingImageView)
    {
      v4 = [(MSAudioProgressView *)self _newBufferingImageView];
      self->_bufferingImageView = v4;
      [(MSAudioProgressView *)self insertSubview:v4 belowSubview:self->_stopImageView];
      bufferingImageView = self->_bufferingImageView;
    }

    [(UIImageView *)bufferingImageView startAnimating];
  }
}

@end