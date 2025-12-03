@interface JFXAVPlayerViewController
- (CGSize)displaySize;
- (void)configureDisplayAttributesForColorSpace:(id)space;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation JFXAVPlayerViewController

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = JFXAVPlayerViewController;
  [(JFXAVPlayerViewController *)&v4 viewWillAppear:appear];
  [(JFXAVPlayerViewController *)self setShowAVControls:0];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = JFXAVPlayerViewController;
  [(JFXAVPlayerViewController *)&v6 viewDidLoad];
  showAVControls = [(JFXAVPlayerViewController *)self showAVControls];
  view = [(JFXAVPlayerViewController *)self view];
  [view setUserInteractionEnabled:showAVControls];

  [(JFXAVPlayerViewController *)self setShowsPlaybackControls:[(JFXAVPlayerViewController *)self showAVControls]];
  [(JFXAVPlayerViewController *)self setAllowsPictureInPicturePlayback:[(JFXAVPlayerViewController *)self showAVControls]];
  view2 = [(JFXAVPlayerViewController *)self view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(JFXAVPlayerViewController *)self setAllowsVideoFrameAnalysis:0];
}

- (CGSize)displaySize
{
  view = [(JFXAVPlayerViewController *)self view];
  [view bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)configureDisplayAttributesForColorSpace:(id)space
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (space)
  {
    v6 = *MEMORY[0x277CC4E30];
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(space, "jfx_getCVPixelFormatForExport")}];
    v7[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    [(JFXAVPlayerViewController *)self setPixelBufferAttributes:v5];
  }

  else
  {

    [(JFXAVPlayerViewController *)self setPixelBufferAttributes:0];
  }
}

@end