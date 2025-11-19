@interface GTTelemetryRequestUnknown
- (id)initNoRequestID;
@end

@implementation GTTelemetryRequestUnknown

- (id)initNoRequestID
{
  v6.receiver = self;
  v6.super_class = GTTelemetryRequestUnknown;
  v2 = [(GTTelemetryRequest *)&v6 initNoRequestID];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end