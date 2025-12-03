@interface HDCodableNotificationInstructionRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableNotificationInstructionRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableNotificationInstructionRequest;
  v4 = [(HDCodableNotificationInstructionRequest *)&v8 description];
  dictionaryRepresentation = [(HDCodableNotificationInstructionRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier)
  {
    [dictionary setObject:requestIdentifier forKey:@"requestIdentifier"];
  }

  notificationInstruction = self->_notificationInstruction;
  if (notificationInstruction)
  {
    dictionaryRepresentation = [(HDCodableNotificationInstructionMessage *)notificationInstruction dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"notificationInstruction"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_requestIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_notificationInstruction)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_requestIdentifier)
  {
    [toCopy setRequestIdentifier:?];
    toCopy = v5;
  }

  if (self->_notificationInstruction)
  {
    [v5 setNotificationInstruction:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_requestIdentifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(HDCodableNotificationInstructionMessage *)self->_notificationInstruction copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((requestIdentifier = self->_requestIdentifier, !(requestIdentifier | equalCopy[2])) || -[NSString isEqual:](requestIdentifier, "isEqual:")))
  {
    notificationInstruction = self->_notificationInstruction;
    if (notificationInstruction | equalCopy[1])
    {
      v7 = [(HDCodableNotificationInstructionMessage *)notificationInstruction isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[2])
  {
    [(HDCodableNotificationInstructionRequest *)self setRequestIdentifier:?];
    fromCopy = v7;
  }

  notificationInstruction = self->_notificationInstruction;
  v6 = fromCopy[1];
  if (notificationInstruction)
  {
    if (v6)
    {
      [(HDCodableNotificationInstructionMessage *)notificationInstruction mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HDCodableNotificationInstructionRequest *)self setNotificationInstruction:?];
  }

  MEMORY[0x2821F96F8]();
}

@end