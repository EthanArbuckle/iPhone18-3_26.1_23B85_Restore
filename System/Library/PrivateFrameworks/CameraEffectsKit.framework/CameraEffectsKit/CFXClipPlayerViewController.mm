@interface CFXClipPlayerViewController
- (JFXAVPlayerViewer)avPlayerView;
- (void)displayCompositionUpdateLoadingView:(id)view;
- (void)prepareForSegue:(id)segue sender:(id)sender;
- (void)reloadClipAndSeekToStart:(BOOL)start;
- (void)setClip:(id)clip;
- (void)updateCompositionForEffectChange;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CFXClipPlayerViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  clip = [(CFXClipPlayerViewController *)self clip];
  if (clip)
  {
    v6 = clip;
    clipDataSource = [(CFXClipPlayerViewController *)self clipDataSource];
    clip2 = [clipDataSource clip];
    clip3 = [(CFXClipPlayerViewController *)self clip];

    if (clip2 != clip3)
    {
      [(CFXClipPlayerViewController *)self reloadClip];
    }
  }

  v10.receiver = self;
  v10.super_class = CFXClipPlayerViewController;
  [(CFXClipPlayerViewController *)&v10 viewWillAppear:appearCopy];
}

- (void)reloadClipAndSeekToStart:(BOOL)start
{
  startCopy = start;
  clipDataSource = [(CFXClipPlayerViewController *)self clipDataSource];

  clip = [(CFXClipPlayerViewController *)self clip];
  v7 = clip;
  if (clipDataSource)
  {
    clipDataSource2 = [(CFXClipPlayerViewController *)self clipDataSource];
    [clipDataSource2 setClip:v7];

    [(JFXCompositionPlayerViewController *)self setNeedsCompositionUpdate];
    if (startCopy)
    {

      [(JFXCompositionPlayerViewController *)self seekToTime:0];
    }
  }

  else
  {

    if (v7)
    {
      v9 = [CFXClipCompositionDataSource alloc];
      clip2 = [(CFXClipPlayerViewController *)self clip];
      v11 = [(CFXClipCompositionDataSource *)v9 initWithClip:clip2];
      [(CFXClipPlayerViewController *)self setClipDataSource:v11];

      clipDataSource3 = [(CFXClipPlayerViewController *)self clipDataSource];
      [(JFXCompositionPlayerViewController *)self setClipsDataSource:clipDataSource3];
    }
  }
}

- (void)setClip:(id)clip
{
  objc_storeStrong(&self->_clip, clip);
  if (clip)
  {

    [(CFXClipPlayerViewController *)self reloadClip];
  }

  else
  {
    clipDataSource = [(CFXClipPlayerViewController *)self clipDataSource];
    [clipDataSource setClip:0];

    [(CFXClipPlayerViewController *)self setClipDataSource:0];

    [(JFXCompositionPlayerViewController *)self setClipsDataSource:0];
  }
}

- (void)updateCompositionForEffectChange
{
  clip = [(CFXClipPlayerViewController *)self clip];
  [(JFXCompositionPlayerViewController *)self setNeedsCompositionUpdateForClip:clip];
}

- (void)displayCompositionUpdateLoadingView:(id)view
{
  viewCopy = view;
  placeHolderView = [(JFXCompositionPlayerViewController *)self placeHolderView];
  if (!placeHolderView || (v5 = placeHolderView, -[JFXCompositionPlayerViewController placeHolderView](self, "placeHolderView"), v6 = objc_claimAutoreleasedReturnValue(), [v6 superview], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5, !v7))
  {
    placeholderContainerView = [(CFXClipPlayerViewController *)self placeholderContainerView];

    if (placeholderContainerView)
    {
      [viewCopy removeFromSuperview];
      [viewCopy setTranslatesAutoresizingMaskIntoConstraints:1];
      [(JFXCompositionPlayerViewController *)self setPlaceHolderView:viewCopy];
      playerContainerView = [(CFXClipPlayerViewController *)self playerContainerView];
      [playerContainerView bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      placeHolderView2 = [(JFXCompositionPlayerViewController *)self placeHolderView];
      [placeHolderView2 setFrame:{v11, v13, v15, v17}];

      placeHolderView3 = [(JFXCompositionPlayerViewController *)self placeHolderView];
      [placeHolderView3 setAutoresizingMask:18];
    }
  }
}

- (void)prepareForSegue:(id)segue sender:(id)sender
{
  segueCopy = segue;
  identifier = [segueCopy identifier];
  v6 = [identifier isEqualToString:@"clipPlayer_embedAVPlayerViewer"];

  if (v6)
  {
    destinationViewController = [segueCopy destinationViewController];
    v8 = [destinationViewController conformsToProtocol:&unk_285596B10];

    if (v8)
    {
      destinationViewController2 = [segueCopy destinationViewController];
      [(CFXClipPlayerViewController *)self setAvPlayerView:destinationViewController2];
    }
  }
}

- (JFXAVPlayerViewer)avPlayerView
{
  WeakRetained = objc_loadWeakRetained(&self->_avPlayerView);

  return WeakRetained;
}

@end