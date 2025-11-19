@interface CPSBusinessItemFetcher
- (void)fetchBusinessMetadataForURL:(id)a3 availabilityHandler:(id)a4 completion:(id)a5;
- (void)fetchBusinessMetadataForURLHash:(id)a3 completion:(id)a4;
@end

@implementation CPSBusinessItemFetcher

- (void)fetchBusinessMetadataForURL:(id)a3 availabilityHandler:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!self->_businessQueryService)
  {
    v11 = objc_alloc_init(MEMORY[0x277CF3618]);
    businessQueryService = self->_businessQueryService;
    self->_businessQueryService = v11;
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __85__CPSBusinessItemFetcher_fetchBusinessMetadataForURL_availabilityHandler_completion___block_invoke;
  v22[3] = &unk_278DCDB38;
  v13 = v8;
  v23 = v13;
  v14 = v9;
  v25 = v14;
  v15 = v10;
  v26 = v15;
  v24 = self;
  v16 = MEMORY[0x245D3D5F0](v22);
  v17 = self->_businessQueryService;
  v18 = objc_opt_respondsToSelector();
  v19 = self->_businessQueryService;
  if (v18)
  {
    [(BCSBusinessQueryService *)v19 isBusinessRegisteredForURL:v13 chopURL:1 completion:v16];
  }

  else
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __85__CPSBusinessItemFetcher_fetchBusinessMetadataForURL_availabilityHandler_completion___block_invoke_8;
    v20[3] = &unk_278DCDB60;
    v21 = v16;
    [(BCSBusinessQueryService *)v19 isBusinessRegisteredForURL:v13 completion:v20];
  }
}

void __85__CPSBusinessItemFetcher_fetchBusinessMetadataForURL_availabilityHandler_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = @"NO";
    v11 = *(a1 + 32);
    if (a2)
    {
      v10 = @"YES";
    }

    *buf = 138740227;
    v21 = v11;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_2436ED000, v9, OS_LOG_TYPE_INFO, "Remote Client: Has ABR entry for %{sensitive}@, %@", buf, 0x16u);
  }

  if (v8)
  {
    v12 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __85__CPSBusinessItemFetcher_fetchBusinessMetadataForURL_availabilityHandler_completion___block_invoke_cold_1(v8, v12);
    }
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, a2, v7);
  }

  if (a2)
  {
    v14 = *(a1 + 32);
    v15 = *(*(a1 + 40) + 8);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __85__CPSBusinessItemFetcher_fetchBusinessMetadataForURL_availabilityHandler_completion___block_invoke_4;
    v17[3] = &unk_278DCDB10;
    v19 = *(a1 + 56);
    v18 = *(a1 + 32);
    [v15 fetchLinkItemWithURL:v14 completion:v17];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __85__CPSBusinessItemFetcher_fetchBusinessMetadataForURL_availabilityHandler_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __85__CPSBusinessItemFetcher_fetchBusinessMetadataForURL_availabilityHandler_completion___block_invoke_4_cold_1(v6, v7);
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_10:
      (*(*(a1 + 40) + 16))();
      goto LABEL_11;
    }
  }

  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_4:
  v8 = [[CPSClipMetadata alloc] initWithBusinessItem:v5];
  v9 = [(CPSClipMetadata *)v8 clipURL];

  if (!v9)
  {
    [(CPSClipMetadata *)v8 setClipURL:*(a1 + 32)];
  }

  v10 = [(CPSClipMetadata *)v8 clipRequestURL];

  if (!v10)
  {
    [(CPSClipMetadata *)v8 setClipRequestURL:*(a1 + 32)];
  }

  (*(*(a1 + 40) + 16))();

LABEL_11:
}

- (void)fetchBusinessMetadataForURLHash:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  businessQueryService = self->_businessQueryService;
  if (!businessQueryService)
  {
    v9 = objc_alloc_init(MEMORY[0x277CF3618]);
    v10 = self->_businessQueryService;
    self->_businessQueryService = v9;

    businessQueryService = self->_businessQueryService;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__CPSBusinessItemFetcher_fetchBusinessMetadataForURLHash_completion___block_invoke;
  v12[3] = &unk_278DCDB88;
  v13 = v7;
  v11 = v7;
  [(BCSBusinessQueryService *)businessQueryService fetchLinkItemWithHash:v6 completion:v12];
}

void __69__CPSBusinessItemFetcher_fetchBusinessMetadataForURLHash_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[CPSClipMetadata alloc] initWithBusinessItem:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __85__CPSBusinessItemFetcher_fetchBusinessMetadataForURL_availabilityHandler_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2436ED000, a2, OS_LOG_TYPE_ERROR, "fetchBusinessMetadataForURL: Error calling -isBusinessRegisteredForURL: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __85__CPSBusinessItemFetcher_fetchBusinessMetadataForURL_availabilityHandler_completion___block_invoke_4_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2436ED000, a2, OS_LOG_TYPE_ERROR, "fetchBusinessMetadataForURL: Error calling -fetchLinkItemWithURL: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end