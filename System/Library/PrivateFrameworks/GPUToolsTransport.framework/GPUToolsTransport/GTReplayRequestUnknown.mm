@interface GTReplayRequestUnknown
- (id)initNoRequestID;
@end

@implementation GTReplayRequestUnknown

- (id)initNoRequestID
{
  v6.receiver = self;
  v6.super_class = GTReplayRequestUnknown;
  initNoRequestID = [(GTReplayRequest *)&v6 initNoRequestID];
  v3 = initNoRequestID;
  if (initNoRequestID)
  {
    v4 = initNoRequestID;
  }

  return v3;
}

@end