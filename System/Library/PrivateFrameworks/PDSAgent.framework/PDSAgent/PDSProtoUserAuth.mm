@interface PDSProtoUserAuth
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsUserauthOneof:(id)oneof;
- (int)userauthOneof;
- (unint64_t)hash;
- (void)clearOneofValuesForUserauthOneof;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setGsAuthToken:(id)token;
- (void)writeTo:(id)to;
@end

@implementation PDSProtoUserAuth

- (void)setGsAuthToken:(id)token
{
  tokenCopy = token;
  [(PDSProtoUserAuth *)self clearOneofValuesForUserauthOneof];
  *&self->_has |= 1u;
  self->_userauthOneof = 1;
  gsAuthToken = self->_gsAuthToken;
  self->_gsAuthToken = tokenCopy;
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

- (int)StringAsUserauthOneof:(id)oneof
{
  oneofCopy = oneof;
  if ([oneofCopy isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [oneofCopy isEqualToString:@"gsAuthToken"];
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
  dictionaryRepresentation = [(PDSProtoUserAuth *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  gsAuthToken = self->_gsAuthToken;
  if (gsAuthToken)
  {
    dictionaryRepresentation = [(PDSProtoGSTokenAuth *)gsAuthToken dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"gsAuthToken"];
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

    [dictionary setObject:v7 forKey:@"userauth_oneof"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (self->_gsAuthToken)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_userauthOneof;
    *(toCopy + 20) |= 1u;
  }

  if (self->_gsAuthToken)
  {
    v5 = toCopy;
    [toCopy setGsAuthToken:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_userauthOneof;
    *(v5 + 20) |= 1u;
  }

  v7 = [(PDSProtoGSTokenAuth *)self->_gsAuthToken copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 20);
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_userauthOneof != *(equalCopy + 4))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 20))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  gsAuthToken = self->_gsAuthToken;
  if (gsAuthToken | *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[5])
  {
    self->_userauthOneof = fromCopy[4];
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