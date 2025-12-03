@interface DebugHierarchyRequest
+ (DebugHierarchyRequest)requestWithBase64Data:(id)data error:(id *)error;
+ (DebugHierarchyRequest)requestWithDictionary:(id)dictionary;
+ (DebugHierarchyRequest)requestWithDiscoveryType:(int64_t)type actions:(id)actions completion:(id)completion;
+ (DebugHierarchyRequest)requestWithName:(id)name discoveryType:(int64_t)type actions:(id)actions completion:(id)completion;
+ (id)_compatibleRequestWithDictionary:(id)dictionary;
+ (id)_requestWithV1RequestDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (DebugHierarchyRequest)init;
- (DebugHierarchyRequest)initWithDictionary:(id)dictionary;
- (DebugHierarchyRequest)initWithWithDiscoveryType:(int64_t)type actions:(id)actions completion:(id)completion;
- (NSString)base64Encoded;
- (id)debugDescription;
- (id)dictionaryRepresentation;
- (id)formattedResponseDataForRawRequestResultData:(id)data;
- (id)humanReadableStatusMessage;
- (void)addLogEntry:(id)entry;
- (void)cancel;
@end

@implementation DebugHierarchyRequest

+ (DebugHierarchyRequest)requestWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[self alloc] initWithDictionary:dictionaryCopy];

  return v5;
}

- (DebugHierarchyRequest)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(DebugHierarchyRequest *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"DBGHierarchyRequestIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"DBGHierarchyRequestName"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"DBGHierarchyRequestInitiatorVersionKey"];
    [v10 floatValue];
    v5->_initiatorVersion = v11;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"DBGHierarchyRequestPriority"];
    v5->_priority = [v12 integerValue];

    v13 = [dictionaryCopy objectForKeyedSubscript:@"DBGHierarchyRequestPayload"];
    payload = v5->_payload;
    v5->_payload = v13;

    v15 = [dictionaryCopy objectForKeyedSubscript:@"DBGHierarchyObjectDiscovery"];
    v5->_objectDiscovery = [v15 unsignedIntegerValue];

    v16 = [dictionaryCopy objectForKeyedSubscript:@"DBGHierarchyRequestTransportCompression"];
    v5->_compressDuringTransport = [v16 BOOLValue];

    v17 = [dictionaryCopy objectForKeyedSubscript:@"DBGHierarchyCrawlerOptions"];
    if (v17)
    {
      v18 = [[DebugHierarchyCrawlerOptions alloc] initWithDictionary:v17];
      crawlerOptions = v5->_crawlerOptions;
      v5->_crawlerOptions = v18;
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"DBGHierarchyRequestActions"];
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

    v31 = [dictionaryCopy objectForKeyedSubscript:@"logs"];
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

+ (DebugHierarchyRequest)requestWithDiscoveryType:(int64_t)type actions:(id)actions completion:(id)completion
{
  completionCopy = completion;
  actionsCopy = actions;
  v10 = [[self alloc] initWithWithDiscoveryType:type actions:actionsCopy completion:completionCopy];

  return v10;
}

+ (DebugHierarchyRequest)requestWithName:(id)name discoveryType:(int64_t)type actions:(id)actions completion:(id)completion
{
  completionCopy = completion;
  actionsCopy = actions;
  nameCopy = name;
  v13 = [[self alloc] initWithWithDiscoveryType:type actions:actionsCopy completion:completionCopy];

  [v13 setName:nameCopy];

  return v13;
}

- (DebugHierarchyRequest)initWithWithDiscoveryType:(int64_t)type actions:(id)actions completion:(id)completion
{
  actionsCopy = actions;
  completionCopy = completion;
  v11 = [(DebugHierarchyRequest *)self init];
  if (v11)
  {
    v12 = +[NSUUID UUID];
    uUIDString = [v12 UUIDString];
    identifier = v11->_identifier;
    v11->_identifier = uUIDString;

    +[DebugHierarchyTargetHub debugHierarchyVersion];
    v11->_initiatorVersion = v15;
    objc_storeStrong(&v11->_actions, actions);
    v11->_objectDiscovery = type;
    v16 = objc_retainBlock(completionCopy);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [(DebugHierarchyRequest *)self identifier];
    identifier2 = [equalCopy identifier];
    v7 = [identifier isEqualToString:identifier2];
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
  completion = [(DebugHierarchyRequest *)self completion];

  if (completion)
  {
    completion2 = [(DebugHierarchyRequest *)self completion];
    completion2[2](completion2, self);
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  identifier = [(DebugHierarchyRequest *)self identifier];
  [v3 setObject:identifier forKeyedSubscript:@"DBGHierarchyRequestIdentifier"];

  name = [(DebugHierarchyRequest *)self name];
  [v3 setObject:name forKeyedSubscript:@"DBGHierarchyRequestName"];

  [(DebugHierarchyRequest *)self initiatorVersion];
  v6 = [NSNumber numberWithFloat:?];
  [v3 setObject:v6 forKeyedSubscript:@"DBGHierarchyRequestInitiatorVersionKey"];

  v7 = [NSNumber numberWithInteger:[(DebugHierarchyRequest *)self priority]];
  [v3 setObject:v7 forKeyedSubscript:@"DBGHierarchyRequestPriority"];

  v8 = [NSNumber numberWithInteger:[(DebugHierarchyRequest *)self objectDiscovery]];
  [v3 setObject:v8 forKeyedSubscript:@"DBGHierarchyObjectDiscovery"];

  v9 = [NSNumber numberWithBool:[(DebugHierarchyRequest *)self compressDuringTransport]];
  [v3 setObject:v9 forKeyedSubscript:@"DBGHierarchyRequestTransportCompression"];

  payload = [(DebugHierarchyRequest *)self payload];

  if (payload)
  {
    payload2 = [(DebugHierarchyRequest *)self payload];
    [v3 setObject:payload2 forKey:@"DBGHierarchyRequestPayload"];
  }

  crawlerOptions = [(DebugHierarchyRequest *)self crawlerOptions];

  if (crawlerOptions)
  {
    crawlerOptions2 = [(DebugHierarchyRequest *)self crawlerOptions];
    dictionaryRepresentation = [crawlerOptions2 dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"DBGHierarchyCrawlerOptions"];
  }

  actions = [(DebugHierarchyRequest *)self actions];
  v16 = [actions count];

  if (v16)
  {
    actions2 = [(DebugHierarchyRequest *)self actions];
    v18 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [actions2 count]);

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    actions3 = [(DebugHierarchyRequest *)self actions];
    v20 = [actions3 countByEnumeratingWithState:&v43 objects:v48 count:16];
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
            objc_enumerationMutation(actions3);
          }

          dictionaryRepresentation2 = [*(*(&v43 + 1) + 8 * i) dictionaryRepresentation];
          [v18 addObject:dictionaryRepresentation2];
        }

        v21 = [actions3 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v21);
    }

    v25 = [v18 copy];
    [v3 setObject:v25 forKeyedSubscript:@"DBGHierarchyRequestActions"];
  }

  logs = [(DebugHierarchyRequest *)self logs];
  v27 = [logs count];

  if (v27)
  {
    logs2 = [(DebugHierarchyRequest *)self logs];
    v29 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [logs2 count]);

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    logs3 = [(DebugHierarchyRequest *)self logs];
    v31 = [logs3 countByEnumeratingWithState:&v39 objects:v47 count:16];
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
            objc_enumerationMutation(logs3);
          }

          dictionaryRepresentation3 = [*(*(&v39 + 1) + 8 * j) dictionaryRepresentation];
          [v29 addObject:dictionaryRepresentation3];
        }

        v32 = [logs3 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v32);
    }

    v36 = [v29 copy];
    [v3 setObject:v36 forKeyedSubscript:@"logs"];
  }

  v37 = [v3 copy];

  return v37;
}

- (void)addLogEntry:(id)entry
{
  entryCopy = entry;
  logs = [(DebugHierarchyRequest *)self logs];
  v6 = [logs count];

  if (v6)
  {
    logs2 = [(DebugHierarchyRequest *)self logs];
    v7 = [logs2 arrayByAddingObject:entryCopy];

    [(DebugHierarchyRequest *)self setLogs:v7];
  }

  else
  {
    v10 = entryCopy;
    v8 = [NSArray arrayWithObjects:&v10 count:1];

    [(DebugHierarchyRequest *)self setLogs:v8];
  }
}

- (NSString)base64Encoded
{
  dictionaryRepresentation = [(DebugHierarchyRequest *)self dictionaryRepresentation];
  v3 = [dictionaryRepresentation generateJSONDataWithError:0];
  v4 = [v3 base64EncodedStringWithOptions:0];

  return v4;
}

- (id)humanReadableStatusMessage
{
  statusMessageActivityPhrase = [(DebugHierarchyRequest *)self statusMessageActivityPhrase];
  v4 = [statusMessageActivityPhrase length];

  if (v4)
  {
    status = [(DebugHierarchyRequest *)self status];
    statusMessageActivityPhrase2 = [(DebugHierarchyRequest *)self statusMessageActivityPhrase];
    v7 = statusMessageActivityPhrase2;
    if ((status + 2) > 5)
    {
      v8 = @"Waiting for %@ to be fetched";
    }

    else
    {
      v8 = off_242D8[status + 2];
    }

    v9 = [NSString stringWithFormat:v8, statusMessageActivityPhrase2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)debugDescription
{
  dictionaryRepresentation = [(DebugHierarchyRequest *)self dictionaryRepresentation];
  v4 = [NSString stringWithFormat:@"%@ - %@", self, dictionaryRepresentation];

  return v4;
}

- (id)formattedResponseDataForRawRequestResultData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (!dataCopy)
  {
    v6 = 0;
    goto LABEL_8;
  }

  v6 = dataCopy;
  [(DebugHierarchyRequest *)self initiatorVersion];
  if (v7 >= 3.0)
  {
    if (![(DebugHierarchyRequest *)self compressDuringTransport])
    {
      goto LABEL_8;
    }

    dbg_gzipDeflate = [v6 dbg_gzipDeflate];
  }

  else
  {
    dbg_gzipDeflate = [v6 dbg_gzipDeflateRaw];
  }

  v9 = dbg_gzipDeflate;

  v6 = v9;
LABEL_8:

  return v6;
}

+ (DebugHierarchyRequest)requestWithBase64Data:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = [[NSData alloc] initWithBase64EncodedString:dataCopy options:0];
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
    v9 = [self _compatibleRequestWithDictionary:v7];
  }

  return v9;
}

+ (id)_compatibleRequestWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"DBGHierarchyRequestPredicate"];

  if (v5)
  {
    v6 = [self _requestWithV1RequestDictionary:dictionaryCopy];

    [v6 setNeedsCompatibilityConversion:1];
  }

  else
  {
    v6 = [DebugHierarchyRequest requestWithDictionary:dictionaryCopy];
  }

  return v6;
}

+ (id)_requestWithV1RequestDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"DBGHierarchyRequestPredicate"];
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
    bOOLValue = [v9 BOOLValue];

    v8 = objc_alloc_init(DebugHierarchyPropertyAction);
    [(DebugHierarchyPropertyAction *)v8 setObjectIdentifiers:&__NSArray0__struct exlusive:1];
    if ((bOOLValue & 1) == 0)
    {
      [(DebugHierarchyPropertyAction *)v8 setOptions:1 comparisonStyle:3];
    }

    [v7 addObject:v8];
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"DBGHierarchyRequestSpinRunloop"];
  bOOLValue2 = [v11 BOOLValue];

  if (bOOLValue2)
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
  v16 = [dictionaryCopy objectForKeyedSubscript:@"DBGHierarchyRequestIdentifier"];
  [v15 setIdentifier:v16];

  v17 = [dictionaryCopy objectForKeyedSubscript:@"DBGHierarchyRequestName"];
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