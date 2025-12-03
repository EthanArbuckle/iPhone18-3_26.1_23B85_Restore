@interface MPCModelRadioGetTracksRequestStep
- (id)nextStepWithResponse:(id)response error:(id)error;
- (void)performWithCompletionHandler:(id)handler;
@end

@implementation MPCModelRadioGetTracksRequestStep

- (void)performWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  siriAssetInfoGetTracksResponse = self->super._siriAssetInfoGetTracksResponse;
  if (siriAssetInfoGetTracksResponse)
  {
    v7 = [(MPCModelRadioGetTracksRequestStep *)self nextStepWithResponse:siriAssetInfoGetTracksResponse error:0];
    (v5)[2](v5, v7);
  }

  else
  {
    request = self->super._request;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__MPCModelRadioGetTracksRequestStep_performWithCompletionHandler___block_invoke;
    v9[3] = &unk_1E8235370;
    v9[4] = self;
    v10 = handlerCopy;
    [(ICRadioGetTracksRequest *)request performWithResponseHandler:v9];
  }
}

void __66__MPCModelRadioGetTracksRequestStep_performWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) nextStepWithResponse:a2 error:a3];
  (*(v3 + 16))(v3, v4);
}

- (id)nextStepWithResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  if (!responseCopy)
  {
    v13 = [(MPCModelRadioGetTracksStep *)self nextStepWithError:errorCopy];
    goto LABEL_12;
  }

  dialog = [responseCopy dialog];
  serverError = [responseCopy serverError];
  if (dialog)
  {
    v11 = dialog;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    buttons = [v11 buttons];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __MPCModelRadioGetTracksDialogIsRetryDialog_block_invoke;
    v16[3] = &unk_1E82353C0;
    v16[4] = &v17;
    [buttons enumerateObjectsUsingBlock:v16];

    LODWORD(buttons) = *(v18 + 24);
    _Block_object_dispose(&v17, 8);

    if (buttons == 1)
    {
      v13 = [(MPCModelRadioGetTracksStep *)[MPCModelRadioGetTracksRetryDialogStep alloc] initWithPreviousStep:self];
      objc_storeStrong(&v13->super._error, serverError);
      p_response = &v13->super._response;
LABEL_10:
      objc_storeStrong(p_response, response);
      goto LABEL_11;
    }

    [(MPCModelRadioGetTracksStep *)self _fireAndForgetServerDialog:v11];
  }

  if (!serverError)
  {
    v13 = [[MPCModelRadioGetTracksStep alloc] initWithPreviousStep:self];
    v13->super._finished = 1;
    p_response = &v13->super._response;
    goto LABEL_10;
  }

  v13 = [(MPCModelRadioGetTracksStep *)self nextStepWithError:serverError];
LABEL_11:

LABEL_12:

  return v13;
}

@end