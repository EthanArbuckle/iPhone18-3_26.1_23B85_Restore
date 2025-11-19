@interface BTShareAudioConfirmViewController
- (void)_updateDeviceVisual:(id)a3;
- (void)eventCancel:(id)a3;
- (void)eventPermanentButton:(id)a3;
- (void)eventTemporarilyShareButton:(id)a3;
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

- (void)eventTemporarilyShareButton:(id)a3
{
  v5 = a3;
  if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [BTShareAudioConfirmViewController eventTemporarilyShareButton:];
  }

  v4 = [(BTShareAudioViewController *)self->super._mainController shareAudioSession];
  [v4 userConfirmed:0];
}

- (void)eventPermanentButton:(id)a3
{
  v5 = a3;
  if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [BTShareAudioConfirmViewController eventPermanentButton:];
  }

  v4 = [(BTShareAudioViewController *)self->super._mainController shareAudioSession];
  [v4 userConfirmed:1];
}

- (void)eventCancel:(id)a3
{
  v4 = a3;
  if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [BTShareAudioConfirmViewController eventCancel:];
  }

  [(BTShareAudioViewController *)self->super._mainController reportUserCancelled];
}

- (void)_updateDeviceVisual:(id)a3
{
  v12 = [(BTShareAudioViewController *)self->super._mainController _moviePathForPID:self->_colorCode colorCode:*(&self->super._viewActive + 1)];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-Loop", v12];
  v5 = [(BTShareAudioViewController *)self->super._mainController mainBundle];
  v6 = [v5 pathForResource:v4 ofType:@"mov"];

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
      v10 = [(BTShareAudioViewController *)self->super._mainController mainBundle];
      v11 = [v9 imageNamed:@"ShareAudioAirPods" inBundle:v10 compatibleWithTraitCollection:0];
      p_productImageView = &self->_shareImageView;
      [(UIImageView *)*p_productImageView setImage:v11];
    }

    [(UIImageView *)*p_productImageView setHidden:0];
  }
}

@end