@interface BMScreenTimeRequestEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMScreenTimeRequestEvent)initWithProto:(id)a3;
- (BMScreenTimeRequestEvent)initWithProtoData:(id)a3;
- (BMScreenTimeRequestEvent)initWithRequestID:(id)a3 kind:(int)a4 status:(int)a5 eventTime:(double)a6 approvalTime:(int)a7 requesterDSID:(id)a8 responderDSID:(id)a9 websitePath:(id)a10 bundleID:(id)a11 isActionUserDevice:(BOOL)a12;
- (BOOL)isEqual:(id)a3;
- (BOOL)validNonOptionalProperty:(id)a3 propertyName:(id)a4;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
@end

@implementation BMScreenTimeRequestEvent

- (BOOL)validNonOptionalProperty:(id)a3 propertyName:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [BMAskToBuyEvent validNonOptionalProperty:propertyName:];
    }

    goto LABEL_8;
  }

  v7 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v8 = [v5 stringByTrimmingCharactersInSet:v7];
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

- (BMScreenTimeRequestEvent)initWithRequestID:(id)a3 kind:(int)a4 status:(int)a5 eventTime:(double)a6 approvalTime:(int)a7 requesterDSID:(id)a8 responderDSID:(id)a9 websitePath:(id)a10 bundleID:(id)a11 isActionUserDevice:(BOOL)a12
{
  v32 = a3;
  v31 = a8;
  v19 = a9;
  v30 = a10;
  v20 = a11;
  v33.receiver = self;
  v33.super_class = BMScreenTimeRequestEvent;
  v21 = [(BMEventBase *)&v33 init];
  v22 = v21;
  if (!v21)
  {
    goto LABEL_18;
  }

  if ((a5 - 2) >= 2)
  {
    if (!a5)
    {
      v23 = __biome_log_for_category();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [BMScreenTimeRequestEvent initWithRequestID:kind:status:eventTime:approvalTime:requesterDSID:responderDSID:websitePath:bundleID:isActionUserDevice:];
      }

      goto LABEL_8;
    }
  }

  else if (![(BMScreenTimeRequestEvent *)v21 validNonOptionalProperty:v19 propertyName:@"responderDSID"])
  {
    goto LABEL_19;
  }

  if (![(BMScreenTimeRequestEvent *)v22 validNonOptionalProperty:v32 propertyName:@"requestID"]|| ![(BMScreenTimeRequestEvent *)v22 validNonOptionalProperty:v31 propertyName:@"requesterDSID"])
  {
    goto LABEL_19;
  }

  switch(a4)
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
      v26 = v30;
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
      v26 = v20;
      goto LABEL_16;
  }

  objc_storeStrong(&v22->_requestID, a3);
  v22->_kind = a4;
  v22->_status = a5;
  v22->_eventTime = a6;
  v22->_approvalTime = a7;
  objc_storeStrong(&v22->_requesterDSID, a8);
  objc_storeStrong(&v22->_responderDSID, a9);
  objc_storeStrong(&v22->_websitePath, a10);
  objc_storeStrong(&v22->_bundleID, a11);
  v22->_isActionUserDevice = a12;
LABEL_18:
  v27 = v22;
LABEL_20:

  return v27;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = [[a1 alloc] initWithProtoData:v6];
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
  v2 = [(BMScreenTimeRequestEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMScreenTimeRequestEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBScreenTimeRequestEvent alloc] initWithData:v4];

    self = [(BMScreenTimeRequestEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BMScreenTimeRequestEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_16:
    v19 = 0;
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

  v5 = v4;
  v6 = [v5 status];
  if (v6 - 1 >= 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  v23 = v7;
  v8 = [v5 kind];
  if (v8 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * (v8 == 2);
  }

  v10 = [v5 approvalTime];
  if (v10 - 1 >= 3)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v5 requestID];
  [v5 eventTime];
  v14 = v13;
  v15 = [v5 requesterDSID];
  v16 = [v5 responderDSID];
  v17 = [v5 websitePath];
  v18 = [v5 bundleID];
  LOBYTE(v22) = [v5 isActionUserDevice];
  self = [(BMScreenTimeRequestEvent *)self initWithRequestID:v12 kind:v9 status:v23 eventTime:v11 approvalTime:v15 requesterDSID:v16 responderDSID:v14 websitePath:v17 bundleID:v18 isActionUserDevice:v22];

  v19 = self;
LABEL_17:

  return v19;
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_requestID forKeyedSubscript:@"requestID"];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_status];
  [v3 setObject:v4 forKeyedSubscript:@"status"];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_kind];
  [v3 setObject:v5 forKeyedSubscript:@"kind"];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_eventTime];
  [v3 setObject:v6 forKeyedSubscript:@"eventTime"];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_approvalTime];
  [v3 setObject:v7 forKeyedSubscript:@"approvalTime"];

  [v3 setObject:self->_requesterDSID forKeyedSubscript:@"requesterDSID"];
  [v3 setObject:self->_responderDSID forKeyedSubscript:@"responderDSID"];
  [v3 setObject:self->_websitePath forKeyedSubscript:@"websitePath"];
  [v3 setObject:self->_bundleID forKeyedSubscript:@"bundleID"];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isActionUserDevice];
  [v3 setObject:v8 forKeyedSubscript:@"isActionUserDevice"];

  return v3;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(BMScreenTimeRequestEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = MEMORY[0x1E696AD98];
    [(BMScreenTimeRequestEvent *)self eventTime];
    v7 = [v6 numberWithDouble:?];
    v8 = [v7 longValue];

    v9 = MEMORY[0x1E696AD98];
    [v5 eventTime];
    v10 = [v9 numberWithDouble:?];
    v11 = [v10 longValue];

    v12 = [(BMScreenTimeRequestEvent *)self requestID];
    v13 = [v5 requestID];
    v14 = [v12 isEqualToString:v13];

    LODWORD(v12) = [(BMScreenTimeRequestEvent *)self status];
    if (v12 == [v5 status])
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [(BMScreenTimeRequestEvent *)self kind];
    if (v16 == [v5 kind])
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    if (v8 == v11)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = [(BMScreenTimeRequestEvent *)self approvalTime];
    if (v19 == [v5 approvalTime])
    {
      v20 = v18;
    }

    else
    {
      v20 = 0;
    }

    v21 = [(BMScreenTimeRequestEvent *)self requesterDSID];
    v22 = [v5 requesterDSID];
    v23 = v20 & [v21 isEqualToString:v22];

    v24 = [(BMScreenTimeRequestEvent *)self responderDSID];
    if (v24)
    {
    }

    else
    {
      v26 = [v5 responderDSID];

      if (!v26)
      {
        goto LABEL_19;
      }
    }

    v27 = [(BMScreenTimeRequestEvent *)self responderDSID];
    v28 = [v5 responderDSID];
    v23 &= [v27 isEqualToString:v28];

LABEL_19:
    v29 = [(BMScreenTimeRequestEvent *)self websitePath];
    if (v29)
    {
    }

    else
    {
      v30 = [v5 websitePath];

      if (!v30)
      {
        goto LABEL_23;
      }
    }

    v31 = [(BMScreenTimeRequestEvent *)self websitePath];
    v32 = [v5 websitePath];
    v23 &= [v31 isEqualToString:v32];

LABEL_23:
    v33 = [(BMScreenTimeRequestEvent *)self bundleID];
    if (v33)
    {
    }

    else
    {
      v34 = [v5 bundleID];

      if (!v34)
      {
LABEL_27:
        v37 = [(BMScreenTimeRequestEvent *)self isActionUserDevice];
        v25 = v23 & (v37 ^ [v5 isActionUserDevice] ^ 1);

        goto LABEL_28;
      }
    }

    v35 = [(BMScreenTimeRequestEvent *)self bundleID];
    v36 = [v5 bundleID];
    v23 &= [v35 isEqualToString:v36];

    goto LABEL_27;
  }

  LOBYTE(v25) = 0;
LABEL_28:

  return v25;
}

@end