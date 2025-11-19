@interface CDPQuotaStorageAppListRequest
- (BOOL)isUrlAvailable;
- (CDPQuotaStorageAppListRequest)initWithAccount:(id)a3 appList:(unint64_t)a4 contentSpecifiesE2EE:(BOOL)a5;
- (id)_urlStringFormatFromBag;
- (id)urlRequest;
- (id)urlString;
- (void)_setAppListHeaderForRequest:(id)a3;
- (void)_setContentTypeHeaderForRequest:(id)a3;
- (void)urlRequest;
@end

@implementation CDPQuotaStorageAppListRequest

- (CDPQuotaStorageAppListRequest)initWithAccount:(id)a3 appList:(unint64_t)a4 contentSpecifiesE2EE:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = CDPQuotaStorageAppListRequest;
  v10 = [(CDPQuotaStorageAppListRequest *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_account, a3);
    v11->_appList = a4;
    v11->_contentSpecifiesE2EE = a5;
  }

  return v11;
}

- (id)_urlStringFormatFromBag
{
  urlStringFormat = self->_urlStringFormat;
  if (!urlStringFormat)
  {
    v4 = [(ACAccount *)self->_account propertiesForDataclass:@"com.apple.Dataclass.Quota"];
    v5 = [v4 objectForKey:@"storageAppListURL"];
    v6 = self->_urlStringFormat;
    self->_urlStringFormat = v5;

    urlStringFormat = self->_urlStringFormat;
  }

  return urlStringFormat;
}

- (BOOL)isUrlAvailable
{
  v3 = [(ACAccount *)self->_account aa_personID];
  if (v3)
  {
    v4 = [(CDPQuotaStorageAppListRequest *)self _urlStringFormatFromBag];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)urlString
{
  if ([(CDPQuotaStorageAppListRequest *)self isUrlAvailable])
  {
    v3 = [(CDPQuotaStorageAppListRequest *)self _urlStringFormatFromBag];
    v4 = *MEMORY[0x277CEC950];
    v5 = [(ACAccount *)self->_account aa_personID];
    v6 = [v3 stringByReplacingOccurrencesOfString:v4 withString:v5];

    v7 = *MEMORY[0x277CEC960];
    v8 = [MEMORY[0x277CEC7B8] udid];
    v9 = [v6 stringByReplacingOccurrencesOfString:v7 withString:v8];

    v10 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
    v11 = [v9 stringByAddingPercentEncodingWithAllowedCharacters:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)urlRequest
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = CDPQuotaStorageAppListRequest;
  v3 = [(AARequest *)&v14 urlRequest];
  v4 = [v3 mutableCopy];

  [v4 setHTTPMethod:@"GET"];
  [v4 ak_addAnisetteHeaders];
  [v4 ak_addClientInfoHeader];
  [v4 ak_addDeviceUDIDHeader];
  [v4 ak_addClientTimeHeader];
  [v4 ak_addTimeZoneHeaders];
  [v4 ak_addLocaleHeader];
  [v4 ak_addCountryHeader];
  [v4 ak_addInternalBuildHeader];
  v5 = [MEMORY[0x277CEC7B8] userAgentHeader];
  [v4 setValue:v5 forHTTPHeaderField:@"User-Agent"];

  v6 = [MEMORY[0x277CEC7B8] udid];
  [v4 setValue:v6 forHTTPHeaderField:@"X-Client-UDID"];

  [v4 setValue:@"application/x-buddyml" forHTTPHeaderField:@"Accept"];
  [v4 setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
  v7 = MEMORY[0x277CBEAF8];
  v8 = [MEMORY[0x277CBEAF8] _deviceLanguage];
  v15[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v10 = [v7 minimizedLanguagesFromLanguages:v9];
  v11 = [v10 componentsJoinedByString:{@", "}];

  v12 = _CDPLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(CDPQuotaStorageAppListRequest *)v11 urlRequest];
  }

  [v4 setValue:v11 forHTTPHeaderField:@"Accept-Language"];
  [(CDPQuotaStorageAppListRequest *)self _setContentTypeHeaderForRequest:v4];
  [(CDPQuotaStorageAppListRequest *)self _setAppListHeaderForRequest:v4];
  [v4 aa_addBasicAuthorizationHeaderWithAccount:self->_account preferUsingPassword:0];

  return v4;
}

- (void)_setContentTypeHeaderForRequest:(id)a3
{
  contentSpecifiesE2EE = self->_contentSpecifiesE2EE;
  v4 = a3;
  v5 = _CDPLogSystem();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (contentSpecifiesE2EE)
  {
    if (v6)
    {
      [CDPQuotaStorageAppListRequest _setContentTypeHeaderForRequest:];
    }

    v7 = @"cdp";
  }

  else
  {
    if (v6)
    {
      [CDPQuotaStorageAppListRequest _setContentTypeHeaderForRequest:];
    }

    v7 = @"pcs";
  }

  [v4 setValue:v7 forHTTPHeaderField:@"x-apple-storageapplist-content-type"];
}

- (void)_setAppListHeaderForRequest:(id)a3
{
  v4 = a3;
  appList = self->_appList;
  switch(appList)
  {
    case 0uLL:
      v10 = _CDPLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [CDPQuotaStorageAppListRequest _setAppListHeaderForRequest:];
      }

      v8 = *MEMORY[0x277CF00F8];
      v9 = @"x-apple-storageapplist-nadp";
      goto LABEL_13;
    case 1uLL:
      v7 = _CDPLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [CDPQuotaStorageAppListRequest _setAppListHeaderForRequest:];
      }

      v8 = *MEMORY[0x277CF00F8];
      v9 = @"x-apple-storageapplist-sray";
LABEL_13:
      [v4 setValue:v8 forHTTPHeaderField:v9];
      break;
    case 2uLL:
      v6 = _CDPLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [CDPQuotaStorageAppListRequest _setAppListHeaderForRequest:];
      }

      break;
  }
}

- (void)urlRequest
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_2451DB000, a2, OS_LOG_TYPE_DEBUG, "CDPQuotaStorageAppListRequest: setting accepted languages: %@", &v2, 0xCu);
}

@end