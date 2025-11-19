@interface COMessagingResponse
- (COMessagingResponse)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COMessagingResponse

- (COMessagingResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = COMessagingResponse;
  v5 = [(COMeshResponse *)&v12 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
  payload = v5->_payload;
  v5->_payload = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"payloadType"];
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

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = COMessagingResponse;
  v4 = a3;
  [(COMeshResponse *)&v7 encodeWithCoder:v4];
  v5 = [(COMessagingResponse *)self payload:v7.receiver];
  [v4 encodeObject:v5 forKey:@"payload"];

  v6 = [(COMessagingResponse *)self payloadType];
  [v4 encodeObject:v6 forKey:@"payloadType"];
}

@end