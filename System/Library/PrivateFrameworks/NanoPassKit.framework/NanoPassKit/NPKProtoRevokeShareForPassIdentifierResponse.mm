@interface NPKProtoRevokeShareForPassIdentifierResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoRevokeShareForPassIdentifierResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoRevokeShareForPassIdentifierResponse;
  v4 = [(NPKProtoRevokeShareForPassIdentifierResponse *)&v8 description];
  v5 = [(NPKProtoRevokeShareForPassIdentifierResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_success];
  [v3 setObject:v4 forKey:@"success"];

  errorData = self->_errorData;
  if (errorData)
  {
    [v3 setObject:errorData forKey:@"errorData"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  success = self->_success;
  v6 = v4;
  PBDataWriterWriteBOOLField();
  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  *(a3 + 16) = self->_success;
  errorData = self->_errorData;
  if (errorData)
  {
    [a3 setErrorData:errorData];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 16) = self->_success;
  v6 = [(NSData *)self->_errorData copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_4;
  }

  v5 = *(v4 + 16);
  if (self->_success)
  {
    if ((*(v4 + 16) & 1) == 0)
    {
LABEL_4:
      v6 = 0;
      goto LABEL_5;
    }
  }

  else if (*(v4 + 16))
  {
    goto LABEL_4;
  }

  errorData = self->_errorData;
  if (errorData | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  self->_success = *(a3 + 16);
  if (*(a3 + 1))
  {
    [(NPKProtoRevokeShareForPassIdentifierResponse *)self setErrorData:?];
  }
}

@end