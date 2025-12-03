@interface CAMPanoramaViewController
- (CAMPanoramaViewController)initWithCaptureController:(id)controller layoutStyle:(int64_t)style;
- (CAMPanoramaViewController)initWithCoder:(id)coder;
- (void)_handleDirectionChange:(id)change;
- (void)finishedProcessingPanorama;
- (void)loadView;
- (void)panoramaConfigurationDidChangeWithDirection:(int64_t)direction;
- (void)panoramaView:(id)view didUpdateInstruction:(int64_t)instruction;
- (void)panoramaViewDidRequestSynchronizedDirectionChange:(id)change toDirection:(int64_t)direction;
- (void)setDevicePosition:(int64_t)position;
- (void)setLayoutStyle:(int64_t)style;
- (void)startPainting;
- (void)startProcessingPanorama;
- (void)stopPainting;
- (void)updateWithStatus:(id)status;
@end

@implementation CAMPanoramaViewController

- (CAMPanoramaViewController)initWithCaptureController:(id)controller layoutStyle:(int64_t)style
{
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = CAMPanoramaViewController;
  v8 = [(CAMPanoramaViewController *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->__captureController, controller);
    v9->__captureOrientation = 1;
    v10 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v9 action:sel__handleDirectionChange_];
    directionChangeGestureRecognizer = v9->__directionChangeGestureRecognizer;
    v9->__directionChangeGestureRecognizer = v10;

    v9->_layoutStyle = style;
    [controllerCopy setPanoramaChangeDelegate:v9];
    v12 = v9;
  }

  return v9;
}

- (CAMPanoramaViewController)initWithCoder:(id)coder
{
  [(CAMPanoramaViewController *)self doesNotRecognizeSelector:a2];

  return [(CAMPanoramaViewController *)self initWithCaptureController:0 layoutStyle:0];
}

- (void)setLayoutStyle:(int64_t)style
{
  if (self->_layoutStyle != style)
  {
    self->_layoutStyle = style;
    panoramaView = [(CAMPanoramaViewController *)self panoramaView];
    [panoramaView setLayoutStyle:style];
  }
}

- (void)loadView
{
  layoutStyle = [(CAMPanoramaViewController *)self layoutStyle];
  _captureController = [(CAMPanoramaViewController *)self _captureController];
  panoramaPreviewView = [_captureController panoramaPreviewView];
  v5 = [[CAMPanoramaView alloc] initWithPanoramaPreviewView:panoramaPreviewView layoutStyle:layoutStyle];
  [(CAMPanoramaView *)v5 setDevicePosition:[(CAMPanoramaViewController *)self devicePosition]];
  [(CAMPanoramaView *)v5 setDelegate:self];
  _directionChangeGestureRecognizer = [(CAMPanoramaViewController *)self _directionChangeGestureRecognizer];
  [(CAMPanoramaView *)v5 addGestureRecognizer:_directionChangeGestureRecognizer];
  [(CAMPanoramaViewController *)self setView:v5];
}

- (void)setDevicePosition:(int64_t)position
{
  if (self->_devicePosition != position)
  {
    self->_devicePosition = position;
    panoramaView = [(CAMPanoramaViewController *)self panoramaView];
    [panoramaView setDevicePosition:{-[CAMPanoramaViewController devicePosition](self, "devicePosition")}];
  }
}

- (void)startPainting
{
  panoramaView = [(CAMPanoramaViewController *)self panoramaView];
  [panoramaView startPainting];
  [(CAMPanoramaViewController *)self _setPainting:1];
}

- (void)stopPainting
{
  panoramaView = [(CAMPanoramaViewController *)self panoramaView];
  [panoramaView stopPainting];
  [(CAMPanoramaViewController *)self _setPainting:0];
}

- (void)startProcessingPanorama
{
  panoramaView = [(CAMPanoramaViewController *)self panoramaView];
  [panoramaView startProcessingPanorama];
}

- (void)finishedProcessingPanorama
{
  panoramaView = [(CAMPanoramaViewController *)self panoramaView];
  [panoramaView finishedProcessingPanorama];
}

- (void)_handleDirectionChange:(id)change
{
  _captureController = [(CAMPanoramaViewController *)self _captureController];
  isCapturingPanorama = [_captureController isCapturingPanorama];

  if ((isCapturingPanorama & 1) == 0)
  {
    panoramaView = [(CAMPanoramaViewController *)self panoramaView];
    direction = [panoramaView direction];
    if (direction)
    {
      v8 = 2;
      if (direction != 1)
      {
        v8 = 0;
      }

      if (direction == 2)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }
    }

    else
    {
      v10 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "Changing panorama direction but the current direction is unknown!", v11, 2u);
      }

      v9 = 1;
    }

    [panoramaView setDirection:v9 animated:1];
  }
}

- (void)panoramaViewDidRequestSynchronizedDirectionChange:(id)change toDirection:(int64_t)direction
{
  _captureController = [(CAMPanoramaViewController *)self _captureController];
  [_captureController changeToPanoramaDirection:direction];
}

- (void)panoramaView:(id)view didUpdateInstruction:(int64_t)instruction
{
  analyticsCaptureEvent = [(CAMPanoramaViewController *)self analyticsCaptureEvent];
  if (analyticsCaptureEvent)
  {
    v6 = analyticsCaptureEvent;
    [analyticsCaptureEvent populatePanoramaInstruction:instruction];
    analyticsCaptureEvent = v6;
  }
}

- (void)updateWithStatus:(id)status
{
  statusCopy = status;
  panoramaView = [(CAMPanoramaViewController *)self panoramaView];
  [panoramaView updatePaintingWithStatus:statusCopy];
}

- (void)panoramaConfigurationDidChangeWithDirection:(int64_t)direction
{
  if (direction)
  {
    panoramaView = [(CAMPanoramaViewController *)self panoramaView];
    [panoramaView setDirection:direction];
  }
}

@end