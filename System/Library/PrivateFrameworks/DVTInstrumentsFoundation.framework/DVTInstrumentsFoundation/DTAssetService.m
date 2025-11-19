@interface DTAssetService
+ (id)translatedManifest:(id)a3 withAssetServicePort:(unsigned int)a4;
- (id)registerApplicationIdentifier:(id)a3 manifest:(id)a4;
- (id)startServer;
- (id)startServerForApplicationWithDevicePath:(id)a3;
- (void)appendAllowedResources:(id)a3;
- (void)connectToOnDemandDaemon;
- (void)messageReceived:(id)a3;
@end

@implementation DTAssetService

+ (id)translatedManifest:(id)a3 withAssetServicePort:(unsigned int)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"resources"];
  v7 = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v9)
  {
    v24 = v8;
LABEL_18:

    goto LABEL_20;
  }

  v29 = 0;
  v10 = *v33;
  v27 = v5;
  v28 = a4;
  v30 = v8;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v33 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v12 = *(*(&v32 + 1) + 8 * i);
      v13 = [v12 mutableCopy];
      v14 = MEMORY[0x277CBEBC0];
      v15 = [v12 objectForKeyedSubscript:@"URL"];
      v16 = [v14 URLWithString:v15];

      if (v16)
      {
        v17 = [v16 scheme];
        if ([v17 hasPrefix:@"http"])
        {
          v18 = [v16 host];
          if ([v18 isEqual:@"localhost"])
          {
          }

          else
          {
            v19 = [v16 host];
            v20 = [v19 isEqual:@"127.0.0.1"];

            v8 = v30;
            if (!v20)
            {
              goto LABEL_13;
            }
          }

          v21 = [v16 path];
          v22 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
          v17 = [v21 stringByAddingPercentEncodingWithAllowedCharacters:v22];

          v8 = v30;
          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"http://localhost:%li%@", v28, v17];
          [v13 setObject:v23 forKeyedSubscript:@"URL"];
          [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isStreamable"];

          v29 = 1;
        }
      }

LABEL_13:
      [v7 addObject:v13];
    }

    v9 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
  }

  while (v9);

  if (v29)
  {
    v5 = v27;
    v24 = [v27 mutableCopy];
    [v24 setObject:v7 forKeyedSubscript:@"resources"];
    v31 = 0;
    v9 = [MEMORY[0x277CCAC58] dataWithPropertyList:v24 format:100 options:0 error:&v31];
    goto LABEL_18;
  }

  v9 = 0;
  v5 = v27;
LABEL_20:

  v25 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)messageReceived:(id)a3
{
  v5 = a3;
  if (*MEMORY[0x277D03698] == v5)
  {
    v4 = [(DTAssetService *)self server];
    [v4 stopListening];
  }

  else
  {
    v4 = +[DTAssetResponseBroker sharedBroker];
    [v4 forwardMessage:v5];
  }
}

- (id)startServerForApplicationWithDevicePath:(id)a3
{
  v4 = a3;
  v5 = [(DTAssetService *)self startServer];
  v6 = [MEMORY[0x277CCA8D8] bundleWithPath:v4];

  v7 = [v6 pathForResource:@"AssetPackManifestTemplate" ofType:@"plist"];
  if (!v7)
  {
    v7 = [v6 pathForResource:@"AssetPackManifest" ofType:@"plist"];
  }

  v8 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v7];
  v9 = +[DTAssetService translatedManifest:withAssetServicePort:](DTAssetService, "translatedManifest:withAssetServicePort:", v8, [v5 unsignedIntValue]);
  v10 = [v6 bundleIdentifier];
  if (v9)
  {
    [(DTAssetService *)self appendAllowedResources:v9];
    v11 = objc_opt_new();
    v12 = [(DTAssetService *)self ondemandConnection];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_247F7C080;
    v22[3] = &unk_278EF1948;
    v13 = v11;
    v23 = v13;
    v14 = [v12 remoteObjectProxyWithErrorHandler:v22];

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_247F7C090;
    v19[3] = &unk_278EF1970;
    v15 = v13;
    v20 = v15;
    v21 = v5;
    v16 = v5;
    [v14 registerManifest:v9 forBundleID:v10 replyBlock:v19];
    v17 = v21;
    v5 = v15;
  }

  return v5;
}

- (id)startServer
{
  v3 = [(DTAssetService *)self server];

  if (!v3)
  {
    v4 = objc_alloc_init(DTAssetHTTPServer);
    [(DTAssetService *)self setServer:v4];

    v5 = [(DTXService *)self channel];
    v6 = [(DTAssetService *)self server];
    [v6 setChannel:v5];

    v7 = [(DTAssetService *)self server];
    [v7 startListeningWithError:0];
  }

  [(DTAssetService *)self connectToOnDemandDaemon];
  v8 = MEMORY[0x277CCABB0];
  v9 = [(DTAssetService *)self server];
  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v9, "port")}];

  return v10;
}

- (void)connectToOnDemandDaemon
{
  v3 = [(DTAssetService *)self ondemandConnection];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.ondemandd.devtools" options:4096];
    [(DTAssetService *)self setOndemandConnection:v4];

    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285A4DCA8];
    v6 = [(DTAssetService *)self ondemandConnection];
    [v6 setRemoteObjectInterface:v5];

    objc_initWeak(&location, self);
    v9 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v10, &location);
    v7 = [(DTAssetService *)self ondemandConnection:v9];
    [v7 setInvalidationHandler:&v9];

    v8 = [(DTAssetService *)self ondemandConnection];
    [v8 resume];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (id)registerApplicationIdentifier:(id)a3 manifest:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [(DTAssetService *)self appendAllowedResources:v6];
  v9 = [(DTAssetService *)self ondemandConnection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_247F7C4D8;
  v18[3] = &unk_278EF1948;
  v10 = v8;
  v19 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_247F7C4E8;
  v16[3] = &unk_278EF1948;
  v12 = v10;
  v17 = v12;
  [v11 registerManifest:v6 forBundleID:v7 replyBlock:v16];

  v13 = v17;
  v14 = v12;

  return v12;
}

- (void)appendAllowedResources:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [MEMORY[0x277CCAC58] propertyListWithData:v4 options:0 format:0 error:0];
  v7 = [v6 objectForKeyedSubscript:@"resources"];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v16 + 1) + 8 * v11) objectForKeyedSubscript:@"URL"];
        [v5 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [v5 copy];
  v14 = [(DTAssetService *)self server];
  [v14 setAllowedResources:v13];

  v15 = *MEMORY[0x277D85DE8];
}

@end