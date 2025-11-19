@interface PKContactlessCardIngester
+ (id)debugDescriptionForStatus:(unint64_t)a3;
- (PKContactlessCardIngester)initWithPaymentSetupProduct:(id)a3 delegate:(id)a4;
- (id)_displayableErrorForSPStatusCode:(unint64_t)a3 seldError:(id)a4;
- (void)_cancelCardIngestion;
- (void)_ingestCardWithCardSessionToken:(id)a3 completion:(id)a4;
- (void)_ingestCardWithCompletion:(id)a3;
- (void)_startListeningToRemoteAdminEventsIfRequired;
- (void)_stopListeningToRemoteAdminEvents;
- (void)ingestCardWithCardSessionToken:(id)a3 successHandler:(id)a4;
- (void)ingestCardWithSuccessHandler:(id)a3;
- (void)invalidate;
- (void)readerModeCardIngestionStatus:(unint64_t)a3;
- (void)readerModeCardSessionToken:(id)a3;
@end

@implementation PKContactlessCardIngester

- (PKContactlessCardIngester)initWithPaymentSetupProduct:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = PKContactlessCardIngester;
  v8 = [(PKContactlessCardIngester *)&v17 init];
  if (v8)
  {
    v9 = [PKGetClassNFRemoteAdminManager() sharedRemoteAdminManager];
    v10 = [v9 primaryRegionTopic];
    pushTopic = v8->_pushTopic;
    v8->_pushTopic = v10;

    v12 = [v6 provisioningMethodMetadataForType:@"readerMode"];
    readerModeProvisioningMetadata = v8->_readerModeProvisioningMetadata;
    v8->_readerModeProvisioningMetadata = v12;

    objc_storeWeak(&v8->_delegate, v7);
    v14 = dispatch_queue_create("com.apple.passkit.contactlesscardingester", 0);
    contactlessCardIngesterQueue = v8->_contactlessCardIngesterQueue;
    v8->_contactlessCardIngesterQueue = v14;
  }

  return v8;
}

- (void)invalidate
{
  [(PKContactlessCardIngester *)self _cancelCardIngestion];

  [(PKContactlessCardIngester *)self _stopListeningToRemoteAdminEvents];
}

- (void)ingestCardWithSuccessHandler:(id)a3
{
  v4 = a3;
  contactlessCardIngesterQueue = self->_contactlessCardIngesterQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__PKContactlessCardIngester_ingestCardWithSuccessHandler___block_invoke;
  v8[3] = &unk_1E79C4A40;
  v8[4] = self;
  v9 = v4;
  v6 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_20;
  block[3] = &unk_1E79C4428;
  v11 = v6;
  v7 = v4;
  dispatch_async(contactlessCardIngesterQueue, block);
}

uint64_t __58__PKContactlessCardIngester_ingestCardWithSuccessHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _startListeningToRemoteAdminEventsIfRequired];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _ingestCardWithCompletion:v3];
}

- (void)ingestCardWithCardSessionToken:(id)a3 successHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  contactlessCardIngesterQueue = self->_contactlessCardIngesterQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__PKContactlessCardIngester_ingestCardWithCardSessionToken_successHandler___block_invoke;
  v12[3] = &unk_1E79C4D60;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_20;
  block[3] = &unk_1E79C4428;
  v16 = v9;
  v10 = v7;
  v11 = v6;
  dispatch_async(contactlessCardIngesterQueue, block);
}

uint64_t __75__PKContactlessCardIngester_ingestCardWithCardSessionToken_successHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _startListeningToRemoteAdminEventsIfRequired];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 _ingestCardWithCardSessionToken:v3 completion:v4];
}

- (void)_cancelCardIngestion
{
  contactlessCardIngesterQueue = self->_contactlessCardIngesterQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__PKContactlessCardIngester__cancelCardIngestion__block_invoke;
  v4[3] = &unk_1E79C4E28;
  v4[4] = self;
  v3 = v4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_20;
  block[3] = &unk_1E79C4428;
  v6 = v3;
  dispatch_async(contactlessCardIngesterQueue, block);
}

void __49__PKContactlessCardIngester__cancelCardIngestion__block_invoke(uint64_t a1)
{
  v2 = [PKGetClassNFRemoteAdminManager() sharedRemoteAdminManager];
  [v2 cancelCardIngestion];

  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 64);
  *(v5 + 64) = 0;
}

+ (id)debugDescriptionForStatus:(unint64_t)a3
{
  if (a3 - 1 > 0xC)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_1E79E22B8[a3 - 1];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu - %@", a3, v5, v3, v4];
}

- (void)_ingestCardWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _Block_copy(v4);
  cardSessionTokenCompletionHandler = self->_cardSessionTokenCompletionHandler;
  self->_cardSessionTokenCompletionHandler = v5;

  objc_initWeak(&location, self);
  v7 = PKGetClassNFRemoteAdminCardIngestionRequest();
  pushTopic = self->_pushTopic;
  v9 = [(PKPaymentProvisioningMethodMetadata *)self->_readerModeProvisioningMetadata readerModeMetadata];
  v10 = [v7 cardIngestionRequestWithServerIdentifier:pushTopic sessionToken:0 readerModeMetadata:v9 maxDetectionTimeout:60000];

  v11 = [PKGetClassNFRemoteAdminManager() sharedRemoteAdminManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__PKContactlessCardIngester__ingestCardWithCompletion___block_invoke;
  v12[3] = &unk_1E79E2298;
  v12[4] = self;
  objc_copyWeak(&v13, &location);
  [v11 ingestCard:v10 withCompletionHandler:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __55__PKContactlessCardIngester__ingestCardWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(*(a1 + 32) + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__PKContactlessCardIngester__ingestCardWithCompletion___block_invoke_2;
  v10[3] = &unk_1E79CE328;
  objc_copyWeak(v12, (a1 + 40));
  v7 = *(a1 + 32);
  v12[1] = a3;
  v10[4] = v7;
  v11 = v5;
  v8 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_20;
  block[3] = &unk_1E79C4428;
  v14 = v8;
  v9 = v5;
  dispatch_async(v6, block);

  objc_destroyWeak(v12);
}

void __55__PKContactlessCardIngester__ingestCardWithCompletion___block_invoke_2(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && WeakRetained[7])
  {
    v4 = [*(a1 + 32) _displayableErrorForSPStatusCode:*(a1 + 56) seldError:*(a1 + 40)];
    if (v4)
    {
      v5 = *(v3 + 7);
      *(v3 + 7) = 0;

      v6 = objc_loadWeakRetained(v3 + 5);
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = objc_loadWeakRetained(v3 + 5);
        [v8 contactlessCardIngester:v3 didFailToIngestCardWithError:v4 resetProvisioning:1 isRecoverable:(*(a1 + 56) > 0xCuLL) | (0x103u >> *(a1 + 56)) & 1];
      }
    }
  }

  if (*(a1 + 56) != -1)
  {
    v11 = @"code";
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v12[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    AnalyticsSendEvent();
  }
}

- (void)_ingestCardWithCardSessionToken:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _Block_copy(v7);
  disableCardCompletionHandler = self->_disableCardCompletionHandler;
  self->_disableCardCompletionHandler = v8;

  objc_initWeak(&location, self);
  v10 = PKGetClassNFRemoteAdminCardIngestionRequest();
  pushTopic = self->_pushTopic;
  v12 = [(PKPaymentProvisioningMethodMetadata *)self->_readerModeProvisioningMetadata readerModeMetadata];
  v13 = [v10 cardIngestionRequestWithServerIdentifier:pushTopic sessionToken:v6 readerModeMetadata:v12 maxDetectionTimeout:60000];

  v14 = [PKGetClassNFRemoteAdminManager() sharedRemoteAdminManager];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__PKContactlessCardIngester__ingestCardWithCardSessionToken_completion___block_invoke;
  v15[3] = &unk_1E79E2298;
  v15[4] = self;
  objc_copyWeak(&v16, &location);
  [v14 ingestCard:v13 withCompletionHandler:v15];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __72__PKContactlessCardIngester__ingestCardWithCardSessionToken_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(*(a1 + 32) + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__PKContactlessCardIngester__ingestCardWithCardSessionToken_completion___block_invoke_2;
  v10[3] = &unk_1E79CE328;
  objc_copyWeak(v12, (a1 + 40));
  v7 = *(a1 + 32);
  v12[1] = a3;
  v10[4] = v7;
  v11 = v5;
  v8 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_20;
  block[3] = &unk_1E79C4428;
  v14 = v8;
  v9 = v5;
  dispatch_async(v6, block);

  objc_destroyWeak(v12);
}

void __72__PKContactlessCardIngester__ingestCardWithCardSessionToken_completion___block_invoke_2(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && WeakRetained[8])
  {
    v4 = [*(a1 + 32) _displayableErrorForSPStatusCode:*(a1 + 56) seldError:*(a1 + 40)];
    if (v4)
    {
      v5 = *(a1 + 56);
      v6 = objc_loadWeakRetained(v3 + 5);
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = objc_loadWeakRetained(v3 + 5);
        [v8 contactlessCardIngester:v3 didFailToIngestCardWithError:v4 resetProvisioning:v5 != 0 isRecoverable:(*(a1 + 56) > 0xCuLL) | (0x103u >> *(a1 + 56)) & 1];
      }
    }

    else
    {
      v9 = v3[8];
      if (v9)
      {
        v9[2]();
      }
    }

    v10 = v3[8];
    v3[8] = 0;
  }

  if (*(a1 + 56) != -1)
  {
    v13 = @"code";
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v14[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    AnalyticsSendEvent();
  }
}

- (void)readerModeCardSessionToken:(id)a3
{
  v4 = a3;
  contactlessCardIngesterQueue = self->_contactlessCardIngesterQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__PKContactlessCardIngester_readerModeCardSessionToken___block_invoke;
  v8[3] = &unk_1E79C4DD8;
  v8[4] = self;
  v9 = v4;
  v6 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_20;
  block[3] = &unk_1E79C4428;
  v11 = v6;
  v7 = v4;
  dispatch_async(contactlessCardIngesterQueue, block);
}

uint64_t __56__PKContactlessCardIngester_readerModeCardSessionToken___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 40));
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = 0;
  }

  return AnalyticsSendEvent();
}

- (void)readerModeCardIngestionStatus:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (a3 - 1 >= 0xC)
    {
      a3 = 13;
    }

    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 contactlessCardIngester:self didUpdateCardIngestionStatus:a3];
  }
}

- (void)_stopListeningToRemoteAdminEvents
{
  v3 = [PKGetClassNFRemoteAdminManager() sharedRemoteAdminManager];
  [v3 unregisterEventListener:self];

  self->_listening = 0;
}

- (void)_startListeningToRemoteAdminEventsIfRequired
{
  if (!self->_listening)
  {
    v3 = [PKGetClassNFRemoteAdminManager() sharedRemoteAdminManager];
    [v3 registerEventListener:self];

    self->_listening = 1;
  }
}

- (id)_displayableErrorForSPStatusCode:(unint64_t)a3 seldError:(id)a4
{
  v6 = a4;
  v7 = PKLocalizedPaymentString(&cfstr_ReaderModeErro.isa, 0);
  v8 = 0;
  if (a3 > 5)
  {
    if (a3 > 8)
    {
      if (a3 <= 10)
      {
        if (a3 != 9)
        {
          v10 = [(PKPaymentProvisioningMethodMetadata *)self->_readerModeProvisioningMetadata minimumReaderModeBalance];
          if (v10)
          {
            currencyNumberFormatter = self->_currencyNumberFormatter;
            if (!currencyNumberFormatter)
            {
              v12 = [(PKPaymentProvisioningMethodMetadata *)self->_readerModeProvisioningMetadata currency];
              v13 = PKMutableNumberFormatterForCurrencyCode(v12);
              v14 = self->_currencyNumberFormatter;
              self->_currencyNumberFormatter = v13;

              if ([v10 pk_isIntegralNumber])
              {
                v15 = 0;
              }

              else
              {
                v15 = [(NSNumberFormatter *)self->_currencyNumberFormatter maximumFractionDigits];
              }

              [(NSNumberFormatter *)self->_currencyNumberFormatter setMinimumFractionDigits:v15];
              currencyNumberFormatter = self->_currencyNumberFormatter;
            }

            v20 = [(NSNumberFormatter *)currencyNumberFormatter stringFromNumber:v10];
            v8 = PKLocalizedPaymentString(&cfstr_ReaderModeInge_0.isa, &stru_1F2281668.isa, v20);
          }

          else
          {
            v8 = PKLocalizedPaymentString(&cfstr_ReaderModeInge_1.isa, 0);
          }

          goto LABEL_30;
        }

        v9 = @"READER_MODE_INGEST_ERROR_SERVER_DOWN";
        goto LABEL_29;
      }

      if (a3 == 11)
      {
        v9 = @"READER_MODE_INGEST_ERROR_EXPIRED";
        goto LABEL_29;
      }

      if (a3 == 12)
      {
        v9 = @"READER_MODE_INGEST_ERROR_RATE_LIMITED";
        goto LABEL_29;
      }

LABEL_30:
      v17 = PKDisplayableErrorCustomWithType(-1, v7, v8, 0, 0);

      v8 = v17;
      goto LABEL_31;
    }

    if (a3 != 6)
    {
      if (a3 == 7)
      {
        v9 = @"READER_MODE_INGEST_ERROR_CARD_INVALID";
        goto LABEL_29;
      }

      v16 = PKLocalizedPaymentString(&cfstr_ReaderModeInge_8.isa, 0);

      v8 = PKLocalizedPaymentString(&cfstr_ReaderModeInge_9.isa, 0);
      v7 = v16;
      goto LABEL_30;
    }

LABEL_27:
    v9 = @"READER_MODE_INGEST_ERROR_CARD_NOT_SUPPORTED_MESSAGE";
    goto LABEL_29;
  }

  if (a3 > 1)
  {
    if (a3 - 2 >= 2)
    {
      if (a3 - 4 < 2)
      {
        v9 = @"READER_MODE_INGEST_ERROR_CARD_INACTIVE";
LABEL_29:
        v8 = PKLocalizedPaymentString(&v9->isa, 0);
        goto LABEL_30;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (a3 != -1)
  {
    if (!a3)
    {
      goto LABEL_31;
    }

    if (a3 != 1)
    {
      goto LABEL_30;
    }

    v9 = @"READER_MODE_INGEST_ERROR_CARD_READ_ERROR";
    goto LABEL_29;
  }

  if (v6)
  {
    if ([v6 code] != 4)
    {
      if ([v6 code] == 2)
      {
        v19 = 2;
      }

      else
      {
        v19 = 1;
      }

      v8 = PKDisplayableErrorForCommonType(v19, v6);
      if (v8)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  v8 = 0;
LABEL_31:

  return v8;
}

@end