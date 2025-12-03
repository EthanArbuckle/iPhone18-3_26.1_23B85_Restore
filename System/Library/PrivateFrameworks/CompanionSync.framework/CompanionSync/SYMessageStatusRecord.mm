@interface SYMessageStatusRecord
- (BOOL)isComplete;
- (SYMessageStatusRecord)initWithMessageID:(id)d;
- (id)debugDescription;
- (id)description;
@end

@implementation SYMessageStatusRecord

- (SYMessageStatusRecord)initWithMessageID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = SYMessageStatusRecord;
  v5 = [(SYMessageStatusRecord *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(SYMessageStatusRecord *)v5 setMessageID:dCopy];
    v7 = v6;
  }

  return v6;
}

- (BOOL)isComplete
{
  messageID = [(SYMessageStatusRecord *)self messageID];
  if ([messageID isEqualToString:@"<filler>"])
  {
    responseReceived = 1;
  }

  else
  {
    responseReceived = [(SYMessageStatusRecord *)self deviceACKReceived]&& [(SYMessageStatusRecord *)self applicationACKReceived]&& [(SYMessageStatusRecord *)self responseReceived];
  }

  return responseReceived;
}

- (id)description
{
  if ([(SYMessageStatusRecord *)self isComplete])
  {
    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    messageID = [(SYMessageStatusRecord *)self messageID];
    v5 = [v3 initWithFormat:@"Sync message %@; complete", messageID];
  }

  else
  {
    v5 = [(SYMessageStatusRecord *)self debugDescription];
  }

  return v5;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  messageID = [(SYMessageStatusRecord *)self messageID];
  v5 = [v3 initWithFormat:@"Sync message %@; device ACK: %d, app ACK: %d, responded: %d", messageID, -[SYMessageStatusRecord deviceACKReceived](self, "deviceACKReceived"), -[SYMessageStatusRecord applicationACKReceived](self, "applicationACKReceived"), -[SYMessageStatusRecord responseReceived](self, "responseReceived")];

  return v5;
}

@end