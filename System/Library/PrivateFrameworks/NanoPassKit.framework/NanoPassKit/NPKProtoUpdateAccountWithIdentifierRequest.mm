@interface NPKProtoUpdateAccountWithIdentifierRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoUpdateAccountWithIdentifierRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoUpdateAccountWithIdentifierRequest;
  v4 = [(NPKProtoUpdateAccountWithIdentifierRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoUpdateAccountWithIdentifierRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier)
  {
    [dictionary setObject:accountIdentifier forKey:@"accountIdentifier"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_accountIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier)
  {
    [to setAccountIdentifier:accountIdentifier];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_accountIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    accountIdentifier = self->_accountIdentifier;
    if (accountIdentifier | equalCopy[1])
    {
      v6 = [(NSString *)accountIdentifier isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(NPKProtoUpdateAccountWithIdentifierRequest *)self setAccountIdentifier:?];
  }
}

@end