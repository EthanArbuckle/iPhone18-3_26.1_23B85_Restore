@interface MRCryptoPairingSessionBlockDelegate
- (void)pairingSession:(id)session didCompleteExchangeWithError:(id)error;
- (void)pairingSession:(id)session didPrepareExchangeData:(id)data;
- (void)pairingSession:(id)session promptForSetupCodeWithCompletion:(id)completion;
- (void)pairingSession:(id)session promptForSetupCodeWithDelay:(double)delay completion:(id)completion;
- (void)pairingSession:(id)session showSetupCode:(id)code;
- (void)pairingSessionHideSetupCode:(id)code;
@end

@implementation MRCryptoPairingSessionBlockDelegate

- (void)pairingSession:(id)session didPrepareExchangeData:(id)data
{
  dataExchangeBlock = self->_dataExchangeBlock;
  if (dataExchangeBlock)
  {
    dataExchangeBlock[2](dataExchangeBlock, session, data);
  }
}

- (void)pairingSession:(id)session showSetupCode:(id)code
{
  showSetupCodeBlock = self->_showSetupCodeBlock;
  if (showSetupCodeBlock)
  {
    showSetupCodeBlock[2](showSetupCodeBlock, session, code);
  }
}

- (void)pairingSessionHideSetupCode:(id)code
{
  hideSetupCodeBlock = self->_hideSetupCodeBlock;
  if (hideSetupCodeBlock)
  {
    hideSetupCodeBlock[2](hideSetupCodeBlock, code);
  }
}

- (void)pairingSession:(id)session promptForSetupCodeWithCompletion:(id)completion
{
  promptForSetupCodeBlock = self->_promptForSetupCodeBlock;
  if (promptForSetupCodeBlock)
  {
    promptForSetupCodeBlock[2](promptForSetupCodeBlock, session, completion, -1.0);
  }
}

- (void)pairingSession:(id)session promptForSetupCodeWithDelay:(double)delay completion:(id)completion
{
  promptForSetupCodeBlock = self->_promptForSetupCodeBlock;
  if (promptForSetupCodeBlock)
  {
    promptForSetupCodeBlock[2](promptForSetupCodeBlock, session, completion, delay);
  }
}

- (void)pairingSession:(id)session didCompleteExchangeWithError:(id)error
{
  exchangeCompleteBlock = self->_exchangeCompleteBlock;
  if (exchangeCompleteBlock)
  {
    exchangeCompleteBlock[2](exchangeCompleteBlock, session, error);
  }
}

@end