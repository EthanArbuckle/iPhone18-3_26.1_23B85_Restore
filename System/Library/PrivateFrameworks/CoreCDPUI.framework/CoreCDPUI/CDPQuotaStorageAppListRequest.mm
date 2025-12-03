@interface CDPQuotaStorageAppListRequest
- (BOOL)isUrlAvailable;
- (CDPQuotaStorageAppListRequest)initWithAccount:(id)account appList:(unint64_t)list contentSpecifiesE2EE:(BOOL)e;
- (id)_urlStringFormatFromBag;
- (id)urlRequest;
- (id)urlString;
- (void)_setAppListHeaderForRequest:(id)request;
- (void)_setContentTypeHeaderForRequest:(id)request;
- (void)urlRequest;
@end

@implementation CDPQuotaStorageAppListRequest

- (CDPQuotaStorageAppListRequest)initWithAccount:(id)account appList:(unint64_t)list contentSpecifiesE2EE:(BOOL)e
{
  accountCopy = account;
  v13.receiver = self;
  v13.super_class = CDPQuotaStorageAppListRequest;
  v10 = [(CDPQuotaStorageAppListRequest *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_account, account);
    v11->_appList = list;
    v11->_contentSpecifiesE2EE = e;
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
  aa_personID = [(ACAccount *)self->_account aa_personID];
  if (aa_personID)
  {
    _urlStringFormatFromBag = [(CDPQuotaStorageAppListRequest *)self _urlStringFormatFromBag];
    v5 = _urlStringFormatFromBag != 0;
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
    _urlStringFormatFromBag = [(CDPQuotaStorageAppListRequest *)self _urlStringFormatFromBag];
    v4 = *MEMORY[0x277CEC950];
    aa_personID = [(ACAccount *)self->_account aa_personID];
    v6 = [_urlStringFormatFromBag stringByReplacingOccurrencesOfString:v4 withString:aa_personID];

    v7 = *MEMORY[0x277CEC960];
    udid = [MEMORY[0x277CEC7B8] udid];
    v9 = [v6 stringByReplacingOccurrencesOfString:v7 withString:udid];

    uRLQueryAllowedCharacterSet = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
    v11 = [v9 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];
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
  urlRequest = [(AARequest *)&v14 urlRequest];
  v4 = [urlRequest mutableCopy];

  [v4 setHTTPMethod:@"GET"];
  [v4 ak_addAnisetteHeaders];
  [v4 ak_addClientInfoHeader];
  [v4 ak_addDeviceUDIDHeader];
  [v4 ak_addClientTimeHeader];
  [v4 ak_addTimeZoneHeaders];
  [v4 ak_addLocaleHeader];
  [v4 ak_addCountryHeader];
  [v4 ak_addInternalBuildHeader];
  userAgentHeader = [MEMORY[0x277CEC7B8] userAgentHeader];
  [v4 setValue:userAgentHeader forHTTPHeaderField:@"User-Agent"];

  udid = [MEMORY[0x277CEC7B8] udid];
  [v4 setValue:udid forHTTPHeaderField:@"X-Client-UDID"];

  [v4 setValue:@"application/x-buddyml" forHTTPHeaderField:@"Accept"];
  [v4 setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
  v7 = MEMORY[0x277CBEAF8];
  _deviceLanguage = [MEMORY[0x277CBEAF8] _deviceLanguage];
  v15[0] = _deviceLanguage;
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

- (void)_setContentTypeHeaderForRequest:(id)request
{
  contentSpecifiesE2EE = self->_contentSpecifiesE2EE;
  requestCopy = request;
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

  [requestCopy setValue:v7 forHTTPHeaderField:@"x-apple-storageapplist-content-type"];
}

- (void)_setAppListHeaderForRequest:(id)request
{
  requestCopy = request;
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
      [requestCopy setValue:v8 forHTTPHeaderField:v9];
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
  selfCopy = self;
  _os_log_debug_impl(&dword_2451DB000, a2, OS_LOG_TYPE_DEBUG, "CDPQuotaStorageAppListRequest: setting accepted languages: %@", &v2, 0xCu);
}

@end