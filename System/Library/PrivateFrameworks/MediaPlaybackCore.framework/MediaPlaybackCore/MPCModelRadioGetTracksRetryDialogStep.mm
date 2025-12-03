@interface MPCModelRadioGetTracksRetryDialogStep
- (id)nextStepByPerformingButtonAction:(id)action;
- (void)performWithCompletionHandler:(id)handler;
@end

@implementation MPCModelRadioGetTracksRetryDialogStep

- (void)performWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dialog = [(ICRadioGetTracksResponse *)self->super._response dialog];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__MPCModelRadioGetTracksRetryDialogStep_performWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8235398;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(MPCModelRadioGetTracksStep *)self _presentServerDialog:dialog completionHandler:v7];
}

void __70__MPCModelRadioGetTracksRetryDialogStep_performWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) nextStepByPerformingButtonAction:a2];
  (*(v2 + 16))(v2, v3);
}

- (id)nextStepByPerformingButtonAction:(id)action
{
  actionCopy = action;
  kind = [actionCopy kind];
  v6 = [kind isEqualToString:@"getTracks"];

  if (v6)
  {
    actionDictionary = [actionCopy actionDictionary];
    v8 = [actionDictionary objectForKey:@"additionalData"];

    if (_NSIsNSDictionary())
    {
      v9 = [(ICRadioGetTracksRequest *)self->super._request copy];
      [v9 setAdditionalRequestParameters:v8];

      if (v9)
      {
        v10 = [(MPCModelRadioGetTracksStep *)[MPCModelRadioGetTracksRequestStep alloc] initWithPreviousStep:self];
        request = v10->super._request;
        v10->super._request = v9;
        v12 = v9;

        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  if (actionCopy)
  {
    [(MPCModelRadioGetTracksStep *)self _performDefaultHandlingForButtonAction:actionCopy];
  }

  v10 = [(MPCModelRadioGetTracksStep *)self nextStepWithError:self->super._error];
LABEL_9:

  return v10;
}

@end