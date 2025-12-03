@interface _CPStartNetworkSearchFeedback
+ (id)startSearchFeedbackWithUUID;
- (BOOL)getHeaders:(id *)headers forKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (_CPStartNetworkSearchFeedback)init;
- (_CPStartNetworkSearchFeedback)initWithFacade:(id)facade;
- (int)lookupSelectionType;
- (int)triggerEvent;
- (unint64_t)hash;
- (void)clearTrigger;
- (void)setHeaders:(id)headers;
- (void)setHeaders:(id)headers forKey:(id)key;
- (void)setLookupSelectionType:(int)type;
- (void)setTriggerEvent:(int)event;
- (void)writeTo:(id)to;
@end

@implementation _CPStartNetworkSearchFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(NSString *)self->_input hash];
  v5 = v4 ^ [(NSString *)self->_uuid hash]^ v3;
  v6 = 2654435761u * self->_queryId;
  v7 = v5 ^ v6 ^ [(NSString *)self->_url hash];
  v8 = v7 ^ [(NSDictionary *)self->_headers hash]^ (2654435761 * self->_endpoint) ^ (2654435761 * self->_triggerEvent);
  v9 = 2654435761 * self->_lookupSelectionType;
  v10 = v9 ^ [(NSData *)self->_bodyData hash];
  v11 = v10 ^ [(NSString *)self->_experimentId hash];
  return v8 ^ v11 ^ [(NSString *)self->_treatmentId hash]^ (2654435761 * self->_searchType) ^ (2654435761u * self->_rawRequestSize) ^ (2654435761u * self->_compressedRequestSize);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  timestamp = self->_timestamp;
  if (timestamp != [equalCopy timestamp])
  {
    goto LABEL_42;
  }

  input = [(_CPStartNetworkSearchFeedback *)self input];
  input2 = [equalCopy input];
  if ((input != 0) == (input2 == 0))
  {
    goto LABEL_41;
  }

  input3 = [(_CPStartNetworkSearchFeedback *)self input];
  if (input3)
  {
    v9 = input3;
    input4 = [(_CPStartNetworkSearchFeedback *)self input];
    input5 = [equalCopy input];
    v12 = [input4 isEqual:input5];

    if (!v12)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  input = [(_CPStartNetworkSearchFeedback *)self uuid];
  input2 = [equalCopy uuid];
  if ((input != 0) == (input2 == 0))
  {
    goto LABEL_41;
  }

  uuid = [(_CPStartNetworkSearchFeedback *)self uuid];
  if (uuid)
  {
    v14 = uuid;
    uuid2 = [(_CPStartNetworkSearchFeedback *)self uuid];
    uuid3 = [equalCopy uuid];
    v17 = [uuid2 isEqual:uuid3];

    if (!v17)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  queryId = self->_queryId;
  if (queryId != [equalCopy queryId])
  {
    goto LABEL_42;
  }

  input = [(_CPStartNetworkSearchFeedback *)self url];
  input2 = [equalCopy url];
  if ((input != 0) == (input2 == 0))
  {
    goto LABEL_41;
  }

  v19 = [(_CPStartNetworkSearchFeedback *)self url];
  if (v19)
  {
    v20 = v19;
    v21 = [(_CPStartNetworkSearchFeedback *)self url];
    v22 = [equalCopy url];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  input = [(_CPStartNetworkSearchFeedback *)self headers];
  input2 = [equalCopy headers];
  if ((input != 0) == (input2 == 0))
  {
    goto LABEL_41;
  }

  headers = [(_CPStartNetworkSearchFeedback *)self headers];
  if (headers)
  {
    v25 = headers;
    headers2 = [(_CPStartNetworkSearchFeedback *)self headers];
    headers3 = [equalCopy headers];
    v28 = [headers2 isEqual:headers3];

    if (!v28)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  endpoint = self->_endpoint;
  if (endpoint != [equalCopy endpoint])
  {
    goto LABEL_42;
  }

  triggerEvent = self->_triggerEvent;
  if (triggerEvent != [equalCopy triggerEvent])
  {
    goto LABEL_42;
  }

  lookupSelectionType = self->_lookupSelectionType;
  if (lookupSelectionType != [equalCopy lookupSelectionType])
  {
    goto LABEL_42;
  }

  input = [(_CPStartNetworkSearchFeedback *)self bodyData];
  input2 = [equalCopy bodyData];
  if ((input != 0) == (input2 == 0))
  {
    goto LABEL_41;
  }

  bodyData = [(_CPStartNetworkSearchFeedback *)self bodyData];
  if (bodyData)
  {
    v33 = bodyData;
    bodyData2 = [(_CPStartNetworkSearchFeedback *)self bodyData];
    bodyData3 = [equalCopy bodyData];
    v36 = [bodyData2 isEqual:bodyData3];

    if (!v36)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  input = [(_CPStartNetworkSearchFeedback *)self experimentId];
  input2 = [equalCopy experimentId];
  if ((input != 0) == (input2 == 0))
  {
    goto LABEL_41;
  }

  experimentId = [(_CPStartNetworkSearchFeedback *)self experimentId];
  if (experimentId)
  {
    v38 = experimentId;
    experimentId2 = [(_CPStartNetworkSearchFeedback *)self experimentId];
    experimentId3 = [equalCopy experimentId];
    v41 = [experimentId2 isEqual:experimentId3];

    if (!v41)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  input = [(_CPStartNetworkSearchFeedback *)self treatmentId];
  input2 = [equalCopy treatmentId];
  if ((input != 0) == (input2 == 0))
  {
LABEL_41:

    goto LABEL_42;
  }

  treatmentId = [(_CPStartNetworkSearchFeedback *)self treatmentId];
  if (treatmentId)
  {
    v43 = treatmentId;
    treatmentId2 = [(_CPStartNetworkSearchFeedback *)self treatmentId];
    treatmentId3 = [equalCopy treatmentId];
    v46 = [treatmentId2 isEqual:treatmentId3];

    if (!v46)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  searchType = self->_searchType;
  if (searchType == [equalCopy searchType])
  {
    rawRequestSize = self->_rawRequestSize;
    if (rawRequestSize == [equalCopy rawRequestSize])
    {
      compressedRequestSize = self->_compressedRequestSize;
      v47 = compressedRequestSize == [equalCopy compressedRequestSize];
      goto LABEL_43;
    }
  }

LABEL_42:
  v47 = 0;
LABEL_43:

  return v47;
}

- (void)writeTo:(id)to
{
  v38 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_CPStartNetworkSearchFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  input = [(_CPStartNetworkSearchFeedback *)self input];

  if (input)
  {
    input = self->_input;
    PBDataWriterWriteStringField();
  }

  uuid = [(_CPStartNetworkSearchFeedback *)self uuid];

  if (uuid)
  {
    uuid = self->_uuid;
    PBDataWriterWriteStringField();
  }

  if ([(_CPStartNetworkSearchFeedback *)self queryId])
  {
    queryId = self->_queryId;
    PBDataWriterWriteUint64Field();
  }

  v11 = [(_CPStartNetworkSearchFeedback *)self url];

  if (v11)
  {
    url = self->_url;
    PBDataWriterWriteStringField();
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = self->_headers;
  v14 = [(NSDictionary *)v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v34;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v33 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        PBDataWriterWriteStringField();
        v19 = [(NSDictionary *)self->_headers objectForKeyedSubscript:v18];
        PBDataWriterWriteStringField();

        PBDataWriterRecallMark();
      }

      v15 = [(NSDictionary *)v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v15);
  }

  if ([(_CPStartNetworkSearchFeedback *)self endpoint])
  {
    endpoint = self->_endpoint;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPStartNetworkSearchFeedback *)self triggerEvent])
  {
    triggerEvent = self->_triggerEvent;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPStartNetworkSearchFeedback *)self lookupSelectionType])
  {
    lookupSelectionType = self->_lookupSelectionType;
    PBDataWriterWriteInt32Field();
  }

  bodyData = [(_CPStartNetworkSearchFeedback *)self bodyData];

  if (bodyData)
  {
    bodyData = self->_bodyData;
    PBDataWriterWriteDataField();
  }

  experimentId = [(_CPStartNetworkSearchFeedback *)self experimentId];

  if (experimentId)
  {
    experimentId = self->_experimentId;
    PBDataWriterWriteStringField();
  }

  treatmentId = [(_CPStartNetworkSearchFeedback *)self treatmentId];

  if (treatmentId)
  {
    treatmentId = self->_treatmentId;
    PBDataWriterWriteStringField();
  }

  if ([(_CPStartNetworkSearchFeedback *)self searchType])
  {
    searchType = self->_searchType;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPStartNetworkSearchFeedback *)self rawRequestSize])
  {
    rawRequestSize = self->_rawRequestSize;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPStartNetworkSearchFeedback *)self compressedRequestSize])
  {
    compressedRequestSize = self->_compressedRequestSize;
    PBDataWriterWriteUint64Field();
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (int)lookupSelectionType
{
  if (self->_whichTrigger == 2)
  {
    return self->_lookupSelectionType;
  }

  else
  {
    return 0;
  }
}

- (void)setLookupSelectionType:(int)type
{
  [(_CPStartNetworkSearchFeedback *)self clearTrigger];
  self->_whichTrigger = 2;
  self->_lookupSelectionType = type;
}

- (int)triggerEvent
{
  if (self->_whichTrigger == 1)
  {
    return self->_triggerEvent;
  }

  else
  {
    return 0;
  }
}

- (void)setTriggerEvent:(int)event
{
  [(_CPStartNetworkSearchFeedback *)self clearTrigger];
  self->_whichTrigger = 1;
  self->_triggerEvent = event;
}

- (void)setHeaders:(id)headers forKey:(id)key
{
  headersCopy = headers;
  keyCopy = key;
  if (!self->_headers)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    headers = self->_headers;
    self->_headers = dictionary;
  }

  v10 = keyCopy;
  v11 = headersCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NSDictionary *)self->_headers setObject:v11 forKey:v10];
    }
  }
}

- (BOOL)getHeaders:(id *)headers forKey:(id)key
{
  v5 = [(NSDictionary *)self->_headers objectForKeyedSubscript:key];
  if (headers && v5)
  {
    v5 = v5;
    *headers = v5;
  }

  v6 = v5 != 0;

  return v6;
}

- (void)setHeaders:(id)headers
{
  v4 = [headers mutableCopy];
  headers = self->_headers;
  self->_headers = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)clearTrigger
{
  self->_whichTrigger = 0;
  self->_triggerEvent = 0;
  self->_lookupSelectionType = 0;
}

- (_CPStartNetworkSearchFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPStartNetworkSearchFeedback;
  v2 = [(_CPStartNetworkSearchFeedback *)&v5 init];
  if (v2)
  {
    [(_CPStartNetworkSearchFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPStartNetworkSearchFeedback)initWithFacade:(id)facade
{
  v35 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v33.receiver = self;
  v33.super_class = _CPStartNetworkSearchFeedback;
  v5 = [(_CPStartNetworkSearchFeedback *)&v33 init];
  if (v5)
  {
    -[_CPStartNetworkSearchFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    input = [facadeCopy input];

    if (input)
    {
      input2 = [facadeCopy input];
      [(_CPStartNetworkSearchFeedback *)v5 setInput:input2];
    }

    uuid = [facadeCopy uuid];

    if (uuid)
    {
      uuid2 = [facadeCopy uuid];
      [(_CPStartNetworkSearchFeedback *)v5 setUuid:uuid2];
    }

    -[_CPStartNetworkSearchFeedback setQueryId:](v5, "setQueryId:", [facadeCopy queryId]);
    v10 = [facadeCopy url];

    if (v10)
    {
      v11 = [facadeCopy url];
      [(_CPStartNetworkSearchFeedback *)v5 setUrl:v11];
    }

    headers = [facadeCopy headers];
    v13 = headers;
    if (headers)
    {
      v14 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(headers, "count")}];
    }

    else
    {
      v14 = 0;
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v29 + 1) + 8 * i);
          v21 = [v15 objectForKey:{v20, v29}];
          if (v21)
          {
            [v14 setObject:v21 forKey:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v17);
    }

    [(_CPStartNetworkSearchFeedback *)v5 setHeaders:v14];
    -[_CPStartNetworkSearchFeedback setEndpoint:](v5, "setEndpoint:", [facadeCopy endpoint]);
    -[_CPStartNetworkSearchFeedback setTriggerEvent:](v5, "setTriggerEvent:", [facadeCopy triggerEvent]);
    experimentId = [facadeCopy experimentId];

    if (experimentId)
    {
      experimentId2 = [facadeCopy experimentId];
      [(_CPStartNetworkSearchFeedback *)v5 setExperimentId:experimentId2];
    }

    treatmentId = [facadeCopy treatmentId];

    if (treatmentId)
    {
      treatmentId2 = [facadeCopy treatmentId];
      [(_CPStartNetworkSearchFeedback *)v5 setTreatmentId:treatmentId2];
    }

    -[_CPStartNetworkSearchFeedback setSearchType:](v5, "setSearchType:", [facadeCopy searchType]);
    -[_CPStartNetworkSearchFeedback setRawRequestSize:](v5, "setRawRequestSize:", [facadeCopy rawRequestSize]);
    -[_CPStartNetworkSearchFeedback setCompressedRequestSize:](v5, "setCompressedRequestSize:", [facadeCopy compressedRequestSize]);
    v26 = v5;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)startSearchFeedbackWithUUID
{
  v2 = objc_alloc_init(self);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [v2 setUuid:uUIDString];

  return v2;
}

@end