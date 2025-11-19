@interface BTShareAudioViewController
+ (id)instantiateViewController;
- (id)_imageForPID:(unsigned int)a3 colorCode:(unsigned int)a4;
- (id)_moviePathForPID:(unsigned int)a3 colorCode:(unsigned int)a4;
- (void)_reportCompletion:(id)a3 mediaRouteID:(id)a4;
- (void)_sessionStart;
- (void)_showBringClose;
- (void)_showConfirm:(id)a3;
- (void)_showConnecting:(id)a3;
- (void)_showError:(id)a3;
- (void)_showPairInstructions:(id)a3;
- (void)_transitionToViewController:(id)a3 animate:(BOOL)a4;
- (void)reportError:(id)a3;
- (void)reportUserCancelled;
@end

@implementation BTShareAudioViewController

+ (id)instantiateViewController
{
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.BluetoothServicesUI"];
  v3 = [MEMORY[0x277D75AC8] storyboardWithName:@"ShareAudioiOS" bundle:v2];
  v4 = [v3 instantiateViewControllerWithIdentifier:@"Main"];
  [v4 setMainBundle:v2];
  [v4 setMainStoryboard:v3];
  [v4 setModalPresentationStyle:8];
  [v4 setModalTransitionStyle:2];
  v5 = [v4 view];
  if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    +[BTShareAudioViewController instantiateViewController];
  }

  return v4;
}

- (id)_imageForPID:(unsigned int)a3 colorCode:(unsigned int)a4
{
  v5 = a3 - 8201;
  if (a3 - 8201 < 0xA && ((0x28Du >> v5) & 1) != 0)
  {
    v6 = dword_241C0A958[v5];
    v7 = 1;
  }

  else
  {
    v7 = 0;
    if (a3 == 0x10000)
    {
      v6 = 8207;
    }

    else
    {
      v6 = a3;
    }
  }

  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"ShareAudioDetail-PID-%u-CL_%u", v6, v7];
  v9 = [MEMORY[0x277D755B8] imageNamed:v8 inBundle:self->_mainBundle compatibleWithTraitCollection:0];

  return v9;
}

- (id)_moviePathForPID:(unsigned int)a3 colorCode:(unsigned int)a4
{
  v4 = a3 - 8201;
  if (a3 == 0x10000)
  {
    v5 = 8207;
  }

  else
  {
    v5 = a3;
  }

  v6 = v4 > 0x1D;
  v7 = (1 << v4) & 0x2000628D;
  v8 = v6 || v7 == 0;
  v9 = !v8;
  if (v8)
  {
    v10 = v5;
  }

  else
  {
    v10 = a3;
  }

  v11 = [MEMORY[0x277D759A0] mainScreen];
  [v11 scale];
  v13 = v12;

  v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"ShareAudioDetail-PID-%u-CL_%u-%ux", v10, v9, v13];

  return v14;
}

- (void)_reportCompletion:(id)a3 mediaRouteID:(id)a4
{
  v12 = a3;
  v6 = a4;
  [(BTShareAudioSessionClient *)self->_shareAudioSession invalidate];
  shareAudioSession = self->_shareAudioSession;
  self->_shareAudioSession = 0;

  v8 = MEMORY[0x245CFB190](self->_completion);
  if (v8)
  {
    completion = self->_completion;
    self->_completion = 0;

    if (v6)
    {
      v10 = objc_alloc_init(BTSharedAudioDeviceInfo);
      [(BTSharedAudioDeviceInfo *)v10 setMediaRouteIdentifier:v6];
      (v8)[2](v8, v10, 0);
LABEL_4:

      goto LABEL_7;
    }

    if (!v12)
    {
      v11 = *MEMORY[0x277CCA590];
      v10 = NSErrorF();
      (v8)[2](v8, 0, v10);
      goto LABEL_4;
    }

    (v8[2])(v8, 0);
  }

LABEL_7:
}

- (void)reportError:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (gLogCategory_BTShareAudioViewController <= 90 && (gLogCategory_BTShareAudioViewController != -1 || (v5 = _LogCategory_Initialize(), v4 = v8, v5)))
  {
    [BTShareAudioViewController reportError:];
    v4 = v8;
    if (v8)
    {
      goto LABEL_5;
    }
  }

  else if (v4)
  {
LABEL_5:
    [(BTShareAudioViewController *)self _reportCompletion:v4 mediaRouteID:0];
    goto LABEL_8;
  }

  v6 = *MEMORY[0x277CCA590];
  v7 = NSErrorF();
  [(BTShareAudioViewController *)self _reportCompletion:v7 mediaRouteID:0];

LABEL_8:
}

- (void)reportUserCancelled
{
  if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [BTShareAudioViewController reportUserCancelled];
  }

  v3 = *MEMORY[0x277CCA590];
  v4 = NSErrorF();
  [(BTShareAudioViewController *)self _reportCompletion:v4 mediaRouteID:0];
}

- (void)_sessionStart
{
  v3 = objc_alloc_init(MEMORY[0x277CF3270]);
  objc_storeStrong(&self->_shareAudioSession, v3);
  if (GestaltGetDeviceClass() == 4)
  {
    [v3 setMode:2];
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__BTShareAudioViewController__sessionStart__block_invoke;
  v4[3] = &unk_278D12C20;
  v4[4] = v3;
  v4[5] = self;
  [v3 setProgressHandler:v4];
  [v3 activate];
}

void *__43__BTShareAudioViewController__sessionStart__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  result = *(a1 + 40);
  if (v4 == result[186])
  {
    return [result _sessionProgressEvent:a2 info:a3];
  }

  return result;
}

- (void)_showBringClose
{
  if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [BTShareAudioViewController _showBringClose];
  }

  v3 = [(UIStoryboard *)self->_mainStoryboard instantiateViewControllerWithIdentifier:@"BringClose"];
  [v3 setMainController:self];
  [(BTShareAudioViewController *)self _transitionToViewController:v3 animate:0];
}

- (void)_showError:(id)a3
{
  v5 = a3;
  if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [BTShareAudioViewController _showError:];
  }

  v4 = [(UIStoryboard *)self->_mainStoryboard instantiateViewControllerWithIdentifier:@"Error"];
  [v4 setMainController:self];
  [v4 setError:v5];
  [(BTShareAudioViewController *)self _transitionToViewController:v4 animate:0];
}

- (void)_showConfirm:(id)a3
{
  v5 = a3;
  if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [BTShareAudioViewController _showConfirm:];
  }

  v4 = [(UIStoryboard *)self->_mainStoryboard instantiateViewControllerWithIdentifier:@"Confirm"];
  [v4 setMainController:self];
  [v4 setColorCode:CFDictionaryGetInt64Ranged()];
  CFStringGetTypeID();
  [v4 setDeviceName:CFDictionaryGetTypedValue()];
  [v4 setProductID:CFDictionaryGetInt64Ranged()];
  [(BTShareAudioViewController *)self _transitionToViewController:v4 animate:0];
}

- (void)_showPairInstructions:(id)a3
{
  v5 = a3;
  if (gLogCategory_BTShareAudioViewController <= 30 && (gLogCategory_BTShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [BTShareAudioViewController _showPairInstructions:];
  }

  v4 = [(UIStoryboard *)self->_mainStoryboard instantiateViewControllerWithIdentifier:@"HoldButton"];
  [v4 setMainController:self];
  [v4 setProductID:CFDictionaryGetInt64Ranged()];
  [v4 setColorCode:CFDictionaryGetInt64Ranged()];
  [(BTShareAudioViewController *)self _transitionToViewController:v4 animate:0];
}

- (void)_showConnecting:(id)a3
{
  v5 = a3;
  v4 = self->_vcConnecting;
  if (!v4)
  {
    v4 = [(UIStoryboard *)self->_mainStoryboard instantiateViewControllerWithIdentifier:@"Connecting"];
    [(BTShareAudioBaseViewController *)v4 setMainController:self];
    objc_storeStrong(&self->_vcConnecting, v4);
  }

  [(BTShareAudioConnectingViewController *)v4 setColorCode:CFDictionaryGetInt64Ranged()];
  CFStringGetTypeID();
  [(BTShareAudioConnectingViewController *)v4 setDeviceName:CFDictionaryGetTypedValue()];
  [(BTShareAudioConnectingViewController *)v4 setProductID:CFDictionaryGetInt64Ranged()];
  [(BTShareAudioViewController *)self _transitionToViewController:v4 animate:0];
}

- (void)_transitionToViewController:(id)a3 animate:(BOOL)a4
{
  v4 = a4;
  v15 = a3;
  if (v4)
  {
    v6 = [MEMORY[0x277CDA000] animation];
    [v6 setDuration:0.5];
    [v6 setType:*MEMORY[0x277CDA928]];
    v7 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    [v6 setTimingFunction:v7];

    v8 = [(BTShareAudioViewController *)self view];
    v9 = [v8 layer];
    [v9 addAnimation:v6 forKey:0];

    v10 = [v15 view];
    v11 = [v10 layer];
    [v11 addAnimation:v6 forKey:0];
  }

  v12 = [(BTShareAudioViewController *)self viewControllers];
  v13 = [v12 containsObject:v15];

  if (v13)
  {
    v14 = [(BTShareAudioViewController *)self popToViewController:v15 animated:0];
  }

  else
  {
    [(BTShareAudioViewController *)self pushViewController:v15 animated:0];
  }
}

@end