@interface PDSProtoUserAuth
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsUserauthOneof:(id)a3;
- (int)userauthOneof;
- (unint64_t)hash;
- (void)clearOneofValuesForUserauthOneof;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setGsAuthToken:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDSProtoUserAuth

- (void)setGsAuthToken:(id)a3
{
  v4 = a3;
  [(PDSProtoUserAuth *)self clearOneofValuesForUserauthOneof];
  *&self->_has |= 1u;
  self->_userauthOneof = 1;
  gsAuthToken = self->_gsAuthToken;
  self->_gsAuthToken = v4;
}

- (int)userauthOneof
{
  if (*&self->_has)
  {
    return self->_userauthOneof;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsUserauthOneof:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"gsAuthToken"];
  }

  return v4;
}

- (void)clearOneofValuesForUserauthOneof
{
  *&self->_has &= ~1u;
  self->_userauthOneof = 0;
  gsAuthToken = self->_gsAuthToken;
  self->_gsAuthToken = 0;
  MEMORY[0x2821F96F8]();
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PDSProtoUserAuth;
  v4 = [(PDSProtoUserAuth *)&v8 description];
  v5 = [(PDSProtoUserAuth *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  gsAuthToken = self->_gsAuthToken;
  if (gsAuthToken)
  {
    v5 = [(PDSProtoGSTokenAuth *)gsAuthToken dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"gsAuthToken"];
  }

  if (*&self->_has)
  {
    userauthOneof = self->_userauthOneof;
    if (userauthOneof)
    {
      if (userauthOneof == 1)
      {
        v7 = @"gsAuthToken";
      }

      else
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_userauthOneof];
      }
    }

    else
    {
      v7 = @"PBUNSET";
    }

    [v3 setObject:v7 forKey:@"userauth_oneof"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (self->_gsAuthToken)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_userauthOneof;
    *(v4 + 20) |= 1u;
  }

  if (self->_gsAuthToken)
  {
    v5 = v4;
    [v4 setGsAuthToken:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_userauthOneof;
    *(v5 + 20) |= 1u;
  }

  v7 = [(PDSProtoGSTokenAuth *)self->_gsAuthToken copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 20);
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_userauthOneof != *(v4 + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 20))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  gsAuthToken = self->_gsAuthToken;
  if (gsAuthToken | *(v4 + 1))
  {
    v7 = [(PDSProtoGSTokenAuth *)gsAuthToken isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_userauthOneof;
  }

  else
  {
    v2 = 0;
  }

  return [(PDSProtoGSTokenAuth *)self->_gsAuthToken hash]^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[5])
  {
    self->_userauthOneof = v4[4];
    *&self->_has |= 1u;
  }

  gsAuthToken = self->_gsAuthToken;
  v7 = *(v5 + 1);
  if (gsAuthToken)
  {
    if (v7)
    {
      [(PDSProtoGSTokenAuth *)gsAuthToken mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(PDSProtoUserAuth *)self setGsAuthToken:?];
  }

  MEMORY[0x2821F96F8]();
}

@end