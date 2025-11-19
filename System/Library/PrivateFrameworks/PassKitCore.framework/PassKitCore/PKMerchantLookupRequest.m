@interface PKMerchantLookupRequest
- (PKMerchantLookupRequest)initWithSource:(id)a3;
- (id)_brandFromMapItem:(id)a3;
- (id)_merchantFromMapItem:(id)a3;
- (void)_mapItemBrandWithMUID:(unint64_t)a3 completion:(id)a4;
- (void)_mapsDataWithResponse:(id)a3 searchMapItem:(id)a4 completion:(id)a5;
- (void)startLookupWithCompletion:(id)a3;
@end

@implementation PKMerchantLookupRequest

- (PKMerchantLookupRequest)initWithSource:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PKMerchantLookupRequest;
  v6 = [(PKMerchantLookupRequest *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_source, a3);
    v8 = objc_alloc_init(getMKMapServiceClass[0]());
    service = v7->_service;
    v7->_service = v8;

    v10 = dispatch_queue_create("com.apple.passd.PKMerchantLookupRequest", 0);
    internalQueue = v7->_internalQueue;
    v7->_internalQueue = v10;
  }

  return v7;
}

- (void)startLookupWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PKMerchantLookupRequestSource *)self->_source mapsMerchantLookupRequest];
    v6 = [(PKMerchantLookupRequestSource *)self->_source mapsURL];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__PKMerchantLookupRequest_startLookupWithCompletion___block_invoke;
    aBlock[3] = &unk_1E79D8658;
    v20 = v4;
    v7 = _Block_copy(aBlock);
    if (v5)
    {
      v8 = [v5 traits];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = [(MKMapService *)self->_service defaultTraits];
      }

      v11 = v10;

      [v11 setWantsBrandIcon:1];
      [v11 setSupportsBrandFallback:1];
      [v11 setIsSettlement:{-[PKMerchantLookupRequestSource isSettlement](self->_source, "isSettlement")}];
      [v11 setIsSettlement:{-[PKMerchantLookupRequestSource isRefund](self->_source, "isRefund")}];
      [v11 setContainsSensitiveData:{-[PKMerchantLookupRequestSource containsSensitiveData](self->_source, "containsSensitiveData")}];
      v12 = [(MKMapService *)self->_service ticketForWalletMerchantLookupRequest:v5 traits:v11];
      internalQueue = self->_internalQueue;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __53__PKMerchantLookupRequest_startLookupWithCompletion___block_invoke_2;
      v17[3] = &unk_1E79D8680;
      v17[4] = self;
      v13 = &v18;
      v18 = v7;
      [v12 submitWithCompletionQueue:internalQueue handler:v17];
    }

    else
    {
      if (!v6 || [(PKMerchantLookupRequestSource *)self->_source type]!= 3)
      {
        goto LABEL_13;
      }

      v11 = [objc_alloc(_MergedGlobals_175()) initWithMapsURL:v6];
      if (!v11)
      {
LABEL_12:

LABEL_13:
        goto LABEL_14;
      }

      v12 = [objc_alloc(off_1ED6D10F0()) initWithRequest:v11];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __53__PKMerchantLookupRequest_startLookupWithCompletion___block_invoke_33;
      v15[3] = &unk_1E79D86A8;
      v15[4] = self;
      v13 = &v16;
      v16 = v7;
      [v12 startWithCompletionHandler:v15];
    }

    goto LABEL_12;
  }

LABEL_14:
}

void __53__PKMerchantLookupRequest_startLookupWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    v8 = @"code";
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a3, "code")}];
    v9[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    AnalyticsSendEvent();
  }

  (*(*(a1 + 32) + 16))();
}

void __53__PKMerchantLookupRequest_startLookupWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 domain];
  v8 = GEOErrorDomain();
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [v6 code];
  }

  else
  {
    v10 = 0;
  }

  if (v5)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = PKLogFacilityTypeGetObject(0x18uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(*(a1 + 32) + 16) identifier];
    v15 = [*(*(a1 + 32) + 16) type];
    if (v15 > 3)
    {
      v16 = @"unknown";
    }

    else
    {
      v16 = off_1E79D8718[v15];
    }

    v17 = @"NO";
    v19 = 138413058;
    v20 = v14;
    if (v12)
    {
      v17 = @"YES";
    }

    v21 = 2112;
    v22 = v16;
    v23 = 2112;
    v24 = v17;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Maps merchant lookup for identifier %@, type %@: Success: %@, Error: %@", &v19, 0x2Au);
  }

  if (v12)
  {
    [*(a1 + 32) _mapsDataWithResponse:v5 searchMapItem:0 completion:*(a1 + 40)];
  }

  else
  {
    v18 = objc_alloc_init(PKMerchantLookupResponse);
    [(PKMerchantLookupResponse *)v18 setResult:v10 == -3];
    (*(*(a1 + 40) + 16))(*(a1 + 40), v18);
  }
}

void __53__PKMerchantLookupRequest_startLookupWithCompletion___block_invoke_33(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 mapItems];
  v6 = [v5 firstObject];

  if (v6)
  {
    [*(a1 + 32) _mapsDataWithResponse:0 searchMapItem:v6 completion:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_mapsDataWithResponse:(id)a3 searchMapItem:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10 && v8 | v9)
  {
    v38 = [v9 _geoMapItem];
    if (v8)
    {
      v11 = [v8 mapsCategoryIdentifier];
      [v8 walletCategoryIdentifier];
    }

    else
    {
      v11 = [v38 _mapsCategoryId];
      [v38 _walletCategoryIdentifier];
    }
    v12 = ;
    v13 = PKMerchantCategoryFromString(v12);

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__PKMerchantLookupRequest__mapsDataWithResponse_searchMapItem_completion___block_invoke;
    aBlock[3] = &unk_1E79D86D0;
    v50 = v13;
    v49 = v10;
    v14 = _Block_copy(aBlock);
    if (v8)
    {
      v15 = [v8 mapItem];
      v16 = [v8 bestHeroImageForSize:1 allowSmaller:{1.79769313e308, 1.79769313e308}];
      [v8 heroImageProviderName];
    }

    else
    {
      v15 = v9;
      v16 = [v15 _bestWalletHeroImageForSize:1 allowSmaller:{1.79769313e308, 1.79769313e308}];
      [v15 _walletHeroImageProviderName];
    }
    v17 = ;
    if (!v15)
    {
      (*(v14 + 2))(v14, 0, 0, 0, 0, 0);
      goto LABEL_27;
    }

    v37 = v16;
    v36 = v11;
    if ([v15 _isMapItemTypeBrand])
    {
      v18 = [(PKMerchantLookupRequest *)self _brandFromMapItem:v15];
      [v18 setCategory:v13];
      [v18 setDetailedCategory:v11];
      if (v8)
      {
        v19 = [v8 placeStyling];
        if (!v19)
        {
LABEL_14:
          [v18 setHeroImageURL:v37];
          [v18 setHeroImageAttributionName:v17];
          v21 = [MEMORY[0x1E695DF00] date];
          [v18 setLastProcessedDate:v21];

          (*(v14 + 2))(v14, 1, 0, 0, v18, 0);
          v16 = v37;
          v11 = v36;
LABEL_27:

          goto LABEL_28;
        }
      }

      else
      {
        v29 = objc_alloc(getMKWalletMerchantStylingInfoClass_0[0]());
        v30 = [v38 _walletPlaceStyling];
        v19 = [v29 initWithStyleAttributes:v30];

        if (!v19)
        {
          goto LABEL_14;
        }
      }

      v20 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v19 requiringSecureCoding:1 error:0];
      [v18 setStylingInfoData:v20];

      goto LABEL_14;
    }

    v35 = v14;
    v34 = [v15 placemark];
    v22 = [(PKMerchantLookupRequest *)self _merchantFromMapItem:v15];
    [v22 setCategory:v13];
    [v22 setDetailedCategory:v11];
    if (v8)
    {
      v23 = [v8 placeStyling];
      if (!v23)
      {
LABEL_19:
        [v22 setHeroImageURL:v37];
        [v22 setHeroImageAttributionName:v17];
        v25 = [MEMORY[0x1E695DF00] date];
        [v22 setLastProcessedDate:v25];

        v26 = [v15 _brandMUID];
        if (v26)
        {
          v27 = v26;
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __74__PKMerchantLookupRequest__mapsDataWithResponse_searchMapItem_completion___block_invoke_2;
          v39[3] = &unk_1E79D86F8;
          v39[4] = self;
          v47 = v13;
          v40 = v36;
          v41 = v8;
          v42 = v38;
          v43 = v15;
          v46 = v35;
          v28 = v34;
          v44 = v34;
          v45 = v22;
          [(PKMerchantLookupRequest *)self _mapItemBrandWithMUID:v27 completion:v39];
        }

        else
        {
          v28 = v34;
          (v35)[2](v35, 1, v34, v22, 0, 0);
        }

        v11 = v36;
        v16 = v37;
        v14 = v35;
        goto LABEL_27;
      }
    }

    else
    {
      v31 = objc_alloc(getMKWalletMerchantStylingInfoClass_0[0]());
      [v38 _walletPlaceStyling];
      v32 = v33 = v17;
      v23 = [v31 initWithStyleAttributes:v32];

      v17 = v33;
      if (!v23)
      {
        goto LABEL_19;
      }
    }

    v24 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v23 requiringSecureCoding:1 error:0];
    [v22 setStylingInfoData:v24];

    goto LABEL_19;
  }

LABEL_28:
}

void __74__PKMerchantLookupRequest__mapsDataWithResponse_searchMapItem_completion___block_invoke(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = objc_alloc_init(PKMerchantLookupResponse);
  v17 = v15;
  if (a2)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  [(PKMerchantLookupResponse *)v15 setResult:v16];
  [(PKMerchantLookupResponse *)v17 setBrand:v12];

  [(PKMerchantLookupResponse *)v17 setMerchant:v13];
  [(PKMerchantLookupResponse *)v17 setPlacemark:v14];

  [(PKMerchantLookupResponse *)v17 setFallbackCategory:*(a1 + 40)];
  (*(*(a1 + 32) + 16))();
}

void __74__PKMerchantLookupRequest__mapsDataWithResponse_searchMapItem_completion___block_invoke_2(uint64_t a1, int a2, uint64_t a3)
{
  v4 = 0;
  if (!a3 || !a2)
  {
    goto LABEL_9;
  }

  v13 = [*(a1 + 32) _brandFromMapItem:?];
  [v13 setCategory:*(a1 + 96)];
  [v13 setDetailedCategory:*(a1 + 40)];
  v5 = *(a1 + 48);
  if (!v5)
  {
    v11 = objc_alloc(getMKWalletMerchantStylingInfoClass_0[0]());
    v12 = [*(a1 + 56) _walletPlaceStyling];
    v6 = [v11 initWithStyleAttributes:v12];

    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = [v5 placeStyling];
  if (v6)
  {
LABEL_5:
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
    [v13 setStylingInfoData:v7];
  }

LABEL_6:
  v8 = [MEMORY[0x1E695DF00] date];
  [v13 setLastProcessedDate:v8];

  v9 = [v13 logoURL];

  if (!v9)
  {
    v10 = [*(a1 + 64) _bestBrandIconURLForSize:1 allowSmaller:{500.0, 500.0}];
    [v13 setLogoURL:v10];
  }

  v4 = v13;
LABEL_9:
  v14 = v4;
  (*(*(a1 + 88) + 16))();
}

- (void)_mapItemBrandWithMUID:(unint64_t)a3 completion:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
  {
    v7 = objc_alloc_init(_MergedGlobals_175());
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
    v13[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [v7 _setMuids:v9];

    v10 = [objc_alloc(off_1ED6D10F0()) initWithRequest:v7];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__PKMerchantLookupRequest__mapItemBrandWithMUID_completion___block_invoke;
    v11[3] = &unk_1E79D86A8;
    v11[4] = self;
    v12 = v6;
    [v10 startWithCompletionHandler:v11];
  }
}

void __60__PKMerchantLookupRequest__mapItemBrandWithMUID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 8);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__PKMerchantLookupRequest__mapItemBrandWithMUID_completion___block_invoke_2;
  v12[3] = &unk_1E79CB4E8;
  v13 = v6;
  v14 = v8;
  v15 = v5;
  v16 = v7;
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, v12);
}

void __60__PKMerchantLookupRequest__mapItemBrandWithMUID_completion___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 _mapkit_underlyingGEOError] != -8;
  }

  else
  {
    v3 = 0;
  }

  v4 = PKLogFacilityTypeGetObject(0x18uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(*(a1 + 40) + 16) identifier];
    v6 = [*(*(a1 + 40) + 16) type];
    if (v6 > 3)
    {
      v7 = @"unknown";
    }

    else
    {
      v7 = off_1E79D8718[v6];
    }

    v8 = @"YES";
    v9 = *(a1 + 32);
    v13 = 138413058;
    if (v3)
    {
      v8 = @"NO";
    }

    v14 = v5;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Maps brand lookup for for identifier %@, type %@: Success: %@, Error: %@", &v13, 0x2Au);
  }

  if (v3)
  {
    (*(*(a1 + 56) + 16))(*(a1 + 56));
  }

  else
  {
    v10 = [*(a1 + 48) mapItems];
    v11 = [v10 firstObject];

    if (!v11)
    {
      v12 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "No brand item from brand search.", &v13, 2u);
      }
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (id)_merchantFromMapItem:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKMapsMerchant);
  -[PKMapsMerchant setIdentifier:](v4, "setIdentifier:", [v3 _muid]);
  -[PKMapsMerchant setResultProviderIdentifier:](v4, "setResultProviderIdentifier:", [v3 _resultProviderID]);
  v5 = [v3 name];
  [(PKMapsMerchant *)v4 setName:v5];

  v6 = [v3 phoneNumber];
  [(PKMapsMerchant *)v4 setPhoneNumber:v6];

  v7 = [v3 url];
  [(PKMapsMerchant *)v4 setURL:v7];

  v8 = [v3 placemark];

  v9 = [v8 location];
  [(PKMapsMerchant *)v4 setLocation:v9];

  v10 = [v8 postalAddress];
  [(PKMapsMerchant *)v4 setPostalAddress:v10];

  return v4;
}

- (id)_brandFromMapItem:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKMapsBrand);
  -[PKMapsBrand setIdentifier:](v4, "setIdentifier:", [v3 _muid]);
  -[PKMapsBrand setResultProviderIdentifier:](v4, "setResultProviderIdentifier:", [v3 _resultProviderID]);
  v5 = [v3 name];
  [(PKMapsBrand *)v4 setName:v5];

  v6 = [v3 phoneNumber];
  [(PKMapsBrand *)v4 setPhoneNumber:v6];

  v7 = [v3 url];
  [(PKMapsBrand *)v4 setURL:v7];

  v8 = [v3 _bestBrandIconURLForSize:1 allowSmaller:{500.0, 500.0}];

  [(PKMapsBrand *)v4 setLogoURL:v8];

  return v4;
}

@end