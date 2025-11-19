@interface DAMailboxSetFlagsRequest
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)initRequestWithSetFlags:(unint64_t)a3 unsetFlags:(unint64_t)a4 message:(id)a5;
- (unint64_t)hash;
@end

@implementation DAMailboxSetFlagsRequest

- (id)initRequestWithSetFlags:(unint64_t)a3 unsetFlags:(unint64_t)a4 message:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = DAMailboxSetFlagsRequest;
  v9 = [(DAMailboxRequest *)&v13 init];
  v10 = v9;
  if (v9)
  {
    [(DAMailboxRequest *)v9 setRequestType:0];
    [(DAMailboxSetFlagsRequest *)v10 setOnFlags:a3];
    [(DAMailboxSetFlagsRequest *)v10 setOffFlags:a4];
    v11 = [v8 copy];
    [(DAMailboxRequest *)v10 setMessageID:v11];
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(DAMailboxRequest *)self messageID];
  v5 = [v3 initWithFormat:@"%@\n%llu\n%llu", v4, -[DAMailboxSetFlagsRequest onFlags](self, "onFlags"), -[DAMailboxSetFlagsRequest offFlags](self, "offFlags")];

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
      v11 = [v7 onFlags];
      if (v11 == [(DAMailboxSetFlagsRequest *)self onFlags])
      {
        v12 = [v7 offFlags];
        v10 = v12 == [(DAMailboxSetFlagsRequest *)self offFlags];
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
  v8.super_class = DAMailboxSetFlagsRequest;
  v4 = [(DAMailboxSetFlagsRequest *)&v8 description];
  v5 = [(DAMailboxRequest *)self messageID];
  v6 = [v3 stringWithFormat:@"%@ messageID %@, onFlags %llu, offFlags %llu", v4, v5, -[DAMailboxSetFlagsRequest onFlags](self, "onFlags"), -[DAMailboxSetFlagsRequest offFlags](self, "offFlags")];

  return v6;
}

@end