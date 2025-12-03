@interface BMScreenTimeRequestEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMScreenTimeRequestEvent)initWithProto:(id)proto;
- (BMScreenTimeRequestEvent)initWithProtoData:(id)data;
- (BMScreenTimeRequestEvent)initWithRequestID:(id)d kind:(int)kind status:(int)status eventTime:(double)time approvalTime:(int)approvalTime requesterDSID:(id)iD responderDSID:(id)sID websitePath:(id)self0 bundleID:(id)self1 isActionUserDevice:(BOOL)self2;
- (BOOL)isEqual:(id)equal;
- (BOOL)validNonOptionalProperty:(id)property propertyName:(id)name;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
@end

@implementation BMScreenTimeRequestEvent

- (BOOL)validNonOptionalProperty:(id)property propertyName:(id)name
{
  propertyCopy = property;
  nameCopy = name;
  if (!propertyCopy)
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [BMAskToBuyEvent validNonOptionalProperty:propertyName:];
    }

    goto LABEL_8;
  }

  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v8 = [propertyCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];
  v9 = [v8 length];

  if (!v9)
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [BMAskToBuyEvent validNonOptionalProperty:propertyName:];
    }

LABEL_8:

    v10 = 0;
    goto LABEL_9;
  }

  v10 = 1;
LABEL_9:

  return v10;
}

- (BMScreenTimeRequestEvent)initWithRequestID:(id)d kind:(int)kind status:(int)status eventTime:(double)time approvalTime:(int)approvalTime requesterDSID:(id)iD responderDSID:(id)sID websitePath:(id)self0 bundleID:(id)self1 isActionUserDevice:(BOOL)self2
{
  dCopy = d;
  iDCopy = iD;
  sIDCopy = sID;
  pathCopy = path;
  bundleIDCopy = bundleID;
  v33.receiver = self;
  v33.super_class = BMScreenTimeRequestEvent;
  v21 = [(BMEventBase *)&v33 init];
  v22 = v21;
  if (!v21)
  {
    goto LABEL_18;
  }

  if ((status - 2) >= 2)
  {
    if (!status)
    {
      v23 = __biome_log_for_category();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [BMScreenTimeRequestEvent initWithRequestID:kind:status:eventTime:approvalTime:requesterDSID:responderDSID:websitePath:bundleID:isActionUserDevice:];
      }

      goto LABEL_8;
    }
  }

  else if (![(BMScreenTimeRequestEvent *)v21 validNonOptionalProperty:sIDCopy propertyName:@"responderDSID"])
  {
    goto LABEL_19;
  }

  if (![(BMScreenTimeRequestEvent *)v22 validNonOptionalProperty:dCopy propertyName:@"requestID"]|| ![(BMScreenTimeRequestEvent *)v22 validNonOptionalProperty:iDCopy propertyName:@"requesterDSID"])
  {
    goto LABEL_19;
  }

  switch(kind)
  {
    case 0:
      v23 = __biome_log_for_category();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [BMScreenTimeRequestEvent initWithRequestID:kind:status:eventTime:approvalTime:requesterDSID:responderDSID:websitePath:bundleID:isActionUserDevice:];
      }

LABEL_8:

      goto LABEL_19;
    case 1:
      v24 = @"websitePath";
      v25 = v22;
      v26 = pathCopy;
LABEL_16:
      if ([(BMScreenTimeRequestEvent *)v25 validNonOptionalProperty:v26 propertyName:v24])
      {
        break;
      }

LABEL_19:
      v27 = 0;
      goto LABEL_20;
    case 2:
      v24 = @"bundleID";
      v25 = v22;
      v26 = bundleIDCopy;
      goto LABEL_16;
  }

  objc_storeStrong(&v22->_requestID, d);
  v22->_kind = kind;
  v22->_status = status;
  v22->_eventTime = time;
  v22->_approvalTime = approvalTime;
  objc_storeStrong(&v22->_requesterDSID, iD);
  objc_storeStrong(&v22->_responderDSID, sID);
  objc_storeStrong(&v22->_websitePath, path);
  objc_storeStrong(&v22->_bundleID, bundleID);
  v22->_isActionUserDevice = device;
LABEL_18:
  v27 = v22;
LABEL_20:

  return v27;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 1)
  {
    v7 = [[self alloc] initWithProtoData:dataCopy];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[BMScreenTimeRequestEvent eventWithData:dataVersion:];
    }

    v7 = 0;
  }

  return v7;
}

- (id)encodeAsProto
{
  proto = [(BMScreenTimeRequestEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMScreenTimeRequestEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBScreenTimeRequestEvent alloc] initWithData:dataCopy];

    self = [(BMScreenTimeRequestEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BMScreenTimeRequestEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_16:
    selfCopy = 0;
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = __biome_log_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [(BMScreenTimeRequestEvent *)self initWithProto:v20];
    }

    goto LABEL_16;
  }

  v5 = protoCopy;
  status = [v5 status];
  if (status - 1 >= 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = status;
  }

  v23 = v7;
  kind = [v5 kind];
  if (kind == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * (kind == 2);
  }

  approvalTime = [v5 approvalTime];
  if (approvalTime - 1 >= 3)
  {
    v11 = 0;
  }

  else
  {
    v11 = approvalTime;
  }

  requestID = [v5 requestID];
  [v5 eventTime];
  v14 = v13;
  requesterDSID = [v5 requesterDSID];
  responderDSID = [v5 responderDSID];
  websitePath = [v5 websitePath];
  bundleID = [v5 bundleID];
  LOBYTE(v22) = [v5 isActionUserDevice];
  self = [(BMScreenTimeRequestEvent *)self initWithRequestID:requestID kind:v9 status:v23 eventTime:v11 approvalTime:requesterDSID requesterDSID:responderDSID responderDSID:v14 websitePath:websitePath bundleID:bundleID isActionUserDevice:v22];

  selfCopy = self;
LABEL_17:

  return selfCopy;
}

- (id)proto
{
  status = self->_status;
  if (status - 1 >= 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = status;
  }

  kind = self->_kind;
  approvalTime = self->_approvalTime;
  if (approvalTime - 1 >= 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = approvalTime;
  }

  if (kind == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2 * (kind == 2);
  }

  v9 = objc_opt_new();
  [v9 setRequestID:self->_requestID];
  [v9 setKind:v8];
  [v9 setStatus:v4];
  [v9 setEventTime:self->_eventTime];
  [v9 setApprovalTime:v7];
  [v9 setRequesterDSID:self->_requesterDSID];
  [v9 setResponderDSID:self->_responderDSID];
  [v9 setWebsitePath:self->_websitePath];
  [v9 setBundleID:self->_bundleID];
  [v9 setIsActionUserDevice:self->_isActionUserDevice];

  return v9;
}

- (id)jsonDict
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_requestID forKeyedSubscript:@"requestID"];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_status];
  [dictionary setObject:v4 forKeyedSubscript:@"status"];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_kind];
  [dictionary setObject:v5 forKeyedSubscript:@"kind"];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_eventTime];
  [dictionary setObject:v6 forKeyedSubscript:@"eventTime"];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_approvalTime];
  [dictionary setObject:v7 forKeyedSubscript:@"approvalTime"];

  [dictionary setObject:self->_requesterDSID forKeyedSubscript:@"requesterDSID"];
  [dictionary setObject:self->_responderDSID forKeyedSubscript:@"responderDSID"];
  [dictionary setObject:self->_websitePath forKeyedSubscript:@"websitePath"];
  [dictionary setObject:self->_bundleID forKeyedSubscript:@"bundleID"];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isActionUserDevice];
  [dictionary setObject:v8 forKeyedSubscript:@"isActionUserDevice"];

  return dictionary;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMScreenTimeRequestEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
  v5 = v8;

  if (v5)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BMAskToBuyEvent json];
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = MEMORY[0x1E696AD98];
    [(BMScreenTimeRequestEvent *)self eventTime];
    v7 = [v6 numberWithDouble:?];
    longValue = [v7 longValue];

    v9 = MEMORY[0x1E696AD98];
    [v5 eventTime];
    v10 = [v9 numberWithDouble:?];
    longValue2 = [v10 longValue];

    requestID = [(BMScreenTimeRequestEvent *)self requestID];
    requestID2 = [v5 requestID];
    v14 = [requestID isEqualToString:requestID2];

    LODWORD(requestID) = [(BMScreenTimeRequestEvent *)self status];
    if (requestID == [v5 status])
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    kind = [(BMScreenTimeRequestEvent *)self kind];
    if (kind == [v5 kind])
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    if (longValue == longValue2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    approvalTime = [(BMScreenTimeRequestEvent *)self approvalTime];
    if (approvalTime == [v5 approvalTime])
    {
      v20 = v18;
    }

    else
    {
      v20 = 0;
    }

    requesterDSID = [(BMScreenTimeRequestEvent *)self requesterDSID];
    requesterDSID2 = [v5 requesterDSID];
    v23 = v20 & [requesterDSID isEqualToString:requesterDSID2];

    responderDSID = [(BMScreenTimeRequestEvent *)self responderDSID];
    if (responderDSID)
    {
    }

    else
    {
      responderDSID2 = [v5 responderDSID];

      if (!responderDSID2)
      {
        goto LABEL_19;
      }
    }

    responderDSID3 = [(BMScreenTimeRequestEvent *)self responderDSID];
    responderDSID4 = [v5 responderDSID];
    v23 &= [responderDSID3 isEqualToString:responderDSID4];

LABEL_19:
    websitePath = [(BMScreenTimeRequestEvent *)self websitePath];
    if (websitePath)
    {
    }

    else
    {
      websitePath2 = [v5 websitePath];

      if (!websitePath2)
      {
        goto LABEL_23;
      }
    }

    websitePath3 = [(BMScreenTimeRequestEvent *)self websitePath];
    websitePath4 = [v5 websitePath];
    v23 &= [websitePath3 isEqualToString:websitePath4];

LABEL_23:
    bundleID = [(BMScreenTimeRequestEvent *)self bundleID];
    if (bundleID)
    {
    }

    else
    {
      bundleID2 = [v5 bundleID];

      if (!bundleID2)
      {
LABEL_27:
        isActionUserDevice = [(BMScreenTimeRequestEvent *)self isActionUserDevice];
        v25 = v23 & (isActionUserDevice ^ [v5 isActionUserDevice] ^ 1);

        goto LABEL_28;
      }
    }

    bundleID3 = [(BMScreenTimeRequestEvent *)self bundleID];
    bundleID4 = [v5 bundleID];
    v23 &= [bundleID3 isEqualToString:bundleID4];

    goto LABEL_27;
  }

  LOBYTE(v25) = 0;
LABEL_28:

  return v25;
}

@end