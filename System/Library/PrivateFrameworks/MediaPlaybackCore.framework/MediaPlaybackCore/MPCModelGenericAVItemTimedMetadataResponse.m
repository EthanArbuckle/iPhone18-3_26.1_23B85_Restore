@interface MPCModelGenericAVItemTimedMetadataResponse
- (MPCModelGenericAVItemTimedMetadataResponse)initWithRequest:(id)a3 personalizationResponse:(id)a4 firstResponse:(BOOL)a5 finalResponse:(BOOL)a6;
- (void)dealloc;
@end

@implementation MPCModelGenericAVItemTimedMetadataResponse

- (void)dealloc
{
  if (self->_personalizationResponse)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self->_personalizationResponse name:*MEMORY[0x1E6970240] object:self->_personalizationResponse];
  }

  v4.receiver = self;
  v4.super_class = MPCModelGenericAVItemTimedMetadataResponse;
  [(MPCModelGenericAVItemTimedMetadataResponse *)&v4 dealloc];
}

- (MPCModelGenericAVItemTimedMetadataResponse)initWithRequest:(id)a3 personalizationResponse:(id)a4 firstResponse:(BOOL)a5 finalResponse:(BOOL)a6
{
  v11 = a4;
  v18.receiver = self;
  v18.super_class = MPCModelGenericAVItemTimedMetadataResponse;
  v12 = [(MPModelResponse *)&v18 initWithRequest:a3];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_personalizationResponse, a4);
    v13->_firstResponse = a5;
    v13->_finalResponse = a6;
    personalizationResponse = v13->_personalizationResponse;
    if (personalizationResponse)
    {
      v15 = [(MPModelResponse *)personalizationResponse results];
      [(MPModelResponse *)v13 setResults:v15];

      v16 = [MEMORY[0x1E696AD88] defaultCenter];
      [v16 addObserver:v13 selector:sel__personalizationResponseDidInvalidateNotification_ name:*MEMORY[0x1E6970240] object:v13->_personalizationResponse];
      if (![(MPModelResponse *)v13->_personalizationResponse isValid])
      {
        [(MPModelResponse *)v13 _invalidate];
      }
    }
  }

  return v13;
}

@end