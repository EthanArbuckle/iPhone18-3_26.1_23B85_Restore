@interface CFXClipPlayerViewController
- (JFXAVPlayerViewer)avPlayerView;
- (void)displayCompositionUpdateLoadingView:(id)a3;
- (void)prepareForSegue:(id)a3 sender:(id)a4;
- (void)reloadClipAndSeekToStart:(BOOL)a3;
- (void)setClip:(id)a3;
- (void)updateCompositionForEffectChange;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CFXClipPlayerViewController

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(CFXClipPlayerViewController *)self clip];
  if (v5)
  {
    v6 = v5;
    v7 = [(CFXClipPlayerViewController *)self clipDataSource];
    v8 = [v7 clip];
    v9 = [(CFXClipPlayerViewController *)self clip];

    if (v8 != v9)
    {
      [(CFXClipPlayerViewController *)self reloadClip];
    }
  }

  v10.receiver = self;
  v10.super_class = CFXClipPlayerViewController;
  [(CFXClipPlayerViewController *)&v10 viewWillAppear:v3];
}

- (void)reloadClipAndSeekToStart:(BOOL)a3
{
  v3 = a3;
  v5 = [(CFXClipPlayerViewController *)self clipDataSource];

  v6 = [(CFXClipPlayerViewController *)self clip];
  v7 = v6;
  if (v5)
  {
    v8 = [(CFXClipPlayerViewController *)self clipDataSource];
    [v8 setClip:v7];

    [(JFXCompositionPlayerViewController *)self setNeedsCompositionUpdate];
    if (v3)
    {

      [(JFXCompositionPlayerViewController *)self seekToTime:0];
    }
  }

  else
  {

    if (v7)
    {
      v9 = [CFXClipCompositionDataSource alloc];
      v10 = [(CFXClipPlayerViewController *)self clip];
      v11 = [(CFXClipCompositionDataSource *)v9 initWithClip:v10];
      [(CFXClipPlayerViewController *)self setClipDataSource:v11];

      v12 = [(CFXClipPlayerViewController *)self clipDataSource];
      [(JFXCompositionPlayerViewController *)self setClipsDataSource:v12];
    }
  }
}

- (void)setClip:(id)a3
{
  objc_storeStrong(&self->_clip, a3);
  if (a3)
  {

    [(CFXClipPlayerViewController *)self reloadClip];
  }

  else
  {
    v5 = [(CFXClipPlayerViewController *)self clipDataSource];
    [v5 setClip:0];

    [(CFXClipPlayerViewController *)self setClipDataSource:0];

    [(JFXCompositionPlayerViewController *)self setClipsDataSource:0];
  }
}

- (void)updateCompositionForEffectChange
{
  v3 = [(CFXClipPlayerViewController *)self clip];
  [(JFXCompositionPlayerViewController *)self setNeedsCompositionUpdateForClip:v3];
}

- (void)displayCompositionUpdateLoadingView:(id)a3
{
  v20 = a3;
  v4 = [(JFXCompositionPlayerViewController *)self placeHolderView];
  if (!v4 || (v5 = v4, -[JFXCompositionPlayerViewController placeHolderView](self, "placeHolderView"), v6 = objc_claimAutoreleasedReturnValue(), [v6 superview], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5, !v7))
  {
    v8 = [(CFXClipPlayerViewController *)self placeholderContainerView];

    if (v8)
    {
      [v20 removeFromSuperview];
      [v20 setTranslatesAutoresizingMaskIntoConstraints:1];
      [(JFXCompositionPlayerViewController *)self setPlaceHolderView:v20];
      v9 = [(CFXClipPlayerViewController *)self playerContainerView];
      [v9 bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = [(JFXCompositionPlayerViewController *)self placeHolderView];
      [v18 setFrame:{v11, v13, v15, v17}];

      v19 = [(JFXCompositionPlayerViewController *)self placeHolderView];
      [v19 setAutoresizingMask:18];
    }
  }
}

- (void)prepareForSegue:(id)a3 sender:(id)a4
{
  v10 = a3;
  v5 = [v10 identifier];
  v6 = [v5 isEqualToString:@"clipPlayer_embedAVPlayerViewer"];

  if (v6)
  {
    v7 = [v10 destinationViewController];
    v8 = [v7 conformsToProtocol:&unk_285596B10];

    if (v8)
    {
      v9 = [v10 destinationViewController];
      [(CFXClipPlayerViewController *)self setAvPlayerView:v9];
    }
  }
}

- (JFXAVPlayerViewer)avPlayerView
{
  WeakRetained = objc_loadWeakRetained(&self->_avPlayerView);

  return WeakRetained;
}

@end