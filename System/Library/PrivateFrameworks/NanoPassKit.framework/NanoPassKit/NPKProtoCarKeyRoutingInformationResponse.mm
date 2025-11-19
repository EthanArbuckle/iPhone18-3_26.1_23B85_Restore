@interface NPKProtoCarKeyRoutingInformationResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoCarKeyRoutingInformationResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoCarKeyRoutingInformationResponse;
  v4 = [(NPKProtoCarKeyRoutingInformationResponse *)&v8 description];
  v5 = [(NPKProtoCarKeyRoutingInformationResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  routingInformation = self->_routingInformation;
  if (routingInformation)
  {
    [v3 setObject:routingInformation forKey:@"routingInformation"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [v4 setObject:errorData forKey:@"errorData"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_routingInformation)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_routingInformation)
  {
    [v4 setRoutingInformation:?];
    v4 = v5;
  }

  if (self->_errorData)
  {
    [v5 setErrorData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_routingInformation copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_errorData copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((routingInformation = self->_routingInformation, !(routingInformation | v4[2])) || -[NSString isEqual:](routingInformation, "isEqual:")))
  {
    errorData = self->_errorData;
    if (errorData | v4[1])
    {
      v7 = [(NSData *)errorData isEqual:?];
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
    [(NPKProtoCarKeyRoutingInformationResponse *)self setRoutingInformation:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(NPKProtoCarKeyRoutingInformationResponse *)self setErrorData:?];
    v4 = v5;
  }
}

@end