@interface PDSProtoUserPushTokenRegResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDSProtoUserPushTokenRegResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PDSProtoUserPushTokenRegResponse;
  v4 = [(PDSProtoUserPushTokenRegResponse *)&v8 description];
  v5 = [(PDSProtoUserPushTokenRegResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  userPushToken = self->_userPushToken;
  if (userPushToken)
  {
    v5 = [(PDSProtoUserPushToken *)userPushToken dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"user_push_token"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_status];
  [v3 setObject:v6 forKey:@"status"];

  message = self->_message;
  if (message)
  {
    [v3 setObject:message forKey:@"message"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
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

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setUserPushToken:self->_userPushToken];
  v4 = v5;
  v5[4] = self->_status;
  if (self->_message)
  {
    [v5 setMessage:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PDSProtoUserPushToken *)self->_userPushToken copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  *(v5 + 16) = self->_status;
  v8 = [(NSString *)self->_message copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((userPushToken = self->_userPushToken, !(userPushToken | v4[3])) || -[PDSProtoUserPushToken isEqual:](userPushToken, "isEqual:")) && self->_status == *(v4 + 4))
  {
    message = self->_message;
    if (message | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  userPushToken = self->_userPushToken;
  v6 = *(v4 + 3);
  v7 = v4;
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

  v4 = v7;
LABEL_7:
  self->_status = *(v4 + 4);
  if (*(v4 + 1))
  {
    [(PDSProtoUserPushTokenRegResponse *)self setMessage:?];
  }

  MEMORY[0x2821F96F8]();
}

@end