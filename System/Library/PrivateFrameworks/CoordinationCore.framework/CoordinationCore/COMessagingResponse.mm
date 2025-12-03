@interface COMessagingResponse
- (COMessagingResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COMessagingResponse

- (COMessagingResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = COMessagingResponse;
  v5 = [(COMeshResponse *)&v12 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
  payload = v5->_payload;
  v5->_payload = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payloadType"];
  payloadType = v5->_payloadType;
  v5->_payloadType = v8;

  if (v5->_payload)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (v5->_payloadType && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_7:
    v10 = 0;
  }

  else
  {
LABEL_6:
    v10 = v5;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = COMessagingResponse;
  coderCopy = coder;
  [(COMeshResponse *)&v7 encodeWithCoder:coderCopy];
  v5 = [(COMessagingResponse *)self payload:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"payload"];

  payloadType = [(COMessagingResponse *)self payloadType];
  [coderCopy encodeObject:payloadType forKey:@"payloadType"];
}

@end