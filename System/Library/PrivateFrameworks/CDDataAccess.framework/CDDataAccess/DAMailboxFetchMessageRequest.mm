@interface DAMailboxFetchMessageRequest
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation DAMailboxFetchMessageRequest

- (unint64_t)hash
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(DAMailboxRequest *)self messageID];
  v5 = [v3 initWithFormat:@"%@\n%d\n%d", v4, -[DAMailboxFetchMessageRequest maxSize](self, "maxSize"), -[DAMailboxRequest bodyFormat](self, "bodyFormat")];

  v6 = [v5 hash];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [(DAMailboxRequest *)self messageID];
    v9 = [v7 messageID];
    if (v8 == v9 || (-[DAMailboxRequest messageID](self, "messageID"), v3 = objc_claimAutoreleasedReturnValue(), [v7 messageID], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      v11 = [v7 maxSize];
      if (v11 == [(DAMailboxFetchMessageRequest *)self maxSize])
      {
        v12 = [v7 bodyFormat];
        v10 = v12 == [(DAMailboxRequest *)self bodyFormat];
      }

      else
      {
        v10 = 0;
      }

      if (v8 == v9)
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
  v5 = [(DAMailboxRequest *)self messageID];
  v6 = [v3 stringWithFormat:@"%@ messageID %@, maxSize %d, bodyFormat %d", v4, v5, -[DAMailboxFetchMessageRequest maxSize](self, "maxSize"), -[DAMailboxRequest bodyFormat](self, "bodyFormat")];

  return v6;
}

@end