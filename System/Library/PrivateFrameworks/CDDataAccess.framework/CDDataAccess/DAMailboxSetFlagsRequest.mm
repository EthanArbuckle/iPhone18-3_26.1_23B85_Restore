@interface DAMailboxSetFlagsRequest
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)initRequestWithSetFlags:(unint64_t)flags unsetFlags:(unint64_t)unsetFlags message:(id)message;
- (unint64_t)hash;
@end

@implementation DAMailboxSetFlagsRequest

- (id)initRequestWithSetFlags:(unint64_t)flags unsetFlags:(unint64_t)unsetFlags message:(id)message
{
  messageCopy = message;
  v13.receiver = self;
  v13.super_class = DAMailboxSetFlagsRequest;
  v9 = [(DAMailboxRequest *)&v13 init];
  v10 = v9;
  if (v9)
  {
    [(DAMailboxRequest *)v9 setRequestType:0];
    [(DAMailboxSetFlagsRequest *)v10 setOnFlags:flags];
    [(DAMailboxSetFlagsRequest *)v10 setOffFlags:unsetFlags];
    v11 = [messageCopy copy];
    [(DAMailboxRequest *)v10 setMessageID:v11];
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  messageID = [(DAMailboxRequest *)self messageID];
  v5 = [v3 initWithFormat:@"%@\n%llu\n%llu", messageID, -[DAMailboxSetFlagsRequest onFlags](self, "onFlags"), -[DAMailboxSetFlagsRequest offFlags](self, "offFlags")];

  v6 = [v5 hash];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = equalCopy;
    messageID = [(DAMailboxRequest *)self messageID];
    messageID2 = [v7 messageID];
    if (messageID == messageID2 || (-[DAMailboxRequest messageID](self, "messageID"), v3 = objc_claimAutoreleasedReturnValue(), [v7 messageID], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      onFlags = [v7 onFlags];
      if (onFlags == [(DAMailboxSetFlagsRequest *)self onFlags])
      {
        offFlags = [v7 offFlags];
        v10 = offFlags == [(DAMailboxSetFlagsRequest *)self offFlags];
      }

      else
      {
        v10 = 0;
      }

      if (messageID == messageID2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_11:
    goto LABEL_12;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DAMailboxSetFlagsRequest;
  v4 = [(DAMailboxSetFlagsRequest *)&v8 description];
  messageID = [(DAMailboxRequest *)self messageID];
  v6 = [v3 stringWithFormat:@"%@ messageID %@, onFlags %llu, offFlags %llu", v4, messageID, -[DAMailboxSetFlagsRequest onFlags](self, "onFlags"), -[DAMailboxSetFlagsRequest offFlags](self, "offFlags")];

  return v6;
}

@end