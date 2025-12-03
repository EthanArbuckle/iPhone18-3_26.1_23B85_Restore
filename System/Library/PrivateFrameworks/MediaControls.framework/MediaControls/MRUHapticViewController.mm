@interface MRUHapticViewController
- (MRUHapticViewController)initWithContext:(unint64_t)context nowPlayingController:(id)controller;
- (void)artworkView:(id)view didChangeArtworkImage:(id)image;
- (void)controller:(id)controller didResolveStatus:(unsigned int)status;
- (void)loadView;
- (void)setNowPlayingController:(id)controller;
- (void)setOnScreen:(BOOL)screen;
- (void)updateNowPlayingInfo;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MRUHapticViewController

- (MRUHapticViewController)initWithContext:(unint64_t)context nowPlayingController:(id)controller
{
  v10.receiver = self;
  v10.super_class = MRUHapticViewController;
  controllerCopy = controller;
  v6 = [(MRUHapticViewController *)&v10 init];
  v6->_context = context;
  [(MRUHapticViewController *)v6 setNowPlayingController:controllerCopy, v10.receiver, v10.super_class];

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
  view = [(MRUHapticViewController *)self view];
  [view setDelegate:self];

  hapticStatus = [(MRUHapticController *)self->_hapticController hapticStatus];
  view2 = [(MRUHapticViewController *)self view];
  [view2 setHapticStatus:hapticStatus];

  [(MRUHapticViewController *)self updateNowPlayingInfo];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MRUHapticViewController;
  [(MRUHapticViewController *)&v4 viewWillAppear:appear];
  self->_hasAppeared = 1;
  [(MRUHapticViewController *)self updateVisibility];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = MRUHapticViewController;
  [(MRUHapticViewController *)&v4 viewWillDisappear:disappear];
  self->_hasAppeared = 0;
  [(MRUHapticViewController *)self updateVisibility];
}

- (void)setOnScreen:(BOOL)screen
{
  if (self->_onScreen != screen)
  {
    self->_onScreen = screen;
    [(MRUHapticViewController *)self updateVisibility];
  }
}

- (void)setNowPlayingController:(id)controller
{
  controllerCopy = controller;
  [(MRUNowPlayingController *)self->_nowPlayingController removeObserver:self];
  nowPlayingController = self->_nowPlayingController;
  self->_nowPlayingController = controllerCopy;
  v6 = controllerCopy;

  [(MRUNowPlayingController *)v6 addObserver:self];
}

- (void)updateNowPlayingInfo
{
  metadataController = [(MRUNowPlayingController *)self->_nowPlayingController metadataController];
  nowPlayingInfo = [metadataController nowPlayingInfo];

  internationalStandardRecordingCode = [nowPlayingInfo internationalStandardRecordingCode];

  if (internationalStandardRecordingCode)
  {
    hapticController = self->_hapticController;
    internationalStandardRecordingCode2 = [nowPlayingInfo internationalStandardRecordingCode];
    [(MRUHapticController *)hapticController setMediaCode:internationalStandardRecordingCode2 treatAsAdamID:0];
  }

  else
  {
    adamID = [nowPlayingInfo adamID];
    v8 = [MEMORY[0x1E696AD98] numberWithLong:0];
    v9 = [adamID isEqualToNumber:v8];

    v10 = self->_hapticController;
    if (v9)
    {
      [(MRUHapticController *)v10 setMediaCode:0 treatAsAdamID:0];
      goto LABEL_7;
    }

    internationalStandardRecordingCode2 = [nowPlayingInfo adamID];
    stringValue = [internationalStandardRecordingCode2 stringValue];
    [(MRUHapticController *)v10 setMediaCode:stringValue treatAsAdamID:1];
  }

LABEL_7:
}

- (void)controller:(id)controller didResolveStatus:(unsigned int)status
{
  v4 = *&status;
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

  view = [(MRUHapticViewController *)self view];
  [view setHapticStatus:v4];
}

- (void)artworkView:(id)view didChangeArtworkImage:(id)image
{
  imageCopy = image;
  view = [(MRUHapticViewController *)self view];
  [view setArtworkImage:imageCopy];
}

@end