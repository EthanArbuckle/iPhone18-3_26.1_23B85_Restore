@interface MUActivityDataProvider
- (LPLinkMetadata)linkMetadata;
- (MUActivityDataProvider)init;
- (NSURL)shortenedURLOrFullIfNotLoaded;
- (void)_initShorteningSession;
- (void)fetchActivityURLWithCompletion:(id)a3;
- (void)fetchShortURLWithCompletion:(id)a3;
- (void)preload;
@end

@implementation MUActivityDataProvider

- (void)preload
{
  if ([(MUActivityDataProvider *)self supportsURLShorteningService]&& GEOConfigGetBOOL())
  {
    shorteningSession = self->_shorteningSession;

    [(MUURLShorteningSession *)shorteningSession preload];
  }
}

- (void)fetchActivityURLWithCompletion:(id)a3
{
  v5 = a3;
  if ([(MUActivityDataProvider *)self supportsURLShorteningService])
  {
    [(MUActivityDataProvider *)self fetchShortURLWithCompletion:v5];
  }

  else
  {
    v4 = [(MUActivityDataProvider *)self activityURL];
    v5[2](v5, v4, 0);
  }
}

- (void)fetchShortURLWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MUActivityDataProvider *)self activityURL];
  if (MapsFeature_IsEnabled_Maps66())
  {
    shorteningSession = self->_shorteningSession;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__MUActivityDataProvider_fetchShortURLWithCompletion___block_invoke;
    v7[3] = &unk_1E8218370;
    v9 = v4;
    v8 = v5;
    [(MUURLShorteningSession *)shorteningSession shortenWithCompletion:v7];
  }

  else
  {
    (*(v4 + 2))(v4, v5, 0);
  }
}

uint64_t __54__MUActivityDataProvider_fetchShortURLWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    return (*(v3 + 16))();
  }

  else
  {
    return (*(v3 + 16))(v3, *(a1 + 32), 0);
  }
}

- (NSURL)shortenedURLOrFullIfNotLoaded
{
  if ((MapsFeature_IsEnabled_Maps66() & 1) != 0 && [(MUActivityDataProvider *)self supportsURLShorteningService])
  {
    v3 = dispatch_semaphore_create(0);
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy_;
    v21 = __Block_byref_object_dispose_;
    v22 = 0;
    shorteningSession = self->_shorteningSession;
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __55__MUActivityDataProvider_shortenedURLOrFullIfNotLoaded__block_invoke;
    v14 = &unk_1E8218348;
    v16 = &v17;
    v5 = v3;
    v15 = v5;
    [(MUURLShorteningSession *)shorteningSession shortURLIfPresentWithCompletion:&v11];
    v6 = dispatch_time(0, 3000000000);
    if (dispatch_semaphore_wait(v5, v6))
    {
      v7 = [(MUActivityDataProvider *)self activityURL:v11];
      v8 = v18[5];
      v18[5] = v7;
    }

    v9 = v18[5];

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v9 = [(MUActivityDataProvider *)self activityURL];
  }

  return v9;
}

void __55__MUActivityDataProvider_shortenedURLOrFullIfNotLoaded__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (LPLinkMetadata)linkMetadata
{
  v3 = [(MUActivityDataProvider *)self activityURL];
  v4 = metadataWithURL(v3);

  v5 = [(MUActivityDataProvider *)self specializationMetadata];
  [v4 setSpecialization:v5];

  return v4;
}

- (void)_initShorteningSession
{
  v3 = [MUURLShorteningSessionConfiguration alloc];
  v4 = *MEMORY[0x1E696F178];
  v5 = *(MEMORY[0x1E696F178] + 8);
  GEOConfigGetDouble();
  v7 = -[MUURLShorteningSessionConfiguration initWithTimeout:doNotUseCache:](v3, "initWithTimeout:doNotUseCache:", [objc_opt_class() useCacheForShortURLs] ^ 1, v6);
  objc_initWeak(&location, self);
  v8 = [MUURLShorteningSession alloc];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__MUActivityDataProvider__initShorteningSession__block_invoke;
  v11[3] = &unk_1E8218320;
  objc_copyWeak(&v12, &location);
  v9 = [(MUURLShorteningSession *)v8 initWithOriginalURLProvider:v11 configuration:v7];
  shorteningSession = self->_shorteningSession;
  self->_shorteningSession = v9;

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

id __48__MUActivityDataProvider__initShorteningSession__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained activityURL];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MUActivityDataProvider)init
{
  v5.receiver = self;
  v5.super_class = MUActivityDataProvider;
  v2 = [(MUActivityDataProvider *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MUActivityDataProvider *)v2 _initShorteningSession];
  }

  return v3;
}

@end