@interface GTReplayRequestUnknown
- (id)initNoRequestID;
@end

@implementation GTReplayRequestUnknown

- (id)initNoRequestID
{
  v6.receiver = self;
  v6.super_class = GTReplayRequestUnknown;
  v2 = [(GTReplayRequest *)&v6 initNoRequestID];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end