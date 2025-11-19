@interface DebugHierarchyRequest
+ (DebugHierarchyRequest)requestWithBase64Data:(id)a3 error:(id *)a4;
+ (DebugHierarchyRequest)requestWithDictionary:(id)a3;
+ (DebugHierarchyRequest)requestWithDiscoveryType:(int64_t)a3 actions:(id)a4 completion:(id)a5;
+ (DebugHierarchyRequest)requestWithName:(id)a3 discoveryType:(int64_t)a4 actions:(id)a5 completion:(id)a6;
+ (id)_compatibleRequestWithDictionary:(id)a3;
+ (id)_requestWithV1RequestDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (DebugHierarchyRequest)init;
- (DebugHierarchyRequest)initWithDictionary:(id)a3;
- (DebugHierarchyRequest)initWithWithDiscoveryType:(int64_t)a3 actions:(id)a4 completion:(id)a5;
- (NSString)base64Encoded;
- (id)debugDescription;
- (id)dictionaryRepresentation;
- (id)formattedResponseDataForRawRequestResultData:(id)a3;
- (id)humanReadableStatusMessage;
- (void)addLogEntry:(id)a3;
- (void)cancel;
@end

@implementation DebugHierarchyRequest

+ (DebugHierarchyRequest)requestWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDictionary:v4];

  return v5;
}

- (DebugHierarchyRequest)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(DebugHierarchyRequest *)self init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"DBGHierarchyRequestIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 objectForKeyedSubscript:@"DBGHierarchyRequestName"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [v4 objectForKeyedSubscript:@"DBGHierarchyRequestInitiatorVersionKey"];
    [v10 floatValue];
    v5->_initiatorVersion = v11;

    v12 = [v4 objectForKeyedSubscript:@"DBGHierarchyRequestPriority"];
    v5->_priority = [v12 integerValue];

    v13 = [v4 objectForKeyedSubscript:@"DBGHierarchyRequestPayload"];
    payload = v5->_payload;
    v5->_payload = v13;

    v15 = [v4 objectForKeyedSubscript:@"DBGHierarchyObjectDiscovery"];
    v5->_objectDiscovery = [v15 unsignedIntegerValue];

    v16 = [v4 objectForKeyedSubscript:@"DBGHierarchyRequestTransportCompression"];
    v5->_compressDuringTransport = [v16 BOOLValue];

    v17 = [v4 objectForKeyedSubscript:@"DBGHierarchyCrawlerOptions"];
    if (v17)
    {
      v18 = [[DebugHierarchyCrawlerOptions alloc] initWithDictionary:v17];
      crawlerOptions = v5->_crawlerOptions;
      v5->_crawlerOptions = v18;
    }

    v20 = [v4 objectForKeyedSubscript:@"DBGHierarchyRequestActions"];
    if ([v20 count])
    {
      v21 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v20 count]);
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v22 = v20;
      v23 = v20;
      v24 = [v23 countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v48;
        do
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v48 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = DebugHierarchyRequestActionForDictionary(*(*(&v47 + 1) + 8 * i));
            if (v28)
            {
              [v21 addObject:v28];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v47 objects:v52 count:16];
        }

        while (v25);
      }

      v29 = [v21 copy];
      actions = v5->_actions;
      v5->_actions = v29;

      v20 = v22;
    }

    v31 = [v4 objectForKeyedSubscript:@"logs"];
    if ([v31 count])
    {
      v42 = v17;
      v32 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v31 count]);
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v33 = v31;
      v34 = [v33 countByEnumeratingWithState:&v43 objects:v51 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v44;
        do
        {
          for (j = 0; j != v35; j = j + 1)
          {
            if (*v44 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = [DebugHierarchyLogEntry logEntryWithDictionary:*(*(&v43 + 1) + 8 * j)];
            [v32 addObject:v38];
          }

          v35 = [v33 countByEnumeratingWithState:&v43 objects:v51 count:16];
        }

        while (v35);
      }

      v39 = [v32 copy];
      logs = v5->_logs;
      v5->_logs = v39;

      v17 = v42;
    }
  }

  return v5;
}

+ (DebugHierarchyRequest)requestWithDiscoveryType:(int64_t)a3 actions:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[a1 alloc] initWithWithDiscoveryType:a3 actions:v9 completion:v8];

  return v10;
}

+ (DebugHierarchyRequest)requestWithName:(id)a3 discoveryType:(int64_t)a4 actions:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [[a1 alloc] initWithWithDiscoveryType:a4 actions:v11 completion:v10];

  [v13 setName:v12];

  return v13;
}

- (DebugHierarchyRequest)initWithWithDiscoveryType:(int64_t)a3 actions:(id)a4 completion:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = [(DebugHierarchyRequest *)self init];
  if (v11)
  {
    v12 = +[NSUUID UUID];
    v13 = [v12 UUIDString];
    identifier = v11->_identifier;
    v11->_identifier = v13;

    +[DebugHierarchyTargetHub debugHierarchyVersion];
    v11->_initiatorVersion = v15;
    objc_storeStrong(&v11->_actions, a4);
    v11->_objectDiscovery = a3;
    v16 = objc_retainBlock(v10);
    completion = v11->_completion;
    v11->_completion = v16;

    v11->_compressDuringTransport = 1;
  }

  return v11;
}

- (DebugHierarchyRequest)init
{
  v3.receiver = self;
  v3.super_class = DebugHierarchyRequest;
  result = [(DebugHierarchyRequest *)&v3 init];
  if (result)
  {
    result->_timeout = 60.0;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(DebugHierarchyRequest *)self identifier];
    v6 = [v4 identifier];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)cancel
{
  [(DebugHierarchyRequest *)self setStatus:-1];
  v3 = [(DebugHierarchyRequest *)self completion];

  if (v3)
  {
    v4 = [(DebugHierarchyRequest *)self completion];
    v4[2](v4, self);
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(DebugHierarchyRequest *)self identifier];
  [v3 setObject:v4 forKeyedSubscript:@"DBGHierarchyRequestIdentifier"];

  v5 = [(DebugHierarchyRequest *)self name];
  [v3 setObject:v5 forKeyedSubscript:@"DBGHierarchyRequestName"];

  [(DebugHierarchyRequest *)self initiatorVersion];
  v6 = [NSNumber numberWithFloat:?];
  [v3 setObject:v6 forKeyedSubscript:@"DBGHierarchyRequestInitiatorVersionKey"];

  v7 = [NSNumber numberWithInteger:[(DebugHierarchyRequest *)self priority]];
  [v3 setObject:v7 forKeyedSubscript:@"DBGHierarchyRequestPriority"];

  v8 = [NSNumber numberWithInteger:[(DebugHierarchyRequest *)self objectDiscovery]];
  [v3 setObject:v8 forKeyedSubscript:@"DBGHierarchyObjectDiscovery"];

  v9 = [NSNumber numberWithBool:[(DebugHierarchyRequest *)self compressDuringTransport]];
  [v3 setObject:v9 forKeyedSubscript:@"DBGHierarchyRequestTransportCompression"];

  v10 = [(DebugHierarchyRequest *)self payload];

  if (v10)
  {
    v11 = [(DebugHierarchyRequest *)self payload];
    [v3 setObject:v11 forKey:@"DBGHierarchyRequestPayload"];
  }

  v12 = [(DebugHierarchyRequest *)self crawlerOptions];

  if (v12)
  {
    v13 = [(DebugHierarchyRequest *)self crawlerOptions];
    v14 = [v13 dictionaryRepresentation];
    [v3 setObject:v14 forKeyedSubscript:@"DBGHierarchyCrawlerOptions"];
  }

  v15 = [(DebugHierarchyRequest *)self actions];
  v16 = [v15 count];

  if (v16)
  {
    v17 = [(DebugHierarchyRequest *)self actions];
    v18 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v17 count]);

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v19 = [(DebugHierarchyRequest *)self actions];
    v20 = [v19 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v44;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v44 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v43 + 1) + 8 * i) dictionaryRepresentation];
          [v18 addObject:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v21);
    }

    v25 = [v18 copy];
    [v3 setObject:v25 forKeyedSubscript:@"DBGHierarchyRequestActions"];
  }

  v26 = [(DebugHierarchyRequest *)self logs];
  v27 = [v26 count];

  if (v27)
  {
    v28 = [(DebugHierarchyRequest *)self logs];
    v29 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v28 count]);

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v30 = [(DebugHierarchyRequest *)self logs];
    v31 = [v30 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v40;
      do
      {
        for (j = 0; j != v32; j = j + 1)
        {
          if (*v40 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = [*(*(&v39 + 1) + 8 * j) dictionaryRepresentation];
          [v29 addObject:v35];
        }

        v32 = [v30 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v32);
    }

    v36 = [v29 copy];
    [v3 setObject:v36 forKeyedSubscript:@"logs"];
  }

  v37 = [v3 copy];

  return v37;
}

- (void)addLogEntry:(id)a3
{
  v4 = a3;
  v5 = [(DebugHierarchyRequest *)self logs];
  v6 = [v5 count];

  if (v6)
  {
    v9 = [(DebugHierarchyRequest *)self logs];
    v7 = [v9 arrayByAddingObject:v4];

    [(DebugHierarchyRequest *)self setLogs:v7];
  }

  else
  {
    v10 = v4;
    v8 = [NSArray arrayWithObjects:&v10 count:1];

    [(DebugHierarchyRequest *)self setLogs:v8];
  }
}

- (NSString)base64Encoded
{
  v2 = [(DebugHierarchyRequest *)self dictionaryRepresentation];
  v3 = [v2 generateJSONDataWithError:0];
  v4 = [v3 base64EncodedStringWithOptions:0];

  return v4;
}

- (id)humanReadableStatusMessage
{
  v3 = [(DebugHierarchyRequest *)self statusMessageActivityPhrase];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(DebugHierarchyRequest *)self status];
    v6 = [(DebugHierarchyRequest *)self statusMessageActivityPhrase];
    v7 = v6;
    if ((v5 + 2) > 5)
    {
      v8 = @"Waiting for %@ to be fetched";
    }

    else
    {
      v8 = off_242D8[v5 + 2];
    }

    v9 = [NSString stringWithFormat:v8, v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)debugDescription
{
  v3 = [(DebugHierarchyRequest *)self dictionaryRepresentation];
  v4 = [NSString stringWithFormat:@"%@ - %@", self, v3];

  return v4;
}

- (id)formattedResponseDataForRawRequestResultData:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v6 = 0;
    goto LABEL_8;
  }

  v6 = v4;
  [(DebugHierarchyRequest *)self initiatorVersion];
  if (v7 >= 3.0)
  {
    if (![(DebugHierarchyRequest *)self compressDuringTransport])
    {
      goto LABEL_8;
    }

    v8 = [v6 dbg_gzipDeflate];
  }

  else
  {
    v8 = [v6 dbg_gzipDeflateRaw];
  }

  v9 = v8;

  v6 = v9;
LABEL_8:

  return v6;
}

+ (DebugHierarchyRequest)requestWithBase64Data:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[NSData alloc] initWithBase64EncodedString:v5 options:0];
  v13 = 0;
  v7 = [NSDictionary dictionaryWithJSONData:v6 error:&v13];
  v8 = v13;
  if (v8 || !v7)
  {
    v10 = objc_opt_class();
    v11 = [v8 description];
    NSLog(&cfstr_ErrorFailedToU.isa, v10, v11);

    v9 = 0;
  }

  else
  {
    v9 = [a1 _compatibleRequestWithDictionary:v7];
  }

  return v9;
}

+ (id)_compatibleRequestWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"DBGHierarchyRequestPredicate"];

  if (v5)
  {
    v6 = [a1 _requestWithV1RequestDictionary:v4];

    [v6 setNeedsCompatibilityConversion:1];
  }

  else
  {
    v6 = [DebugHierarchyRequest requestWithDictionary:v4];
  }

  return v6;
}

+ (id)_requestWithV1RequestDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"DBGHierarchyRequestPredicate"];
  v5 = [v4 objectForKeyedSubscript:@"objectIdentifiers"];
  v6 = [v5 count];
  v7 = +[NSMutableArray array];
  if (v6)
  {
    v8 = [v4 objectForKeyedSubscript:@"propertyDescriptions"];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __77__DebugHierarchyRequest_TargetHubAdditions___requestWithV1RequestDictionary___block_invoke;
    v19[3] = &unk_243F8;
    v20 = v7;
    [(DebugHierarchyPropertyAction *)v8 enumerateKeysAndObjectsUsingBlock:v19];
  }

  else
  {
    v9 = [v4 objectForKeyedSubscript:@"includeLazyValues"];
    v10 = [v9 BOOLValue];

    v8 = objc_alloc_init(DebugHierarchyPropertyAction);
    [(DebugHierarchyPropertyAction *)v8 setObjectIdentifiers:&__NSArray0__struct exlusive:1];
    if ((v10 & 1) == 0)
    {
      [(DebugHierarchyPropertyAction *)v8 setOptions:1 comparisonStyle:3];
    }

    [v7 addObject:v8];
  }

  v11 = [v3 objectForKeyedSubscript:@"DBGHierarchyRequestSpinRunloop"];
  v12 = [v11 BOOLValue];

  if (v12)
  {
    v13 = objc_alloc_init(DebugHierarchyRunLoopAction);
    [v7 addObject:v13];
  }

  if (v6)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  v15 = [DebugHierarchyRequest requestWithDiscoveryType:v14 actions:v7 completion:&__block_literal_global_0];
  v16 = [v3 objectForKeyedSubscript:@"DBGHierarchyRequestIdentifier"];
  [v15 setIdentifier:v16];

  v17 = [v3 objectForKeyedSubscript:@"DBGHierarchyRequestName"];
  [v15 setName:v17];

  return v15;
}

void __77__DebugHierarchyRequest_TargetHubAdditions___requestWithV1RequestDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(DebugHierarchyPropertyAction);
  v22 = v5;
  v8 = [NSArray arrayWithObjects:&v22 count:1];
  [(DebugHierarchyPropertyAction *)v7 setObjectIdentifiers:v8 exlusive:0];

  v9 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * v14) objectForKeyedSubscript:{@"propertyName", v17}];
        if ([v15 length])
        {
          [v9 addObject:v15];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v16 = [v9 copy];
  [(DebugHierarchyPropertyAction *)v7 setPropertyNames:v16 exlusive:0];

  [(DebugHierarchyPropertyAction *)v7 setOptions:0 comparisonStyle:0];
  [*(a1 + 32) addObject:v7];
}

@end