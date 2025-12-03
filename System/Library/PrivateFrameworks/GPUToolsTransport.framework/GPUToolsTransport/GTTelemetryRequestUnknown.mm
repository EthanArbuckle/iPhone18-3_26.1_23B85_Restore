@interface GTTelemetryRequestUnknown
- (id)initNoRequestID;
@end

@implementation GTTelemetryRequestUnknown

- (id)initNoRequestID
{
  v6.receiver = self;
  v6.super_class = GTTelemetryRequestUnknown;
  initNoRequestID = [(GTTelemetryRequest *)&v6 initNoRequestID];
  v3 = initNoRequestID;
  if (initNoRequestID)
  {
    v4 = initNoRequestID;
  }

  return v3;
}

@end