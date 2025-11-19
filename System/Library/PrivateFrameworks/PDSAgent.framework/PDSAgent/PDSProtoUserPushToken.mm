@interface PDSProtoUserPushToken
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDSProtoUserPushToken

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PDSProtoUserPushToken;
  v4 = [(PDSProtoUserPushToken *)&v8 description];
  v5 = [(PDSProtoUserPushToken *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  userId = self->_userId;
  if (userId)
  {
    [v3 setObject:userId forKey:@"user_id"];
  }

  userAuth = self->_userAuth;
  if (userAuth)
  {
    v7 = [(PDSProtoUserAuth *)userAuth dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"user_auth"];
  }

  pushToken = self->_pushToken;
  if (pushToken)
  {
    [v4 setObject:pushToken forKey:@"push_token"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_userId)
  {
    [PDSProtoUserPushToken writeTo:];
  }

  v5 = v4;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setUserId:self->_userId];
  if (self->_userAuth)
  {
    [v4 setUserAuth:?];
  }

  [v4 setPushToken:self->_pushToken];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_userId copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(PDSProtoUserAuth *)self->_userAuth copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_pushToken copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((userId = self->_userId, !(userId | v4[3])) || -[NSString isEqual:](userId, "isEqual:")) && ((userAuth = self->_userAuth, !(userAuth | v4[2])) || -[PDSProtoUserAuth isEqual:](userAuth, "isEqual:")))
  {
    pushToken = self->_pushToken;
    if (pushToken | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[3])
  {
    [(PDSProtoUserPushToken *)self setUserId:?];
    v4 = v7;
  }

  userAuth = self->_userAuth;
  v6 = v4[2];
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

  v4 = v7;
LABEL_9:
  if (v4[1])
  {
    [(PDSProtoUserPushToken *)self setPushToken:?];
  }

  MEMORY[0x2821F96F8]();
}

@end