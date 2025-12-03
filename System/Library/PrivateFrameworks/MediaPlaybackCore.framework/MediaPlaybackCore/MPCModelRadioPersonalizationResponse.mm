@interface MPCModelRadioPersonalizationResponse
- (MPCModelRadioPersonalizationResponse)initWithRequest:(id)request personalizationResponse:(id)response;
- (void)dealloc;
@end

@implementation MPCModelRadioPersonalizationResponse

- (void)dealloc
{
  if (self->_personalizationResponse)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E6970240] object:self->_personalizationResponse];
  }

  v4.receiver = self;
  v4.super_class = MPCModelRadioPersonalizationResponse;
  [(MPCModelRadioPersonalizationResponse *)&v4 dealloc];
}

- (MPCModelRadioPersonalizationResponse)initWithRequest:(id)request personalizationResponse:(id)response
{
  responseCopy = response;
  v14.receiver = self;
  v14.super_class = MPCModelRadioPersonalizationResponse;
  v8 = [(MPModelResponse *)&v14 initWithRequest:request];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_personalizationResponse, response);
    representedObjectResults = [responseCopy representedObjectResults];
    [(MPCModelRadioPersonalizationResponse *)v9 setRadioStationTracks:representedObjectResults];

    results = [responseCopy results];
    [(MPModelResponse *)v9 setResults:results];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__invalidate name:*MEMORY[0x1E6970240] object:v9->_personalizationResponse];
    if (([(MPStoreLibraryPersonalizationResponse *)v9->_personalizationResponse isValid]& 1) == 0)
    {
      [(MPModelResponse *)v9 _invalidate];
    }
  }

  return v9;
}

@end