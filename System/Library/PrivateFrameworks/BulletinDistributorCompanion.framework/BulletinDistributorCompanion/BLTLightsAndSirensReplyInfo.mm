@interface BLTLightsAndSirensReplyInfo
- (BLTLightsAndSirensReplyInfo)init;
- (BOOL)hasExpired;
- (BOOL)sendReply;
@end

@implementation BLTLightsAndSirensReplyInfo

- (BLTLightsAndSirensReplyInfo)init
{
  v6.receiver = self;
  v6.super_class = BLTLightsAndSirensReplyInfo;
  v2 = [(BLTLightsAndSirensReplyInfo *)&v6 init];
  if (v2)
  {
    date = [MEMORY[0x277CBEAA8] date];
    creation = v2->_creation;
    v2->_creation = date;

    v2->_didPlayLightsAndSirens = 0;
  }

  return v2;
}

- (BOOL)hasExpired
{
  date = [MEMORY[0x277CBEAA8] date];
  creation = [(BLTLightsAndSirensReplyInfo *)self creation];
  [date timeIntervalSinceDate:creation];
  v6 = v5 >= 7200.0;

  return v6;
}

- (BOOL)sendReply
{
  if (self->_replySent)
  {
    LOBYTE(reply) = 1;
  }

  else
  {
    didPlayLightsAndSirens = self->_didPlayLightsAndSirens;
    if (didPlayLightsAndSirens)
    {
      reply = self->_reply;
      if (reply)
      {
        reply[2](reply, didPlayLightsAndSirens == 1);
        LOBYTE(reply) = 1;
        self->_replySent = 1;
      }
    }

    else
    {
      LOBYTE(reply) = 0;
    }
  }

  return reply;
}

@end