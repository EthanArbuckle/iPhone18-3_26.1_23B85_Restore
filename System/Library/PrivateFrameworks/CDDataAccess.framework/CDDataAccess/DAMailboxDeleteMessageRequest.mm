@interface DAMailboxDeleteMessageRequest
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)initRequestWithMessageID:(id)d;
- (unint64_t)hash;
@end

@implementation DAMailboxDeleteMessageRequest

- (id)initRequestWithMessageID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = DAMailboxDeleteMessageRequest;
  v5 = [(DAMailboxRequest *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(DAMailboxRequest *)v5 setRequestType:2];
    v7 = [dCopy copy];
    [(DAMailboxRequest *)v6 setMessageID:v7];
  }

  return v6;
}

- (unint64_t)hash
{
  messageID = [(DAMailboxRequest *)self messageID];
  v3 = [messageID hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    messageID = [(DAMailboxRequest *)self messageID];
    messageID2 = [v5 messageID];
    if (messageID == messageID2)
    {
      v10 = 1;
    }

    else
    {
      messageID3 = [(DAMailboxRequest *)self messageID];
      messageID4 = [v5 messageID];
      v10 = [messageID3 isEqual:messageID4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DAMailboxDeleteMessageRequest;
  v4 = [(DAMailboxDeleteMessageRequest *)&v8 description];
  messageID = [(DAMailboxRequest *)self messageID];
  v6 = [v3 stringWithFormat:@"%@ messageID %@", v4, messageID];

  return v6;
}

@end