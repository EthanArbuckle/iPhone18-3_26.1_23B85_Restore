@interface SUUIEmbeddedMediaView
- (CGSize)_sizeToFitImageSize:(CGSize)a3 bounds:(CGRect)a4;
- (SUUIEmbeddedMediaViewDelegate)delegate;
- (id)_newMoviePlayerControllerWithURL:(id)a3;
- (id)_thumbnailView;
- (int64_t)playbackState;
- (int64_t)thumbnailContentMode;
- (void)_didExitFullscreen:(id)a3;
- (void)_didFinishPlayback:(id)a3;
- (void)_sendPlaybackStateChanged;
- (void)_tearDownMoviePlayer;
- (void)beginInlinePlaybackWithURL:(id)a3;
- (void)beginPlaybackAnimated:(BOOL)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)endPlaybackAnimated:(BOOL)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setMediaType:(int64_t)a3;
- (void)setShowsThumbnailReflection:(BOOL)a3;
- (void)setThumbnailContentMode:(int64_t)a3;
- (void)setThumbnailImage:(id)a3;
@end

@implementation SUUIEmbeddedMediaView

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = SUUIMediaPlayerFramework();
  [v3 removeObserver:self name:*SUUIWeakLinkedSymbolForString("MPMoviePlayerDidExitFullscreenNotification" object:{v4), 0}];
  v5 = SUUIMediaPlayerFramework();
  [v3 removeObserver:self name:*SUUIWeakLinkedSymbolForString("MPMoviePlayerPlaybackDidFinishNotification" object:{v5), 0}];
  v6 = SUUIMediaPlayerFramework();
  [v3 removeObserver:self name:*SUUIWeakLinkedSymbolForString("MPMoviePlayerPlaybackStateDidChangeNotification" object:{v6), 0}];

  v7.receiver = self;
  v7.super_class = SUUIEmbeddedMediaView;
  [(SUUIEmbeddedMediaView *)&v7 dealloc];
}

- (void)beginInlinePlaybackWithURL:(id)a3
{
  v4 = a3;
  [(SUUIEmbeddedMediaView *)self _tearDownMoviePlayer];
  v5 = [(SUUIEmbeddedMediaView *)self _newMoviePlayerControllerWithURL:v4];

  moviePlayer = self->_moviePlayer;
  self->_moviePlayer = v5;

  self->_usingInlinePlayback = 1;
  v7 = [(MPMoviePlayerController *)self->_moviePlayer view];
  [(SUUIEmbeddedMediaView *)self bounds];
  [v7 setFrame:?];
  [(SUUIEmbeddedMediaView *)self addSubview:v7];
}

- (void)beginPlaybackAnimated:(BOOL)a3
{
  v3 = a3;
  if (self->_mediaURLString)
  {
    moviePlayer = self->_moviePlayer;
    if (moviePlayer)
    {

      [(MPMoviePlayerController *)moviePlayer play];
    }

    else
    {
      v6 = [MEMORY[0x277CBEBC0] URLWithString:?];
      v7 = [(SUUIEmbeddedMediaView *)self _newMoviePlayerControllerWithURL:v6];
      v8 = self->_moviePlayer;
      self->_moviePlayer = v7;

      self->_usingInlinePlayback = 0;
      v9 = [(MPMoviePlayerController *)self->_moviePlayer view];
      [(SUUIEmbeddedMediaView *)self bounds];
      [v9 setFrame:?];
      [(SUUIEmbeddedMediaView *)self addSubview:v9];
      [(MPMoviePlayerController *)self->_moviePlayer setFullscreen:1 animated:v3];
    }
  }
}

- (void)endPlaybackAnimated:(BOOL)a3
{
  moviePlayer = self->_moviePlayer;
  if (moviePlayer)
  {
    [(MPMoviePlayerController *)moviePlayer stop];
    if (a3)
    {
      if ([(MPMoviePlayerController *)self->_moviePlayer isFullscreen])
      {
        v6 = self->_moviePlayer;

        [(MPMoviePlayerController *)v6 setFullscreen:0 animated:1];
      }

      else
      {
        [(UIImageView *)self->_playerDecorationView setAlpha:0.0];
        [(UIImageView *)self->_thumbnailReflectionView setAlpha:0.0];
        [(UIImageView *)self->_thumbnailView setAlpha:0.0];
        v7 = [(MPMoviePlayerController *)self->_moviePlayer view];
        [(SUUIEmbeddedMediaView *)self sendSubviewToBack:v7];

        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __45__SUUIEmbeddedMediaView_endPlaybackAnimated___block_invoke;
        v9[3] = &unk_2798F5BE8;
        v9[4] = self;
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __45__SUUIEmbeddedMediaView_endPlaybackAnimated___block_invoke_2;
        v8[3] = &unk_2798F5D30;
        v8[4] = self;
        [MEMORY[0x277D75D18] animateWithDuration:v9 animations:v8 completion:0.2];
      }
    }

    else
    {

      [(SUUIEmbeddedMediaView *)self _tearDownMoviePlayer];
    }
  }
}

uint64_t __45__SUUIEmbeddedMediaView_endPlaybackAnimated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 488) setAlpha:1.0];
  [*(*(a1 + 32) + 496) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 504);

  return [v2 setAlpha:1.0];
}

- (int64_t)playbackState
{
  result = self->_moviePlayer;
  if (result)
  {
    v3 = [result playbackState];
    if ((v3 - 1) > 4)
    {
      return 0;
    }

    else
    {
      return qword_259FCC230[v3 - 1];
    }
  }

  return result;
}

- (void)setMediaType:(int64_t)a3
{
  if (self->_mediaType != a3)
  {
    self->_mediaType = a3;
    [(UIImageView *)self->_playerDecorationView removeFromSuperview];
    playerDecorationView = self->_playerDecorationView;
    self->_playerDecorationView = 0;

    [(SUUIEmbeddedMediaView *)self setNeedsLayout];
  }
}

- (void)setShowsThumbnailReflection:(BOOL)a3
{
  if ([(SUUIEmbeddedMediaView *)self showsThumbnailReflection]!= a3)
  {
    if (a3)
    {
      v5 = objc_alloc(MEMORY[0x277D755E8]);
      v6 = [(UIImageView *)self->_thumbnailView image];
      v7 = [v5 initWithImage:v6];
      thumbnailReflectionView = self->_thumbnailReflectionView;
      self->_thumbnailReflectionView = v7;

      [(UIImageView *)self->_thumbnailReflectionView setContentMode:[(UIImageView *)self->_thumbnailView contentMode]];
      v9 = [(UIImageView *)self->_thumbnailReflectionView layer];
      CATransform3DMakeScale(&v11, -1.0, -1.0, 1.0);
      [v9 setTransform:&v11];

      [(SUUIEmbeddedMediaView *)self addSubview:self->_thumbnailReflectionView];
    }

    else
    {
      [(UIImageView *)self->_thumbnailReflectionView removeFromSuperview];
      v10 = self->_thumbnailReflectionView;
      self->_thumbnailReflectionView = 0;
    }

    [(SUUIEmbeddedMediaView *)self setNeedsLayout];
  }
}

- (void)setThumbnailContentMode:(int64_t)a3
{
  v5 = [(SUUIEmbeddedMediaView *)self _thumbnailView];
  [v5 setContentMode:a3];

  thumbnailReflectionView = self->_thumbnailReflectionView;

  [(UIImageView *)thumbnailReflectionView setContentMode:a3];
}

- (void)setThumbnailImage:(id)a3
{
  v6 = a3;
  v4 = [(UIImageView *)self->_thumbnailView image];

  if (v4 != v6)
  {
    v5 = [(SUUIEmbeddedMediaView *)self _thumbnailView];
    [v5 setImage:v6];
    [(UIImageView *)self->_thumbnailReflectionView setImage:v6];
    [(SUUIEmbeddedMediaView *)self setNeedsLayout];
  }
}

- (int64_t)thumbnailContentMode
{
  v2 = [(SUUIEmbeddedMediaView *)self _thumbnailView];
  v3 = [v2 contentMode];

  return v3;
}

- (void)layoutSubviews
{
  [(SUUIEmbeddedMediaView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v3;
  if (self->_thumbnailReflectionView)
  {
    v11 = v3 * 0.5;
  }

  else
  {
    v11 = v3;
  }

  v12 = [(SUUIEmbeddedMediaView *)self thumbnailContentMode];
  thumbnailReflectionView = self->_thumbnailReflectionView;
  if (thumbnailReflectionView)
  {
    v14 = [(UIImageView *)thumbnailReflectionView image];
    [v14 size];
    v16 = v15;
    v18 = v17;

    [(UIImageView *)self->_thumbnailReflectionView frame];
    [(SUUIEmbeddedMediaView *)self _sizeToFitImageSize:v16 bounds:v18, v5, v7, v9, v11];
    v21 = v20;
    v22 = v19;
    *&v20 = (v9 - v20) * 0.5;
    v23 = v9;
    v24 = v11;
    v25 = floorf(*&v20);
    if (v12 == 6)
    {
      v26 = v10 - v19;
    }

    else
    {
      v26 = 0.0;
    }

    [(UIImageView *)self->_thumbnailReflectionView setFrame:v25, v26, v21, v19];
    v58.origin.x = v25;
    v11 = v24;
    v9 = v23;
    v58.origin.y = v26;
    v58.size.width = v21;
    v58.size.height = v22;
    MaxY = CGRectGetMaxY(v58);
  }

  else
  {
    MaxY = 0.0;
  }

  v56 = [(SUUIEmbeddedMediaView *)self _thumbnailView];
  [v56 frame];
  v28 = [v56 image];
  [v28 size];
  [SUUIEmbeddedMediaView _sizeToFitImageSize:"_sizeToFitImageSize:bounds:" bounds:?];
  v30 = v29;
  v32 = v31;

  v33 = (v9 - v30) * 0.5;
  v34 = floorf(v33);
  v35 = v34;
  if (v12 == 6)
  {
    v36 = v10 - v32;
  }

  else
  {
    v36 = MaxY;
  }

  [v56 setFrame:{v34, v36, v30, v32}];
  if (self->_mediaType == 2)
  {
    playerDecorationView = self->_playerDecorationView;
    if (!playerDecorationView)
    {
      v38 = MEMORY[0x277D755B8];
      v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v40 = [v38 imageNamed:@"PlayControl" inBundle:v39];

      v41 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v40];
      v42 = self->_playerDecorationView;
      self->_playerDecorationView = v41;

      [(SUUIEmbeddedMediaView *)self addSubview:self->_playerDecorationView];
      playerDecorationView = self->_playerDecorationView;
    }

    [(UIImageView *)playerDecorationView frame];
    v44 = v43;
    v46 = v45;
    v47 = [v56 image];

    v48 = (v9 - v44) * 0.5;
    v49 = floorf(v48);
    v50 = (v30 - v44) * 0.5;
    v51 = v35 + floorf(v50);
    if (v47)
    {
      v52 = v32;
    }

    else
    {
      v52 = v11;
    }

    if (v47)
    {
      v49 = v51;
    }

    v53 = (v52 - v46) * 0.5;
    [(UIImageView *)self->_playerDecorationView setFrame:v49, v36 + floorf(v53), v44, v46];
    thumbnailView = self->_thumbnailView;
    v55 = [MEMORY[0x277D75348] blackColor];
    [(UIImageView *)thumbnailView setBackgroundColor:v55];
  }
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  if (self->_mediaType != 2)
  {
    [(UIImageView *)self->_thumbnailView setBackgroundColor:v4];
  }

  v5.receiver = self;
  v5.super_class = SUUIEmbeddedMediaView;
  [(SUUIEmbeddedMediaView *)&v5 setBackgroundColor:v4];
}

- (void)didMoveToWindow
{
  v3 = [(SUUIEmbeddedMediaView *)self window];

  if (!v3)
  {

    [(SUUIEmbeddedMediaView *)self endPlaybackAnimated:0];
  }
}

- (void)_didExitFullscreen:(id)a3
{
  if (!self->_usingInlinePlayback)
  {
    [(SUUIEmbeddedMediaView *)self _tearDownMoviePlayer];

    [(SUUIEmbeddedMediaView *)self _sendPlaybackStateChanged];
  }
}

- (void)_didFinishPlayback:(id)a3
{
  if ([(MPMoviePlayerController *)self->_moviePlayer isFullscreen])
  {
    moviePlayer = self->_moviePlayer;

    [(MPMoviePlayerController *)moviePlayer setFullscreen:0 animated:1];
  }

  else
  {
    [(SUUIEmbeddedMediaView *)self _tearDownMoviePlayer];

    [(SUUIEmbeddedMediaView *)self _sendPlaybackStateChanged];
  }
}

- (id)_newMoviePlayerControllerWithURL:(id)a3
{
  v4 = a3;
  v5 = SUUIMediaPlayerFramework();
  v6 = [objc_alloc(SUUIWeakLinkedClassForString(&cfstr_Mpmovieplayerc.isa v5))];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = SUUIMediaPlayerFramework();
  [v7 addObserver:self selector:sel__didExitFullscreen_ name:*SUUIWeakLinkedSymbolForString("MPMoviePlayerDidExitFullscreenNotification" object:{v8), v6}];
  v9 = SUUIMediaPlayerFramework();
  [v7 addObserver:self selector:sel__didFinishPlayback_ name:*SUUIWeakLinkedSymbolForString("MPMoviePlayerPlaybackDidFinishNotification" object:{v9), v6}];
  v10 = SUUIMediaPlayerFramework();
  [v7 addObserver:self selector:sel__playbackStateChanged_ name:*SUUIWeakLinkedSymbolForString("MPMoviePlayerPlaybackStateDidChangeNotification" object:{v10), v6}];

  return v6;
}

- (void)_sendPlaybackStateChanged
{
  v3 = [(SUUIEmbeddedMediaView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 mediaView:self playbackStateDidChange:{-[SUUIEmbeddedMediaView playbackState](self, "playbackState")}];
  }
}

- (CGSize)_sizeToFitImageSize:(CGSize)a3 bounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  v6 = a3.height;
  v7 = a3.width;
  if ([(SUUIEmbeddedMediaView *)self thumbnailContentMode:a3.width]== 1 && (v7 > width || v6 > height))
  {
    v9 = v6 * (width / v7);
    v6 = ceilf(v9);
    v7 = width;
  }

  v10 = v7;
  v11 = v6;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_tearDownMoviePlayer
{
  moviePlayer = self->_moviePlayer;
  if (moviePlayer)
  {
    [(MPMoviePlayerController *)moviePlayer stop];
    v4 = [(MPMoviePlayerController *)self->_moviePlayer view];
    [v4 removeFromSuperview];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    v5 = SUUIMediaPlayerFramework();
    [v8 removeObserver:self name:*SUUIWeakLinkedSymbolForString("MPMoviePlayerDidExitFullscreenNotification" object:{v5), self->_moviePlayer}];
    v6 = SUUIMediaPlayerFramework();
    [v8 removeObserver:self name:*SUUIWeakLinkedSymbolForString("MPMoviePlayerPlaybackDidFinishNotification" object:{v6), self->_moviePlayer}];
    v7 = self->_moviePlayer;
    self->_moviePlayer = 0;
  }
}

- (id)_thumbnailView
{
  thumbnailView = self->_thumbnailView;
  if (!thumbnailView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D755E8]);
    v5 = self->_thumbnailView;
    self->_thumbnailView = v4;

    v6 = self->_thumbnailView;
    v7 = [(SUUIEmbeddedMediaView *)self backgroundColor];
    [(UIImageView *)v6 setBackgroundColor:v7];

    [(UIImageView *)self->_thumbnailView setContentMode:1];
    [(SUUIEmbeddedMediaView *)self addSubview:self->_thumbnailView];
    thumbnailView = self->_thumbnailView;
  }

  return thumbnailView;
}

- (SUUIEmbeddedMediaViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end