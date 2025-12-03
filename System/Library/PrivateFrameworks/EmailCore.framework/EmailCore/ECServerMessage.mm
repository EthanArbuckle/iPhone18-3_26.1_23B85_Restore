@interface ECServerMessage
- (BOOL)isEqual:(id)equal;
- (ECServerMessage)initWithIMAPServerMessageBuilder:(id)builder;
- (ECServerMessage)initWithServerMessageBuilder:(id)builder;
- (id)remoteIDObject;
- (unint64_t)hash;
- (unsigned)imapUID;
@end

@implementation ECServerMessage

- (ECServerMessage)initWithServerMessageBuilder:(id)builder
{
  builderCopy = builder;
  v7.receiver = self;
  v7.super_class = ECServerMessage;
  v5 = [(ECServerMessage *)&v7 init];
  if (v5)
  {
    builderCopy[2](builderCopy, v5);
  }

  return v5;
}

- (ECServerMessage)initWithIMAPServerMessageBuilder:(id)builder
{
  builderCopy = builder;
  v7.receiver = self;
  v7.super_class = ECServerMessage;
  v5 = [(ECServerMessage *)&v7 init];
  if (v5)
  {
    builderCopy[2](builderCopy, v5);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    remoteID = [(ECServerMessage *)self remoteID];
    remoteID2 = [v5 remoteID];
    v8 = [remoteID isEqualToString:remoteID2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  remoteID = [(ECServerMessage *)self remoteID];
  v3 = [remoteID hash];

  return v3;
}

- (unsigned)imapUID
{
  imapUID = self->_imapUID;
  if (!imapUID)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ECServerMessage.m" lineNumber:62 description:@"Trying to get an IMAP UID from a server message with a string remote_id"];

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