@interface COMessageSessionManagementRequest
+ (id)acceptableResponses;
- (COMessageSessionManagementRequest)initWithCoder:(id)a3;
- (COMessageSessionManagementRequest)initWithCommandType:(int64_t)a3 error:(id)a4 topic:(id)a5 subTopic:(id)a6;
- (COMessageSessionManagementRequest)initWithCommandType:(int64_t)a3 payload:(id)a4 payloadType:(id)a5 topic:(id)a6 subTopic:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COMessageSessionManagementRequest

- (COMessageSessionManagementRequest)initWithCommandType:(int64_t)a3 payload:(id)a4 payloadType:(id)a5 topic:(id)a6 subTopic:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = COMessageSessionManagementRequest;
  v17 = [(COMessageChannelRequest *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_commandType = a3;
    objc_storeStrong(&v17->_payload, a4);
    objc_storeStrong(&v18->_payloadType, a5);
    objc_storeStrong(&v18->_topic, a6);
    objc_storeStrong(&v18->_subTopic, a7);
  }

  return v18;
}

- (COMessageSessionManagementRequest)initWithCommandType:(int64_t)a3 error:(id)a4 topic:(id)a5 subTopic:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = COMessageSessionManagementRequest;
  v14 = [(COMessageChannelRequest *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_commandType = a3;
    objc_storeStrong(&v14->_remoteError, a4);
    objc_storeStrong(&v15->_topic, a5);
    objc_storeStrong(&v15->_subTopic, a6);
  }

  return v15;
}

- (COMessageSessionManagementRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = COMessageSessionManagementRequest;
  v5 = [(COMessageChannelRequest *)&v19 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_9;
  }

  v5->_commandType = [v4 decodeIntegerForKey:@"requestCommandType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
  payload = v5->_payload;
  v5->_payload = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"payloadType"];
  payloadType = v5->_payloadType;
  v5->_payloadType = v8;

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"topic"];
  topic = v5->_topic;
  v5->_topic = v10;

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subTopic"];
  subTopic = v5->_subTopic;
  v5->_subTopic = v12;

  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteError"];
  remoteError = v5->_remoteError;
  v5->_remoteError = v14;

  if (v5->_payload)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if (v5->_payloadType && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v5->_remoteError && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v16 = v5->_topic, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_10:
    v17 = 0;
  }

  else
  {
LABEL_9:
    v17 = v5;
  }

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = COMessageSessionManagementRequest;
  v4 = a3;
  [(COMessageChannelRequest *)&v10 encodeWithCoder:v4];
  [v4 encodeInteger:-[COMessageSessionManagementRequest commandType](self forKey:{"commandType", v10.receiver, v10.super_class), @"requestCommandType"}];
  v5 = [(COMessageSessionManagementRequest *)self payload];
  [v4 encodeObject:v5 forKey:@"payload"];

  v6 = [(COMessageSessionManagementRequest *)self payloadType];
  [v4 encodeObject:v6 forKey:@"payloadType"];

  v7 = [(COMessageSessionManagementRequest *)self topic];
  [v4 encodeObject:v7 forKey:@"topic"];

  v8 = [(COMessageSessionManagementRequest *)self subTopic];
  [v4 encodeObject:v8 forKey:@"subTopic"];

  v9 = [(COMessageSessionManagementRequest *)self remoteError];
  [v4 encodeObject:v9 forKey:@"remoteError"];
}

+ (id)acceptableResponses
{
  v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];

  return v2;
}

@end