@interface MPCModelGenericAVItemTimedMetadataResponse
- (MPCModelGenericAVItemTimedMetadataResponse)initWithRequest:(id)request personalizationResponse:(id)response firstResponse:(BOOL)firstResponse finalResponse:(BOOL)finalResponse;
- (void)dealloc;
@end

@implementation MPCModelGenericAVItemTimedMetadataResponse

- (void)dealloc
{
  if (self->_personalizationResponse)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self->_personalizationResponse name:*MEMORY[0x1E6970240] object:self->_personalizationResponse];
  }

  v4.receiver = self;
  v4.super_class = MPCModelGenericAVItemTimedMetadataResponse;
  [(MPCModelGenericAVItemTimedMetadataResponse *)&v4 dealloc];
}

- (MPCModelGenericAVItemTimedMetadataResponse)initWithRequest:(id)request personalizationResponse:(id)response firstResponse:(BOOL)firstResponse finalResponse:(BOOL)finalResponse
{
  responseCopy = response;
  v18.receiver = self;
  v18.super_class = MPCModelGenericAVItemTimedMetadataResponse;
  v12 = [(MPModelResponse *)&v18 initWithRequest:request];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_personalizationResponse, response);
    v13->_firstResponse = firstResponse;
    v13->_finalResponse = finalResponse;
    personalizationResponse = v13->_personalizationResponse;
    if (personalizationResponse)
    {
      results = [(MPModelResponse *)personalizationResponse results];
      [(MPModelResponse *)v13 setResults:results];

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v13 selector:sel__personalizationResponseDidInvalidateNotification_ name:*MEMORY[0x1E6970240] object:v13->_personalizationResponse];
      if (![(MPModelResponse *)v13->_personalizationResponse isValid])
      {
        [(MPModelResponse *)v13 _invalidate];
      }
    }
  }

  return v13;
}

@end