@interface CCDonateRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDonateRequest:(id)a3;
- (CCDonateRequest)initWithConnection:(id)a3 manager:(id)a4 itemType:(unsigned __int16)a5 encodedDescriptors:(id)a6 personaIdentifier:(id)a7 sourceVersion:(unint64_t)a8 sourceValidity:(id)a9 options:(unsigned __int16)a10 accessAssertion:(id)a11;
- (id)_connectionTypeString;
- (id)description;
- (unint64_t)hash;
- (void)handle;
- (void)reject;
- (void)terminateWithType:(int64_t)a3;
- (void)timeout;
@end

@implementation CCDonateRequest

- (void)handle
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = __biome_log_for_category();
  v4 = v3;
  requestQueuedSignpostId = self->_requestQueuedSignpostId;
  if (requestQueuedSignpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v6 = [(CCDonateRequest *)self _connectionTypeString];
    itemType = self->_itemType;
    *buf = 138543618;
    v19 = v6;
    v20 = 1026;
    v21 = itemType;
    _os_signpost_emit_with_name_impl(&dword_1DA444000, v4, OS_SIGNPOST_INTERVAL_END, requestQueuedSignpostId, "donateRequestQueued", " requestType=%{public,signpost.telemetry:string1}@  itemType=%{public,signpost.telemetry:number1}d ", buf, 0x12u);
  }

  v8 = __biome_log_for_category();
  v9 = os_signpost_id_generate(v8);

  v10 = __biome_log_for_category();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DA444000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "donateRequestHandled", " enableTelemetry=YES ", buf, 2u);
  }

  self->_requestHandledSignpostId = v9;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v13 = [WeakRetained isAlive];

  if (v13)
  {
    personaIdentifier = self->_personaIdentifier;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __25__CCDonateRequest_handle__block_invoke;
    v17[3] = &unk_1E85C3230;
    v17[4] = self;
    [MEMORY[0x1E698E9D0] runAsPersonaIdentifier:personaIdentifier block:v17];
  }

  else
  {
    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = self;
      _os_log_impl(&dword_1DA444000, v15, OS_LOG_TYPE_DEFAULT, "Connection is invalidated for request %@", buf, 0xCu);
    }

    [(CCDonateRequest *)self terminateWithType:1];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)_connectionTypeString
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  if ([WeakRetained isXPC])
  {
    v3 = @"XPC";
  }

  else
  {
    v3 = @"In Process";
  }

  v4 = v3;

  return v3;
}

void __25__CCDonateRequest_handle__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 code] == 1)
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __25__CCDonateRequest_handle__block_invoke_cold_1(v3, a1, v4);
    }

    [*(a1 + 32) reject];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    [WeakRetained resume];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  requestId = self->_requestId;
  v5 = [(CCDonateRequest *)self _connectionTypeString];
  sourceVersion = self->_sourceVersion;
  sourceValidity = self->_sourceValidity;
  itemType = self->_itemType;
  encodedDescriptors = self->_encodedDescriptors;
  options = self->_options;
  v11 = CCDonateServiceRequestDescription();
  v12 = [v3 stringWithFormat:@"#%u [%@] %@", requestId, v5, v11];

  return v12;
}

- (CCDonateRequest)initWithConnection:(id)a3 manager:(id)a4 itemType:(unsigned __int16)a5 encodedDescriptors:(id)a6 personaIdentifier:(id)a7 sourceVersion:(unint64_t)a8 sourceValidity:(id)a9 options:(unsigned __int16)a10 accessAssertion:(id)a11
{
  v17 = a3;
  v18 = a4;
  v29 = a6;
  v28 = a7;
  v27 = a9;
  v19 = a11;
  v31.receiver = self;
  v31.super_class = CCDonateRequest;
  v20 = [(CCDonateRequest *)&v31 init];
  v21 = v20;
  if (v20)
  {
    objc_storeWeak(&v20->_connection, v17);
    objc_storeWeak(&v21->_manager, v18);
    v21->_itemType = a5;
    objc_storeStrong(&v21->_encodedDescriptors, a6);
    objc_storeStrong(&v21->_personaIdentifier, a7);
    v21->_sourceVersion = a8;
    objc_storeStrong(&v21->_sourceValidity, a9);
    v21->_requestId = atomic_fetch_add(requestCount, 1u);
    v22 = __biome_log_for_category();
    v23 = os_signpost_id_generate(v22);

    v24 = __biome_log_for_category();
    v25 = v24;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DA444000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "donateRequestQueued", " enableTelemetry=YES ", buf, 2u);
    }

    v21->_requestQueuedSignpostId = v23;
    v21->_options = a10;
    objc_storeStrong(&v21->_accessAssertion, a11);
  }

  return v21;
}

- (void)timeout
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained timeout];

  v4 = objc_loadWeakRetained(&self->_manager);
  [v4 completeRequest:self];
}

- (void)reject
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained rejectConnection];

  v4 = objc_loadWeakRetained(&self->_manager);
  [v4 completeRequest:self];
}

- (void)terminateWithType:(int64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = __biome_log_for_category();
  v6 = v5;
  requestHandledSignpostId = self->_requestHandledSignpostId;
  if (requestHandledSignpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    itemType = self->_itemType;
    v9 = [(CCDonateRequest *)self _connectionTypeString];
    v10 = v9;
    if (a3 > 4)
    {
      v11 = @"Undefined";
    }

    else
    {
      v11 = off_1E85C3250[a3];
    }

    v14[0] = 67240706;
    v14[1] = itemType;
    v15 = 2114;
    v16 = v9;
    v17 = 2114;
    v18 = v11;
    _os_signpost_emit_with_name_impl(&dword_1DA444000, v6, OS_SIGNPOST_INTERVAL_END, requestHandledSignpostId, "donateRequestHandled", " itemType=%{public,signpost.telemetry:number1}d  requestType=%{public,signpost.telemetry:string1}@  result=%{public,signpost.telemetry:string2}@ ", v14, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_manager);
  [WeakRetained completeRequest:self];

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CCDonateRequest *)self isEqualToDonateRequest:v5];
  }

  return v6;
}

- (BOOL)isEqualToDonateRequest:(id)a3
{
  v6 = a3;
  requestId = self->_requestId;
  if (requestId != [v6 requestId] || (itemType = self->_itemType, itemType != objc_msgSend(v6, "itemType")))
  {
    v13 = 0;
    goto LABEL_9;
  }

  encodedDescriptors = self->_encodedDescriptors;
  v10 = encodedDescriptors;
  if (!encodedDescriptors)
  {
    v11 = [v6 encodedDescriptors];
    if (!v11)
    {
      v31 = 0;
      v12 = 0;
      goto LABEL_12;
    }

    v31 = v11;
    v10 = self->_encodedDescriptors;
  }

  v3 = [v6 encodedDescriptors];
  if (![(NSString *)v10 isEqual:v3])
  {
    v13 = 0;
LABEL_32:

    goto LABEL_33;
  }

  v12 = 1;
LABEL_12:
  personaIdentifier = self->_personaIdentifier;
  v16 = personaIdentifier;
  if (!personaIdentifier)
  {
    v17 = [v6 personaIdentifier];
    if (!v17)
    {
      sourceVersion = self->_sourceVersion;
      v19 = 0;
      v30 = 0;
      v13 = 0;
      if (sourceVersion != [v6 sourceVersion])
      {
        goto LABEL_35;
      }

      goto LABEL_21;
    }

    v30 = v17;
    v16 = self->_personaIdentifier;
  }

  v4 = [v6 personaIdentifier];
  if (([(NSString *)v16 isEqual:v4]& 1) == 0)
  {

    v13 = 0;
    goto LABEL_30;
  }

  v18 = self->_sourceVersion;
  if (v18 != [v6 sourceVersion])
  {
    v13 = 0;
    goto LABEL_29;
  }

  v19 = 1;
LABEL_21:
  sourceValidity = self->_sourceValidity;
  v22 = sourceValidity;
  if (!sourceValidity)
  {
    v23 = [v6 sourceValidity];
    if (!v23)
    {
      options = self->_options;
      v13 = options == [v6 options];
      if ((v19 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_29:

      goto LABEL_30;
    }

    v27 = v23;
    v22 = self->_sourceValidity;
  }

  v29 = v19;
  v24 = [v6 sourceValidity];
  if ([(NSString *)v22 isEqual:v24])
  {
    v25 = self->_options;
    v13 = v25 == [v6 options];
  }

  else
  {
    v13 = 0;
  }

  if (sourceValidity)
  {
    if (!v29)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (v29)
  {
    goto LABEL_29;
  }

LABEL_30:
  if (personaIdentifier)
  {
    if (!v12)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_35:

  if (v12)
  {
    goto LABEL_32;
  }

LABEL_33:
  if (!encodedDescriptors)
  {
  }

LABEL_9:

  return v13;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_requestId];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_itemType];
  v6 = [v5 hash] ^ v4;
  v7 = [(NSString *)self->_encodedDescriptors hash];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_sourceVersion];
  v9 = v6 ^ v7 ^ [v8 hash];
  v10 = [(NSString *)self->_sourceValidity hash];
  v11 = v10 ^ [(NSString *)self->_personaIdentifier hash];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_options];
  v13 = v11 ^ [v12 hash];

  return v9 ^ v13;
}

void __25__CCDonateRequest_handle__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_1DA444000, log, OS_LOG_TYPE_ERROR, "Failed to assume persona with error %@, rejecting donate request %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end