@interface PBBProtoSendBuysOnWatchCredentials
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PBBProtoSendBuysOnWatchCredentials

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PBBProtoSendBuysOnWatchCredentials;
  v4 = [(PBBProtoSendBuysOnWatchCredentials *)&v8 description];
  v5 = [(PBBProtoSendBuysOnWatchCredentials *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  username = self->_username;
  if (username)
  {
    [v3 setObject:username forKey:@"username"];
  }

  password = self->_password;
  if (password)
  {
    [v4 setObject:password forKey:@"password"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_username)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_password)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_username)
  {
    [v4 setUsername:?];
    v4 = v5;
  }

  if (self->_password)
  {
    [v5 setPassword:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_username copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_password copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((username = self->_username, !(username | v4[2])) || -[NSString isEqual:](username, "isEqual:")))
  {
    password = self->_password;
    if (password | v4[1])
    {
      v7 = [(NSString *)password isEqual:?];
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
  v5 = v4;
  if (v4[2])
  {
    [(PBBProtoSendBuysOnWatchCredentials *)self setUsername:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(PBBProtoSendBuysOnWatchCredentials *)self setPassword:?];
    v4 = v5;
  }
}

@end