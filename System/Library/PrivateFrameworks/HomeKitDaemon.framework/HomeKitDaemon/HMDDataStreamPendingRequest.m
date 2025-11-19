@interface HMDDataStreamPendingRequest
- (BOOL)isEqual:(id)a3;
- (HMDDataStreamPendingRequest)initWithIdentifier:(id)a3 protocol:(id)a4 topic:(id)a5 payload:(id)a6 callback:(id)a7;
- (unint64_t)hash;
@end

@implementation HMDDataStreamPendingRequest

- (unint64_t)hash
{
  v2 = [(HMDDataStreamPendingRequest *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (self == v5)
    {
      v8 = 1;
    }

    else
    {
      v6 = [(HMDDataStreamPendingRequest *)self identifier];
      v7 = [(HMDDataStreamPendingRequest *)v5 identifier];
      v8 = [v6 isEqual:v7];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (HMDDataStreamPendingRequest)initWithIdentifier:(id)a3 protocol:(id)a4 topic:(id)a5 payload:(id)a6 callback:(id)a7
{
  v22 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = HMDDataStreamPendingRequest;
  v17 = [(HMDDataStreamPendingRequest *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_protocol, a4);
    objc_storeStrong(&v18->_topic, a5);
    objc_storeStrong(&v18->_identifier, a3);
    v19 = _Block_copy(v16);
    callback = v18->_callback;
    v18->_callback = v19;

    objc_storeStrong(&v18->_payload, a6);
  }

  return v18;
}

@end