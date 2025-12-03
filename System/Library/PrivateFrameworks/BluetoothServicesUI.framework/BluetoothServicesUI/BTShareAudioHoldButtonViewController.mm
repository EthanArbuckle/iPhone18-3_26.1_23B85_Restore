@interface BTShareAudioHoldButtonViewController
- (void)_updateDeviceVisual:(id)visual;
- (void)eventCancel:(id)cancel;
- (void)viewDidLayoutSubviews;
@end

@implementation BTShareAudioHoldButtonViewController

void __55__BTShareAudioHoldButtonViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  [*(a1 + 32) invalidate];
  v7 = *(a1 + 40);
  v6 = (a1 + 40);
  if (*(v7 + 1016) == 1)
  {
    v8 = [v9 assetBundlePath];
    if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
    {
      __55__BTShareAudioHoldButtonViewController_viewWillAppear___block_invoke_cold_1(v6);
    }

    [*v6 _updateDeviceVisual:v8];
  }
}

- (void)viewDidLayoutSubviews
{
  v14[4] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = BTShareAudioHoldButtonViewController;
  [(BTShareAudioHoldButtonViewController *)&v13 viewDidLayoutSubviews];
  layer = [(UIView *)self->_productMovieContainerView layer];
  mask = [layer mask];
  if (mask)
  {
    layer2 = mask;
LABEL_5:

    goto LABEL_6;
  }

  colorCode = self->_colorCode;

  if (colorCode == 8202)
  {
    layer = [MEMORY[0x277CD9EB0] layer];
    [(UIView *)self->_productMovieContainerView bounds];
    [layer setFrame:?];
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.0];
    v14[0] = [v7 CGColor];
    v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:1.0];
    v14[1] = [v8 CGColor];
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:1.0];
    v14[2] = [v9 CGColor];
    v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.0];
    v14[3] = [v10 CGColor];
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];
    [layer setColors:v11];

    [layer setLocations:&unk_2853D58C8];
    [layer setStartPoint:{0.5, 0.0}];
    [layer setEndPoint:{0.5, 1.0}];
    layer2 = [(UIView *)self->_productMovieContainerView layer];
    [layer2 setMask:layer];
    goto LABEL_5;
  }

LABEL_6:
  v12 = *MEMORY[0x277D85DE8];
}

- (void)eventCancel:(id)cancel
{
  cancelCopy = cancel;
  if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [BTShareAudioHoldButtonViewController eventCancel:];
  }

  [(BTShareAudioViewController *)self->super._mainController reportUserCancelled];
}

- (void)_updateDeviceVisual:(id)visual
{
  v12 = [(BTShareAudioViewController *)self->super._mainController _moviePathForPID:self->_colorCode colorCode:*(&self->super._viewActive + 1)];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-Hold", v12];
  mainBundle = [(BTShareAudioViewController *)self->super._mainController mainBundle];
  v6 = [mainBundle pathForResource:v4 ofType:@"mov"];

  if (v6)
  {
    if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
    {
      [BTShareAudioHoldButtonViewController _updateDeviceVisual:];
    }

    [(BTMediaPlayerView *)self->_productMovieView startMovieLoopWithPath:v6];
    [(BTMediaPlayerView *)self->_productMovieView setHidden:0];
  }

  else
  {
    v7 = [(BTShareAudioViewController *)self->super._mainController _imageForPID:self->_colorCode colorCode:*(&self->super._viewActive + 1)];
    if (v7)
    {
      if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
      {
        [(BTShareAudioHoldButtonViewController *)&self->_colorCode _updateDeviceVisual:?];
      }

      p_productImageView = &self->_productImageView;
      [(UIImageView *)*p_productImageView setImage:v7];
    }

    else
    {
      if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
      {
        [BTShareAudioHoldButtonViewController _updateDeviceVisual:];
      }

      [(UIImageView *)self->_productImageView setHidden:1];
      v9 = MEMORY[0x277D755B8];
      mainBundle2 = [(BTShareAudioViewController *)self->super._mainController mainBundle];
      v11 = [v9 imageNamed:@"ShareAudioAirPods" inBundle:mainBundle2 compatibleWithTraitCollection:0];
      p_productImageView = &self->_shareImageView;
      [(UIImageView *)*p_productImageView setImage:v11];
    }

    [(UIImageView *)*p_productImageView setHidden:0];
  }
}

@end