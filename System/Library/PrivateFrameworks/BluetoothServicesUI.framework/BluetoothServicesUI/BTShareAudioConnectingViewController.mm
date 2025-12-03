@interface BTShareAudioConnectingViewController
- (uint64_t)_updateForDeviceInfo;
- (void)_updateDeviceVisual:(id)visual;
- (void)_updateForDeviceInfo;
- (void)eventCancel:(id)cancel;
- (void)sessionProgressEvent:(int)event info:(id)info;
@end

@implementation BTShareAudioConnectingViewController

- (void)eventCancel:(id)cancel
{
  cancelCopy = cancel;
  if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [BTShareAudioConnectingViewController eventCancel:];
  }

  [(BTShareAudioViewController *)self->super._mainController reportUserCancelled];
}

- (void)sessionProgressEvent:(int)event info:(id)info
{
  infoCopy = info;
  if (event == 200 || event == 300 || event == 220)
  {
    v9 = infoCopy;
    [(BTShareAudioConnectingViewController *)self _updateForDeviceInfo];
    mainBundle = [(BTShareAudioViewController *)self->super._mainController mainBundle];
    v8 = CULocalizedStringEx();
    [(UIActivityIndicatorView *)self->_progressActivity setText:v8];

    infoCopy = v9;
  }
}

- (void)_updateForDeviceInfo
{
  v3 = self->_cancelButton;
  if (v3)
  {
    [(UILabel *)self->super._titleLabel setText:v3];
  }

  else
  {
    mainBundle = [(BTShareAudioViewController *)self->super._mainController mainBundle];
    if (self->_colorCode)
    {
      SFLocalizedNameForBluetoothProductID();
    }

    else
    {
      CULocalizedStringEx();
    }
    v5 = ;
    [(UILabel *)self->super._titleLabel setText:v5];
  }

  [(UILabel *)self->super._titleLabel setNumberOfLines:2];
  colorCode = self->_colorCode;
  if (colorCode)
  {
    if (colorCode != *(&self->super._viewActive + 1))
    {
      *(&self->super._viewActive + 1) = colorCode;
      if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
      {
        [(BTShareAudioConnectingViewController *)&self->_colorCode _updateForDeviceInfo];
      }

      v7 = objc_alloc_init(MEMORY[0x277D54C38]);
      [v7 setBluetoothProductID:LOWORD(self->_colorCode)];
      [v7 setColorCode:self->_productIDActive];
      [v7 setTimeoutSeconds:5.0];
      v8 = objc_alloc_init(MEMORY[0x277D54C30]);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __60__BTShareAudioConnectingViewController__updateForDeviceInfo__block_invoke;
      v9[3] = &unk_278D12C70;
      v9[4] = v8;
      v9[5] = self;
      [v8 getDeviceAssets:v7 completion:v9];
    }
  }

  else
  {
    [(BTShareAudioConnectingViewController *)self _updateDeviceVisual:0];
  }
}

void __60__BTShareAudioConnectingViewController__updateForDeviceInfo__block_invoke(uint64_t a1, void *a2, void *a3)
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
      __60__BTShareAudioConnectingViewController__updateForDeviceInfo__block_invoke_cold_1(v6);
    }

    [*v6 _updateDeviceVisual:v8];
  }
}

- (void)_updateDeviceVisual:(id)visual
{
  v12 = [(BTShareAudioViewController *)self->super._mainController _moviePathForPID:self->_colorCode colorCode:self->_productIDActive];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-Loop", v12];
  mainBundle = [(BTShareAudioViewController *)self->super._mainController mainBundle];
  v6 = [mainBundle pathForResource:v4 ofType:@"mov"];

  if (v6)
  {
    if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
    {
      [BTShareAudioConnectingViewController _updateDeviceVisual:];
    }

    [(UIImageView *)self->_productImageView startMovieLoopWithPath:v6];
    [(UIImageView *)self->_productImageView setHidden:0];
  }

  else
  {
    v7 = [(BTShareAudioViewController *)self->super._mainController _imageForPID:self->_colorCode colorCode:self->_productIDActive];
    if (v7)
    {
      if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
      {
        [(BTShareAudioConnectingViewController *)&self->_colorCode _updateDeviceVisual:?];
      }

      p_productID = &self->_productID;
      [*p_productID setImage:v7];
    }

    else
    {
      if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
      {
        [BTShareAudioConnectingViewController _updateDeviceVisual:];
      }

      v9 = MEMORY[0x277D755B8];
      mainBundle2 = [(BTShareAudioViewController *)self->super._mainController mainBundle];
      v11 = [v9 imageNamed:@"ShareAudioAirPods" inBundle:mainBundle2 compatibleWithTraitCollection:0];
      p_productID = &self->_productMovieView;
      [*p_productID setImage:v11];
    }

    [*p_productID setHidden:0];
  }
}

- (uint64_t)_updateForDeviceInfo
{
  v3 = *self;
  v4 = *(a2 + 1024);
  return LogPrintF();
}

@end