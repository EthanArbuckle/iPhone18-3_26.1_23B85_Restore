@interface BTAudioRoutingResponse
- (BTAudioRoutingResponse)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BTAudioRoutingResponse

- (BTAudioRoutingResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BTAudioRoutingResponse *)self init];
  if (v5)
  {
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_action = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_clientID = 0;
    }

    v6 = v4;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v9 = v8;
    objc_opt_class();
    NSDecodeStandardContainerIfPresent();

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  action = self->_action;
  v11 = v4;
  if (action)
  {
    [v4 encodeInteger:action forKey:@"actn"];
    v4 = v11;
  }

  clientID = self->_clientID;
  if (clientID)
  {
    [v11 encodeInt64:clientID forKey:@"cid"];
    v4 = v11;
  }

  deviceAddress = self->_deviceAddress;
  if (deviceAddress)
  {
    [v11 encodeObject:deviceAddress forKey:@"dAdr"];
    v4 = v11;
  }

  error = self->_error;
  if (error)
  {
    [v11 encodeObject:error forKey:@"err"];
    v4 = v11;
  }

  reason = self->_reason;
  if (reason)
  {
    [v11 encodeObject:reason forKey:@"reas"];
    v4 = v11;
  }

  wxInfo = self->_wxInfo;
  if (wxInfo)
  {
    [v11 encodeObject:wxInfo forKey:@"wxif"];
    v4 = v11;
  }
}

- (id)description
{
  action = self->_action;
  if (action <= 5)
  {
    v3 = off_278D11A20[action];
  }

  reason = self->_reason;
  wxInfo = self->_wxInfo;
  deviceAddress = self->_deviceAddress;
  error = self->_error;
  clientID = self->_clientID;
  NSAppendPrintF();

  return 0;
}

@end