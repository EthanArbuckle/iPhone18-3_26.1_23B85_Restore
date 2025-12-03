@interface NPKProtoRevokeShareForPassIdentifierResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoRevokeShareForPassIdentifierResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoRevokeShareForPassIdentifierResponse;
  v4 = [(NPKProtoRevokeShareForPassIdentifierResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoRevokeShareForPassIdentifierResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_success];
  [dictionary setObject:v4 forKey:@"success"];

  errorData = self->_errorData;
  if (errorData)
  {
    [dictionary setObject:errorData forKey:@"errorData"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  success = self->_success;
  v6 = toCopy;
  PBDataWriterWriteBOOLField();
  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  *(to + 16) = self->_success;
  errorData = self->_errorData;
  if (errorData)
  {
    [to setErrorData:errorData];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 16) = self->_success;
  v6 = [(NSData *)self->_errorData copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_4;
  }

  v5 = *(equalCopy + 16);
  if (self->_success)
  {
    if ((*(equalCopy + 16) & 1) == 0)
    {
LABEL_4:
      v6 = 0;
      goto LABEL_5;
    }
  }

  else if (*(equalCopy + 16))
  {
    goto LABEL_4;
  }

  errorData = self->_errorData;
  if (errorData | *(equalCopy + 1))
  {
    v6 = [(NSData *)errorData isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_5:

  return v6;
}

- (void)mergeFrom:(id)from
{
  self->_success = *(from + 16);
  if (*(from + 1))
  {
    [(NPKProtoRevokeShareForPassIdentifierResponse *)self setErrorData:?];
  }
}

@end