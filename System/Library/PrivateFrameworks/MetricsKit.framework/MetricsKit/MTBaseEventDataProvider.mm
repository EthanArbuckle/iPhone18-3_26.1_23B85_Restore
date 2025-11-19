@interface MTBaseEventDataProvider
- (id)app:(id)a3;
- (id)appVersion:(id)a3;
- (id)baseVersion:(id)a3;
- (id)capacityData:(id)a3;
- (id)capacityDataAvailable:(id)a3;
- (id)capacityDisk:(id)a3;
- (id)capacitySystem:(id)a3;
- (id)capacitySystemAvailable:(id)a3;
- (id)clientEventId:(id)a3;
- (id)clientId:(id)a3;
- (id)connection:(id)a3;
- (id)cookies:(id)a3;
- (id)dsId:(id)a3;
- (id)eventTime:(id)a3;
- (id)fetchAllCookies;
- (id)hardwareFamily:(id)a3;
- (id)hardwareModel:(id)a3;
- (id)hostApp:(id)a3;
- (id)hostAppVersion:(id)a3;
- (id)isSignedIn:(id)a3;
- (id)knownFields;
- (id)os:(id)a3;
- (id)osBuildNumber:(id)a3;
- (id)osVersion:(id)a3;
- (id)page:(id)a3;
- (id)pageContext:(id)a3;
- (id)pageDetails:(id)a3;
- (id)pageId:(id)a3;
- (id)pageType:(id)a3;
- (id)pageUrl:(id)a3;
- (id)parentPageUrl:(id)a3;
- (id)pixelRatio:(id)a3;
- (id)resourceRevNum:(id)a3;
- (id)screenHeight:(id)a3;
- (id)screenWidth:(id)a3;
- (id)storeFrontHeader:(id)a3;
- (id)timezoneOffset:(id)a3;
- (id)userAgent:(id)a3;
- (id)windowInnerHeight:(id)a3;
- (id)windowInnerWidth:(id)a3;
- (id)windowOuterHeight:(id)a3;
- (id)windowOuterWidth:(id)a3;
- (id)xpPostFrequency:(id)a3;
- (id)xpSendMethod:(id)a3;
- (id)xpVersionMetricsKit:(id)a3;
@end

@implementation MTBaseEventDataProvider

- (id)knownFields
{
  v3 = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MTEventDataProvider *)self delegate];
    v6 = [v5 knownFields];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)app:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 app:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"app"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 app];

LABEL_6:

  return v10;
}

- (id)appVersion:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 appVersion:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"appVersion"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 appVersion];

LABEL_6:

  return v10;
}

- (id)baseVersion:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 baseVersion:v4];
  }

  else
  {
    v9 = [v4 objectForKeyedSubscript:@"baseVersion"];
    v7 = v9;
    if (v9)
    {
      v8 = v9;
      v7 = v8;
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:1];
    }
  }

  v10 = v8;

  return v10;
}

- (id)capacityData:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 capacityData:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"capacityData"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 capacityData];

LABEL_6:

  return v10;
}

- (id)capacityDataAvailable:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 capacityDataAvailable:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"capacityDataAvailable"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 capacityDataAvailable];

LABEL_6:

  return v10;
}

- (id)capacityDisk:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 capacityDisk:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"capacityDisk"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 capacityDisk];

LABEL_6:

  return v10;
}

- (id)capacitySystem:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 capacitySystem:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"capacitySystem"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 capacitySystem];

LABEL_6:

  return v10;
}

- (id)capacitySystemAvailable:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 capacitySystemAvailable:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"capacityDataAvailable"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 capacitySystemAvailable];

LABEL_6:

  return v10;
}

- (id)fetchAllCookies
{
  v2 = [(MTObject *)self metricsKit];
  v3 = [v2 system];
  v4 = [v3 environment];
  v5 = [v4 cookies];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v5 = MEMORY[0x277CBEC10];
    }

    v6 = [MTPromise promiseWithResult:v5];

    v5 = v6;
  }

  return v5;
}

- (id)clientEventId:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 clientEventId:v4];
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCAD78] UUID];
    v10 = [v7 mt_base62String];
    v8 = [v9 stringWithFormat:@"1_1_%@", v10];
  }

  return v8;
}

- (id)clientId:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 clientId:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"clientId"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 config];
  v14 = [v13 configValueForKeyPath:@"ignoreClientIdCookie" default:MEMORY[0x277CBEC28]];

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

- (id)connection:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 connection:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"connection"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 connectionType];

LABEL_6:

  return v10;
}

- (id)cookies:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 cookies:v4];
  }

  else
  {
    v7 = [(MTBaseEventDataProvider *)self fetchAllCookies];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __35__MTBaseEventDataProvider_cookies___block_invoke;
    v11[3] = &unk_2798CD570;
    v11[4] = self;
    v8 = [v7 thenWithBlock:v11];
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

- (id)dsId:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 dsId:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"dsId"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 dsId];

LABEL_6:

  return v10;
}

- (id)eventTime:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 eventTime:v4];
  }

  else
  {
    v9 = [v4 objectForKeyedSubscript:@"eventTime"];
    v7 = v9;
    if (v9)
    {
      v8 = v9;
      v7 = v8;
    }

    else
    {
      v8 = [MEMORY[0x277CBEAA8] mt_millisecondsSince1970];
    }
  }

  v10 = v8;

  return v10;
}

- (id)hardwareFamily:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 hardwareFamily:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"hardwareFamily"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 hardwareFamily];

LABEL_6:

  return v10;
}

- (id)hardwareModel:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 hardwareModel:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"hardwareModel"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 hardwareModel];

LABEL_6:

  return v10;
}

- (id)hostApp:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 hostApp:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"hostApp"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 hostApp];

LABEL_6:

  return v10;
}

- (id)hostAppVersion:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 hostAppVersion:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"hostAppVersion"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 hostAppVersion];

LABEL_6:

  return v10;
}

- (id)isSignedIn:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 isSignedIn:v4];
    goto LABEL_3;
  }

  v10 = [v4 objectForKeyedSubscript:@"isSignedIn"];

  if (!v10)
  {
    v7 = [(MTBaseEventDataProvider *)self dsId:v4];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __38__MTBaseEventDataProvider_isSignedIn___block_invoke_2;
      v14[3] = &unk_2798CE760;
      v15 = &__block_literal_global_64;
      v13 = [v7 thenWithBlock:v14];
      v9 = [v13 catchWithBlock:&__block_literal_global_69_0];

      goto LABEL_4;
    }

    v8 = __38__MTBaseEventDataProvider_isSignedIn___block_invoke(isKindOfClass, v7);
LABEL_3:
    v9 = v8;
LABEL_4:

    goto LABEL_7;
  }

  v9 = [v4 objectForKeyedSubscript:@"isSignedIn"];
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

- (id)os:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 os:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"os"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 os];

LABEL_6:

  return v10;
}

- (id)osBuildNumber:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 osBuildNumber:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"osBuildNumber"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 osBuildNumber];

LABEL_6:

  return v10;
}

- (id)osVersion:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 osVersion:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"osVersion"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 osVersion];

LABEL_6:

  return v10;
}

- (id)page:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 page:v4];
LABEL_3:

    goto LABEL_10;
  }

  v9 = [v4 objectForKeyedSubscript:@"page"];

  if (v9)
  {
    v8 = [v4 objectForKeyedSubscript:@"page"];
  }

  else
  {
    v10 = [v4 objectForKeyedSubscript:@"pageType"];
    if (v10)
    {
      v11 = v10;
      v12 = [v4 objectForKeyedSubscript:@"pageId"];

      if (v12)
      {
        v13 = [v4 objectForKeyedSubscript:@"pageType"];
        v14 = [v4 objectForKeyedSubscript:@"pageId"];
        v15 = [(MTObject *)self metricsKit];
        v16 = [v15 config];
        v17 = [v16 configValueForKeyPath:@"compoundSeparator" default:@"_"];

        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __32__MTBaseEventDataProvider_page___block_invoke;
        v20[3] = &unk_2798CE7A8;
        v21 = v13;
        v22 = v14;
        v18 = v14;
        v7 = v13;
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

- (id)pageContext:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 pageContext:v4];
  }

  else
  {
    v8 = [v4 objectForKeyedSubscript:@"pageContext"];
  }

  return v8;
}

- (id)pageDetails:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 pageDetails:v4];
  }

  else
  {
    v8 = [v4 objectForKeyedSubscript:@"pageDetails"];
  }

  return v8;
}

- (id)pageId:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 pageId:v4];
  }

  else
  {
    v8 = [v4 objectForKeyedSubscript:@"pageId"];
  }

  return v8;
}

- (id)pageType:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 pageType:v4];
  }

  else
  {
    v8 = [v4 objectForKeyedSubscript:@"pageType"];
  }

  return v8;
}

- (id)pageUrl:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 pageUrl:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"pageUrl"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 pageUrl];

LABEL_6:

  return v10;
}

- (id)parentPageUrl:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 parentPageUrl:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"parentPageUrl"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 parentPageUrl];

LABEL_6:

  return v10;
}

- (id)pixelRatio:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 pixelRatio:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"pixelRatio"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 pixelRatio];

LABEL_6:

  return v10;
}

- (id)resourceRevNum:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 resourceRevNum:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"resourceRevNum"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 resourceRevNum];

LABEL_6:

  return v10;
}

- (id)screenHeight:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 screenHeight:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"screenHeight"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 screenHeight];

LABEL_6:

  return v10;
}

- (id)screenWidth:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 screenWidth:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"screenWidth"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 screenWidth];

LABEL_6:

  return v10;
}

- (id)storeFrontHeader:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 storeFrontHeader:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"storeFrontHeader"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 storeFrontHeader];

LABEL_6:

  return v10;
}

- (id)timezoneOffset:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 timezoneOffset:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"timezoneOffset"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = MEMORY[0x277CCABB0];
  v13 = [MEMORY[0x277CBEBB0] localTimeZone];
  v14 = [v13 secondsFromGMT];
  v15 = ((v14 * 0x7777777777777777) >> 64) - v14;
  v10 = [v12 numberWithInteger:(v15 >> 5) + (v15 >> 63)];

LABEL_6:

  return v10;
}

- (id)userAgent:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 userAgent:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"userAgent"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 userAgent];

LABEL_6:

  return v10;
}

- (id)windowInnerHeight:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 windowInnerHeight:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"windowInnerHeight"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 windowInnerHeight];

LABEL_6:

  return v10;
}

- (id)windowInnerWidth:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 windowInnerWidth:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"windowInnerWidth"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 windowInnerWidth];

LABEL_6:

  return v10;
}

- (id)windowOuterHeight:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 windowOuterHeight:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"windowOuterHeight"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 windowOuterHeight];

LABEL_6:

  return v10;
}

- (id)windowOuterWidth:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 windowOuterWidth:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"windowOuterWidth"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 windowOuterWidth];

LABEL_6:

  return v10;
}

- (id)xpPostFrequency:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 xpPostFrequency:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"xpPostFrequency"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 config];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __43__MTBaseEventDataProvider_xpPostFrequency___block_invoke;
  v14[3] = &unk_2798CD4D0;
  v14[4] = self;
  v10 = [v13 computeWithConfigSources:v14];

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

- (id)xpSendMethod:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 xpSendMethod:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"xpSendMethod"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 eventRecorder];
  v10 = [v14 sendMethod];

LABEL_6:

  return v10;
}

- (id)xpVersionMetricsKit:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 xpVersionMetricsKit:v4];
  }

  else
  {
    v8 = [v4 objectForKeyedSubscript:@"xpVersionMetricsKit"];
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