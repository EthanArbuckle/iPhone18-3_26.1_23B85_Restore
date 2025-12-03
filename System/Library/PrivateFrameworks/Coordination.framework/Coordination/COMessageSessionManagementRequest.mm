@interface COMessageSessionManagementRequest
+ (id)acceptableResponses;
- (COMessageSessionManagementRequest)initWithCoder:(id)coder;
- (COMessageSessionManagementRequest)initWithCommandType:(int64_t)type error:(id)error topic:(id)topic subTopic:(id)subTopic;
- (COMessageSessionManagementRequest)initWithCommandType:(int64_t)type payload:(id)payload payloadType:(id)payloadType topic:(id)topic subTopic:(id)subTopic;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COMessageSessionManagementRequest

- (COMessageSessionManagementRequest)initWithCommandType:(int64_t)type payload:(id)payload payloadType:(id)payloadType topic:(id)topic subTopic:(id)subTopic
{
  payloadCopy = payload;
  payloadTypeCopy = payloadType;
  topicCopy = topic;
  subTopicCopy = subTopic;
  v20.receiver = self;
  v20.super_class = COMessageSessionManagementRequest;
  v17 = [(COMessageChannelRequest *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_commandType = type;
    objc_storeStrong(&v17->_payload, payload);
    objc_storeStrong(&v18->_payloadType, payloadType);
    objc_storeStrong(&v18->_topic, topic);
    objc_storeStrong(&v18->_subTopic, subTopic);
  }

  return v18;
}

- (COMessageSessionManagementRequest)initWithCommandType:(int64_t)type error:(id)error topic:(id)topic subTopic:(id)subTopic
{
  errorCopy = error;
  topicCopy = topic;
  subTopicCopy = subTopic;
  v17.receiver = self;
  v17.super_class = COMessageSessionManagementRequest;
  v14 = [(COMessageChannelRequest *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_commandType = type;
    objc_storeStrong(&v14->_remoteError, error);
    objc_storeStrong(&v15->_topic, topic);
    objc_storeStrong(&v15->_subTopic, subTopic);
  }

  return v15;
}

- (COMessageSessionManagementRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = COMessageSessionManagementRequest;
  v5 = [(COMessageChannelRequest *)&v19 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_9;
  }

  v5->_commandType = [coderCopy decodeIntegerForKey:@"requestCommandType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
  payload = v5->_payload;
  v5->_payload = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payloadType"];
  payloadType = v5->_payloadType;
  v5->_payloadType = v8;

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"topic"];
  topic = v5->_topic;
  v5->_topic = v10;

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subTopic"];
  subTopic = v5->_subTopic;
  v5->_subTopic = v12;

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteError"];
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

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = COMessageSessionManagementRequest;
  coderCopy = coder;
  [(COMessageChannelRequest *)&v10 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[COMessageSessionManagementRequest commandType](self forKey:{"commandType", v10.receiver, v10.super_class), @"requestCommandType"}];
  payload = [(COMessageSessionManagementRequest *)self payload];
  [coderCopy encodeObject:payload forKey:@"payload"];

  payloadType = [(COMessageSessionManagementRequest *)self payloadType];
  [coderCopy encodeObject:payloadType forKey:@"payloadType"];

  topic = [(COMessageSessionManagementRequest *)self topic];
  [coderCopy encodeObject:topic forKey:@"topic"];

  subTopic = [(COMessageSessionManagementRequest *)self subTopic];
  [coderCopy encodeObject:subTopic forKey:@"subTopic"];

  remoteError = [(COMessageSessionManagementRequest *)self remoteError];
  [coderCopy encodeObject:remoteError forKey:@"remoteError"];
}

+ (id)acceptableResponses
{
  v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];

  return v2;
}

@end