@interface BMComputeSubscription
- (BMComputeSubscription)initWithCoder:(id)a3;
- (BMComputeSubscription)initWithIdentifier:(id)a3 client:(id)a4 createdAt:(id)a5 waking:(BOOL)a6 DSLGraph:(id)a7 subscriber:(id)a8 block:(id)a9;
- (BMComputeSubscription)initWithToken:(unint64_t)a3 descriptor:(id)a4;
- (BOOL)isUnclaimed;
- (NSDate)initialBookmarkTimestamp;
- (id)XPCEvent;
- (id)description;
- (id)fetchBookmarkFromStorage:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMComputeSubscription

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(BMComputeSubscription *)self client];
  v6 = [(BMComputeSubscription *)self identifier];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMComputeSubscription waking](self, "waking")}];
  v8 = [(BMComputeSubscription *)self streamIdentifiers];
  v9 = [(BMComputeSubscription *)self graph];
  v10 = [(BMComputeSubscription *)self subscriber];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMComputeSubscription token](self, "token")}];
  v12 = [v3 stringWithFormat:@"<%@ %p> client: %@, identifier: %@, waking: %@, streams: %@, graph: %@, subscriber:%@, token: %@", v4, self, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BMComputeSubscription)initWithIdentifier:(id)a3 client:(id)a4 createdAt:(id)a5 waking:(BOOL)a6 DSLGraph:(id)a7 subscriber:(id)a8 block:(id)a9
{
  v64 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v56 = a8;
  aBlock = a9;
  if (BMIdentifierIsPathSafe())
  {
    v62.receiver = self;
    v62.super_class = BMComputeSubscription;
    v19 = [(BMComputeSubscription *)&v62 init];
    if (v19)
    {
      v54 = v17;
      v20 = [v15 copy];
      identifier = v19->_identifier;
      v19->_identifier = v20;

      v55 = v16;
      v22 = [v16 copy];
      client = v19->_client;
      v19->_client = v22;

      v24 = [(NSString *)v19->_client stringByAppendingString:@":"];
      v25 = [v24 stringByAppendingString:v15];
      uniqueIdentifier = v19->_uniqueIdentifier;
      v19->_uniqueIdentifier = v25;

      v19->_waking = a6;
      objc_storeStrong(&v19->_graph, a7);
      objc_storeStrong(&v19->_subscriber, a8);
      v53 = v18;
      v27 = [v18 rootStreamIdentifiers];
      streamIdentifiers = v19->_streamIdentifiers;
      v19->_streamIdentifiers = v27;

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

      objc_storeStrong(&v19->_createdAt, a5);
      connection = v19->_connection;
      v19->_connection = 0;

      v19->_pendingDemand = 0;
      v19->_token = 0;
      v18 = v53;
      v43 = [v53 streamPublishers];
      if ([v43 count] >= 2)
      {
        v44 = __biome_log_for_category();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [BMComputeSubscription initWithIdentifier:v44 client:? createdAt:? waking:? DSLGraph:? subscriber:? block:?];
        }
      }

      v45 = [v43 allObjects];
      v46 = [v45 firstObject];
      v47 = [v46 useCase];
      useCase = v19->_useCase;
      v19->_useCase = v47;

      v17 = v54;
      v16 = v55;
    }

    self = v19;
    v49 = self;
  }

  else
  {
    v50 = __biome_log_for_category();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      [BMComputeSubscription initWithIdentifier:client:createdAt:waking:DSLGraph:subscriber:block:];
    }

    v49 = 0;
  }

  v51 = *MEMORY[0x1E69E9840];
  return v49;
}

- (BMComputeSubscription)initWithToken:(unint64_t)a3 descriptor:(id)a4
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = a4;
  string = xpc_dictionary_get_string(v6, "identifier");
  if (string)
  {
    v8 = string;
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    IsPathSafe = BMIdentifierIsPathSafe();

    if (IsPathSafe)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
      v12 = xpc_dictionary_get_string(v6, "client");
      if (!v12)
      {
        v28 = MEMORY[0x1865F7C40](v6);
        v29 = __biome_log_for_category();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [BMComputeSubscription initWithToken:descriptor:];
        }

        free(v28);
        v27 = 0;
        goto LABEL_45;
      }

      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
      xpc_dictionary_get_double(v6, "createdAt");
      v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:?];
      v15 = xpc_dictionary_get_dictionary(v6, "graph");
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

          v27 = 0;
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

            v27 = 0;
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
        data = xpc_dictionary_get_data(v6, "graphData", buf);
        v31 = objc_alloc(MEMORY[0x1E695DEF0]);
        v32 = [v31 initWithBytes:data length:*buf];
        v33 = MEMORY[0x1E696ACD0];
        v34 = [MEMORY[0x1E698E888] allowed];
        v54 = 0;
        v16 = [v33 unarchivedObjectOfClasses:v34 fromData:v32 error:&v54];
        v35 = v54;

        if (!v16 || v35)
        {
          v46 = __biome_log_for_category();
          v14 = v17;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            [BMComputeSubscription initWithToken:descriptor:];
          }

          v27 = 0;
          goto LABEL_43;
        }
      }

      v14 = v17;
      *buf = 0;
      v36 = xpc_dictionary_get_data(v6, "subscriber", buf);
      if (v36)
      {
        v37 = v36;
        v51 = v17;
        v38 = objc_alloc(MEMORY[0x1E695DEF0]);
        v39 = [v38 initWithBytes:v37 length:*buf];
        v40 = MEMORY[0x1E696ACD0];
        v41 = [MEMORY[0x1E698E888] allowed];
        v53 = 0;
        v42 = [v40 unarchivedObjectOfClasses:v41 fromData:v39 error:&v53];
        v43 = v53;

        if (v43)
        {
          v44 = __biome_log_for_category();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            [BMComputeSubscription initWithToken:descriptor:];
          }

          v27 = 0;
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
        v48->_token = a3;
      }

      self = v48;
      v27 = self;
      goto LABEL_42;
    }
  }

  v25 = MEMORY[0x1865F7C40](v6);
  v26 = __biome_log_for_category();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [BMComputeSubscription initWithToken:descriptor:];
  }

  free(v25);
  v27 = 0;
LABEL_46:

  v49 = *MEMORY[0x1E69E9840];
  return v27;
}

- (BOOL)isUnclaimed
{
  if ([(BMComputeSubscription *)self waking])
  {
    return 0;
  }

  v4 = [(BMComputeSubscription *)self connection];
  v3 = v4 == 0;

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
    v5 = [(BMComputeSubscription *)self waking];
    v6 = [(BMComputeSubscription *)self createdAt];
    v3 = v6;
    if (v5)
    {
      v7 = [(NSDate *)v6 dateByAddingTimeInterval:-3.0];

      v3 = v7;
    }
  }

  return v3;
}

- (id)XPCEvent
{
  v3 = objc_autoreleasePoolPush();
  empty = xpc_dictionary_create_empty();
  v5 = [(BMComputeSubscription *)self identifier];
  v6 = [v5 UTF8String];

  if (v6)
  {
    xpc_dictionary_set_string(empty, "identifier", v6);
  }

  v7 = [(BMComputeSubscription *)self client];
  v8 = [v7 UTF8String];

  if (v8)
  {
    xpc_dictionary_set_string(empty, "client", v8);
  }

  v9 = [(BMComputeSubscription *)self createdAt];
  [v9 timeIntervalSince1970];
  xpc_dictionary_set_double(empty, "createdAt", v10);

  v11 = MEMORY[0x1E696ACC8];
  v12 = [(BMComputeSubscription *)self graph];
  v32 = 0;
  v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v32];
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
  v17 = [(BMComputeSubscription *)self subscriber];

  if (v17)
  {
    v18 = MEMORY[0x1E696ACC8];
    v19 = [(BMComputeSubscription *)self subscriber];
    v31 = 0;
    v20 = [v18 archivedDataWithRootObject:v19 requiringSecureCoding:1 error:&v31];
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

- (id)fetchBookmarkFromStorage:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(BMComputeSubscription *)self identifier];
  v8 = [(BMComputeSubscription *)self client];
  v9 = [v6 checkExistenceOfBookmarkForSubscriptionWithIdentifier:v7 client:v8];

  if (v9)
  {
    v10 = [(BMComputeSubscription *)self identifier];
    v11 = [(BMComputeSubscription *)self client];
    v12 = [v6 readBookmarkForSubscriptionWithIdentifier:v10 client:v11 error:a4];
  }

  else
  {
    v13 = [(BMComputeSubscription *)self graph];
    v14 = [(BMComputeSubscription *)self initialBookmarkTimestamp];
    v19 = 0;
    v12 = BMDSLGetBookmarkForDate(v13, v14, &v19);
    v10 = v19;

    v15 = [(BMComputeSubscription *)self identifier];
    v16 = [(BMComputeSubscription *)self client];
    [v6 writeBookmark:v12 forSubscriptionWithIdentifier:v15 client:v16];

    if (a4)
    {
      v17 = v10;
      *a4 = v10;
    }
  }

  return v12;
}

- (BMComputeSubscription)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"client"];
  [v4 decodeDoubleForKey:@"createdAt"];
  v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:?];
  v8 = [v4 decodeBoolForKey:@"waking"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"graphData"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subscriber"];
  v11 = [v4 decodeInt64ForKey:@"token"];

  v12 = [(BMComputeSubscription *)self initWithIdentifier:v5 client:v6 createdAt:v7 waking:v8 DSLGraph:v9 subscriber:v10 block:0];
  v13 = v12;
  if (v12)
  {
    v12->_token = v11;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = [(BMComputeSubscription *)self identifier];
  [v10 encodeObject:v4 forKey:@"identifier"];

  v5 = [(BMComputeSubscription *)self client];
  [v10 encodeObject:v5 forKey:@"client"];

  v6 = [(BMComputeSubscription *)self createdAt];
  [v6 timeIntervalSince1970];
  [v10 encodeDouble:@"createdAt" forKey:?];

  [v10 encodeBool:-[BMComputeSubscription waking](self forKey:{"waking"), @"waking"}];
  v7 = [(BMComputeSubscription *)self graph];
  [v10 encodeObject:v7 forKey:@"graphData"];

  [v10 encodeInt64:-[BMComputeSubscription token](self forKey:{"token"), @"token"}];
  v8 = [(BMComputeSubscription *)self subscriber];

  if (v8)
  {
    v9 = [(BMComputeSubscription *)self subscriber];
    [v10 encodeObject:v9 forKey:@"subscriber"];
  }
}

@end