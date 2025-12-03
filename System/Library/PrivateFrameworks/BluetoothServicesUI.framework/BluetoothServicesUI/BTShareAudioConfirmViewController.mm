@interface BTShareAudioConfirmViewController
- (void)_updateDeviceVisual:(id)visual;
- (void)eventCancel:(id)cancel;
- (void)eventPermanentButton:(id)button;
- (void)eventTemporarilyShareButton:(id)button;
@end

@implementation BTShareAudioConfirmViewController

void __52__BTShareAudioConfirmViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2, void *a3)
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
      __52__BTShareAudioConfirmViewController_viewWillAppear___block_invoke_cold_1(v6);
    }

    [*v6 _updateDeviceVisual:v8];
  }
}

- (void)eventTemporarilyShareButton:(id)button
{
  buttonCopy = button;
  if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [BTShareAudioConfirmViewController eventTemporarilyShareButton:];
  }

  shareAudioSession = [(BTShareAudioViewController *)self->super._mainController shareAudioSession];
  [shareAudioSession userConfirmed:0];
}

- (void)eventPermanentButton:(id)button
{
  buttonCopy = button;
  if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [BTShareAudioConfirmViewController eventPermanentButton:];
  }

  shareAudioSession = [(BTShareAudioViewController *)self->super._mainController shareAudioSession];
  [shareAudioSession userConfirmed:1];
}

- (void)eventCancel:(id)cancel
{
  cancelCopy = cancel;
  if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [BTShareAudioConfirmViewController eventCancel:];
  }

  [(BTShareAudioViewController *)self->super._mainController reportUserCancelled];
}

- (void)_updateDeviceVisual:(id)visual
{
  v12 = [(BTShareAudioViewController *)self->super._mainController _moviePathForPID:self->_colorCode colorCode:*(&self->super._viewActive + 1)];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-Loop", v12];
  mainBundle = [(BTShareAudioViewController *)self->super._mainController mainBundle];
  v6 = [mainBundle pathForResource:v4 ofType:@"mov"];

  if (v6)
  {
    if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
    {
      [BTShareAudioConfirmViewController _updateDeviceVisual:];
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
        [(BTShareAudioConfirmViewController *)&self->_colorCode _updateDeviceVisual:?];
      }

      p_productImageView = &self->_productImageView;
      [(UIImageView *)*p_productImageView setImage:v7];
    }

    else
    {
      if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
      {
        [BTShareAudioConfirmViewController _updateDeviceVisual:];
      }

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