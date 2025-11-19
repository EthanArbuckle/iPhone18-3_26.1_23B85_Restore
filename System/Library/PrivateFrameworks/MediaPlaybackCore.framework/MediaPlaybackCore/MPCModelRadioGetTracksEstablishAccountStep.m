@interface MPCModelRadioGetTracksEstablishAccountStep
- (void)performWithCompletionHandler:(id)a3;
@end

@implementation MPCModelRadioGetTracksEstablishAccountStep

- (void)performWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ICRadioGetTracksRequest *)self->super._request requestContext];
  v6 = [v5 identityStore];
  v7 = [v5 identity];
  v13 = 0;
  v8 = [v6 getVerificationContextForUserIdentity:v7 error:&v13];
  v9 = v13;

  if (v8)
  {
    [v8 setInteractionLevel:4];
    v10 = [objc_alloc(MEMORY[0x1E69E4698]) initWithVerificationContext:v8];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__MPCModelRadioGetTracksEstablishAccountStep_performWithCompletionHandler___block_invoke;
    v11[3] = &unk_1E82352D0;
    v11[4] = self;
    v12 = v4;
    [(MPCModelRadioGetTracksPrepareIdentityStep *)v10 performWithResponseHandler:v11];
  }

  else
  {
    v10 = [(MPCModelRadioGetTracksStep *)[MPCModelRadioGetTracksPrepareIdentityStep alloc] initWithPreviousStep:self];
    (*(v4 + 2))(v4, v10);
  }
}

void __75__MPCModelRadioGetTracksEstablishAccountStep_performWithCompletionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [(MPCModelRadioGetTracksStep *)[MPCModelRadioGetTracksPrepareIdentityStep alloc] initWithPreviousStep:*(a1 + 32)];
    v4 = *(*(a1 + 40) + 16);
  }

  else
  {
    v5 = *(a1 + 40);
    v3 = [*(a1 + 32) nextStepWithError:?];
    v4 = *(v5 + 16);
  }

  v6 = v3;
  v4();
}

@end