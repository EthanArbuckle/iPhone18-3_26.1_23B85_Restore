@interface MRCryptoPairingSessionBlockDelegate
- (void)pairingSession:(id)a3 didCompleteExchangeWithError:(id)a4;
- (void)pairingSession:(id)a3 didPrepareExchangeData:(id)a4;
- (void)pairingSession:(id)a3 promptForSetupCodeWithCompletion:(id)a4;
- (void)pairingSession:(id)a3 promptForSetupCodeWithDelay:(double)a4 completion:(id)a5;
- (void)pairingSession:(id)a3 showSetupCode:(id)a4;
- (void)pairingSessionHideSetupCode:(id)a3;
@end

@implementation MRCryptoPairingSessionBlockDelegate

- (void)pairingSession:(id)a3 didPrepareExchangeData:(id)a4
{
  dataExchangeBlock = self->_dataExchangeBlock;
  if (dataExchangeBlock)
  {
    dataExchangeBlock[2](dataExchangeBlock, a3, a4);
  }
}

- (void)pairingSession:(id)a3 showSetupCode:(id)a4
{
  showSetupCodeBlock = self->_showSetupCodeBlock;
  if (showSetupCodeBlock)
  {
    showSetupCodeBlock[2](showSetupCodeBlock, a3, a4);
  }
}

- (void)pairingSessionHideSetupCode:(id)a3
{
  hideSetupCodeBlock = self->_hideSetupCodeBlock;
  if (hideSetupCodeBlock)
  {
    hideSetupCodeBlock[2](hideSetupCodeBlock, a3);
  }
}

- (void)pairingSession:(id)a3 promptForSetupCodeWithCompletion:(id)a4
{
  promptForSetupCodeBlock = self->_promptForSetupCodeBlock;
  if (promptForSetupCodeBlock)
  {
    promptForSetupCodeBlock[2](promptForSetupCodeBlock, a3, a4, -1.0);
  }
}

- (void)pairingSession:(id)a3 promptForSetupCodeWithDelay:(double)a4 completion:(id)a5
{
  promptForSetupCodeBlock = self->_promptForSetupCodeBlock;
  if (promptForSetupCodeBlock)
  {
    promptForSetupCodeBlock[2](promptForSetupCodeBlock, a3, a5, a4);
  }
}

- (void)pairingSession:(id)a3 didCompleteExchangeWithError:(id)a4
{
  exchangeCompleteBlock = self->_exchangeCompleteBlock;
  if (exchangeCompleteBlock)
  {
    exchangeCompleteBlock[2](exchangeCompleteBlock, a3, a4);
  }
}

@end