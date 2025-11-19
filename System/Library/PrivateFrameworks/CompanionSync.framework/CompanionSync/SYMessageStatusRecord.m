@interface SYMessageStatusRecord
- (BOOL)isComplete;
- (SYMessageStatusRecord)initWithMessageID:(id)a3;
- (id)debugDescription;
- (id)description;
@end

@implementation SYMessageStatusRecord

- (SYMessageStatusRecord)initWithMessageID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SYMessageStatusRecord;
  v5 = [(SYMessageStatusRecord *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(SYMessageStatusRecord *)v5 setMessageID:v4];
    v7 = v6;
  }

  return v6;
}

- (BOOL)isComplete
{
  v3 = [(SYMessageStatusRecord *)self messageID];
  if ([v3 isEqualToString:@"<filler>"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(SYMessageStatusRecord *)self deviceACKReceived]&& [(SYMessageStatusRecord *)self applicationACKReceived]&& [(SYMessageStatusRecord *)self responseReceived];
  }

  return v4;
}

- (id)description
{
  if ([(SYMessageStatusRecord *)self isComplete])
  {
    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    v4 = [(SYMessageStatusRecord *)self messageID];
    v5 = [v3 initWithFormat:@"Sync message %@; complete", v4];
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
  v4 = [(SYMessageStatusRecord *)self messageID];
  v5 = [v3 initWithFormat:@"Sync message %@; device ACK: %d, app ACK: %d, responded: %d", v4, -[SYMessageStatusRecord deviceACKReceived](self, "deviceACKReceived"), -[SYMessageStatusRecord applicationACKReceived](self, "applicationACKReceived"), -[SYMessageStatusRecord responseReceived](self, "responseReceived")];

  return v5;
}

@end