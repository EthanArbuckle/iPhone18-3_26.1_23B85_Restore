@interface BMComputeSubscription
- (BMComputeSubscription)initWithCoder:(id)coder;
- (BMComputeSubscription)initWithIdentifier:(id)identifier client:(id)client createdAt:(id)at waking:(BOOL)waking DSLGraph:(id)graph subscriber:(id)subscriber block:(id)block;
- (BMComputeSubscription)initWithToken:(unint64_t)token descriptor:(id)descriptor;
- (BOOL)isUnclaimed;
- (NSDate)initialBookmarkTimestamp;
- (id)XPCEvent;
- (id)description;
- (id)fetchBookmarkFromStorage:(id)storage error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMComputeSubscription

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  client = [(BMComputeSubscription *)self client];
  identifier = [(BMComputeSubscription *)self identifier];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMComputeSubscription waking](self, "waking")}];
  streamIdentifiers = [(BMComputeSubscription *)self streamIdentifiers];
  graph = [(BMComputeSubscription *)self graph];
  subscriber = [(BMComputeSubscription *)self subscriber];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMComputeSubscription token](self, "token")}];
  v12 = [v3 stringWithFormat:@"<%@ %p> client: %@, identifier: %@, waking: %@, streams: %@, graph: %@, subscriber:%@, token: %@", v4, self, client, identifier, v7, streamIdentifiers, graph, subscriber, v11];

  return v12;
}

- (BMComputeSubscription)initWithIdentifier:(id)identifier client:(id)client createdAt:(id)at waking:(BOOL)waking DSLGraph:(id)graph subscriber:(id)subscriber block:(id)block
{
  v64 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  clientCopy = client;
  atCopy = at;
  graphCopy = graph;
  subscriberCopy = subscriber;
  aBlock = block;
  if (BMIdentifierIsPathSafe())
  {
    v62.receiver = self;
    v62.super_class = BMComputeSubscription;
    v19 = [(BMComputeSubscription *)&v62 init];
    if (v19)
    {
      v54 = atCopy;
      v20 = [identifierCopy copy];
      identifier = v19->_identifier;
      v19->_identifier = v20;

      v55 = clientCopy;
      v22 = [clientCopy copy];
      client = v19->_client;
      v19->_client = v22;

      v24 = [(NSString *)v19->_client stringByAppendingString:@":"];
      v25 = [v24 stringByAppendingString:identifierCopy];
      uniqueIdentifier = v19->_uniqueIdentifier;
      v19->_uniqueIdentifier = v25;

      v19->_waking = waking;
      objc_storeStrong(&v19->_graph, graph);
      objc_storeStrong(&v19->_subscriber, subscriber);
      v53 = graphCopy;
      rootStreamIdentifiers = [graphCopy rootStreamIdentifiers];
      streamIdentifiers = v19->_streamIdentifiers;
      v19->_streamIdentifiers = rootStreamIdentifiers;

      v29 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v30 = v19->_streamIdentifiers;
      v31 = [(NSSet *)v30 countByEnumeratingWithState:&v58 objects:v63 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v59;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v59 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v58 + 1) + 8 * i);
            v36 = BMBiomeLibraryStreamIdentifierForPremigratedStreamIdentifier();
            v37 = v36;
            if (v36)
            {
              v38 = v36;
            }

            else
            {
              v38 = v35;
            }

            v39 = v38;

            [v29 addObject:v39];
          }

          v32 = [(NSSet *)v30 countByEnumeratingWithState:&v58 objects:v63 count:16];
        }

        while (v32);
      }

      objc_storeStrong(&v19->_postMigrationStreamIdentifiers, v29);
      v40 = _Block_copy(aBlock);
      block = v19->_block;
      v19->_block = v40;

      objc_storeStrong(&v19->_createdAt, at);
      connection = v19->_connection;
      v19->_connection = 0;

      v19->_pendingDemand = 0;
      v19->_token = 0;
      graphCopy = v53;
      streamPublishers = [v53 streamPublishers];
      if ([streamPublishers count] >= 2)
      {
        v44 = __biome_log_for_category();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [BMComputeSubscription initWithIdentifier:v44 client:? createdAt:? waking:? DSLGraph:? subscriber:? block:?];
        }
      }

      allObjects = [streamPublishers allObjects];
      firstObject = [allObjects firstObject];
      useCase = [firstObject useCase];
      useCase = v19->_useCase;
      v19->_useCase = useCase;

      atCopy = v54;
      clientCopy = v55;
    }

    self = v19;
    selfCopy = self;
  }

  else
  {
    v50 = __biome_log_for_category();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      [BMComputeSubscription initWithIdentifier:client:createdAt:waking:DSLGraph:subscriber:block:];
    }

    selfCopy = 0;
  }

  v51 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (BMComputeSubscription)initWithToken:(unint64_t)token descriptor:(id)descriptor
{
  v60 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  string = xpc_dictionary_get_string(descriptorCopy, "identifier");
  if (string)
  {
    v8 = string;
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    IsPathSafe = BMIdentifierIsPathSafe();

    if (IsPathSafe)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
      v12 = xpc_dictionary_get_string(descriptorCopy, "client");
      if (!v12)
      {
        v28 = MEMORY[0x1865F7C40](descriptorCopy);
        v29 = __biome_log_for_category();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [BMComputeSubscription initWithToken:descriptor:];
        }

        free(v28);
        selfCopy = 0;
        goto LABEL_45;
      }

      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
      xpc_dictionary_get_double(descriptorCopy, "createdAt");
      v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:?];
      v15 = xpc_dictionary_get_dictionary(descriptorCopy, "graph");
      if (v15)
      {
        v16 = _CFXPCCreateCFObjectFromXPCObject();
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v45 = __biome_log_for_category();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            [BMComputeSubscription initWithToken:descriptor:];
          }

          selfCopy = 0;
          goto LABEL_44;
        }

        v17 = v14;
        v52 = v13;
        v56 = 0;
        v18 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v16 options:0 error:&v56];
        v19 = v56;
        v20 = v19;
        if (!v18 || v19 || ([MEMORY[0x1E698E8A8] unarchiveDSLFromData:v18], (v21 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v22 = __biome_log_for_category();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *&buf[4] = v11;
            v58 = 2112;
            v59 = v20;
            _os_log_impl(&dword_1848EE000, v22, OS_LOG_TYPE_DEFAULT, "BMComputeSubscription unable to unarchive BMDSL as JSON archived object, falling back to legacy dictionary-based format. Subscription: %@; error: %@", buf, 0x16u);
          }

          v55 = 0;
          v21 = [objc_alloc(MEMORY[0x1E698E880]) initWithDictionary:v16 error:&v55];
          v23 = v55;
          v24 = v23;
          if (!v21 || v23)
          {
            v47 = __biome_log_for_category();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              [BMComputeSubscription initWithToken:descriptor:];
            }

            selfCopy = 0;
            v16 = v21;
            v13 = v52;
            v14 = v17;
            goto LABEL_44;
          }
        }

        v16 = v21;
      }

      else
      {
        v17 = v14;
        v52 = v13;
        *buf = 0;
        data = xpc_dictionary_get_data(descriptorCopy, "graphData", buf);
        v31 = objc_alloc(MEMORY[0x1E695DEF0]);
        v32 = [v31 initWithBytes:data length:*buf];
        v33 = MEMORY[0x1E696ACD0];
        allowed = [MEMORY[0x1E698E888] allowed];
        v54 = 0;
        v16 = [v33 unarchivedObjectOfClasses:allowed fromData:v32 error:&v54];
        v35 = v54;

        if (!v16 || v35)
        {
          v46 = __biome_log_for_category();
          v14 = v17;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            [BMComputeSubscription initWithToken:descriptor:];
          }

          selfCopy = 0;
          goto LABEL_43;
        }
      }

      v14 = v17;
      *buf = 0;
      v36 = xpc_dictionary_get_data(descriptorCopy, "subscriber", buf);
      if (v36)
      {
        v37 = v36;
        v51 = v17;
        v38 = objc_alloc(MEMORY[0x1E695DEF0]);
        v39 = [v38 initWithBytes:v37 length:*buf];
        v40 = MEMORY[0x1E696ACD0];
        allowed2 = [MEMORY[0x1E698E888] allowed];
        v53 = 0;
        v42 = [v40 unarchivedObjectOfClasses:allowed2 fromData:v39 error:&v53];
        v43 = v53;

        if (v43)
        {
          v44 = __biome_log_for_category();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            [BMComputeSubscription initWithToken:descriptor:];
          }

          selfCopy = 0;
          v14 = v51;
LABEL_42:

LABEL_43:
          v13 = v52;
LABEL_44:

LABEL_45:
          goto LABEL_46;
        }

        v14 = v51;
      }

      else
      {
        v42 = 0;
      }

      v48 = [(BMComputeSubscription *)self initWithIdentifier:v11 client:v52 createdAt:v14 waking:1 DSLGraph:v16 subscriber:v42 block:0];
      if (v48)
      {
        v48->_token = token;
      }

      self = v48;
      selfCopy = self;
      goto LABEL_42;
    }
  }

  v25 = MEMORY[0x1865F7C40](descriptorCopy);
  v26 = __biome_log_for_category();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [BMComputeSubscription initWithToken:descriptor:];
  }

  free(v25);
  selfCopy = 0;
LABEL_46:

  v49 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (BOOL)isUnclaimed
{
  if ([(BMComputeSubscription *)self waking])
  {
    return 0;
  }

  connection = [(BMComputeSubscription *)self connection];
  v3 = connection == 0;

  return v3;
}

- (NSDate)initialBookmarkTimestamp
{
  initialBookmarkTimestamp = self->_initialBookmarkTimestamp;
  if (initialBookmarkTimestamp)
  {
    v3 = initialBookmarkTimestamp;
  }

  else
  {
    waking = [(BMComputeSubscription *)self waking];
    createdAt = [(BMComputeSubscription *)self createdAt];
    v3 = createdAt;
    if (waking)
    {
      v7 = [(NSDate *)createdAt dateByAddingTimeInterval:-3.0];

      v3 = v7;
    }
  }

  return v3;
}

- (id)XPCEvent
{
  v3 = objc_autoreleasePoolPush();
  empty = xpc_dictionary_create_empty();
  identifier = [(BMComputeSubscription *)self identifier];
  uTF8String = [identifier UTF8String];

  if (uTF8String)
  {
    xpc_dictionary_set_string(empty, "identifier", uTF8String);
  }

  client = [(BMComputeSubscription *)self client];
  uTF8String2 = [client UTF8String];

  if (uTF8String2)
  {
    xpc_dictionary_set_string(empty, "client", uTF8String2);
  }

  createdAt = [(BMComputeSubscription *)self createdAt];
  [createdAt timeIntervalSince1970];
  xpc_dictionary_set_double(empty, "createdAt", v10);

  v11 = MEMORY[0x1E696ACC8];
  graph = [(BMComputeSubscription *)self graph];
  v32 = 0;
  v13 = [v11 archivedDataWithRootObject:graph requiringSecureCoding:1 error:&v32];
  v14 = v32;

  if (v14)
  {
    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [BMComputeSubscription XPCEvent];
    }

LABEL_9:
    v16 = 0;
    goto LABEL_17;
  }

  xpc_dictionary_set_data(empty, "graphData", [v13 bytes], objc_msgSend(v13, "length"));
  subscriber = [(BMComputeSubscription *)self subscriber];

  if (subscriber)
  {
    v18 = MEMORY[0x1E696ACC8];
    subscriber2 = [(BMComputeSubscription *)self subscriber];
    v31 = 0;
    v20 = [v18 archivedDataWithRootObject:subscriber2 requiringSecureCoding:1 error:&v31];
    v21 = v31;

    if (v21)
    {
      v22 = __biome_log_for_category();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(BMComputeSubscription *)v22 XPCEvent:v23];
      }

      goto LABEL_9;
    }

    xpc_dictionary_set_data(empty, "subscriber", [v20 bytes], objc_msgSend(v20, "length"));
  }

  v16 = empty;
LABEL_17:

  objc_autoreleasePoolPop(v3);

  return v16;
}

- (id)fetchBookmarkFromStorage:(id)storage error:(id *)error
{
  storageCopy = storage;
  identifier = [(BMComputeSubscription *)self identifier];
  client = [(BMComputeSubscription *)self client];
  v9 = [storageCopy checkExistenceOfBookmarkForSubscriptionWithIdentifier:identifier client:client];

  if (v9)
  {
    identifier2 = [(BMComputeSubscription *)self identifier];
    client2 = [(BMComputeSubscription *)self client];
    v12 = [storageCopy readBookmarkForSubscriptionWithIdentifier:identifier2 client:client2 error:error];
  }

  else
  {
    graph = [(BMComputeSubscription *)self graph];
    initialBookmarkTimestamp = [(BMComputeSubscription *)self initialBookmarkTimestamp];
    v19 = 0;
    v12 = BMDSLGetBookmarkForDate(graph, initialBookmarkTimestamp, &v19);
    identifier2 = v19;

    identifier3 = [(BMComputeSubscription *)self identifier];
    client3 = [(BMComputeSubscription *)self client];
    [storageCopy writeBookmark:v12 forSubscriptionWithIdentifier:identifier3 client:client3];

    if (error)
    {
      v17 = identifier2;
      *error = identifier2;
    }
  }

  return v12;
}

- (BMComputeSubscription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"client"];
  [coderCopy decodeDoubleForKey:@"createdAt"];
  v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:?];
  v8 = [coderCopy decodeBoolForKey:@"waking"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"graphData"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subscriber"];
  v11 = [coderCopy decodeInt64ForKey:@"token"];

  v12 = [(BMComputeSubscription *)self initWithIdentifier:v5 client:v6 createdAt:v7 waking:v8 DSLGraph:v9 subscriber:v10 block:0];
  v13 = v12;
  if (v12)
  {
    v12->_token = v11;
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(BMComputeSubscription *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  client = [(BMComputeSubscription *)self client];
  [coderCopy encodeObject:client forKey:@"client"];

  createdAt = [(BMComputeSubscription *)self createdAt];
  [createdAt timeIntervalSince1970];
  [coderCopy encodeDouble:@"createdAt" forKey:?];

  [coderCopy encodeBool:-[BMComputeSubscription waking](self forKey:{"waking"), @"waking"}];
  graph = [(BMComputeSubscription *)self graph];
  [coderCopy encodeObject:graph forKey:@"graphData"];

  [coderCopy encodeInt64:-[BMComputeSubscription token](self forKey:{"token"), @"token"}];
  subscriber = [(BMComputeSubscription *)self subscriber];

  if (subscriber)
  {
    subscriber2 = [(BMComputeSubscription *)self subscriber];
    [coderCopy encodeObject:subscriber2 forKey:@"subscriber"];
  }
}

@end