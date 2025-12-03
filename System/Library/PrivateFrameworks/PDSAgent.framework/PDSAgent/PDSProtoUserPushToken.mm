@interface PDSProtoUserPushToken
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDSProtoUserPushToken

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PDSProtoUserPushToken;
  v4 = [(PDSProtoUserPushToken *)&v8 description];
  dictionaryRepresentation = [(PDSProtoUserPushToken *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  userId = self->_userId;
  if (userId)
  {
    [dictionary setObject:userId forKey:@"user_id"];
  }

  userAuth = self->_userAuth;
  if (userAuth)
  {
    dictionaryRepresentation = [(PDSProtoUserAuth *)userAuth dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"user_auth"];
  }

  pushToken = self->_pushToken;
  if (pushToken)
  {
    [v4 setObject:pushToken forKey:@"push_token"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_userId)
  {
    [PDSProtoUserPushToken writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  if (self->_userAuth)
  {
    PBDataWriterWriteSubmessage();
  }

  if (!self->_pushToken)
  {
    [PDSProtoUserPushToken writeTo:];
  }

  PBDataWriterWriteStringField();
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setUserId:self->_userId];
  if (self->_userAuth)
  {
    [toCopy setUserAuth:?];
  }

  [toCopy setPushToken:self->_pushToken];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_userId copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(PDSProtoUserAuth *)self->_userAuth copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_pushToken copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((userId = self->_userId, !(userId | equalCopy[3])) || -[NSString isEqual:](userId, "isEqual:")) && ((userAuth = self->_userAuth, !(userAuth | equalCopy[2])) || -[PDSProtoUserAuth isEqual:](userAuth, "isEqual:")))
  {
    pushToken = self->_pushToken;
    if (pushToken | equalCopy[1])
    {
      v8 = [(NSString *)pushToken isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_userId hash];
  v4 = [(PDSProtoUserAuth *)self->_userAuth hash]^ v3;
  return v4 ^ [(NSString *)self->_pushToken hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[3])
  {
    [(PDSProtoUserPushToken *)self setUserId:?];
    fromCopy = v7;
  }

  userAuth = self->_userAuth;
  v6 = fromCopy[2];
  if (userAuth)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(PDSProtoUserAuth *)userAuth mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(PDSProtoUserPushToken *)self setUserAuth:?];
  }

  fromCopy = v7;
LABEL_9:
  if (fromCopy[1])
  {
    [(PDSProtoUserPushToken *)self setPushToken:?];
  }

  MEMORY[0x2821F96F8]();
}

@end