@interface ML3ArtworkTokenSet
- (ML3ArtworkTokenSet)initWithEntity:(id)a3 artworkType:(int64_t)a4 artworkVariantType:(int64_t)a5;
- (NSString)availableArtworkToken;
- (NSString)fetchableArtworkToken;
- (id)artworkTokenForSource:(int64_t)a3;
- (int64_t)fetchableArtworkSourceType;
- (void)_faultInBestTokens;
- (void)_faultInTokens;
@end

@implementation ML3ArtworkTokenSet

- (void)_faultInTokens
{
  self->_faultedInTokens = 1;
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(ML3Entity *)self->_entity library];
  v5 = [(ML3Entity *)self->_entity persistentID];
  v6 = [objc_opt_class() revisionTrackingCode];
  artworkType = self->_artworkType;
  artworkVariantType = self->_artworkVariantType;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __36__ML3ArtworkTokenSet__faultInTokens__block_invoke;
  v12[3] = &unk_27875CDF8;
  v13 = v3;
  v9 = v3;
  [v4 enumerateArtworkTokensForEntityPersistentID:v5 entityType:v6 artworkType:artworkType variantType:artworkVariantType usingBlock:v12];

  v10 = [v9 copy];
  artworkSourceToTokenMap = self->_artworkSourceToTokenMap;
  self->_artworkSourceToTokenMap = v10;
}

void __36__ML3ArtworkTokenSet__faultInTokens__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = [v5 numberWithInteger:a3];
  [v4 setObject:v6 forKeyedSubscript:v7];
}

- (void)_faultInBestTokens
{
  self->_faultedInBestTokens = 1;
  v3 = dispatch_semaphore_create(0);
  v4 = [(ML3Entity *)self->_entity library];
  v5 = [(ML3Entity *)self->_entity persistentID];
  v6 = [objc_opt_class() revisionTrackingCode];
  artworkType = self->_artworkType;
  artworkVariantType = self->_artworkVariantType;
  retrievalTime = self->_retrievalTime;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__ML3ArtworkTokenSet__faultInBestTokens__block_invoke;
  v11[3] = &unk_27875CDD0;
  v11[4] = self;
  v12 = v3;
  v10 = v3;
  [v4 retrieveBestArtworkTokensForEntityPersistentID:v5 entityType:v6 artworkType:artworkType variantType:artworkVariantType retrievalTime:v11 completionHandler:retrievalTime];

  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
}

void __40__ML3ArtworkTokenSet__faultInBestTokens__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = *(v9 + 32);
  *(v9 + 32) = v7;
  v14 = v7;

  v11 = *(a1 + 32);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  *(*(a1 + 32) + 48) = a4;
  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)artworkTokenForSource:(int64_t)a3
{
  if (!self->_faultedInTokens)
  {
    [(ML3ArtworkTokenSet *)self _faultInTokens];
  }

  artworkSourceToTokenMap = self->_artworkSourceToTokenMap;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7 = [(NSDictionary *)artworkSourceToTokenMap objectForKeyedSubscript:v6];

  return v7;
}

- (int64_t)fetchableArtworkSourceType
{
  if (!self->_faultedInBestTokens)
  {
    [(ML3ArtworkTokenSet *)self _faultInBestTokens];
  }

  return self->_fetchableArtworkSourceType;
}

- (NSString)fetchableArtworkToken
{
  if (!self->_faultedInBestTokens)
  {
    [(ML3ArtworkTokenSet *)self _faultInBestTokens];
  }

  fetchableArtworkToken = self->_fetchableArtworkToken;

  return fetchableArtworkToken;
}

- (NSString)availableArtworkToken
{
  if (!self->_faultedInBestTokens)
  {
    [(ML3ArtworkTokenSet *)self _faultInBestTokens];
  }

  availableArtworkToken = self->_availableArtworkToken;

  return availableArtworkToken;
}

- (ML3ArtworkTokenSet)initWithEntity:(id)a3 artworkType:(int64_t)a4 artworkVariantType:(int64_t)a5
{
  v10 = a3;
  if (!v10)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"ML3ArtworkTokenSet.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"entity != nil"}];
  }

  v15.receiver = self;
  v15.super_class = ML3ArtworkTokenSet;
  v11 = [(ML3ArtworkTokenSet *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_entity, a3);
    v12->_artworkType = a4;
    v12->_artworkVariantType = a5;
  }

  return v12;
}

@end