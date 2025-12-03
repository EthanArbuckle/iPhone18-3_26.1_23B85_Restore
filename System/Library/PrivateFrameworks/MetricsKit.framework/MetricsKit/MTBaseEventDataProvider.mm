@interface MTBaseEventDataProvider
- (id)app:(id)app;
- (id)appVersion:(id)version;
- (id)baseVersion:(id)version;
- (id)capacityData:(id)data;
- (id)capacityDataAvailable:(id)available;
- (id)capacityDisk:(id)disk;
- (id)capacitySystem:(id)system;
- (id)capacitySystemAvailable:(id)available;
- (id)clientEventId:(id)id;
- (id)clientId:(id)id;
- (id)connection:(id)connection;
- (id)cookies:(id)cookies;
- (id)dsId:(id)id;
- (id)eventTime:(id)time;
- (id)fetchAllCookies;
- (id)hardwareFamily:(id)family;
- (id)hardwareModel:(id)model;
- (id)hostApp:(id)app;
- (id)hostAppVersion:(id)version;
- (id)isSignedIn:(id)in;
- (id)knownFields;
- (id)os:(id)os;
- (id)osBuildNumber:(id)number;
- (id)osVersion:(id)version;
- (id)page:(id)page;
- (id)pageContext:(id)context;
- (id)pageDetails:(id)details;
- (id)pageId:(id)id;
- (id)pageType:(id)type;
- (id)pageUrl:(id)url;
- (id)parentPageUrl:(id)url;
- (id)pixelRatio:(id)ratio;
- (id)resourceRevNum:(id)num;
- (id)screenHeight:(id)height;
- (id)screenWidth:(id)width;
- (id)storeFrontHeader:(id)header;
- (id)timezoneOffset:(id)offset;
- (id)userAgent:(id)agent;
- (id)windowInnerHeight:(id)height;
- (id)windowInnerWidth:(id)width;
- (id)windowOuterHeight:(id)height;
- (id)windowOuterWidth:(id)width;
- (id)xpPostFrequency:(id)frequency;
- (id)xpSendMethod:(id)method;
- (id)xpVersionMetricsKit:(id)kit;
@end

@implementation MTBaseEventDataProvider

- (id)knownFields
{
  delegate = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    knownFields = [delegate2 knownFields];
  }

  else
  {
    knownFields = 0;
  }

  return knownFields;
}

- (id)app:(id)app
{
  appCopy = app;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 app:appCopy];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [appCopy objectForKeyedSubscript:@"app"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  v10 = [environment app];

LABEL_6:

  return v10;
}

- (id)appVersion:(id)version
{
  versionCopy = version;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 appVersion:versionCopy];
LABEL_5:
    appVersion = v8;
    goto LABEL_6;
  }

  v9 = [versionCopy objectForKeyedSubscript:@"appVersion"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  appVersion = [environment appVersion];

LABEL_6:

  return appVersion;
}

- (id)baseVersion:(id)version
{
  versionCopy = version;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 baseVersion:versionCopy];
  }

  else
  {
    v9 = [versionCopy objectForKeyedSubscript:@"baseVersion"];
    delegate2 = v9;
    if (v9)
    {
      v8 = v9;
      delegate2 = v8;
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:1];
    }
  }

  v10 = v8;

  return v10;
}

- (id)capacityData:(id)data
{
  dataCopy = data;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 capacityData:dataCopy];
LABEL_5:
    capacityData = v8;
    goto LABEL_6;
  }

  v9 = [dataCopy objectForKeyedSubscript:@"capacityData"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  capacityData = [environment capacityData];

LABEL_6:

  return capacityData;
}

- (id)capacityDataAvailable:(id)available
{
  availableCopy = available;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 capacityDataAvailable:availableCopy];
LABEL_5:
    capacityDataAvailable = v8;
    goto LABEL_6;
  }

  v9 = [availableCopy objectForKeyedSubscript:@"capacityDataAvailable"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  capacityDataAvailable = [environment capacityDataAvailable];

LABEL_6:

  return capacityDataAvailable;
}

- (id)capacityDisk:(id)disk
{
  diskCopy = disk;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 capacityDisk:diskCopy];
LABEL_5:
    capacityDisk = v8;
    goto LABEL_6;
  }

  v9 = [diskCopy objectForKeyedSubscript:@"capacityDisk"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  capacityDisk = [environment capacityDisk];

LABEL_6:

  return capacityDisk;
}

- (id)capacitySystem:(id)system
{
  systemCopy = system;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 capacitySystem:systemCopy];
LABEL_5:
    capacitySystem = v8;
    goto LABEL_6;
  }

  v9 = [systemCopy objectForKeyedSubscript:@"capacitySystem"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  capacitySystem = [environment capacitySystem];

LABEL_6:

  return capacitySystem;
}

- (id)capacitySystemAvailable:(id)available
{
  availableCopy = available;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 capacitySystemAvailable:availableCopy];
LABEL_5:
    capacitySystemAvailable = v8;
    goto LABEL_6;
  }

  v9 = [availableCopy objectForKeyedSubscript:@"capacityDataAvailable"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  capacitySystemAvailable = [environment capacitySystemAvailable];

LABEL_6:

  return capacitySystemAvailable;
}

- (id)fetchAllCookies
{
  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  cookies = [environment cookies];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      cookies = MEMORY[0x277CBEC10];
    }

    v6 = [MTPromise promiseWithResult:cookies];

    cookies = v6;
  }

  return cookies;
}

- (id)clientEventId:(id)id
{
  idCopy = id;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 clientEventId:idCopy];
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    delegate2 = [MEMORY[0x277CCAD78] UUID];
    mt_base62String = [delegate2 mt_base62String];
    v8 = [v9 stringWithFormat:@"1_1_%@", mt_base62String];
  }

  return v8;
}

- (id)clientId:(id)id
{
  idCopy = id;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 clientId:idCopy];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [idCopy objectForKeyedSubscript:@"clientId"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  config = [metricsKit config];
  v14 = [config configValueForKeyPath:@"ignoreClientIdCookie" default:MEMORY[0x277CBEC28]];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __36__MTBaseEventDataProvider_clientId___block_invoke;
  v15[3] = &unk_2798CE6F0;
  v15[4] = self;
  v10 = [v14 thenWithBlock:v15];

LABEL_6:

  return v10;
}

id __36__MTBaseEventDataProvider_clientId___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 BOOLValue])
  {
    v3 = [MEMORY[0x277CBEB68] null];
    [MTPromise promiseWithResult:v3];
  }

  else
  {
    v3 = [*(a1 + 32) fetchAllCookies];
    [v3 thenWithBlock:&__block_literal_global_14];
  }
  v4 = ;

  return v4;
}

id __36__MTBaseEventDataProvider_clientId___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"xp_ci"];
  if (v2)
  {
    v3 = [MTPromise promiseWithResult:v2];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB68] null];
    v3 = [MTPromise promiseWithResult:v4];
  }

  return v3;
}

- (id)connection:(id)connection
{
  connectionCopy = connection;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 connection:connectionCopy];
LABEL_5:
    connectionType = v8;
    goto LABEL_6;
  }

  v9 = [connectionCopy objectForKeyedSubscript:@"connection"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  connectionType = [environment connectionType];

LABEL_6:

  return connectionType;
}

- (id)cookies:(id)cookies
{
  cookiesCopy = cookies;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 cookies:cookiesCopy];
  }

  else
  {
    delegate2 = [(MTBaseEventDataProvider *)self fetchAllCookies];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __35__MTBaseEventDataProvider_cookies___block_invoke;
    v11[3] = &unk_2798CD570;
    v11[4] = self;
    v8 = [delegate2 thenWithBlock:v11];
  }

  v9 = v8;

  return v9;
}

id __35__MTBaseEventDataProvider_cookies___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) metricsKit];
  v5 = [v4 config];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__MTBaseEventDataProvider_cookies___block_invoke_2;
  v9[3] = &unk_2798CE718;
  v9[4] = *(a1 + 32);
  v10 = v3;
  v6 = v3;
  v7 = [v5 computeWithConfigSources:v9];

  return v7;
}

id __35__MTBaseEventDataProvider_cookies___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) metricsKit];
  v5 = [v4 config];
  v6 = [v5 configValueForKeyPath:@"fieldsMap.cookies" sources:v3];
  v7 = [MTReflectUtil objectAsArray:v6];

  v8 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [MTReflectUtil objectAsString:*(*(&v19 + 1) + 8 * i), v19];
        if ([v14 length])
        {
          v15 = [*(a1 + 40) objectForKeyedSubscript:v14];
          [v8 setValue:v15 forKey:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v16 = [v8 copy];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)dsId:(id)id
{
  idCopy = id;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 dsId:idCopy];
LABEL_5:
    dsId = v8;
    goto LABEL_6;
  }

  v9 = [idCopy objectForKeyedSubscript:@"dsId"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  dsId = [environment dsId];

LABEL_6:

  return dsId;
}

- (id)eventTime:(id)time
{
  timeCopy = time;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    mt_millisecondsSince1970 = [delegate2 eventTime:timeCopy];
  }

  else
  {
    v9 = [timeCopy objectForKeyedSubscript:@"eventTime"];
    delegate2 = v9;
    if (v9)
    {
      mt_millisecondsSince1970 = v9;
      delegate2 = mt_millisecondsSince1970;
    }

    else
    {
      mt_millisecondsSince1970 = [MEMORY[0x277CBEAA8] mt_millisecondsSince1970];
    }
  }

  v10 = mt_millisecondsSince1970;

  return v10;
}

- (id)hardwareFamily:(id)family
{
  familyCopy = family;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 hardwareFamily:familyCopy];
LABEL_5:
    hardwareFamily = v8;
    goto LABEL_6;
  }

  v9 = [familyCopy objectForKeyedSubscript:@"hardwareFamily"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  hardwareFamily = [environment hardwareFamily];

LABEL_6:

  return hardwareFamily;
}

- (id)hardwareModel:(id)model
{
  modelCopy = model;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 hardwareModel:modelCopy];
LABEL_5:
    hardwareModel = v8;
    goto LABEL_6;
  }

  v9 = [modelCopy objectForKeyedSubscript:@"hardwareModel"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  hardwareModel = [environment hardwareModel];

LABEL_6:

  return hardwareModel;
}

- (id)hostApp:(id)app
{
  appCopy = app;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 hostApp:appCopy];
LABEL_5:
    hostApp = v8;
    goto LABEL_6;
  }

  v9 = [appCopy objectForKeyedSubscript:@"hostApp"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  hostApp = [environment hostApp];

LABEL_6:

  return hostApp;
}

- (id)hostAppVersion:(id)version
{
  versionCopy = version;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 hostAppVersion:versionCopy];
LABEL_5:
    hostAppVersion = v8;
    goto LABEL_6;
  }

  v9 = [versionCopy objectForKeyedSubscript:@"hostAppVersion"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  hostAppVersion = [environment hostAppVersion];

LABEL_6:

  return hostAppVersion;
}

- (id)isSignedIn:(id)in
{
  inCopy = in;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 isSignedIn:inCopy];
    goto LABEL_3;
  }

  v10 = [inCopy objectForKeyedSubscript:@"isSignedIn"];

  if (!v10)
  {
    delegate2 = [(MTBaseEventDataProvider *)self dsId:inCopy];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __38__MTBaseEventDataProvider_isSignedIn___block_invoke_2;
      v14[3] = &unk_2798CE760;
      v15 = &__block_literal_global_64;
      v13 = [delegate2 thenWithBlock:v14];
      v9 = [v13 catchWithBlock:&__block_literal_global_69_0];

      goto LABEL_4;
    }

    v8 = __38__MTBaseEventDataProvider_isSignedIn___block_invoke(isKindOfClass, delegate2);
LABEL_3:
    v9 = v8;
LABEL_4:

    goto LABEL_7;
  }

  v9 = [inCopy objectForKeyedSubscript:@"isSignedIn"];
LABEL_7:

  return v9;
}

id __38__MTBaseEventDataProvider_isSignedIn___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = MEMORY[0x277CCA900];
    v4 = v2;
    v5 = [v3 whitespaceCharacterSet];
    v6 = [v4 stringByTrimmingCharactersInSet:v5];

    v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "length") != 0}];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v2, "integerValue") != 0}];
    }

    else
    {
      v7 = MEMORY[0x277CBEC28];
    }
  }

  return v7;
}

id __38__MTBaseEventDataProvider_isSignedIn___block_invoke_2(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = [MTPromise promiseWithResult:v1];

  return v2;
}

- (id)os:(id)os
{
  osCopy = os;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 os:osCopy];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [osCopy objectForKeyedSubscript:@"os"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  v10 = [environment os];

LABEL_6:

  return v10;
}

- (id)osBuildNumber:(id)number
{
  numberCopy = number;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 osBuildNumber:numberCopy];
LABEL_5:
    osBuildNumber = v8;
    goto LABEL_6;
  }

  v9 = [numberCopy objectForKeyedSubscript:@"osBuildNumber"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  osBuildNumber = [environment osBuildNumber];

LABEL_6:

  return osBuildNumber;
}

- (id)osVersion:(id)version
{
  versionCopy = version;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 osVersion:versionCopy];
LABEL_5:
    osVersion = v8;
    goto LABEL_6;
  }

  v9 = [versionCopy objectForKeyedSubscript:@"osVersion"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  osVersion = [environment osVersion];

LABEL_6:

  return osVersion;
}

- (id)page:(id)page
{
  pageCopy = page;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 page:pageCopy];
LABEL_3:

    goto LABEL_10;
  }

  v9 = [pageCopy objectForKeyedSubscript:@"page"];

  if (v9)
  {
    v8 = [pageCopy objectForKeyedSubscript:@"page"];
  }

  else
  {
    v10 = [pageCopy objectForKeyedSubscript:@"pageType"];
    if (v10)
    {
      v11 = v10;
      v12 = [pageCopy objectForKeyedSubscript:@"pageId"];

      if (v12)
      {
        v13 = [pageCopy objectForKeyedSubscript:@"pageType"];
        v14 = [pageCopy objectForKeyedSubscript:@"pageId"];
        metricsKit = [(MTObject *)self metricsKit];
        config = [metricsKit config];
        v17 = [config configValueForKeyPath:@"compoundSeparator" default:@"_"];

        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __32__MTBaseEventDataProvider_page___block_invoke;
        v20[3] = &unk_2798CE7A8;
        v21 = v13;
        v22 = v14;
        v18 = v14;
        delegate2 = v13;
        v8 = [v17 thenWithBlock:v20];

        goto LABEL_3;
      }
    }

    v8 = 0;
  }

LABEL_10:

  return v8;
}

id __32__MTBaseEventDataProvider_page___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", *(a1 + 32), a2, *(a1 + 40)];
  v3 = [MTPromise promiseWithResult:v2];

  return v3;
}

- (id)pageContext:(id)context
{
  contextCopy = context;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 pageContext:contextCopy];
  }

  else
  {
    v8 = [contextCopy objectForKeyedSubscript:@"pageContext"];
  }

  return v8;
}

- (id)pageDetails:(id)details
{
  detailsCopy = details;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 pageDetails:detailsCopy];
  }

  else
  {
    v8 = [detailsCopy objectForKeyedSubscript:@"pageDetails"];
  }

  return v8;
}

- (id)pageId:(id)id
{
  idCopy = id;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 pageId:idCopy];
  }

  else
  {
    v8 = [idCopy objectForKeyedSubscript:@"pageId"];
  }

  return v8;
}

- (id)pageType:(id)type
{
  typeCopy = type;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 pageType:typeCopy];
  }

  else
  {
    v8 = [typeCopy objectForKeyedSubscript:@"pageType"];
  }

  return v8;
}

- (id)pageUrl:(id)url
{
  urlCopy = url;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 pageUrl:urlCopy];
LABEL_5:
    pageUrl = v8;
    goto LABEL_6;
  }

  v9 = [urlCopy objectForKeyedSubscript:@"pageUrl"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  pageUrl = [environment pageUrl];

LABEL_6:

  return pageUrl;
}

- (id)parentPageUrl:(id)url
{
  urlCopy = url;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 parentPageUrl:urlCopy];
LABEL_5:
    parentPageUrl = v8;
    goto LABEL_6;
  }

  v9 = [urlCopy objectForKeyedSubscript:@"parentPageUrl"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  parentPageUrl = [environment parentPageUrl];

LABEL_6:

  return parentPageUrl;
}

- (id)pixelRatio:(id)ratio
{
  ratioCopy = ratio;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 pixelRatio:ratioCopy];
LABEL_5:
    pixelRatio = v8;
    goto LABEL_6;
  }

  v9 = [ratioCopy objectForKeyedSubscript:@"pixelRatio"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  pixelRatio = [environment pixelRatio];

LABEL_6:

  return pixelRatio;
}

- (id)resourceRevNum:(id)num
{
  numCopy = num;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 resourceRevNum:numCopy];
LABEL_5:
    resourceRevNum = v8;
    goto LABEL_6;
  }

  v9 = [numCopy objectForKeyedSubscript:@"resourceRevNum"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  resourceRevNum = [environment resourceRevNum];

LABEL_6:

  return resourceRevNum;
}

- (id)screenHeight:(id)height
{
  heightCopy = height;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 screenHeight:heightCopy];
LABEL_5:
    screenHeight = v8;
    goto LABEL_6;
  }

  v9 = [heightCopy objectForKeyedSubscript:@"screenHeight"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  screenHeight = [environment screenHeight];

LABEL_6:

  return screenHeight;
}

- (id)screenWidth:(id)width
{
  widthCopy = width;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 screenWidth:widthCopy];
LABEL_5:
    screenWidth = v8;
    goto LABEL_6;
  }

  v9 = [widthCopy objectForKeyedSubscript:@"screenWidth"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  screenWidth = [environment screenWidth];

LABEL_6:

  return screenWidth;
}

- (id)storeFrontHeader:(id)header
{
  headerCopy = header;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 storeFrontHeader:headerCopy];
LABEL_5:
    storeFrontHeader = v8;
    goto LABEL_6;
  }

  v9 = [headerCopy objectForKeyedSubscript:@"storeFrontHeader"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  storeFrontHeader = [environment storeFrontHeader];

LABEL_6:

  return storeFrontHeader;
}

- (id)timezoneOffset:(id)offset
{
  offsetCopy = offset;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 timezoneOffset:offsetCopy];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [offsetCopy objectForKeyedSubscript:@"timezoneOffset"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  v12 = MEMORY[0x277CCABB0];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  secondsFromGMT = [localTimeZone secondsFromGMT];
  v15 = ((secondsFromGMT * 0x7777777777777777) >> 64) - secondsFromGMT;
  v10 = [v12 numberWithInteger:(v15 >> 5) + (v15 >> 63)];

LABEL_6:

  return v10;
}

- (id)userAgent:(id)agent
{
  agentCopy = agent;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 userAgent:agentCopy];
LABEL_5:
    userAgent = v8;
    goto LABEL_6;
  }

  v9 = [agentCopy objectForKeyedSubscript:@"userAgent"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  userAgent = [environment userAgent];

LABEL_6:

  return userAgent;
}

- (id)windowInnerHeight:(id)height
{
  heightCopy = height;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 windowInnerHeight:heightCopy];
LABEL_5:
    windowInnerHeight = v8;
    goto LABEL_6;
  }

  v9 = [heightCopy objectForKeyedSubscript:@"windowInnerHeight"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  windowInnerHeight = [environment windowInnerHeight];

LABEL_6:

  return windowInnerHeight;
}

- (id)windowInnerWidth:(id)width
{
  widthCopy = width;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 windowInnerWidth:widthCopy];
LABEL_5:
    windowInnerWidth = v8;
    goto LABEL_6;
  }

  v9 = [widthCopy objectForKeyedSubscript:@"windowInnerWidth"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  windowInnerWidth = [environment windowInnerWidth];

LABEL_6:

  return windowInnerWidth;
}

- (id)windowOuterHeight:(id)height
{
  heightCopy = height;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 windowOuterHeight:heightCopy];
LABEL_5:
    windowOuterHeight = v8;
    goto LABEL_6;
  }

  v9 = [heightCopy objectForKeyedSubscript:@"windowOuterHeight"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  windowOuterHeight = [environment windowOuterHeight];

LABEL_6:

  return windowOuterHeight;
}

- (id)windowOuterWidth:(id)width
{
  widthCopy = width;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 windowOuterWidth:widthCopy];
LABEL_5:
    windowOuterWidth = v8;
    goto LABEL_6;
  }

  v9 = [widthCopy objectForKeyedSubscript:@"windowOuterWidth"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  windowOuterWidth = [environment windowOuterWidth];

LABEL_6:

  return windowOuterWidth;
}

- (id)xpPostFrequency:(id)frequency
{
  frequencyCopy = frequency;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 xpPostFrequency:frequencyCopy];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [frequencyCopy objectForKeyedSubscript:@"xpPostFrequency"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  config = [metricsKit config];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __43__MTBaseEventDataProvider_xpPostFrequency___block_invoke;
  v14[3] = &unk_2798CD4D0;
  v14[4] = self;
  v10 = [config computeWithConfigSources:v14];

LABEL_6:

  return v10;
}

id __43__MTBaseEventDataProvider_xpPostFrequency___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metricsKit];
  v5 = [v4 config];
  v6 = [v5 configValueForKeyPath:@"postFrequency" sources:v3];

  return v6;
}

- (id)xpSendMethod:(id)method
{
  methodCopy = method;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 xpSendMethod:methodCopy];
LABEL_5:
    sendMethod = v8;
    goto LABEL_6;
  }

  v9 = [methodCopy objectForKeyedSubscript:@"xpSendMethod"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  eventRecorder = [system eventRecorder];
  sendMethod = [eventRecorder sendMethod];

LABEL_6:

  return sendMethod;
}

- (id)xpVersionMetricsKit:(id)kit
{
  kitCopy = kit;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 xpVersionMetricsKit:kitCopy];
  }

  else
  {
    v8 = [kitCopy objectForKeyedSubscript:@"xpVersionMetricsKit"];
    if (!v8)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __47__MTBaseEventDataProvider_xpVersionMetricsKit___block_invoke;
      block[3] = &unk_2798CD868;
      block[4] = self;
      if (xpVersionMetricsKit__onceToken != -1)
      {
        dispatch_once(&xpVersionMetricsKit__onceToken, block);
      }

      v8 = xpVersionMetricsKit__bundleVersion;
    }
  }

  return v8;
}

void __47__MTBaseEventDataProvider_xpVersionMetricsKit___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v2 infoDictionary];

  v3 = [v5 valueForKey:@"CFBundleShortVersionString"];
  v4 = xpVersionMetricsKit__bundleVersion;
  xpVersionMetricsKit__bundleVersion = v3;
}

@end