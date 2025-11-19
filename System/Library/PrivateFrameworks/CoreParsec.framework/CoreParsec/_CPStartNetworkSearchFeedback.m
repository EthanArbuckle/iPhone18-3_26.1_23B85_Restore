@interface _CPStartNetworkSearchFeedback
+ (id)startSearchFeedbackWithUUID;
- (BOOL)getHeaders:(id *)a3 forKey:(id)a4;
- (BOOL)isEqual:(id)a3;
- (_CPStartNetworkSearchFeedback)init;
- (_CPStartNetworkSearchFeedback)initWithFacade:(id)a3;
- (int)lookupSelectionType;
- (int)triggerEvent;
- (unint64_t)hash;
- (void)clearTrigger;
- (void)setHeaders:(id)a3;
- (void)setHeaders:(id)a3 forKey:(id)a4;
- (void)setLookupSelectionType:(int)a3;
- (void)setTriggerEvent:(int)a3;
- (void)writeTo:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  timestamp = self->_timestamp;
  if (timestamp != [v4 timestamp])
  {
    goto LABEL_42;
  }

  v6 = [(_CPStartNetworkSearchFeedback *)self input];
  v7 = [v4 input];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_41;
  }

  v8 = [(_CPStartNetworkSearchFeedback *)self input];
  if (v8)
  {
    v9 = v8;
    v10 = [(_CPStartNetworkSearchFeedback *)self input];
    v11 = [v4 input];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v6 = [(_CPStartNetworkSearchFeedback *)self uuid];
  v7 = [v4 uuid];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_41;
  }

  v13 = [(_CPStartNetworkSearchFeedback *)self uuid];
  if (v13)
  {
    v14 = v13;
    v15 = [(_CPStartNetworkSearchFeedback *)self uuid];
    v16 = [v4 uuid];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  queryId = self->_queryId;
  if (queryId != [v4 queryId])
  {
    goto LABEL_42;
  }

  v6 = [(_CPStartNetworkSearchFeedback *)self url];
  v7 = [v4 url];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_41;
  }

  v19 = [(_CPStartNetworkSearchFeedback *)self url];
  if (v19)
  {
    v20 = v19;
    v21 = [(_CPStartNetworkSearchFeedback *)self url];
    v22 = [v4 url];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v6 = [(_CPStartNetworkSearchFeedback *)self headers];
  v7 = [v4 headers];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_41;
  }

  v24 = [(_CPStartNetworkSearchFeedback *)self headers];
  if (v24)
  {
    v25 = v24;
    v26 = [(_CPStartNetworkSearchFeedback *)self headers];
    v27 = [v4 headers];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  endpoint = self->_endpoint;
  if (endpoint != [v4 endpoint])
  {
    goto LABEL_42;
  }

  triggerEvent = self->_triggerEvent;
  if (triggerEvent != [v4 triggerEvent])
  {
    goto LABEL_42;
  }

  lookupSelectionType = self->_lookupSelectionType;
  if (lookupSelectionType != [v4 lookupSelectionType])
  {
    goto LABEL_42;
  }

  v6 = [(_CPStartNetworkSearchFeedback *)self bodyData];
  v7 = [v4 bodyData];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_41;
  }

  v32 = [(_CPStartNetworkSearchFeedback *)self bodyData];
  if (v32)
  {
    v33 = v32;
    v34 = [(_CPStartNetworkSearchFeedback *)self bodyData];
    v35 = [v4 bodyData];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v6 = [(_CPStartNetworkSearchFeedback *)self experimentId];
  v7 = [v4 experimentId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_41;
  }

  v37 = [(_CPStartNetworkSearchFeedback *)self experimentId];
  if (v37)
  {
    v38 = v37;
    v39 = [(_CPStartNetworkSearchFeedback *)self experimentId];
    v40 = [v4 experimentId];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v6 = [(_CPStartNetworkSearchFeedback *)self treatmentId];
  v7 = [v4 treatmentId];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_41:

    goto LABEL_42;
  }

  v42 = [(_CPStartNetworkSearchFeedback *)self treatmentId];
  if (v42)
  {
    v43 = v42;
    v44 = [(_CPStartNetworkSearchFeedback *)self treatmentId];
    v45 = [v4 treatmentId];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  searchType = self->_searchType;
  if (searchType == [v4 searchType])
  {
    rawRequestSize = self->_rawRequestSize;
    if (rawRequestSize == [v4 rawRequestSize])
    {
      compressedRequestSize = self->_compressedRequestSize;
      v47 = compressedRequestSize == [v4 compressedRequestSize];
      goto LABEL_43;
    }
  }

LABEL_42:
  v47 = 0;
LABEL_43:

  return v47;
}

- (void)writeTo:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_CPStartNetworkSearchFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v6 = [(_CPStartNetworkSearchFeedback *)self input];

  if (v6)
  {
    input = self->_input;
    PBDataWriterWriteStringField();
  }

  v8 = [(_CPStartNetworkSearchFeedback *)self uuid];

  if (v8)
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

  v23 = [(_CPStartNetworkSearchFeedback *)self bodyData];

  if (v23)
  {
    bodyData = self->_bodyData;
    PBDataWriterWriteDataField();
  }

  v25 = [(_CPStartNetworkSearchFeedback *)self experimentId];

  if (v25)
  {
    experimentId = self->_experimentId;
    PBDataWriterWriteStringField();
  }

  v27 = [(_CPStartNetworkSearchFeedback *)self treatmentId];

  if (v27)
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

- (void)setLookupSelectionType:(int)a3
{
  [(_CPStartNetworkSearchFeedback *)self clearTrigger];
  self->_whichTrigger = 2;
  self->_lookupSelectionType = a3;
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

- (void)setTriggerEvent:(int)a3
{
  [(_CPStartNetworkSearchFeedback *)self clearTrigger];
  self->_whichTrigger = 1;
  self->_triggerEvent = a3;
}

- (void)setHeaders:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_headers)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    headers = self->_headers;
    self->_headers = v8;
  }

  v10 = v7;
  v11 = v6;
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

- (BOOL)getHeaders:(id *)a3 forKey:(id)a4
{
  v5 = [(NSDictionary *)self->_headers objectForKeyedSubscript:a4];
  if (a3 && v5)
  {
    v5 = v5;
    *a3 = v5;
  }

  v6 = v5 != 0;

  return v6;
}

- (void)setHeaders:(id)a3
{
  v4 = [a3 mutableCopy];
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

- (_CPStartNetworkSearchFeedback)initWithFacade:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v33.receiver = self;
  v33.super_class = _CPStartNetworkSearchFeedback;
  v5 = [(_CPStartNetworkSearchFeedback *)&v33 init];
  if (v5)
  {
    -[_CPStartNetworkSearchFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    v6 = [v4 input];

    if (v6)
    {
      v7 = [v4 input];
      [(_CPStartNetworkSearchFeedback *)v5 setInput:v7];
    }

    v8 = [v4 uuid];

    if (v8)
    {
      v9 = [v4 uuid];
      [(_CPStartNetworkSearchFeedback *)v5 setUuid:v9];
    }

    -[_CPStartNetworkSearchFeedback setQueryId:](v5, "setQueryId:", [v4 queryId]);
    v10 = [v4 url];

    if (v10)
    {
      v11 = [v4 url];
      [(_CPStartNetworkSearchFeedback *)v5 setUrl:v11];
    }

    v12 = [v4 headers];
    v13 = v12;
    if (v12)
    {
      v14 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v12, "count")}];
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
    -[_CPStartNetworkSearchFeedback setEndpoint:](v5, "setEndpoint:", [v4 endpoint]);
    -[_CPStartNetworkSearchFeedback setTriggerEvent:](v5, "setTriggerEvent:", [v4 triggerEvent]);
    v22 = [v4 experimentId];

    if (v22)
    {
      v23 = [v4 experimentId];
      [(_CPStartNetworkSearchFeedback *)v5 setExperimentId:v23];
    }

    v24 = [v4 treatmentId];

    if (v24)
    {
      v25 = [v4 treatmentId];
      [(_CPStartNetworkSearchFeedback *)v5 setTreatmentId:v25];
    }

    -[_CPStartNetworkSearchFeedback setSearchType:](v5, "setSearchType:", [v4 searchType]);
    -[_CPStartNetworkSearchFeedback setRawRequestSize:](v5, "setRawRequestSize:", [v4 rawRequestSize]);
    -[_CPStartNetworkSearchFeedback setCompressedRequestSize:](v5, "setCompressedRequestSize:", [v4 compressedRequestSize]);
    v26 = v5;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)startSearchFeedbackWithUUID
{
  v2 = objc_alloc_init(a1);
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];
  [v2 setUuid:v4];

  return v2;
}

@end