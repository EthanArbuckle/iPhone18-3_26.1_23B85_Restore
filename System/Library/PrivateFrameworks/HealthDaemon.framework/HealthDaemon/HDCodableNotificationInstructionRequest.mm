@interface HDCodableNotificationInstructionRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableNotificationInstructionRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableNotificationInstructionRequest;
  v4 = [(HDCodableNotificationInstructionRequest *)&v8 description];
  v5 = [(HDCodableNotificationInstructionRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier)
  {
    [v3 setObject:requestIdentifier forKey:@"requestIdentifier"];
  }

  notificationInstruction = self->_notificationInstruction;
  if (notificationInstruction)
  {
    v7 = [(HDCodableNotificationInstructionMessage *)notificationInstruction dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"notificationInstruction"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_requestIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_notificationInstruction)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_requestIdentifier)
  {
    [v4 setRequestIdentifier:?];
    v4 = v5;
  }

  if (self->_notificationInstruction)
  {
    [v5 setNotificationInstruction:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_requestIdentifier copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(HDCodableNotificationInstructionMessage *)self->_notificationInstruction copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((requestIdentifier = self->_requestIdentifier, !(requestIdentifier | v4[2])) || -[NSString isEqual:](requestIdentifier, "isEqual:")))
  {
    notificationInstruction = self->_notificationInstruction;
    if (notificationInstruction | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[2])
  {
    [(HDCodableNotificationInstructionRequest *)self setRequestIdentifier:?];
    v4 = v7;
  }

  notificationInstruction = self->_notificationInstruction;
  v6 = v4[1];
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