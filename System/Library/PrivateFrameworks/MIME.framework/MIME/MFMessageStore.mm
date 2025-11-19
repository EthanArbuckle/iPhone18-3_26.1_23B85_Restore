@interface MFMessageStore
+ (Class)headersClass;
+ (id)log;
- (BOOL)hasCompleteDataForMimePart:(id)a3;
- (MFMessageStore)init;
- (id)_cachedBodyDataContainerForMessage:(id)a3 valueIfNotPresent:(id)a4;
- (id)_cachedBodyDataForMessage:(id)a3 valueIfNotPresent:(id)a4;
- (id)_cachedBodyForMessage:(id)a3 valueIfNotPresent:(id)a4;
- (id)_cachedHeaderDataForMessage:(id)a3 valueIfNotPresent:(id)a4;
- (id)_cachedHeadersForMessage:(id)a3 valueIfNotPresent:(id)a4;
- (id)_downloadHeadersForMessages:(id)a3;
- (id)_fetchBodyDataForMessage:(id)a3 andHeaderDataIfReadilyAvailable:(id *)a4 downloadIfNecessary:(BOOL)a5 partial:(BOOL *)a6;
- (id)bestAlternativeForPart:(id)a3;
- (id)decryptedTopLevelPartForPart:(id)a3;
- (id)defaultAlternativeForPart:(id)a3;
- (id)fullBodyDataForMessage:(id)a3 andHeaderDataIfReadilyAvailable:(id *)a4 isComplete:(BOOL *)a5 downloadIfNecessary:(BOOL)a6 didDownload:(BOOL *)a7;
- (id)newObjectCache;
- (id)uniquedString:(id)a3;
@end

@implementation MFMessageStore

- (MFMessageStore)init
{
  v7.receiver = self;
  v7.super_class = MFMessageStore;
  v2 = [(MFMessageStore *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(MFMessageStore *)v2 newObjectCache];
    objectCache = v3->_objectCache;
    v3->_objectCache = v4;
  }

  return v3;
}

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__MFMessageStore_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, block);
  }

  v2 = log_log;

  return v2;
}

void __21__MFMessageStore_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log;
  log_log = v1;
}

+ (Class)headersClass
{
  v3 = sMFMessageStoreHeadersClass;
  if (sMFMessageStoreHeadersClass)
  {
  }

  else
  {
    v3 = objc_opt_class();
  }

  return v3;
}

- (id)_downloadHeadersForMessages:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(MFMessageStore *)self headersForMessage:v10 fetchIfNotAvailable:1, v14];
        if (v11)
        {
          [v5 setObject:v11 forKeyedSubscript:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)fullBodyDataForMessage:(id)a3 andHeaderDataIfReadilyAvailable:(id *)a4 isComplete:(BOOL *)a5 downloadIfNecessary:(BOOL)a6 didDownload:(BOOL *)a7
{
  v8 = a6;
  v9 = [(MFMessageStore *)self bodyDataForMessage:a3 isComplete:a5 isPartial:0 downloadIfNecessary:?];
  v10 = v9;
  if (a7 && v8 && [v9 length])
  {
    *a7 = 1;
  }

  return v10;
}

- (id)uniquedString:(id)a3
{
  v4 = a3;
  _MFLockGlobalLock();
  uniqueStrings = self->_uniqueStrings;
  if (uniqueStrings)
  {
    if ([(NSMutableSet *)uniqueStrings count]>= 0x64)
    {
      [(NSMutableSet *)self->_uniqueStrings removeAllObjects];
    }
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:100];
    v7 = self->_uniqueStrings;
    self->_uniqueStrings = v6;
  }

  v8 = [(NSMutableSet *)self->_uniqueStrings ef_uniquedObject:v4];
  _MFUnlockGlobalLock();

  return v8;
}

- (id)decryptedTopLevelPartForPart:(id)a3
{
  v3 = a3;
  v4 = [v3 decryptedMessageBodyIsEncrypted:0 isSigned:0];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 topLevelPart];

      v3 = v5;
    }
  }

  return v3;
}

- (id)defaultAlternativeForPart:(id)a3
{
  v3 = [(MFMessageStore *)self bestAlternativeForPart:a3];

  return v3;
}

- (id)bestAlternativeForPart:(id)a3
{
  v4 = a3;
  v5 = [(MFMessageStore *)self decryptedTopLevelPartForPart:v4];

  v6 = [v5 type];
  if ([v6 isEqualToString:@"multipart"])
  {
    v7 = [v5 subtype];
    v8 = [v7 isEqualToString:@"alternative"];

    if (v8)
    {
      v9 = [v5 chosenAlternativePart];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v9 = 0;
LABEL_6:
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  v11 = v10;

  return v10;
}

- (id)newObjectCache
{
  v2 = [[MFMessageStoreObjectCache alloc] initWithCapacity:5];
  [(MFMessageStoreObjectCache *)v2 setKeyGenerator:&__block_literal_global_1];
  return v2;
}

- (id)_cachedHeaderDataForMessage:(id)a3 valueIfNotPresent:(id)a4
{
  v4 = [(MFMessageStoreObjectCache *)self->_objectCache addObject:a4 forMessage:a3 kind:2];

  return v4;
}

- (id)_cachedBodyDataForMessage:(id)a3 valueIfNotPresent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [[MFMessageDataContainer alloc] initWithData:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(MFMessageStore *)self _cachedBodyDataContainerForMessage:v6 valueIfNotPresent:v8];
  v10 = v9;
  if (v9)
  {
    v11 = *(v9 + 8);
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (id)_cachedBodyForMessage:(id)a3 valueIfNotPresent:(id)a4
{
  v6 = a3;
  v7 = [(MFMessageStoreObjectCache *)self->_objectCache addObject:a4 forMessage:v6 kind:1];
  [v7 setMessage:v6];

  return v7;
}

- (id)_cachedHeadersForMessage:(id)a3 valueIfNotPresent:(id)a4
{
  v4 = [(MFMessageStoreObjectCache *)self->_objectCache addObject:a4 forMessage:a3 kind:0];

  return v4;
}

- (id)_cachedBodyDataContainerForMessage:(id)a3 valueIfNotPresent:(id)a4
{
  v4 = [(MFMessageStoreObjectCache *)self->_objectCache addObject:a4 forMessage:a3 kind:3];

  return v4;
}

- (id)_fetchBodyDataForMessage:(id)a3 andHeaderDataIfReadilyAvailable:(id *)a4 downloadIfNecessary:(BOOL)a5 partial:(BOOL *)a6
{
  v8 = a3;
  [(MFMessageStore *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFMessageStore _fetchBodyDataForMessage:andHeaderDataIfReadilyAvailable:downloadIfNecessary:partial:]", "MessageStore.m", 284, "0");
}

- (BOOL)hasCompleteDataForMimePart:(id)a3
{
  v4 = a3;
  v5 = [v4 mimeBody];
  v6 = [v5 message];

  v7 = [(MFMessageStore *)self _cachedBodyDataForMessage:v6 valueIfNotPresent:0];
  v8 = [v7 length];
  v9 = [v4 range];
  LOBYTE(v8) = v8 >= v9 + v10;

  return v8;
}

- (void)bodyDataForMessage:(os_log_t)log isComplete:isPartial:downloadIfNecessary:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1D36B2000, log, OS_LOG_TYPE_ERROR, "Failed to fetch body data for message %{public}@", buf, 0xCu);
}

@end