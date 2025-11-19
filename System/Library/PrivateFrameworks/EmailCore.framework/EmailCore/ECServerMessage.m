@interface ECServerMessage
- (BOOL)isEqual:(id)a3;
- (ECServerMessage)initWithIMAPServerMessageBuilder:(id)a3;
- (ECServerMessage)initWithServerMessageBuilder:(id)a3;
- (id)remoteIDObject;
- (unint64_t)hash;
- (unsigned)imapUID;
@end

@implementation ECServerMessage

- (ECServerMessage)initWithServerMessageBuilder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ECServerMessage;
  v5 = [(ECServerMessage *)&v7 init];
  if (v5)
  {
    v4[2](v4, v5);
  }

  return v5;
}

- (ECServerMessage)initWithIMAPServerMessageBuilder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ECServerMessage;
  v5 = [(ECServerMessage *)&v7 init];
  if (v5)
  {
    v4[2](v4, v5);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(ECServerMessage *)self remoteID];
    v7 = [v5 remoteID];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(ECServerMessage *)self remoteID];
  v3 = [v2 hash];

  return v3;
}

- (unsigned)imapUID
{
  imapUID = self->_imapUID;
  if (!imapUID)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"ECServerMessage.m" lineNumber:62 description:@"Trying to get an IMAP UID from a server message with a string remote_id"];

    imapUID = self->_imapUID;
  }

  return [(NSNumber *)imapUID unsignedIntValue];
}

- (id)remoteIDObject
{
  imapUID = self->_imapUID;
  if (!imapUID)
  {
    imapUID = self->_remoteID;
  }

  return imapUID;
}

@end