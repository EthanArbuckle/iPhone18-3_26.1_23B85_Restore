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
    v3 = [MEMORY[0x277CBEAA8] date];
    creation = v2->_creation;
    v2->_creation = v3;

    v2->_didPlayLightsAndSirens = 0;
  }

  return v2;
}

- (BOOL)hasExpired
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [(BLTLightsAndSirensReplyInfo *)self creation];
  [v3 timeIntervalSinceDate:v4];
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