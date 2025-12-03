@interface COMessageSession
- (BOOL)isEqual:(id)equal;
- (COMessageSession)initWithMember:(id)member;
- (NSString)subTopic;
- (id)messageChannel;
- (unint64_t)hash;
- (void)stopWithNotice:(id)notice;
@end

@implementation COMessageSession

- (COMessageSession)initWithMember:(id)member
{
  memberCopy = member;
  v9.receiver = self;
  v9.super_class = COMessageSession;
  v6 = [(COMessageSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_member, member);
    v7->_startTime = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  }

  return v7;
}

- (void)stopWithNotice:(id)notice
{
  noticeCopy = notice;
  messageChannel = [(COMessageSession *)self messageChannel];
  v5 = messageChannel;
  if (messageChannel)
  {
    [messageChannel stopMessageSession:self withNotice:noticeCopy];
  }
}

- (id)messageChannel
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(COMessageSession *)self producer];
  }

  else
  {
    [(COMessageSession *)self consumer];
  }
  v3 = ;
  messageChannel = [v3 messageChannel];

  return messageChannel;
}

- (NSString)subTopic
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(COMessageSession *)self producer];
  }

  else
  {
    [(COMessageSession *)self consumer];
  }
  v3 = ;
  subTopic = [v3 subTopic];

  return subTopic;
}

- (unint64_t)hash
{
  subTopic = [(COMessageSession *)self subTopic];
  v4 = [subTopic hash];
  member = [(COMessageSession *)self member];
  v6 = [member hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    subTopic = [(COMessageSession *)self subTopic];
    subTopic2 = [(COMessageSession *)equalCopy subTopic];
    v7 = [subTopic isEqualToString:subTopic2];

    if (v7)
    {
      member = [(COMessageSession *)self member];
      member2 = [(COMessageSession *)equalCopy member];
      v10 = [member isEqualToMember:member2];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end