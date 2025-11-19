@interface MPCModelRadioPersonalizationResponse
- (MPCModelRadioPersonalizationResponse)initWithRequest:(id)a3 personalizationResponse:(id)a4;
- (void)dealloc;
@end

@implementation MPCModelRadioPersonalizationResponse

- (void)dealloc
{
  if (self->_personalizationResponse)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self name:*MEMORY[0x1E6970240] object:self->_personalizationResponse];
  }

  v4.receiver = self;
  v4.super_class = MPCModelRadioPersonalizationResponse;
  [(MPCModelRadioPersonalizationResponse *)&v4 dealloc];
}

- (MPCModelRadioPersonalizationResponse)initWithRequest:(id)a3 personalizationResponse:(id)a4
{
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MPCModelRadioPersonalizationResponse;
  v8 = [(MPModelResponse *)&v14 initWithRequest:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_personalizationResponse, a4);
    v10 = [v7 representedObjectResults];
    [(MPCModelRadioPersonalizationResponse *)v9 setRadioStationTracks:v10];

    v11 = [v7 results];
    [(MPModelResponse *)v9 setResults:v11];

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v9 selector:sel__invalidate name:*MEMORY[0x1E6970240] object:v9->_personalizationResponse];
    if (([(MPStoreLibraryPersonalizationResponse *)v9->_personalizationResponse isValid]& 1) == 0)
    {
      [(MPModelResponse *)v9 _invalidate];
    }
  }

  return v9;
}

@end