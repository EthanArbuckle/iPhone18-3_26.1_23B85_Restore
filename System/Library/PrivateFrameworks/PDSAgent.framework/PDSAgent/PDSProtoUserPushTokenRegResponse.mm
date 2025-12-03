@interface PDSProtoUserPushTokenRegResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDSProtoUserPushTokenRegResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PDSProtoUserPushTokenRegResponse;
  v4 = [(PDSProtoUserPushTokenRegResponse *)&v8 description];
  dictionaryRepresentation = [(PDSProtoUserPushTokenRegResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  userPushToken = self->_userPushToken;
  if (userPushToken)
  {
    dictionaryRepresentation = [(PDSProtoUserPushToken *)userPushToken dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"user_push_token"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_status];
  [dictionary setObject:v6 forKey:@"status"];

  message = self->_message;
  if (message)
  {
    [dictionary setObject:message forKey:@"message"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_userPushToken)
  {
    [PDSProtoUserPushTokenRegResponse writeTo:];
  }

  PBDataWriterWriteSubmessage();
  status = self->_status;
  PBDataWriterWriteInt32Field();
  if (self->_message)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setUserPushToken:self->_userPushToken];
  v4 = toCopy;
  toCopy[4] = self->_status;
  if (self->_message)
  {
    [toCopy setMessage:?];
    v4 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PDSProtoUserPushToken *)self->_userPushToken copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  *(v5 + 16) = self->_status;
  v8 = [(NSString *)self->_message copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((userPushToken = self->_userPushToken, !(userPushToken | equalCopy[3])) || -[PDSProtoUserPushToken isEqual:](userPushToken, "isEqual:")) && self->_status == *(equalCopy + 4))
  {
    message = self->_message;
    if (message | equalCopy[1])
    {
      v7 = [(NSString *)message isEqual:?];
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

- (unint64_t)hash
{
  v3 = [(PDSProtoUserPushToken *)self->_userPushToken hash];
  v4 = 2654435761 * self->_status;
  return v4 ^ v3 ^ [(NSString *)self->_message hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  userPushToken = self->_userPushToken;
  v6 = *(fromCopy + 3);
  v7 = fromCopy;
  if (userPushToken)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PDSProtoUserPushToken *)userPushToken mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PDSProtoUserPushTokenRegResponse *)self setUserPushToken:?];
  }

  fromCopy = v7;
LABEL_7:
  self->_status = *(fromCopy + 4);
  if (*(fromCopy + 1))
  {
    [(PDSProtoUserPushTokenRegResponse *)self setMessage:?];
  }

  MEMORY[0x2821F96F8]();
}

@end