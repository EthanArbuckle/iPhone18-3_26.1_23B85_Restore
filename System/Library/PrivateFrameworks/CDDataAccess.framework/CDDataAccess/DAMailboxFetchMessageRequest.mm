@interface DAMailboxFetchMessageRequest
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation DAMailboxFetchMessageRequest

- (unint64_t)hash
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  messageID = [(DAMailboxRequest *)self messageID];
  v5 = [v3 initWithFormat:@"%@\n%d\n%d", messageID, -[DAMailboxFetchMessageRequest maxSize](self, "maxSize"), -[DAMailboxRequest bodyFormat](self, "bodyFormat")];

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
      maxSize = [v7 maxSize];
      if (maxSize == [(DAMailboxFetchMessageRequest *)self maxSize])
      {
        bodyFormat = [v7 bodyFormat];
        v10 = bodyFormat == [(DAMailboxRequest *)self bodyFormat];
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
  v8.super_class = DAMailboxFetchMessageRequest;
  v4 = [(DAMailboxFetchMessageRequest *)&v8 description];
  messageID = [(DAMailboxRequest *)self messageID];
  v6 = [v3 stringWithFormat:@"%@ messageID %@, maxSize %d, bodyFormat %d", v4, messageID, -[DAMailboxFetchMessageRequest maxSize](self, "maxSize"), -[DAMailboxRequest bodyFormat](self, "bodyFormat")];

  return v6;
}

@end