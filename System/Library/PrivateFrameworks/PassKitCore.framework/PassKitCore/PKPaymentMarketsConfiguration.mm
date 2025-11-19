@interface PKPaymentMarketsConfiguration
+ (id)closestMarketFromSet:(id)a3 forLocation:(id)a4;
+ (void)paymentMarketsConfigurationWithURL:(id)a3 forDeviceClass:(id)a4 version:(id)a5 completion:(id)a6;
- (PKPaymentMarketsConfiguration)initWithCoder:(id)a3;
- (PKPaymentMarketsConfiguration)initWithDictionary:(id)a3 url:(id)a4 forDeviceClass:(id)a5 version:(id)a6;
- (id)expressTransitNetworksForLocation:(id)a3;
- (id)marketsForLocation:(id)a3;
- (id)marketsForLocation:(id)a3 ofType:(int64_t)a4;
- (id)marketsForLocation:(id)a3 passingTest:(id)a4;
- (id)marketsForRegions:(id)a3;
- (id)supportedTransitNetworksForLocation:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentMarketsConfiguration

+ (void)paymentMarketsConfigurationWithURL:(id)a3 forDeviceClass:(id)a4 version:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = PKDeviceClass();
  v14 = +[PKOSVersionRequirement fromDeviceVersion];
  if (!v10)
  {
    v10 = v13;
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_13:
    v11 = v14;
    goto LABEL_3;
  }

  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ([v10 isEqualToString:v13] && objc_msgSend(v11, "isEqual:", v14))
  {
    if (([qword_1ED6D17E0 isEqual:v9] & 1) == 0)
    {
      v15 = qword_1ED6D17F0;
      qword_1ED6D17F0 = 0;

      v16 = qword_1ED6D17F8;
      qword_1ED6D17F8 = 0;
    }

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  if (qword_1ED6D17D8 != -1)
  {
    dispatch_once(&qword_1ED6D17D8, &__block_literal_global_20);
  }

  v18 = _MergedGlobals_194;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __102__PKPaymentMarketsConfiguration_paymentMarketsConfigurationWithURL_forDeviceClass_version_completion___block_invoke_2;
  v23[3] = &unk_1E79C9328;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = v12;
  v28 = v17;
  v19 = v11;
  v20 = v10;
  v21 = v9;
  v22 = v12;
  [v18 downloadFromUrl:v21 completionHandler:v23];
}

void __102__PKPaymentMarketsConfiguration_paymentMarketsConfigurationWithURL_forDeviceClass_version_completion___block_invoke()
{
  v3 = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
  [v3 setTimeoutIntervalForResource:360.0];
  [v3 setTimeoutIntervalForRequest:60.0];
  [v3 setNetworkServiceType:3];
  v0 = [MEMORY[0x1E695AC78] sessionWithConfiguration:v3];
  v1 = [[PKObjectDownloader alloc] initWithSession:v0];
  v2 = _MergedGlobals_194;
  _MergedGlobals_194 = v1;
}

void __102__PKPaymentMarketsConfiguration_paymentMarketsConfigurationWithURL_forDeviceClass_version_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
    v11 = v10;
    if (v10)
    {
      v12 = qword_1ED6D17F8;
      v13 = [v10 valueForHTTPHeaderField:@"Etag"];
      if (([v12 isEqualToString:v13] & 1) == 0)
      {

        if (v7)
        {
          goto LABEL_11;
        }

LABEL_13:
        v18 = 0;
        goto LABEL_14;
      }

      v14 = qword_1ED6D17F0;
      v15 = [v11 valueForHTTPHeaderField:@"Last-Modified"];
      LODWORD(v14) = [v14 isEqualToString:v15];

      if (v14)
      {
        v16 = PKLogFacilityTypeGetObject(2uLL);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Markets configuration loaded from cache", buf, 2u);
        }

        v17 = *(a1 + 56);
        if (v17)
        {
          (*(v17 + 16))(v17, qword_1ED6D17E8, 0);
          goto LABEL_40;
        }
      }
    }
  }

  else
  {
    v11 = 0;
  }

  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_11:
  v33 = v9;
  v18 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&v33];
  v19 = v33;

  v9 = v19;
LABEL_14:
  v20 = PKLogFacilityTypeGetObject(2uLL);
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);

  if (v21)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "Markets configuration loaded from web", buf, 2u);
    }
  }

  if (!v7 || v9)
  {
    if (!v9)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPassKitErrorDomain" code:1 userInfo:0];
    }

    v29 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v9;
      _os_log_impl(&dword_1AD337000, v29, OS_LOG_TYPE_DEFAULT, "Markets configuration failed downloading: %@", buf, 0xCu);
    }

    v30 = *(a1 + 56);
    if (v30)
    {
      (*(v30 + 16))(v30, 0, v9);
    }
  }

  else
  {
    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v22 = [[PKPaymentMarketsConfiguration alloc] initWithDictionary:v18 url:*(a1 + 32) forDeviceClass:*(a1 + 40) version:*(a1 + 48)]) != 0)
    {
      v23 = v22;
      if (*(a1 + 64) == 1)
      {
        objc_storeStrong(&qword_1ED6D17E0, *(a1 + 32));
        objc_storeStrong(&qword_1ED6D17E8, v23);
        v24 = [v11 valueForHTTPHeaderField:@"Last-Modified"];
        v25 = qword_1ED6D17F0;
        qword_1ED6D17F0 = v24;

        v26 = [v11 valueForHTTPHeaderField:@"Etag"];
        v27 = qword_1ED6D17F8;
        qword_1ED6D17F8 = v26;
      }

      v28 = *(a1 + 56);
      if (v28)
      {
        (*(v28 + 16))(v28, v23, 0);
      }
    }

    else
    {
      v31 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = 0;
        _os_log_impl(&dword_1AD337000, v31, OS_LOG_TYPE_DEFAULT, "Markets configuration failed to parse: %@", buf, 0xCu);
      }

      v32 = *(a1 + 56);
      if (v32)
      {
        (*(v32 + 16))(v32, 0, 0);
      }

      v23 = 0;
    }

    v9 = 0;
  }

LABEL_40:
}

- (PKPaymentMarketsConfiguration)initWithDictionary:(id)a3 url:(id)a4 forDeviceClass:(id)a5 version:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v30.receiver = self;
  v30.super_class = PKPaymentMarketsConfiguration;
  v14 = [(PKPaymentMarketsConfiguration *)&v30 init];
  if (v14)
  {
    v15 = [v11 copy];
    url = v14->_url;
    v14->_url = v15;

    v17 = [v10 PKStringForKey:@"Version"];
    v18 = [v17 copy];
    version = v14->_version;
    v14->_version = v18;

    v20 = [v10 PKArrayForKey:@"MarketGeos"];
    v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __79__PKPaymentMarketsConfiguration_initWithDictionary_url_forDeviceClass_version___block_invoke;
    v26[3] = &unk_1E79C9350;
    v27 = v12;
    v28 = v13;
    v29 = v21;
    v22 = v21;
    [v20 enumerateObjectsUsingBlock:v26];
    v23 = [v22 copy];
    markets = v14->_markets;
    v14->_markets = v23;
  }

  return v14;
}

void __79__PKPaymentMarketsConfiguration_initWithDictionary_url_forDeviceClass_version___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [[PKPaymentMarket alloc] initWithDictionary:v3 forDeviceClass:*(a1 + 32) version:*(a1 + 40)];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 48) addObject:v5];
    v4 = v5;
  }
}

- (PKPaymentMarketsConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKPaymentMarketsConfiguration;
  v5 = [(PKPaymentMarketsConfiguration *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    version = v5->_version;
    v5->_version = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"markets"];
    markets = v5->_markets;
    v5->_markets = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  url = self->_url;
  v5 = a3;
  [v5 encodeObject:url forKey:@"url"];
  [v5 encodeObject:self->_version forKey:@"version"];
  [v5 encodeObject:self->_markets forKey:@"markets"];
}

- (id)marketsForLocation:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  markets = self->_markets;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __52__PKPaymentMarketsConfiguration_marketsForLocation___block_invoke;
  v14 = &unk_1E79C9378;
  v15 = v4;
  v16 = v5;
  v7 = v5;
  v8 = v4;
  [(NSSet *)markets enumerateObjectsUsingBlock:&v11];
  v9 = [v7 copy];

  return v9;
}

void __52__PKPaymentMarketsConfiguration_marketsForLocation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 containsLocation:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v3];
  }
}

- (id)marketsForLocation:(id)a3 passingTest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  markets = self->_markets;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__PKPaymentMarketsConfiguration_marketsForLocation_passingTest___block_invoke;
  v15[3] = &unk_1E79C93A0;
  v17 = v8;
  v18 = v7;
  v16 = v6;
  v10 = v8;
  v11 = v6;
  v12 = v7;
  [(NSSet *)markets enumerateObjectsUsingBlock:v15];
  v13 = [v10 copy];

  return v13;
}

void __64__PKPaymentMarketsConfiguration_marketsForLocation_passingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 48) + 16))() && [v3 containsLocation:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v3];
  }
}

- (id)marketsForLocation:(id)a3 ofType:(int64_t)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__PKPaymentMarketsConfiguration_marketsForLocation_ofType___block_invoke;
  v6[3] = &__block_descriptor_40_e25_B16__0__PKPaymentMarket_8l;
  v6[4] = a4;
  v4 = [(PKPaymentMarketsConfiguration *)self marketsForLocation:a3 passingTest:v6];

  return v4;
}

+ (id)closestMarketFromSet:(id)a3 forLocation:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *MEMORY[0x1E6985C30];
    v11 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        [v13 shortestDistanceFromLocation:v6];
        if (v14 < v10)
        {
          v15 = v14;
          v16 = v13;

          v10 = v15;
          v9 = v16;
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)marketsForRegions:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  markets = self->_markets;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __51__PKPaymentMarketsConfiguration_marketsForRegions___block_invoke;
  v14 = &unk_1E79C9378;
  v15 = v4;
  v16 = v5;
  v7 = v5;
  v8 = v4;
  [(NSSet *)markets enumerateObjectsUsingBlock:&v11];
  v9 = [v7 copy];

  return v9;
}

void __51__PKPaymentMarketsConfiguration_marketsForRegions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 region];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    [*(a1 + 40) addObject:v6];
  }
}

- (id)supportedTransitNetworksForLocation:(id)a3
{
  v3 = [(PKPaymentMarketsConfiguration *)self marketsForLocation:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__PKPaymentMarketsConfiguration_supportedTransitNetworksForLocation___block_invoke;
    v8[3] = &unk_1E79C93E8;
    v5 = v4;
    v9 = v5;
    [v3 enumerateObjectsUsingBlock:v8];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 copy];

  return v6;
}

void __69__PKPaymentMarketsConfiguration_supportedTransitNetworksForLocation___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 supportedTransitNetworks];
  [v2 unionSet:v3];
}

- (id)expressTransitNetworksForLocation:(id)a3
{
  v3 = [(PKPaymentMarketsConfiguration *)self marketsForLocation:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __67__PKPaymentMarketsConfiguration_expressTransitNetworksForLocation___block_invoke;
    v8[3] = &unk_1E79C93E8;
    v5 = v4;
    v9 = v5;
    [v3 enumerateObjectsUsingBlock:v8];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 copy];

  return v6;
}

void __67__PKPaymentMarketsConfiguration_expressTransitNetworksForLocation___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 expressTransitNetworks];
  [v2 unionSet:v3];
}

@end