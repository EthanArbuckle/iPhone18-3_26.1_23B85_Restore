@interface HMDDataStreamPendingRequest
- (BOOL)isEqual:(id)equal;
- (HMDDataStreamPendingRequest)initWithIdentifier:(id)identifier protocol:(id)protocol topic:(id)topic payload:(id)payload callback:(id)callback;
- (unint64_t)hash;
@end

@implementation HMDDataStreamPendingRequest

- (unint64_t)hash
{
  identifier = [(HMDDataStreamPendingRequest *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (self == v5)
    {
      v8 = 1;
    }

    else
    {
      identifier = [(HMDDataStreamPendingRequest *)self identifier];
      identifier2 = [(HMDDataStreamPendingRequest *)v5 identifier];
      v8 = [identifier isEqual:identifier2];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (HMDDataStreamPendingRequest)initWithIdentifier:(id)identifier protocol:(id)protocol topic:(id)topic payload:(id)payload callback:(id)callback
{
  identifierCopy = identifier;
  protocolCopy = protocol;
  topicCopy = topic;
  payloadCopy = payload;
  callbackCopy = callback;
  v23.receiver = self;
  v23.super_class = HMDDataStreamPendingRequest;
  v17 = [(HMDDataStreamPendingRequest *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_protocol, protocol);
    objc_storeStrong(&v18->_topic, topic);
    objc_storeStrong(&v18->_identifier, identifier);
    v19 = _Block_copy(callbackCopy);
    callback = v18->_callback;
    v18->_callback = v19;

    objc_storeStrong(&v18->_payload, payload);
  }

  return v18;
}

@end