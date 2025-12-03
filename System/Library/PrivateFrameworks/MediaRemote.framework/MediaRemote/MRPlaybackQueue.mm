@interface MRPlaybackQueue
- (BOOL)isEqual:(id)equal;
- (MRPlaybackQueue)initWithCoder:(id)coder;
- (MRPlaybackQueue)initWithContentItem:(id)item;
- (MRPlaybackQueue)initWithContentItems:(id)items;
- (MRPlaybackQueue)initWithContentItems:(id)items location:(unint64_t)location;
- (MRPlaybackQueue)initWithContentItems:(id)items location:(unint64_t)location withPropertiesFromPlaybackQueue:(id)queue;
- (MRPlaybackQueue)initWithContentItems:(id)items withPropertiesFromPlaybackQueue:(id)queue;
- (MRPlaybackQueue)initWithData:(id)data;
- (MRPlaybackQueue)initWithProtobuf:(id)protobuf;
- (NSArray)contentItemIdentifiers;
- (NSData)data;
- (NSDictionary)dictionaryRepresentation;
- (NSDictionary)nowPlayingInfo;
- (NSString)minimalReadableDescription;
- (_NSRange)range;
- (id)contentItemForIdentifier:(id)identifier;
- (id)contentItemWithOffset:(unint64_t)offset;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)protobufWithEncoding:(int64_t)encoding;
- (void)encodeWithCoder:(id)coder;
- (void)mergeFrom:(id)from;
- (void)mergePropertiesFromPlaybackQueue:(id)queue;
@end

@implementation MRPlaybackQueue

- (NSData)data
{
  v2 = [(MRPlaybackQueue *)self protobufWithEncoding:0];
  data = [v2 data];

  return data;
}

- (_NSRange)range
{
  location = [(MRPlaybackQueue *)self location];
  contentItems = [(MRPlaybackQueue *)self contentItems];
  v5 = [contentItems count];

  v6 = location;
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
    auxiliaryNowPlayingInfo = [(MRPlaybackQueue *)self auxiliaryNowPlayingInfo];
    nowPlayingInfo = [v3 nowPlayingInfo];
    v6 = [nowPlayingInfo mutableCopy];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __33__MRPlaybackQueue_nowPlayingInfo__block_invoke;
    v10[3] = &unk_1E769EC90;
    v11 = v6;
    v7 = v6;
    [auxiliaryNowPlayingInfo enumerateKeysAndObjectsUsingBlock:v10];
    v8 = [v7 copy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (MRPlaybackQueue)initWithContentItems:(id)items
{
  itemsCopy = items;
  v9.receiver = self;
  v9.super_class = MRPlaybackQueue;
  v5 = [(MRPlaybackQueue *)&v9 init];
  if (v5)
  {
    v6 = [itemsCopy copy];
    contentItems = v5->_contentItems;
    v5->_contentItems = v6;
  }

  return v5;
}

- (MRPlaybackQueue)initWithContentItem:(id)item
{
  v11 = *MEMORY[0x1E69E9840];
  if (item)
  {
    itemCopy = item;
    v4 = MEMORY[0x1E695DEC8];
    itemCopy2 = item;
    v6 = [v4 arrayWithObjects:&itemCopy count:1];

    self = [(MRPlaybackQueue *)self initWithContentItems:v6, itemCopy, v11];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (MRPlaybackQueue)initWithContentItems:(id)items location:(unint64_t)location
{
  result = [(MRPlaybackQueue *)self initWithContentItems:items];
  if (result)
  {
    result->_location = location;
    result->_hasLocation = 1;
  }

  return result;
}

- (MRPlaybackQueue)initWithContentItems:(id)items withPropertiesFromPlaybackQueue:(id)queue
{
  queueCopy = queue;
  v7 = [(MRPlaybackQueue *)self initWithContentItems:items];
  v8 = v7;
  if (v7)
  {
    [(MRPlaybackQueue *)v7 mergePropertiesFromPlaybackQueue:queueCopy];
  }

  return v8;
}

- (MRPlaybackQueue)initWithContentItems:(id)items location:(unint64_t)location withPropertiesFromPlaybackQueue:(id)queue
{
  queueCopy = queue;
  v9 = [(MRPlaybackQueue *)self initWithContentItems:items location:location];
  v10 = v9;
  if (v9)
  {
    [(MRPlaybackQueue *)v9 mergePropertiesFromPlaybackQueue:queueCopy];
  }

  return v10;
}

- (MRPlaybackQueue)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  if (protobufCopy)
  {
    v34.receiver = self;
    v34.super_class = MRPlaybackQueue;
    v5 = [(MRPlaybackQueue *)&v34 init];
    if (v5)
    {
      context = [protobufCopy context];
      context = v5->_context;
      v5->_context = context;

      v5->_location = [protobufCopy location];
      v5->_hasLocation = [protobufCopy hasLocation];
      requestID = [protobufCopy requestID];
      v9 = [requestID copy];
      requestIdentifier = v5->_requestIdentifier;
      v5->_requestIdentifier = v9;

      queueIdentifier = [protobufCopy queueIdentifier];
      v12 = [queueIdentifier copy];
      queueIdentifier = v5->_queueIdentifier;
      v5->_queueIdentifier = v12;

      homeUserIdentifiers = [protobufCopy homeUserIdentifiers];

      if (homeUserIdentifiers)
      {
        v15 = objc_alloc(MEMORY[0x1E695DFD8]);
        homeUserIdentifiers2 = [protobufCopy homeUserIdentifiers];
        v17 = [v15 initWithArray:homeUserIdentifiers2];
        homeUserIdentifiers = v5->_homeUserIdentifiers;
        v5->_homeUserIdentifiers = v17;
      }

      contentItems = [protobufCopy contentItems];
      v20 = [contentItems mr_map:&__block_literal_global_98];
      contentItems = v5->_contentItems;
      v5->_contentItems = v20;

      properties = [protobufCopy properties];
      v23 = _MRProtoUtilsNSDictionaryFromProtoDictionary(properties);
      properties = v5->_properties;
      v5->_properties = v23;

      auxiliaryNowPlayingInfo = [protobufCopy auxiliaryNowPlayingInfo];
      v26 = _MRProtoUtilsNSDictionaryFromProtoDictionary(auxiliaryNowPlayingInfo);
      auxiliaryNowPlayingInfo = v5->_auxiliaryNowPlayingInfo;
      v5->_auxiliaryNowPlayingInfo = v26;

      if ([protobufCopy hasResolvedPlayerPath])
      {
        v28 = [MRPlayerPath alloc];
        resolvedPlayerPath = [protobufCopy resolvedPlayerPath];
        v30 = [(MRPlayerPath *)v28 initWithProtobuf:resolvedPlayerPath];
        resolvedPlayerPath = v5->_resolvedPlayerPath;
        v5->_resolvedPlayerPath = v30;
      }
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

MRContentItem *__36__MRPlaybackQueue_initWithProtobuf___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRContentItem alloc] initWithProtobuf:v2];

  return v3;
}

- (MRPlaybackQueue)initWithData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[_MRPlaybackQueueProtobuf alloc] initWithData:dataCopy];

    self = [(MRPlaybackQueue *)self initWithProtobuf:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MRPlaybackQueue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobuf"];

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MRPlaybackQueue *)self protobufWithEncoding:0];
  [coderCopy encodeObject:v5 forKey:@"protobuf"];
}

- (id)protobufWithEncoding:(int64_t)encoding
{
  v5 = objc_alloc_init(_MRPlaybackQueueProtobuf);
  context = [(MRPlaybackQueue *)self context];
  [(_MRPlaybackQueueProtobuf *)v5 setContext:context];

  [(_MRPlaybackQueueProtobuf *)v5 setLocation:[(MRPlaybackQueue *)self location]];
  [(_MRPlaybackQueueProtobuf *)v5 setHasLocation:[(MRPlaybackQueue *)self hasLocation]];
  requestIdentifier = [(MRPlaybackQueue *)self requestIdentifier];
  v8 = [requestIdentifier copy];
  [(_MRPlaybackQueueProtobuf *)v5 setRequestID:v8];

  queueIdentifier = [(MRPlaybackQueue *)self queueIdentifier];
  v10 = [queueIdentifier copy];
  [(_MRPlaybackQueueProtobuf *)v5 setQueueIdentifier:v10];

  resolvedPlayerPath = [(MRPlaybackQueue *)self resolvedPlayerPath];
  protobuf = [resolvedPlayerPath protobuf];
  [(_MRPlaybackQueueProtobuf *)v5 setResolvedPlayerPath:protobuf];

  homeUserIdentifiers = [(MRPlaybackQueue *)self homeUserIdentifiers];
  allObjects = [homeUserIdentifiers allObjects];
  v15 = [allObjects mutableCopy];
  [(_MRPlaybackQueueProtobuf *)v5 setHomeUserIdentifiers:v15];

  contentItems = [(MRPlaybackQueue *)self contentItems];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __40__MRPlaybackQueue_protobufWithEncoding___block_invoke;
  v24[3] = &__block_descriptor_40_e47____MRContentItemProtobuf_16__0__MRContentItem_8l;
  v24[4] = encoding;
  v17 = [contentItems mr_map:v24];
  v18 = [v17 mutableCopy];
  [(_MRPlaybackQueueProtobuf *)v5 setContentItems:v18];

  properties = [(MRPlaybackQueue *)self properties];
  v20 = _MRProtoUtilsProtoDictionaryFromNSDictionary(properties);
  [(_MRPlaybackQueueProtobuf *)v5 setProperties:v20];

  auxiliaryNowPlayingInfo = [(MRPlaybackQueue *)self auxiliaryNowPlayingInfo];
  v22 = _MRProtoUtilsProtoDictionaryFromNSDictionary(auxiliaryNowPlayingInfo);
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

  requestIdentifier = [(MRPlaybackQueue *)self requestIdentifier];
  [v3 setObject:requestIdentifier forKeyedSubscript:@"requestIdentifier"];

  queueIdentifier = [(MRPlaybackQueue *)self queueIdentifier];
  [v3 setObject:queueIdentifier forKeyedSubscript:@"queueIdentifier"];

  resolvedPlayerPath = [(MRPlaybackQueue *)self resolvedPlayerPath];
  [v3 setObject:resolvedPlayerPath forKeyedSubscript:@"resolvedPlayerPath"];

  homeUserIdentifiers = [(MRPlaybackQueue *)self homeUserIdentifiers];
  [v3 setObject:homeUserIdentifiers forKeyedSubscript:@"homeUserIdentifiers"];

  contentItems = [(MRPlaybackQueue *)self contentItems];
  v10 = [contentItems mr_map:&__block_literal_global_26_0];
  [v3 setObject:v10 forKeyedSubscript:@"contentItems"];

  properties = [(MRPlaybackQueue *)self properties];
  [v3 setObject:properties forKeyedSubscript:@"properties"];

  auxiliaryNowPlayingInfo = [(MRPlaybackQueue *)self auxiliaryNowPlayingInfo];
  [v3 setObject:auxiliaryNowPlayingInfo forKeyedSubscript:@"auxiliaryNowPlayingInfo"];

  return v3;
}

- (NSArray)contentItemIdentifiers
{
  contentItems = [(MRPlaybackQueue *)self contentItems];
  v3 = [contentItems mr_map:&__block_literal_global_37];

  return v3;
}

- (NSString)minimalReadableDescription
{
  dictionaryRepresentation = [(MRPlaybackQueue *)self dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  contentItems = [(MRPlaybackQueue *)self contentItems];
  v6 = MRContentItemsCopyMinimalReadableDescription(contentItems, 0);

  if (v6)
  {
    [v4 setObject:v6 forKey:@"contentItems"];
  }

  v7 = [v4 description];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
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

    hasLocation = [(MRPlaybackQueue *)equalCopy hasLocation];
    if (hasLocation != [(MRPlaybackQueue *)self hasLocation])
    {
      goto LABEL_30;
    }

    if ([(MRPlaybackQueue *)equalCopy hasLocation])
    {
      if ([(MRPlaybackQueue *)self hasLocation])
      {
        location = [(MRPlaybackQueue *)equalCopy location];
        if (location != [(MRPlaybackQueue *)self location])
        {
          goto LABEL_30;
        }
      }
    }

    requestIdentifier = [(MRPlaybackQueue *)equalCopy requestIdentifier];
    requestIdentifier2 = [(MRPlaybackQueue *)self requestIdentifier];
    v9 = requestIdentifier2;
    if (requestIdentifier == requestIdentifier2)
    {
    }

    else
    {
      requestIdentifier3 = [(MRPlaybackQueue *)equalCopy requestIdentifier];
      requestIdentifier4 = [(MRPlaybackQueue *)self requestIdentifier];
      v12 = [requestIdentifier3 isEqualToString:requestIdentifier4];

      if (!v12)
      {
        goto LABEL_30;
      }
    }

    queueIdentifier = [(MRPlaybackQueue *)equalCopy queueIdentifier];
    queueIdentifier2 = [(MRPlaybackQueue *)self queueIdentifier];
    v16 = queueIdentifier2;
    if (queueIdentifier == queueIdentifier2)
    {
    }

    else
    {
      queueIdentifier3 = [(MRPlaybackQueue *)equalCopy queueIdentifier];
      queueIdentifier4 = [(MRPlaybackQueue *)self queueIdentifier];
      v19 = [queueIdentifier3 isEqualToString:queueIdentifier4];

      if (!v19)
      {
        goto LABEL_30;
      }
    }

    contentItems = [(MRPlaybackQueue *)equalCopy contentItems];
    contentItems2 = [(MRPlaybackQueue *)self contentItems];
    v22 = contentItems2;
    if (contentItems == contentItems2)
    {
    }

    else
    {
      contentItems3 = [(MRPlaybackQueue *)equalCopy contentItems];
      contentItems4 = [(MRPlaybackQueue *)self contentItems];
      v25 = [contentItems3 isEqualToArray:contentItems4];

      if (!v25)
      {
        goto LABEL_30;
      }
    }

    resolvedPlayerPath = [(MRPlaybackQueue *)equalCopy resolvedPlayerPath];
    resolvedPlayerPath2 = [(MRPlaybackQueue *)self resolvedPlayerPath];
    v28 = resolvedPlayerPath2;
    if (resolvedPlayerPath == resolvedPlayerPath2)
    {
    }

    else
    {
      resolvedPlayerPath3 = [(MRPlaybackQueue *)equalCopy resolvedPlayerPath];
      resolvedPlayerPath4 = [(MRPlaybackQueue *)self resolvedPlayerPath];
      v31 = [resolvedPlayerPath3 isEqual:resolvedPlayerPath4];

      if (!v31)
      {
        goto LABEL_30;
      }
    }

    homeUserIdentifiers = [(MRPlaybackQueue *)equalCopy homeUserIdentifiers];
    homeUserIdentifiers2 = [(MRPlaybackQueue *)self homeUserIdentifiers];
    v34 = homeUserIdentifiers2;
    if (homeUserIdentifiers == homeUserIdentifiers2)
    {
    }

    else
    {
      homeUserIdentifiers3 = [(MRPlaybackQueue *)equalCopy homeUserIdentifiers];
      homeUserIdentifiers4 = [(MRPlaybackQueue *)self homeUserIdentifiers];
      v37 = [homeUserIdentifiers3 isEqualToSet:homeUserIdentifiers4];

      if (!v37)
      {
        goto LABEL_30;
      }
    }

    properties = [(MRPlaybackQueue *)equalCopy properties];
    properties2 = [(MRPlaybackQueue *)self properties];
    v40 = properties2;
    if (properties == properties2)
    {
    }

    else
    {
      properties3 = [(MRPlaybackQueue *)equalCopy properties];
      properties4 = [(MRPlaybackQueue *)self properties];
      v43 = [properties3 isEqualToDictionary:properties4];

      if (!v43)
      {
LABEL_30:
        v13 = 0;
        goto LABEL_31;
      }
    }

    auxiliaryNowPlayingInfo = [(MRPlaybackQueue *)equalCopy auxiliaryNowPlayingInfo];
    auxiliaryNowPlayingInfo2 = [(MRPlaybackQueue *)self auxiliaryNowPlayingInfo];
    if (auxiliaryNowPlayingInfo == auxiliaryNowPlayingInfo2)
    {
      v13 = 1;
    }

    else
    {
      auxiliaryNowPlayingInfo3 = [(MRPlaybackQueue *)equalCopy auxiliaryNowPlayingInfo];
      auxiliaryNowPlayingInfo4 = [(MRPlaybackQueue *)self auxiliaryNowPlayingInfo];
      v13 = [auxiliaryNowPlayingInfo3 isEqualToDictionary:auxiliaryNowPlayingInfo4];
    }
  }

LABEL_31:

  return v13 & 1;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  dictionaryRepresentation = [(MRPlaybackQueue *)self dictionaryRepresentation];
  v6 = [v3 initWithFormat:@"<%@: %p> %@", v4, self, dictionaryRepresentation];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setLocation:{-[MRPlaybackQueue location](self, "location")}];
  [v5 setHasLocation:{-[MRPlaybackQueue hasLocation](self, "hasLocation")}];
  requestIdentifier = [(MRPlaybackQueue *)self requestIdentifier];
  v7 = [requestIdentifier copyWithZone:zone];
  [v5 setRequestIdentifier:v7];

  queueIdentifier = [(MRPlaybackQueue *)self queueIdentifier];
  v9 = [queueIdentifier copyWithZone:zone];
  [v5 setQueueIdentifier:v9];

  resolvedPlayerPath = [(MRPlaybackQueue *)self resolvedPlayerPath];
  v11 = [resolvedPlayerPath copyWithZone:zone];
  [v5 setResolvedPlayerPath:v11];

  homeUserIdentifiers = [(MRPlaybackQueue *)self homeUserIdentifiers];
  v13 = [homeUserIdentifiers copyWithZone:zone];
  [v5 setHomeUserIdentifiers:v13];

  contentItems = [(MRPlaybackQueue *)self contentItems];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __32__MRPlaybackQueue_copyWithZone___block_invoke;
  v23[3] = &__block_descriptor_40_e23__16__0__MRContentItem_8l;
  v23[4] = zone;
  v15 = [contentItems mr_map:v23];
  [v5 setContentItems:v15];

  properties = [(MRPlaybackQueue *)self properties];
  v17 = [properties copyWithZone:zone];
  [v5 setProperties:v17];

  auxiliaryNowPlayingInfo = [(MRPlaybackQueue *)self auxiliaryNowPlayingInfo];
  v19 = [auxiliaryNowPlayingInfo copyWithZone:zone];
  [v5 setAuxiliaryNowPlayingInfo:v19];

  context = [(MRPlaybackQueue *)self context];
  v21 = [context copyWithZone:zone];
  [v5 setContext:v21];

  return v5;
}

id __32__MRPlaybackQueue_copyWithZone___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copyWithZone:*(a1 + 32)];

  return v2;
}

- (id)contentItemWithOffset:(unint64_t)offset
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

  contentItems = [(MRPlaybackQueue *)self contentItems];
  if ([contentItems count])
  {
    hasLocation = [(MRPlaybackQueue *)self hasLocation];

    if (hasLocation)
    {
      goto LABEL_8;
    }

    contentItems = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRPlaybackQueue contentItemWithOffset:]"];
    [contentItems handleFailureInFunction:v7 file:@"MRPlaybackQueue.m" lineNumber:257 description:@"Attempting to set non-range based playbackQueue"];
  }

LABEL_8:
  location = [(MRPlaybackQueue *)self location];
  if (location >= 0)
  {
    v9 = location;
  }

  else
  {
    v9 = -location;
  }

  v10 = v9 + offset;
  contentItems2 = [(MRPlaybackQueue *)self contentItems];
  v12 = [contentItems2 count];

  if (v10 >= v12)
  {
    v14 = 0;
  }

  else
  {
    contentItems3 = [(MRPlaybackQueue *)self contentItems];
    v14 = [contentItems3 objectAtIndexedSubscript:v10];
  }

  return v14;
}

void __41__MRPlaybackQueue_contentItemWithOffset___block_invoke()
{
  v1 = [MEMORY[0x1E696AE30] processInfo];
  v0 = [v1 processName];
  contentItemWithOffset__isNano = [v0 containsString:@"nanomediaremotelinkagent"];
}

- (id)contentItemForIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  contentItems = [(MRPlaybackQueue *)self contentItems];
  v6 = [contentItems countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(contentItems);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqualToString:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [contentItems countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)mergeFrom:(id)from
{
  v30 = *MEMORY[0x1E69E9840];
  fromCopy = from;
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
        contentItems = [fromCopy contentItems];
        v7 = [contentItems countByEnumeratingWithState:&v20 objects:v28 count:16];
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
                objc_enumerationMutation(contentItems);
              }

              v11 = *(*(&v20 + 1) + 8 * v10);
              identifier = [v5 identifier];
              identifier2 = [v11 identifier];
              v14 = [identifier isEqualToString:identifier2];

              if (v14)
              {
                MRContentItemMerge(v5, v11);
              }

              ++v10;
            }

            while (v8 != v10);
            v8 = [contentItems countByEnumeratingWithState:&v20 objects:v28 count:16];
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

- (void)mergePropertiesFromPlaybackQueue:(id)queue
{
  queueCopy = queue;
  queueIdentifier = [queueCopy queueIdentifier];
  v6 = [queueIdentifier copy];
  queueIdentifier = self->_queueIdentifier;
  self->_queueIdentifier = v6;

  properties = [queueCopy properties];
  v9 = [properties copy];
  properties = self->_properties;
  self->_properties = v9;

  auxiliaryNowPlayingInfo = [queueCopy auxiliaryNowPlayingInfo];
  v12 = [auxiliaryNowPlayingInfo copy];
  auxiliaryNowPlayingInfo = self->_auxiliaryNowPlayingInfo;
  self->_auxiliaryNowPlayingInfo = v12;

  resolvedPlayerPath = [queueCopy resolvedPlayerPath];
  v15 = [resolvedPlayerPath copy];
  resolvedPlayerPath = self->_resolvedPlayerPath;
  self->_resolvedPlayerPath = v15;

  homeUserIdentifiers = [queueCopy homeUserIdentifiers];
  v18 = [homeUserIdentifiers copy];
  homeUserIdentifiers = self->_homeUserIdentifiers;
  self->_homeUserIdentifiers = v18;

  context = [queueCopy context];
  v21 = [context copy];
  context = self->_context;
  self->_context = v21;

  requestIdentifier = [queueCopy requestIdentifier];

  v23 = [requestIdentifier copy];
  requestIdentifier = self->_requestIdentifier;
  self->_requestIdentifier = v23;
}

@end