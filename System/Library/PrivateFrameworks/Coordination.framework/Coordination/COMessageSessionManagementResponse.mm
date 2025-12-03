@interface COMessageSessionManagementResponse
- (COMessageSessionManagementResponse)initWithCoder:(id)coder;
- (COMessageSessionManagementResponse)initWithPayload:(id)payload payloadType:(id)type;
- (COMessageSessionManagementResponse)initWithRemoteError:(id)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COMessageSessionManagementResponse

- (COMessageSessionManagementResponse)initWithPayload:(id)payload payloadType:(id)type
{
  payloadCopy = payload;
  typeCopy = type;
  v12.receiver = self;
  v12.super_class = COMessageSessionManagementResponse;
  v9 = [(COMessageChannelResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_payload, payload);
    objc_storeStrong(&v10->_payloadType, type);
  }

  return v10;
}

- (COMessageSessionManagementResponse)initWithRemoteError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = COMessageSessionManagementResponse;
  v6 = [(COMessageChannelResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_remoteError, error);
  }

  return v7;
}

- (COMessageSessionManagementResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = COMessageSessionManagementResponse;
  v5 = [(COMessageChannelResponse *)&v14 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
  payload = v5->_payload;
  v5->_payload = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payloadType"];
  payloadType = v5->_payloadType;
  v5->_payloadType = v8;

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteError"];
  remoteError = v5->_remoteError;
  v5->_remoteError = v10;

  if (v5->_payload)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (v5->_payloadType && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v5->_remoteError && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_9:
    v12 = 0;
  }

  else
  {
LABEL_8:
    v12 = v5;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = COMessageSessionManagementResponse;
  coderCopy = coder;
  [(COMessageChannelResponse *)&v8 encodeWithCoder:coderCopy];
  v5 = [(COMessageSessionManagementResponse *)self payload:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"payload"];

  payloadType = [(COMessageSessionManagementResponse *)self payloadType];
  [coderCopy encodeObject:payloadType forKey:@"payloadType"];

  remoteError = [(COMessageSessionManagementResponse *)self remoteError];
  [coderCopy encodeObject:remoteError forKey:@"remoteError"];
}

@end