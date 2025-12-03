@interface COMessagingRequest
+ (id)acceptableResponses;
- (COMessagingRequest)initWithCoder:(id)coder;
- (COMessagingRequest)initWithRequestID:(unsigned int)d requestType:(int64_t)type payload:(id)payload payloadType:(id)payloadType topic:(id)topic;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COMessagingRequest

- (COMessagingRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = COMessagingRequest;
  v5 = [(COMeshCommand *)&v19 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestID"];
  v5->_requestID = [v6 unsignedIntValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestType"];
  v5->_requestType = [v7 integerValue];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
  payload = v5->_payload;
  v5->_payload = v8;

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payloadType"];
  payloadType = v5->_payloadType;
  v5->_payloadType = v10;

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"topic"];
  topic = v5->_topic;
  v5->_topic = v12;

  v14 = v5->_payload;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v15 = v5->_payloadType;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (v16 = v5->_topic, objc_opt_class(), (objc_opt_isKindOfClass()))
  {
LABEL_5:
    v17 = v5;
  }

  else
  {
LABEL_6:
    v17 = 0;
  }

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = COMessagingRequest;
  coderCopy = coder;
  [(COMeshCommand *)&v10 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[COMessagingRequest requestID](self, "requestID", v10.receiver, v10.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"requestID"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[COMessagingRequest requestType](self, "requestType")}];
  [coderCopy encodeObject:v6 forKey:@"requestType"];

  payload = [(COMessagingRequest *)self payload];
  [coderCopy encodeObject:payload forKey:@"payload"];

  payloadType = [(COMessagingRequest *)self payloadType];
  [coderCopy encodeObject:payloadType forKey:@"payloadType"];

  topic = [(COMessagingRequest *)self topic];
  [coderCopy encodeObject:topic forKey:@"topic"];
}

+ (id)acceptableResponses
{
  v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];

  return v2;
}

- (COMessagingRequest)initWithRequestID:(unsigned int)d requestType:(int64_t)type payload:(id)payload payloadType:(id)payloadType topic:(id)topic
{
  payloadCopy = payload;
  payloadTypeCopy = payloadType;
  topicCopy = topic;
  v19.receiver = self;
  v19.super_class = COMessagingRequest;
  v16 = [(COMeshCommand *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_requestID = d;
    v16->_requestType = type;
    objc_storeStrong(&v16->_payload, payload);
    objc_storeStrong(&v17->_payloadType, payloadType);
    objc_storeStrong(&v17->_topic, topic);
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p, id = %u>", v5, self, -[COMessagingRequest requestID](self, "requestID")];

  return v6;
}

@end