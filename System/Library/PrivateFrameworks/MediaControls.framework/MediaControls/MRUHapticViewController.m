@interface MRUHapticViewController
- (MRUHapticViewController)initWithContext:(unint64_t)a3 nowPlayingController:(id)a4;
- (void)artworkView:(id)a3 didChangeArtworkImage:(id)a4;
- (void)controller:(id)a3 didResolveStatus:(unsigned int)a4;
- (void)loadView;
- (void)setNowPlayingController:(id)a3;
- (void)setOnScreen:(BOOL)a3;
- (void)updateNowPlayingInfo;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation MRUHapticViewController

- (MRUHapticViewController)initWithContext:(unint64_t)a3 nowPlayingController:(id)a4
{
  v10.receiver = self;
  v10.super_class = MRUHapticViewController;
  v5 = a4;
  v6 = [(MRUHapticViewController *)&v10 init];
  v6->_context = a3;
  [(MRUHapticViewController *)v6 setNowPlayingController:v5, v10.receiver, v10.super_class];

  v7 = objc_alloc_init(MRUHapticController);
  hapticController = v6->_hapticController;
  v6->_hapticController = v7;

  return v6;
}

- (void)loadView
{
  v3 = [MRUHapticView alloc];
  v4 = [(MRUHapticView *)v3 initWithContext:self->_context frame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(MRUHapticViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = MRUHapticViewController;
  [(MRUHapticViewController *)&v6 viewDidLoad];
  [(MRUHapticController *)self->_hapticController addObserver:self];
  v3 = [(MRUHapticViewController *)self view];
  [v3 setDelegate:self];

  v4 = [(MRUHapticController *)self->_hapticController hapticStatus];
  v5 = [(MRUHapticViewController *)self view];
  [v5 setHapticStatus:v4];

  [(MRUHapticViewController *)self updateNowPlayingInfo];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MRUHapticViewController;
  [(MRUHapticViewController *)&v4 viewWillAppear:a3];
  self->_hasAppeared = 1;
  [(MRUHapticViewController *)self updateVisibility];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MRUHapticViewController;
  [(MRUHapticViewController *)&v4 viewWillDisappear:a3];
  self->_hasAppeared = 0;
  [(MRUHapticViewController *)self updateVisibility];
}

- (void)setOnScreen:(BOOL)a3
{
  if (self->_onScreen != a3)
  {
    self->_onScreen = a3;
    [(MRUHapticViewController *)self updateVisibility];
  }
}

- (void)setNowPlayingController:(id)a3
{
  v4 = a3;
  [(MRUNowPlayingController *)self->_nowPlayingController removeObserver:self];
  nowPlayingController = self->_nowPlayingController;
  self->_nowPlayingController = v4;
  v6 = v4;

  [(MRUNowPlayingController *)v6 addObserver:self];
}

- (void)updateNowPlayingInfo
{
  v3 = [(MRUNowPlayingController *)self->_nowPlayingController metadataController];
  v12 = [v3 nowPlayingInfo];

  v4 = [v12 internationalStandardRecordingCode];

  if (v4)
  {
    hapticController = self->_hapticController;
    v6 = [v12 internationalStandardRecordingCode];
    [(MRUHapticController *)hapticController setMediaCode:v6 treatAsAdamID:0];
  }

  else
  {
    v7 = [v12 adamID];
    v8 = [MEMORY[0x1E696AD98] numberWithLong:0];
    v9 = [v7 isEqualToNumber:v8];

    v10 = self->_hapticController;
    if (v9)
    {
      [(MRUHapticController *)v10 setMediaCode:0 treatAsAdamID:0];
      goto LABEL_7;
    }

    v6 = [v12 adamID];
    v11 = [v6 stringValue];
    [(MRUHapticController *)v10 setMediaCode:v11 treatAsAdamID:1];
  }

LABEL_7:
}

- (void)controller:(id)a3 didResolveStatus:(unsigned int)a4
{
  v4 = *&a4;
  v12 = *MEMORY[0x1E69E9840];
  v6 = MCLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEBUG, "[%@] hapticController didResolveStatus: %u", &v8, 0x12u);
  }

  v7 = [(MRUHapticViewController *)self view];
  [v7 setHapticStatus:v4];
}

- (void)artworkView:(id)a3 didChangeArtworkImage:(id)a4
{
  v5 = a4;
  v6 = [(MRUHapticViewController *)self view];
  [v6 setArtworkImage:v5];
}

@end