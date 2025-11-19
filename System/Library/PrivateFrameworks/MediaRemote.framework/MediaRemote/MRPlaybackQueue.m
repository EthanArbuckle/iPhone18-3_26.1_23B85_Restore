@interface MRPlaybackQueue
- (BOOL)isEqual:(id)a3;
- (MRPlaybackQueue)initWithCoder:(id)a3;
- (MRPlaybackQueue)initWithContentItem:(id)a3;
- (MRPlaybackQueue)initWithContentItems:(id)a3;
- (MRPlaybackQueue)initWithContentItems:(id)a3 location:(unint64_t)a4;
- (MRPlaybackQueue)initWithContentItems:(id)a3 location:(unint64_t)a4 withPropertiesFromPlaybackQueue:(id)a5;
- (MRPlaybackQueue)initWithContentItems:(id)a3 withPropertiesFromPlaybackQueue:(id)a4;
- (MRPlaybackQueue)initWithData:(id)a3;
- (MRPlaybackQueue)initWithProtobuf:(id)a3;
- (NSArray)contentItemIdentifiers;
- (NSData)data;
- (NSDictionary)dictionaryRepresentation;
- (NSDictionary)nowPlayingInfo;
- (NSString)minimalReadableDescription;
- (_NSRange)range;
- (id)contentItemForIdentifier:(id)a3;
- (id)contentItemWithOffset:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)protobufWithEncoding:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)mergePropertiesFromPlaybackQueue:(id)a3;
@end

@implementation MRPlaybackQueue

- (NSData)data
{
  v2 = [(MRPlaybackQueue *)self protobufWithEncoding:0];
  v3 = [v2 data];

  return v3;
}

- (_NSRange)range
{
  v3 = [(MRPlaybackQueue *)self location];
  v4 = [(MRPlaybackQueue *)self contentItems];
  v5 = [v4 count];

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (NSDictionary)nowPlayingInfo
{
  v3 = [(MRPlaybackQueue *)self contentItemWithOffset:0];
  if (v3)
  {
    v4 = [(MRPlaybackQueue *)self auxiliaryNowPlayingInfo];
    v5 = [v3 nowPlayingInfo];
    v6 = [v5 mutableCopy];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __33__MRPlaybackQueue_nowPlayingInfo__block_invoke;
    v10[3] = &unk_1E769EC90;
    v11 = v6;
    v7 = v6;
    [v4 enumerateKeysAndObjectsUsingBlock:v10];
    v8 = [v7 copy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (MRPlaybackQueue)initWithContentItems:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MRPlaybackQueue;
  v5 = [(MRPlaybackQueue *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    contentItems = v5->_contentItems;
    v5->_contentItems = v6;
  }

  return v5;
}

- (MRPlaybackQueue)initWithContentItem:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v10 = a3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v10 count:1];

    self = [(MRPlaybackQueue *)self initWithContentItems:v6, v10, v11];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (MRPlaybackQueue)initWithContentItems:(id)a3 location:(unint64_t)a4
{
  result = [(MRPlaybackQueue *)self initWithContentItems:a3];
  if (result)
  {
    result->_location = a4;
    result->_hasLocation = 1;
  }

  return result;
}

- (MRPlaybackQueue)initWithContentItems:(id)a3 withPropertiesFromPlaybackQueue:(id)a4
{
  v6 = a4;
  v7 = [(MRPlaybackQueue *)self initWithContentItems:a3];
  v8 = v7;
  if (v7)
  {
    [(MRPlaybackQueue *)v7 mergePropertiesFromPlaybackQueue:v6];
  }

  return v8;
}

- (MRPlaybackQueue)initWithContentItems:(id)a3 location:(unint64_t)a4 withPropertiesFromPlaybackQueue:(id)a5
{
  v8 = a5;
  v9 = [(MRPlaybackQueue *)self initWithContentItems:a3 location:a4];
  v10 = v9;
  if (v9)
  {
    [(MRPlaybackQueue *)v9 mergePropertiesFromPlaybackQueue:v8];
  }

  return v10;
}

- (MRPlaybackQueue)initWithProtobuf:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v34.receiver = self;
    v34.super_class = MRPlaybackQueue;
    v5 = [(MRPlaybackQueue *)&v34 init];
    if (v5)
    {
      v6 = [v4 context];
      context = v5->_context;
      v5->_context = v6;

      v5->_location = [v4 location];
      v5->_hasLocation = [v4 hasLocation];
      v8 = [v4 requestID];
      v9 = [v8 copy];
      requestIdentifier = v5->_requestIdentifier;
      v5->_requestIdentifier = v9;

      v11 = [v4 queueIdentifier];
      v12 = [v11 copy];
      queueIdentifier = v5->_queueIdentifier;
      v5->_queueIdentifier = v12;

      v14 = [v4 homeUserIdentifiers];

      if (v14)
      {
        v15 = objc_alloc(MEMORY[0x1E695DFD8]);
        v16 = [v4 homeUserIdentifiers];
        v17 = [v15 initWithArray:v16];
        homeUserIdentifiers = v5->_homeUserIdentifiers;
        v5->_homeUserIdentifiers = v17;
      }

      v19 = [v4 contentItems];
      v20 = [v19 mr_map:&__block_literal_global_98];
      contentItems = v5->_contentItems;
      v5->_contentItems = v20;

      v22 = [v4 properties];
      v23 = _MRProtoUtilsNSDictionaryFromProtoDictionary(v22);
      properties = v5->_properties;
      v5->_properties = v23;

      v25 = [v4 auxiliaryNowPlayingInfo];
      v26 = _MRProtoUtilsNSDictionaryFromProtoDictionary(v25);
      auxiliaryNowPlayingInfo = v5->_auxiliaryNowPlayingInfo;
      v5->_auxiliaryNowPlayingInfo = v26;

      if ([v4 hasResolvedPlayerPath])
      {
        v28 = [MRPlayerPath alloc];
        v29 = [v4 resolvedPlayerPath];
        v30 = [(MRPlayerPath *)v28 initWithProtobuf:v29];
        resolvedPlayerPath = v5->_resolvedPlayerPath;
        v5->_resolvedPlayerPath = v30;
      }
    }

    self = v5;
    v32 = self;
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

MRContentItem *__36__MRPlaybackQueue_initWithProtobuf___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRContentItem alloc] initWithProtobuf:v2];

  return v3;
}

- (MRPlaybackQueue)initWithData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[_MRPlaybackQueueProtobuf alloc] initWithData:v4];

    self = [(MRPlaybackQueue *)self initWithProtobuf:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MRPlaybackQueue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobuf"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = _MRLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(MRLanguageOption *)v5 initWithCoder:v6];
    }

    v5 = 0;
  }

  v7 = [(MRPlaybackQueue *)self initWithProtobuf:v5];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MRPlaybackQueue *)self protobufWithEncoding:0];
  [v4 encodeObject:v5 forKey:@"protobuf"];
}

- (id)protobufWithEncoding:(int64_t)a3
{
  v5 = objc_alloc_init(_MRPlaybackQueueProtobuf);
  v6 = [(MRPlaybackQueue *)self context];
  [(_MRPlaybackQueueProtobuf *)v5 setContext:v6];

  [(_MRPlaybackQueueProtobuf *)v5 setLocation:[(MRPlaybackQueue *)self location]];
  [(_MRPlaybackQueueProtobuf *)v5 setHasLocation:[(MRPlaybackQueue *)self hasLocation]];
  v7 = [(MRPlaybackQueue *)self requestIdentifier];
  v8 = [v7 copy];
  [(_MRPlaybackQueueProtobuf *)v5 setRequestID:v8];

  v9 = [(MRPlaybackQueue *)self queueIdentifier];
  v10 = [v9 copy];
  [(_MRPlaybackQueueProtobuf *)v5 setQueueIdentifier:v10];

  v11 = [(MRPlaybackQueue *)self resolvedPlayerPath];
  v12 = [v11 protobuf];
  [(_MRPlaybackQueueProtobuf *)v5 setResolvedPlayerPath:v12];

  v13 = [(MRPlaybackQueue *)self homeUserIdentifiers];
  v14 = [v13 allObjects];
  v15 = [v14 mutableCopy];
  [(_MRPlaybackQueueProtobuf *)v5 setHomeUserIdentifiers:v15];

  v16 = [(MRPlaybackQueue *)self contentItems];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __40__MRPlaybackQueue_protobufWithEncoding___block_invoke;
  v24[3] = &__block_descriptor_40_e47____MRContentItemProtobuf_16__0__MRContentItem_8l;
  v24[4] = a3;
  v17 = [v16 mr_map:v24];
  v18 = [v17 mutableCopy];
  [(_MRPlaybackQueueProtobuf *)v5 setContentItems:v18];

  v19 = [(MRPlaybackQueue *)self properties];
  v20 = _MRProtoUtilsProtoDictionaryFromNSDictionary(v19);
  [(_MRPlaybackQueueProtobuf *)v5 setProperties:v20];

  v21 = [(MRPlaybackQueue *)self auxiliaryNowPlayingInfo];
  v22 = _MRProtoUtilsProtoDictionaryFromNSDictionary(v21);
  [(_MRPlaybackQueueProtobuf *)v5 setAuxiliaryNowPlayingInfo:v22];

  return v5;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(MRPlaybackQueue *)self hasLocation])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRPlaybackQueue location](self, "location")}];
    [v3 setObject:v4 forKeyedSubscript:@"location"];
  }

  v5 = [(MRPlaybackQueue *)self requestIdentifier];
  [v3 setObject:v5 forKeyedSubscript:@"requestIdentifier"];

  v6 = [(MRPlaybackQueue *)self queueIdentifier];
  [v3 setObject:v6 forKeyedSubscript:@"queueIdentifier"];

  v7 = [(MRPlaybackQueue *)self resolvedPlayerPath];
  [v3 setObject:v7 forKeyedSubscript:@"resolvedPlayerPath"];

  v8 = [(MRPlaybackQueue *)self homeUserIdentifiers];
  [v3 setObject:v8 forKeyedSubscript:@"homeUserIdentifiers"];

  v9 = [(MRPlaybackQueue *)self contentItems];
  v10 = [v9 mr_map:&__block_literal_global_26_0];
  [v3 setObject:v10 forKeyedSubscript:@"contentItems"];

  v11 = [(MRPlaybackQueue *)self properties];
  [v3 setObject:v11 forKeyedSubscript:@"properties"];

  v12 = [(MRPlaybackQueue *)self auxiliaryNowPlayingInfo];
  [v3 setObject:v12 forKeyedSubscript:@"auxiliaryNowPlayingInfo"];

  return v3;
}

- (NSArray)contentItemIdentifiers
{
  v2 = [(MRPlaybackQueue *)self contentItems];
  v3 = [v2 mr_map:&__block_literal_global_37];

  return v3;
}

- (NSString)minimalReadableDescription
{
  v3 = [(MRPlaybackQueue *)self dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [(MRPlaybackQueue *)self contentItems];
  v6 = MRContentItemsCopyMinimalReadableDescription(v5, 0);

  if (v6)
  {
    [v4 setObject:v6 forKey:@"contentItems"];
  }

  v7 = [v4 description];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_30;
    }

    v5 = [(MRPlaybackQueue *)v4 hasLocation];
    if (v5 != [(MRPlaybackQueue *)self hasLocation])
    {
      goto LABEL_30;
    }

    if ([(MRPlaybackQueue *)v4 hasLocation])
    {
      if ([(MRPlaybackQueue *)self hasLocation])
      {
        v6 = [(MRPlaybackQueue *)v4 location];
        if (v6 != [(MRPlaybackQueue *)self location])
        {
          goto LABEL_30;
        }
      }
    }

    v7 = [(MRPlaybackQueue *)v4 requestIdentifier];
    v8 = [(MRPlaybackQueue *)self requestIdentifier];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(MRPlaybackQueue *)v4 requestIdentifier];
      v11 = [(MRPlaybackQueue *)self requestIdentifier];
      v12 = [v10 isEqualToString:v11];

      if (!v12)
      {
        goto LABEL_30;
      }
    }

    v14 = [(MRPlaybackQueue *)v4 queueIdentifier];
    v15 = [(MRPlaybackQueue *)self queueIdentifier];
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      v17 = [(MRPlaybackQueue *)v4 queueIdentifier];
      v18 = [(MRPlaybackQueue *)self queueIdentifier];
      v19 = [v17 isEqualToString:v18];

      if (!v19)
      {
        goto LABEL_30;
      }
    }

    v20 = [(MRPlaybackQueue *)v4 contentItems];
    v21 = [(MRPlaybackQueue *)self contentItems];
    v22 = v21;
    if (v20 == v21)
    {
    }

    else
    {
      v23 = [(MRPlaybackQueue *)v4 contentItems];
      v24 = [(MRPlaybackQueue *)self contentItems];
      v25 = [v23 isEqualToArray:v24];

      if (!v25)
      {
        goto LABEL_30;
      }
    }

    v26 = [(MRPlaybackQueue *)v4 resolvedPlayerPath];
    v27 = [(MRPlaybackQueue *)self resolvedPlayerPath];
    v28 = v27;
    if (v26 == v27)
    {
    }

    else
    {
      v29 = [(MRPlaybackQueue *)v4 resolvedPlayerPath];
      v30 = [(MRPlaybackQueue *)self resolvedPlayerPath];
      v31 = [v29 isEqual:v30];

      if (!v31)
      {
        goto LABEL_30;
      }
    }

    v32 = [(MRPlaybackQueue *)v4 homeUserIdentifiers];
    v33 = [(MRPlaybackQueue *)self homeUserIdentifiers];
    v34 = v33;
    if (v32 == v33)
    {
    }

    else
    {
      v35 = [(MRPlaybackQueue *)v4 homeUserIdentifiers];
      v36 = [(MRPlaybackQueue *)self homeUserIdentifiers];
      v37 = [v35 isEqualToSet:v36];

      if (!v37)
      {
        goto LABEL_30;
      }
    }

    v38 = [(MRPlaybackQueue *)v4 properties];
    v39 = [(MRPlaybackQueue *)self properties];
    v40 = v39;
    if (v38 == v39)
    {
    }

    else
    {
      v41 = [(MRPlaybackQueue *)v4 properties];
      v42 = [(MRPlaybackQueue *)self properties];
      v43 = [v41 isEqualToDictionary:v42];

      if (!v43)
      {
LABEL_30:
        v13 = 0;
        goto LABEL_31;
      }
    }

    v45 = [(MRPlaybackQueue *)v4 auxiliaryNowPlayingInfo];
    v46 = [(MRPlaybackQueue *)self auxiliaryNowPlayingInfo];
    if (v45 == v46)
    {
      v13 = 1;
    }

    else
    {
      v47 = [(MRPlaybackQueue *)v4 auxiliaryNowPlayingInfo];
      v48 = [(MRPlaybackQueue *)self auxiliaryNowPlayingInfo];
      v13 = [v47 isEqualToDictionary:v48];
    }
  }

LABEL_31:

  return v13 & 1;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(MRPlaybackQueue *)self dictionaryRepresentation];
  v6 = [v3 initWithFormat:@"<%@: %p> %@", v4, self, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setLocation:{-[MRPlaybackQueue location](self, "location")}];
  [v5 setHasLocation:{-[MRPlaybackQueue hasLocation](self, "hasLocation")}];
  v6 = [(MRPlaybackQueue *)self requestIdentifier];
  v7 = [v6 copyWithZone:a3];
  [v5 setRequestIdentifier:v7];

  v8 = [(MRPlaybackQueue *)self queueIdentifier];
  v9 = [v8 copyWithZone:a3];
  [v5 setQueueIdentifier:v9];

  v10 = [(MRPlaybackQueue *)self resolvedPlayerPath];
  v11 = [v10 copyWithZone:a3];
  [v5 setResolvedPlayerPath:v11];

  v12 = [(MRPlaybackQueue *)self homeUserIdentifiers];
  v13 = [v12 copyWithZone:a3];
  [v5 setHomeUserIdentifiers:v13];

  v14 = [(MRPlaybackQueue *)self contentItems];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __32__MRPlaybackQueue_copyWithZone___block_invoke;
  v23[3] = &__block_descriptor_40_e23__16__0__MRContentItem_8l;
  v23[4] = a3;
  v15 = [v14 mr_map:v23];
  [v5 setContentItems:v15];

  v16 = [(MRPlaybackQueue *)self properties];
  v17 = [v16 copyWithZone:a3];
  [v5 setProperties:v17];

  v18 = [(MRPlaybackQueue *)self auxiliaryNowPlayingInfo];
  v19 = [v18 copyWithZone:a3];
  [v5 setAuxiliaryNowPlayingInfo:v19];

  v20 = [(MRPlaybackQueue *)self context];
  v21 = [v20 copyWithZone:a3];
  [v5 setContext:v21];

  return v5;
}

id __32__MRPlaybackQueue_copyWithZone___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copyWithZone:*(a1 + 32)];

  return v2;
}

- (id)contentItemWithOffset:(unint64_t)a3
{
  if (contentItemWithOffset__onceToken == -1)
  {
    if (!self)
    {
      goto LABEL_8;
    }
  }

  else
  {
    [MRPlaybackQueue contentItemWithOffset:];
    if (!self)
    {
      goto LABEL_8;
    }
  }

  if (contentItemWithOffset__isNano)
  {
    goto LABEL_8;
  }

  v5 = [(MRPlaybackQueue *)self contentItems];
  if ([v5 count])
  {
    v6 = [(MRPlaybackQueue *)self hasLocation];

    if (v6)
    {
      goto LABEL_8;
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRPlaybackQueue contentItemWithOffset:]"];
    [v5 handleFailureInFunction:v7 file:@"MRPlaybackQueue.m" lineNumber:257 description:@"Attempting to set non-range based playbackQueue"];
  }

LABEL_8:
  v8 = [(MRPlaybackQueue *)self location];
  if (v8 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = -v8;
  }

  v10 = v9 + a3;
  v11 = [(MRPlaybackQueue *)self contentItems];
  v12 = [v11 count];

  if (v10 >= v12)
  {
    v14 = 0;
  }

  else
  {
    v13 = [(MRPlaybackQueue *)self contentItems];
    v14 = [v13 objectAtIndexedSubscript:v10];
  }

  return v14;
}

void __41__MRPlaybackQueue_contentItemWithOffset___block_invoke()
{
  v1 = [MEMORY[0x1E696AE30] processInfo];
  v0 = [v1 processName];
  contentItemWithOffset__isNano = [v0 containsString:@"nanomediaremotelinkagent"];
}

- (id)contentItemForIdentifier:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(MRPlaybackQueue *)self contentItems];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)mergeFrom:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(MRPlaybackQueue *)self contentItems];
  v19 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v19)
  {
    v17 = *v25;
    do
    {
      v4 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v24 + 1) + 8 * v4);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v6 = [v18 contentItems];
        v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v21;
          do
          {
            v10 = 0;
            do
            {
              if (*v21 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v20 + 1) + 8 * v10);
              v12 = [v5 identifier];
              v13 = [v11 identifier];
              v14 = [v12 isEqualToString:v13];

              if (v14)
              {
                MRContentItemMerge(v5, v11);
              }

              ++v10;
            }

            while (v8 != v10);
            v8 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v8);
        }

        ++v4;
      }

      while (v4 != v19);
      v19 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v19);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)mergePropertiesFromPlaybackQueue:(id)a3
{
  v4 = a3;
  v5 = [v4 queueIdentifier];
  v6 = [v5 copy];
  queueIdentifier = self->_queueIdentifier;
  self->_queueIdentifier = v6;

  v8 = [v4 properties];
  v9 = [v8 copy];
  properties = self->_properties;
  self->_properties = v9;

  v11 = [v4 auxiliaryNowPlayingInfo];
  v12 = [v11 copy];
  auxiliaryNowPlayingInfo = self->_auxiliaryNowPlayingInfo;
  self->_auxiliaryNowPlayingInfo = v12;

  v14 = [v4 resolvedPlayerPath];
  v15 = [v14 copy];
  resolvedPlayerPath = self->_resolvedPlayerPath;
  self->_resolvedPlayerPath = v15;

  v17 = [v4 homeUserIdentifiers];
  v18 = [v17 copy];
  homeUserIdentifiers = self->_homeUserIdentifiers;
  self->_homeUserIdentifiers = v18;

  v20 = [v4 context];
  v21 = [v20 copy];
  context = self->_context;
  self->_context = v21;

  v25 = [v4 requestIdentifier];

  v23 = [v25 copy];
  requestIdentifier = self->_requestIdentifier;
  self->_requestIdentifier = v23;
}

@end