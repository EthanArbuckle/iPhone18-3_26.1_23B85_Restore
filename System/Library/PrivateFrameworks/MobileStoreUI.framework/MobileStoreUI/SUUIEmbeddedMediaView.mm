@interface SUUIEmbeddedMediaView
- (CGSize)_sizeToFitImageSize:(CGSize)size bounds:(CGRect)bounds;
- (SUUIEmbeddedMediaViewDelegate)delegate;
- (id)_newMoviePlayerControllerWithURL:(id)l;
- (id)_thumbnailView;
- (int64_t)playbackState;
- (int64_t)thumbnailContentMode;
- (void)_didExitFullscreen:(id)fullscreen;
- (void)_didFinishPlayback:(id)playback;
- (void)_sendPlaybackStateChanged;
- (void)_tearDownMoviePlayer;
- (void)beginInlinePlaybackWithURL:(id)l;
- (void)beginPlaybackAnimated:(BOOL)animated;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)endPlaybackAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setMediaType:(int64_t)type;
- (void)setShowsThumbnailReflection:(BOOL)reflection;
- (void)setThumbnailContentMode:(int64_t)mode;
- (void)setThumbnailImage:(id)image;
@end

@implementation SUUIEmbeddedMediaView

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = SUUIMediaPlayerFramework();
  [defaultCenter removeObserver:self name:*SUUIWeakLinkedSymbolForString("MPMoviePlayerDidExitFullscreenNotification" object:{v4), 0}];
  v5 = SUUIMediaPlayerFramework();
  [defaultCenter removeObserver:self name:*SUUIWeakLinkedSymbolForString("MPMoviePlayerPlaybackDidFinishNotification" object:{v5), 0}];
  v6 = SUUIMediaPlayerFramework();
  [defaultCenter removeObserver:self name:*SUUIWeakLinkedSymbolForString("MPMoviePlayerPlaybackStateDidChangeNotification" object:{v6), 0}];

  v7.receiver = self;
  v7.super_class = SUUIEmbeddedMediaView;
  [(SUUIEmbeddedMediaView *)&v7 dealloc];
}

- (void)beginInlinePlaybackWithURL:(id)l
{
  lCopy = l;
  [(SUUIEmbeddedMediaView *)self _tearDownMoviePlayer];
  v5 = [(SUUIEmbeddedMediaView *)self _newMoviePlayerControllerWithURL:lCopy];

  moviePlayer = self->_moviePlayer;
  self->_moviePlayer = v5;

  self->_usingInlinePlayback = 1;
  view = [(MPMoviePlayerController *)self->_moviePlayer view];
  [(SUUIEmbeddedMediaView *)self bounds];
  [view setFrame:?];
  [(SUUIEmbeddedMediaView *)self addSubview:view];
}

- (void)beginPlaybackAnimated:(BOOL)animated
{
  animatedCopy = animated;
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
      view = [(MPMoviePlayerController *)self->_moviePlayer view];
      [(SUUIEmbeddedMediaView *)self bounds];
      [view setFrame:?];
      [(SUUIEmbeddedMediaView *)self addSubview:view];
      [(MPMoviePlayerController *)self->_moviePlayer setFullscreen:1 animated:animatedCopy];
    }
  }
}

- (void)endPlaybackAnimated:(BOOL)animated
{
  moviePlayer = self->_moviePlayer;
  if (moviePlayer)
  {
    [(MPMoviePlayerController *)moviePlayer stop];
    if (animated)
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
        view = [(MPMoviePlayerController *)self->_moviePlayer view];
        [(SUUIEmbeddedMediaView *)self sendSubviewToBack:view];

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
    playbackState = [result playbackState];
    if ((playbackState - 1) > 4)
    {
      return 0;
    }

    else
    {
      return qword_259FCC230[playbackState - 1];
    }
  }

  return result;
}

- (void)setMediaType:(int64_t)type
{
  if (self->_mediaType != type)
  {
    self->_mediaType = type;
    [(UIImageView *)self->_playerDecorationView removeFromSuperview];
    playerDecorationView = self->_playerDecorationView;
    self->_playerDecorationView = 0;

    [(SUUIEmbeddedMediaView *)self setNeedsLayout];
  }
}

- (void)setShowsThumbnailReflection:(BOOL)reflection
{
  if ([(SUUIEmbeddedMediaView *)self showsThumbnailReflection]!= reflection)
  {
    if (reflection)
    {
      v5 = objc_alloc(MEMORY[0x277D755E8]);
      image = [(UIImageView *)self->_thumbnailView image];
      v7 = [v5 initWithImage:image];
      thumbnailReflectionView = self->_thumbnailReflectionView;
      self->_thumbnailReflectionView = v7;

      [(UIImageView *)self->_thumbnailReflectionView setContentMode:[(UIImageView *)self->_thumbnailView contentMode]];
      layer = [(UIImageView *)self->_thumbnailReflectionView layer];
      CATransform3DMakeScale(&v11, -1.0, -1.0, 1.0);
      [layer setTransform:&v11];

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

- (void)setThumbnailContentMode:(int64_t)mode
{
  _thumbnailView = [(SUUIEmbeddedMediaView *)self _thumbnailView];
  [_thumbnailView setContentMode:mode];

  thumbnailReflectionView = self->_thumbnailReflectionView;

  [(UIImageView *)thumbnailReflectionView setContentMode:mode];
}

- (void)setThumbnailImage:(id)image
{
  imageCopy = image;
  image = [(UIImageView *)self->_thumbnailView image];

  if (image != imageCopy)
  {
    _thumbnailView = [(SUUIEmbeddedMediaView *)self _thumbnailView];
    [_thumbnailView setImage:imageCopy];
    [(UIImageView *)self->_thumbnailReflectionView setImage:imageCopy];
    [(SUUIEmbeddedMediaView *)self setNeedsLayout];
  }
}

- (int64_t)thumbnailContentMode
{
  _thumbnailView = [(SUUIEmbeddedMediaView *)self _thumbnailView];
  contentMode = [_thumbnailView contentMode];

  return contentMode;
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

  thumbnailContentMode = [(SUUIEmbeddedMediaView *)self thumbnailContentMode];
  thumbnailReflectionView = self->_thumbnailReflectionView;
  if (thumbnailReflectionView)
  {
    image = [(UIImageView *)thumbnailReflectionView image];
    [image size];
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
    if (thumbnailContentMode == 6)
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

  _thumbnailView = [(SUUIEmbeddedMediaView *)self _thumbnailView];
  [_thumbnailView frame];
  image2 = [_thumbnailView image];
  [image2 size];
  [SUUIEmbeddedMediaView _sizeToFitImageSize:"_sizeToFitImageSize:bounds:" bounds:?];
  v30 = v29;
  v32 = v31;

  v33 = (v9 - v30) * 0.5;
  v34 = floorf(v33);
  v35 = v34;
  if (thumbnailContentMode == 6)
  {
    v36 = v10 - v32;
  }

  else
  {
    v36 = MaxY;
  }

  [_thumbnailView setFrame:{v34, v36, v30, v32}];
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
    image3 = [_thumbnailView image];

    v48 = (v9 - v44) * 0.5;
    v49 = floorf(v48);
    v50 = (v30 - v44) * 0.5;
    v51 = v35 + floorf(v50);
    if (image3)
    {
      v52 = v32;
    }

    else
    {
      v52 = v11;
    }

    if (image3)
    {
      v49 = v51;
    }

    v53 = (v52 - v46) * 0.5;
    [(UIImageView *)self->_playerDecorationView setFrame:v49, v36 + floorf(v53), v44, v46];
    thumbnailView = self->_thumbnailView;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UIImageView *)thumbnailView setBackgroundColor:blackColor];
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if (self->_mediaType != 2)
  {
    [(UIImageView *)self->_thumbnailView setBackgroundColor:colorCopy];
  }

  v5.receiver = self;
  v5.super_class = SUUIEmbeddedMediaView;
  [(SUUIEmbeddedMediaView *)&v5 setBackgroundColor:colorCopy];
}

- (void)didMoveToWindow
{
  window = [(SUUIEmbeddedMediaView *)self window];

  if (!window)
  {

    [(SUUIEmbeddedMediaView *)self endPlaybackAnimated:0];
  }
}

- (void)_didExitFullscreen:(id)fullscreen
{
  if (!self->_usingInlinePlayback)
  {
    [(SUUIEmbeddedMediaView *)self _tearDownMoviePlayer];

    [(SUUIEmbeddedMediaView *)self _sendPlaybackStateChanged];
  }
}

- (void)_didFinishPlayback:(id)playback
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

- (id)_newMoviePlayerControllerWithURL:(id)l
{
  lCopy = l;
  v5 = SUUIMediaPlayerFramework();
  v6 = [objc_alloc(SUUIWeakLinkedClassForString(&cfstr_Mpmovieplayerc.isa v5))];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = SUUIMediaPlayerFramework();
  [defaultCenter addObserver:self selector:sel__didExitFullscreen_ name:*SUUIWeakLinkedSymbolForString("MPMoviePlayerDidExitFullscreenNotification" object:{v8), v6}];
  v9 = SUUIMediaPlayerFramework();
  [defaultCenter addObserver:self selector:sel__didFinishPlayback_ name:*SUUIWeakLinkedSymbolForString("MPMoviePlayerPlaybackDidFinishNotification" object:{v9), v6}];
  v10 = SUUIMediaPlayerFramework();
  [defaultCenter addObserver:self selector:sel__playbackStateChanged_ name:*SUUIWeakLinkedSymbolForString("MPMoviePlayerPlaybackStateDidChangeNotification" object:{v10), v6}];

  return v6;
}

- (void)_sendPlaybackStateChanged
{
  delegate = [(SUUIEmbeddedMediaView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate mediaView:self playbackStateDidChange:{-[SUUIEmbeddedMediaView playbackState](self, "playbackState")}];
  }
}

- (CGSize)_sizeToFitImageSize:(CGSize)size bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  v6 = size.height;
  v7 = size.width;
  if ([(SUUIEmbeddedMediaView *)self thumbnailContentMode:size.width]== 1 && (v7 > width || v6 > height))
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
    view = [(MPMoviePlayerController *)self->_moviePlayer view];
    [view removeFromSuperview];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v5 = SUUIMediaPlayerFramework();
    [defaultCenter removeObserver:self name:*SUUIWeakLinkedSymbolForString("MPMoviePlayerDidExitFullscreenNotification" object:{v5), self->_moviePlayer}];
    v6 = SUUIMediaPlayerFramework();
    [defaultCenter removeObserver:self name:*SUUIWeakLinkedSymbolForString("MPMoviePlayerPlaybackDidFinishNotification" object:{v6), self->_moviePlayer}];
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
    backgroundColor = [(SUUIEmbeddedMediaView *)self backgroundColor];
    [(UIImageView *)v6 setBackgroundColor:backgroundColor];

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