@interface MADownloadOptions
- (MADownloadOptions)init;
- (MADownloadOptions)initWithCoder:(id)coder;
- (MADownloadOptions)initWithPlist:(id)plist;
- (id)description;
- (id)encodeAsPlist;
- (id)tightSummaryIncludingAdditional:(BOOL)additional;
- (void)encodeWithCoder:(id)coder;
- (void)logOptions;
@end

@implementation MADownloadOptions

- (MADownloadOptions)init
{
  v11.receiver = self;
  v11.super_class = MADownloadOptions;
  v2 = [(MADownloadOptions *)&v11 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_discretionary = 1;
    additionalServerParams = v2->_additionalServerParams;
    v2->_additionalServerParams = 0;

    sessionId = v3->_sessionId;
    v3->_sessionId = 0;

    *&v3->_allowsCellularAccess = 0;
    v3->_allowsConstrainedAccess = 0;
    v3->_timeoutIntervalForResource = -1;
    *&v3->_allowsExpensiveAccess = 65537;
    v3->_liveServerCatalogOnlyIsOverridden = 0;
    downloadAuthorizationHeader = v3->_downloadAuthorizationHeader;
    v3->_downloadAuthorizationHeader = 0;

    decryptionKey = v3->_decryptionKey;
    v3->_decryptionKey = 0;

    sourceDirectory = v3->_sourceDirectory;
    v3->_sourceDirectory = 0;

    analyticsData = v3->_analyticsData;
    v3->_analyticsData = 0;

    v3->_allowDaemonConnectionRetries = 0;
  }

  return v3;
}

- (id)encodeAsPlist
{
  v3 = objc_opt_new();
  if (self->_additionalServerParams)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self->_additionalServerParams requiringSecureCoding:1 error:0];
      [v3 setValue:v4 forKey:@"AdditionalServerParams"];
    }
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowsCellularAccess];
  [v3 setValue:v5 forKey:@"allowsCellularAccess"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowsExpensiveAccess];
  [v3 setValue:v6 forKey:@"allowsExpensive"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowsConstrainedAccess];
  [v3 setValue:v7 forKey:@"allowsConstrained"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_requiresPowerPluggedIn];
  [v3 setValue:v8 forKey:@"requiresPowerPluggedIn"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_prefersInfraWiFi];
  [v3 setValue:v9 forKey:@"prefersInfraWiFi"];

  v10 = [MEMORY[0x1E696AD98] numberWithLong:self->_timeoutIntervalForResource];
  [v3 setValue:v10 forKey:@"timeoutIntervalForResource"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_canUseLocalCacheServer];
  [v3 setValue:v11 forKey:@"canUseLocalCacheServer"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_discretionary];
  [v3 setValue:v12 forKey:@"discretionary"];

  decryptionKey = self->_decryptionKey;
  if (decryptionKey)
  {
    [v3 setValue:decryptionKey forKey:@"decryptionKey"];
  }

  sourceDirectory = self->_sourceDirectory;
  if (sourceDirectory)
  {
    [v3 setValue:sourceDirectory forKey:@"sourceDirectory"];
  }

  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowDaemonConnectionRetries];
  [v3 setValue:v15 forKey:@"allowDaemonConnectionRetries"];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_liveServerCatalogOnly];
  [v3 setValue:v16 forKey:@"LiveServerOnly"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_liveServerCatalogOnlyIsOverridden];
  [v3 setValue:v17 forKey:@"LiveServerOnlyIsOverridden"];

  sessionId = self->_sessionId;
  if (sessionId)
  {
    [v3 setValue:sessionId forKey:@"SessionId"];
  }

  analyticsData = [(MADownloadOptions *)self analyticsData];

  if (analyticsData)
  {
    analyticsData2 = [(MADownloadOptions *)self analyticsData];
    [v3 setValue:analyticsData2 forKey:@"AnalyticsData"];
  }

  return v3;
}

- (void)logOptions
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MADownloadOptions *)self description];
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_197AD5000, v3, OS_LOG_TYPE_DEFAULT, "The download options are %{public}@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v21 = MEMORY[0x1E696AEC0];
  allowsCellularAccess = [(MADownloadOptions *)self allowsCellularAccess];
  timeoutIntervalForResource = [(MADownloadOptions *)self timeoutIntervalForResource];
  canUseLocalCacheServer = [(MADownloadOptions *)self canUseLocalCacheServer];
  discretionary = [(MADownloadOptions *)self discretionary];
  disableUI = [(MADownloadOptions *)self disableUI];
  sessionId = [(MADownloadOptions *)self sessionId];
  additionalServerParams = [(MADownloadOptions *)self additionalServerParams];
  v3 = stringWithoutNewlines(additionalServerParams);
  allowsExpensiveAccess = [(MADownloadOptions *)self allowsExpensiveAccess];
  requiresPowerPluggedIn = [(MADownloadOptions *)self requiresPowerPluggedIn];
  prefersInfraWiFi = [(MADownloadOptions *)self prefersInfraWiFi];
  if (self->_liveServerCatalogOnlyIsOverridden)
  {
    liveServerCatalogOnly = self->_liveServerCatalogOnly;
  }

  else
  {
    liveServerCatalogOnly = 0xFFFFFFFFLL;
  }

  downloadAuthorizationHeader = [(MADownloadOptions *)self downloadAuthorizationHeader];
  v8 = @"present";
  if (downloadAuthorizationHeader)
  {
    v9 = @"present";
  }

  else
  {
    v9 = @"not present";
  }

  analyticsData = [(MADownloadOptions *)self analyticsData];
  if (!analyticsData)
  {
    v8 = @"not present";
  }

  v11 = [v21 stringWithFormat:@"MADownloadOptions allowsCellular: %d resourceTimeout: %ld canUseCacheServer: %d discretionary: %d disableUI: %d sessionId: %@ additionalServerParams:%@ allowsExpensiveAccess:%d requiresPowerPluggedIn: %d prefersInfraWiFi: %d liveServerOnly: %d DownloadAuthorizationHeader: %@ analyticsData: %@ allowDaemonConnectionRetries: %d", allowsCellularAccess, timeoutIntervalForResource, canUseLocalCacheServer, discretionary, disableUI, sessionId, v3, allowsExpensiveAccess, requiresPowerPluggedIn, prefersInfraWiFi, liveServerCatalogOnly, v9, v8, -[MADownloadOptions allowDaemonConnectionRetries](self, "allowDaemonConnectionRetries")];

  return v11;
}

- (MADownloadOptions)initWithCoder:(id)coder
{
  v37[8] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v36.receiver = self;
  v36.super_class = MADownloadOptions;
  v5 = [(MADownloadOptions *)&v36 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SessionId"];
    [(MADownloadOptions *)v5 setSessionId:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AdditionalServerParams"];
    v8 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v7 error:0];
    v9 = plistDecodeClasses();
    v10 = [v8 decodeObjectOfClasses:v9 forKey:*MEMORY[0x1E696A508]];

    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v11 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v35 = 0;
        _os_log_impl(&dword_197AD5000, v11, OS_LOG_TYPE_DEFAULT, "Invalid additionalServerParams; not a dictionary. Leaving as nil.", v35, 2u);
      }
    }

    else
    {
      [(MADownloadOptions *)v5 setAdditionalServerParams:v10];
    }

    [v8 finishDecoding];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"allowsCellularAccess"];
    v5->_allowsCellularAccess = [v12 BOOLValue];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"allowsExpensive"];
    v5->_allowsExpensiveAccess = [v13 BOOLValue];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"allowsConstrained"];
    v5->_allowsConstrainedAccess = [v14 BOOLValue];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requiresPowerPluggedIn"];
    v5->_requiresPowerPluggedIn = [v15 BOOLValue];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"prefersInfraWiFi"];
    v5->_prefersInfraWiFi = [v16 BOOLValue];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeoutIntervalForResource"];
    v5->_timeoutIntervalForResource = [v17 longValue];

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"canUseLocalCacheServer"];
    v5->_canUseLocalCacheServer = [v18 BOOLValue];

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"discretionary"];
    v5->_discretionary = [v19 BOOLValue];

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"disableUI"];
    v5->_disableUI = [v20 BOOLValue];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"decryptionKey"];
    decryptionKey = v5->_decryptionKey;
    v5->_decryptionKey = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceDirectory"];
    sourceDirectory = v5->_sourceDirectory;
    v5->_sourceDirectory = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"allowDaemonConnectionRetries"];
    v5->_allowDaemonConnectionRetries = [v25 BOOLValue];

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LiveServerOnly"];
    v5->_liveServerCatalogOnly = [v26 BOOLValue];

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LiveServerOnlyIsOverridden"];
    v5->_liveServerCatalogOnlyIsOverridden = [v27 BOOLValue];

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DownloadAuthorizationHeader"];
    [(MADownloadOptions *)v5 setDownloadAuthorizationHeader:v28];

    v29 = MEMORY[0x1E695DFD8];
    v37[0] = objc_opt_class();
    v37[1] = objc_opt_class();
    v37[2] = objc_opt_class();
    v37[3] = objc_opt_class();
    v37[4] = objc_opt_class();
    v37[5] = objc_opt_class();
    v37[6] = objc_opt_class();
    v37[7] = objc_opt_class();
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:8];
    v31 = [v29 setWithArray:v30];

    v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"AnalyticsData"];
    [(MADownloadOptions *)v5 setAnalyticsData:v32];
  }

  v33 = *MEMORY[0x1E69E9840];
  return v5;
}

- (MADownloadOptions)initWithPlist:(id)plist
{
  plistCopy = plist;
  v21.receiver = self;
  v21.super_class = MADownloadOptions;
  v5 = [(MADownloadOptions *)&v21 init];
  if (v5)
  {
    v6 = getPlistString(plistCopy, @"SessionId");
    [(MADownloadOptions *)v5 setSessionId:v6];

    v7 = getPlistData(plistCopy, @"AdditionalServerParams");
    v8 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v7 error:0];
    v9 = plistDecodeClasses();
    v10 = [v8 decodeObjectOfClasses:v9 forKey:*MEMORY[0x1E696A508]];

    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v11 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_197AD5000, v11, OS_LOG_TYPE_DEFAULT, "Invalid additionalServerParams; not a dictionary. Leaving as nil.", v20, 2u);
      }
    }

    else
    {
      [(MADownloadOptions *)v5 setAdditionalServerParams:v10];
    }

    [v8 finishDecoding];
    v5->_allowsCellularAccess = getPlistNumberAsBool(plistCopy, @"allowsCellularAccess");
    v5->_allowsExpensiveAccess = getPlistNumberAsBool(plistCopy, @"allowsExpensive");
    v5->_allowsConstrainedAccess = getPlistNumberAsBool(plistCopy, @"allowsConstrained");
    v5->_requiresPowerPluggedIn = getPlistNumberAsBool(plistCopy, @"requiresPowerPluggedIn");
    v5->_prefersInfraWiFi = getPlistNumberAsBool(plistCopy, @"prefersInfraWiFi");
    v12 = getPlistNumber(plistCopy, @"timeoutIntervalForResource");
    v5->_timeoutIntervalForResource = [v12 longValue];

    v5->_canUseLocalCacheServer = getPlistNumberAsBool(plistCopy, @"canUseLocalCacheServer");
    v5->_discretionary = getPlistNumberAsBool(plistCopy, @"discretionary");
    v13 = getPlistData(plistCopy, @"decryptionKey");
    decryptionKey = v5->_decryptionKey;
    v5->_decryptionKey = v13;

    v15 = getPlistString(plistCopy, @"sourceDirectory");
    sourceDirectory = v5->_sourceDirectory;
    v5->_sourceDirectory = v15;

    v5->_allowDaemonConnectionRetries = getPlistNumberAsBool(plistCopy, @"allowDaemonConnectionRetries");
    v5->_liveServerCatalogOnly = getPlistNumberAsBool(plistCopy, @"LiveServerOnly");
    v5->_liveServerCatalogOnlyIsOverridden = getPlistNumberAsBool(plistCopy, @"LiveServerOnlyIsOverridden");
    v17 = getPlistDictionary(plistCopy, @"AnalyticsData");
    analyticsData = v5->_analyticsData;
    v5->_analyticsData = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self->_additionalServerParams)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self->_additionalServerParams requiringSecureCoding:1 error:0];
      [coderCopy encodeObject:v4 forKey:@"AdditionalServerParams"];
    }
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowsCellularAccess];
  [coderCopy encodeObject:v5 forKey:@"allowsCellularAccess"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowsExpensiveAccess];
  [coderCopy encodeObject:v6 forKey:@"allowsExpensive"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_requiresPowerPluggedIn];
  [coderCopy encodeObject:v7 forKey:@"requiresPowerPluggedIn"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowsConstrainedAccess];
  [coderCopy encodeObject:v8 forKey:@"allowsConstrained"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_prefersInfraWiFi];
  [coderCopy encodeObject:v9 forKey:@"prefersInfraWiFi"];

  v10 = [MEMORY[0x1E696AD98] numberWithLong:self->_timeoutIntervalForResource];
  [coderCopy encodeObject:v10 forKey:@"timeoutIntervalForResource"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_canUseLocalCacheServer];
  [coderCopy encodeObject:v11 forKey:@"canUseLocalCacheServer"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_discretionary];
  [coderCopy encodeObject:v12 forKey:@"discretionary"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_disableUI];
  [coderCopy encodeObject:v13 forKey:@"disableUI"];

  decryptionKey = self->_decryptionKey;
  if (decryptionKey)
  {
    [coderCopy encodeObject:decryptionKey forKey:@"decryptionKey"];
  }

  sourceDirectory = self->_sourceDirectory;
  if (sourceDirectory)
  {
    [coderCopy encodeObject:sourceDirectory forKey:@"sourceDirectory"];
  }

  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowDaemonConnectionRetries];
  [coderCopy encodeObject:v16 forKey:@"allowDaemonConnectionRetries"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_liveServerCatalogOnly];
  [coderCopy encodeObject:v17 forKey:@"LiveServerOnly"];

  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_liveServerCatalogOnlyIsOverridden];
  [coderCopy encodeObject:v18 forKey:@"LiveServerOnlyIsOverridden"];

  downloadAuthorizationHeader = [(MADownloadOptions *)self downloadAuthorizationHeader];
  [coderCopy encodeObject:downloadAuthorizationHeader forKey:@"DownloadAuthorizationHeader"];

  sessionId = self->_sessionId;
  if (sessionId)
  {
    [coderCopy encodeObject:sessionId forKey:@"SessionId"];
  }

  analyticsData = [(MADownloadOptions *)self analyticsData];
  [coderCopy encodeObject:analyticsData forKey:@"AnalyticsData"];
}

- (id)tightSummaryIncludingAdditional:(BOOL)additional
{
  additionalCopy = additional;
  v28 = MEMORY[0x1E696AEC0];
  if ([(MADownloadOptions *)self discretionary])
  {
    v4 = @"Y";
  }

  else
  {
    v4 = @"N";
  }

  if ([(MADownloadOptions *)self allowsCellularAccess])
  {
    v5 = @"Y";
  }

  else
  {
    v5 = @"N";
  }

  if ([(MADownloadOptions *)self allowsExpensiveAccess])
  {
    v6 = @"Y";
  }

  else
  {
    v6 = @"N";
  }

  if ([(MADownloadOptions *)self requiresPowerPluggedIn])
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  if ([(MADownloadOptions *)self canUseLocalCacheServer])
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  if ([(MADownloadOptions *)self prefersInfraWiFi])
  {
    v9 = @"Y";
  }

  else
  {
    v9 = @"N";
  }

  v10 = @"Y";
  if (![(MADownloadOptions *)self liveServerCatalogOnly])
  {
    if ([(MADownloadOptions *)self liveServerCatalogOnlyIsOverridden])
    {
      v10 = @"Y";
    }

    else
    {
      v10 = @"N";
    }
  }

  if ([(MADownloadOptions *)self allowDaemonConnectionRetries])
  {
    v11 = @"Y";
  }

  else
  {
    v11 = @"N";
  }

  v12 = [v28 stringWithFormat:@"disc:%@, cell:%@, expen:%@, power:%@, cache:%@, pwifi:%@, live:%@, retry:%@", v4, v5, v6, v7, v8, v9, v10, v11];
  if (!additionalCopy)
  {
    goto LABEL_31;
  }

  additionalServerParams = [(MADownloadOptions *)self additionalServerParams];
  if (!additionalServerParams)
  {
    goto LABEL_31;
  }

  v14 = additionalServerParams;
  additionalServerParams2 = [(MADownloadOptions *)self additionalServerParams];
  v16 = [additionalServerParams2 count];

  if (v16)
  {
    sessionId = [(MADownloadOptions *)self sessionId];

    v18 = MEMORY[0x1E696AEC0];
    additionalServerParams3 = [(MADownloadOptions *)self additionalServerParams];
    v20 = stringWithoutNewlines(additionalServerParams3);
    v21 = v20;
    if (sessionId)
    {
      sessionId2 = [(MADownloadOptions *)self sessionId];
      v23 = [v18 stringWithFormat:@"%@, +%@, ssn:%@", v12, v21, sessionId2];

      v12 = v23;
    }

    else
    {
      v27 = [v18 stringWithFormat:@"%@, +%@", v12, v20];

      v12 = v27;
    }
  }

  else
  {
LABEL_31:
    sessionId3 = [(MADownloadOptions *)self sessionId];

    if (!sessionId3)
    {
      goto LABEL_34;
    }

    v25 = MEMORY[0x1E696AEC0];
    additionalServerParams3 = [(MADownloadOptions *)self sessionId];
    [v25 stringWithFormat:@"%@, ssn:%@", v12, additionalServerParams3];
    v12 = v21 = v12;
  }

LABEL_34:

  return v12;
}

@end