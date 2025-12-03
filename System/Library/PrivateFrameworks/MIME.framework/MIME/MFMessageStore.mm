@interface MFMessageStore
+ (Class)headersClass;
+ (id)log;
- (BOOL)hasCompleteDataForMimePart:(id)part;
- (MFMessageStore)init;
- (id)_cachedBodyDataContainerForMessage:(id)message valueIfNotPresent:(id)present;
- (id)_cachedBodyDataForMessage:(id)message valueIfNotPresent:(id)present;
- (id)_cachedBodyForMessage:(id)message valueIfNotPresent:(id)present;
- (id)_cachedHeaderDataForMessage:(id)message valueIfNotPresent:(id)present;
- (id)_cachedHeadersForMessage:(id)message valueIfNotPresent:(id)present;
- (id)_downloadHeadersForMessages:(id)messages;
- (id)_fetchBodyDataForMessage:(id)message andHeaderDataIfReadilyAvailable:(id *)available downloadIfNecessary:(BOOL)necessary partial:(BOOL *)partial;
- (id)bestAlternativeForPart:(id)part;
- (id)decryptedTopLevelPartForPart:(id)part;
- (id)defaultAlternativeForPart:(id)part;
- (id)fullBodyDataForMessage:(id)message andHeaderDataIfReadilyAvailable:(id *)available isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download;
- (id)newObjectCache;
- (id)uniquedString:(id)string;
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
    newObjectCache = [(MFMessageStore *)v2 newObjectCache];
    objectCache = v3->_objectCache;
    v3->_objectCache = newObjectCache;
  }

  return v3;
}

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__MFMessageStore_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (id)_downloadHeadersForMessages:(id)messages
{
  v19 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = messagesCopy;
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
          [dictionary setObject:v11 forKeyedSubscript:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)fullBodyDataForMessage:(id)message andHeaderDataIfReadilyAvailable:(id *)available isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary didDownload:(BOOL *)download
{
  necessaryCopy = necessary;
  v9 = [(MFMessageStore *)self bodyDataForMessage:message isComplete:complete isPartial:0 downloadIfNecessary:?];
  v10 = v9;
  if (download && necessaryCopy && [v9 length])
  {
    *download = 1;
  }

  return v10;
}

- (id)uniquedString:(id)string
{
  stringCopy = string;
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

  v8 = [(NSMutableSet *)self->_uniqueStrings ef_uniquedObject:stringCopy];
  _MFUnlockGlobalLock();

  return v8;
}

- (id)decryptedTopLevelPartForPart:(id)part
{
  partCopy = part;
  v4 = [partCopy decryptedMessageBodyIsEncrypted:0 isSigned:0];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      topLevelPart = [v4 topLevelPart];

      partCopy = topLevelPart;
    }
  }

  return partCopy;
}

- (id)defaultAlternativeForPart:(id)part
{
  v3 = [(MFMessageStore *)self bestAlternativeForPart:part];

  return v3;
}

- (id)bestAlternativeForPart:(id)part
{
  partCopy = part;
  v5 = [(MFMessageStore *)self decryptedTopLevelPartForPart:partCopy];

  type = [v5 type];
  if ([type isEqualToString:@"multipart"])
  {
    subtype = [v5 subtype];
    v8 = [subtype isEqualToString:@"alternative"];

    if (v8)
    {
      chosenAlternativePart = [v5 chosenAlternativePart];
      goto LABEL_6;
    }
  }

  else
  {
  }

  chosenAlternativePart = 0;
LABEL_6:
  if (chosenAlternativePart)
  {
    v10 = chosenAlternativePart;
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

- (id)_cachedHeaderDataForMessage:(id)message valueIfNotPresent:(id)present
{
  v4 = [(MFMessageStoreObjectCache *)self->_objectCache addObject:present forMessage:message kind:2];

  return v4;
}

- (id)_cachedBodyDataForMessage:(id)message valueIfNotPresent:(id)present
{
  messageCopy = message;
  presentCopy = present;
  if (presentCopy)
  {
    v8 = [[MFMessageDataContainer alloc] initWithData:presentCopy];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(MFMessageStore *)self _cachedBodyDataContainerForMessage:messageCopy valueIfNotPresent:v8];
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

- (id)_cachedBodyForMessage:(id)message valueIfNotPresent:(id)present
{
  messageCopy = message;
  v7 = [(MFMessageStoreObjectCache *)self->_objectCache addObject:present forMessage:messageCopy kind:1];
  [v7 setMessage:messageCopy];

  return v7;
}

- (id)_cachedHeadersForMessage:(id)message valueIfNotPresent:(id)present
{
  v4 = [(MFMessageStoreObjectCache *)self->_objectCache addObject:present forMessage:message kind:0];

  return v4;
}

- (id)_cachedBodyDataContainerForMessage:(id)message valueIfNotPresent:(id)present
{
  v4 = [(MFMessageStoreObjectCache *)self->_objectCache addObject:present forMessage:message kind:3];

  return v4;
}

- (id)_fetchBodyDataForMessage:(id)message andHeaderDataIfReadilyAvailable:(id *)available downloadIfNecessary:(BOOL)necessary partial:(BOOL *)partial
{
  messageCopy = message;
  [(MFMessageStore *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFMessageStore _fetchBodyDataForMessage:andHeaderDataIfReadilyAvailable:downloadIfNecessary:partial:]", "MessageStore.m", 284, "0");
}

- (BOOL)hasCompleteDataForMimePart:(id)part
{
  partCopy = part;
  mimeBody = [partCopy mimeBody];
  message = [mimeBody message];

  v7 = [(MFMessageStore *)self _cachedBodyDataForMessage:message valueIfNotPresent:0];
  v8 = [v7 length];
  range = [partCopy range];
  LOBYTE(v8) = v8 >= range + v10;

  return v8;
}

- (void)bodyDataForMessage:(os_log_t)log isComplete:isPartial:downloadIfNecessary:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1D36B2000, log, OS_LOG_TYPE_ERROR, "Failed to fetch body data for message %{public}@", buf, 0xCu);
}

@end