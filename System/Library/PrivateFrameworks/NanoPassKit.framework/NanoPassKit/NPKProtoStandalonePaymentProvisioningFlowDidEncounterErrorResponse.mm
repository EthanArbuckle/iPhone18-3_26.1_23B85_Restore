@interface NPKProtoStandalonePaymentProvisioningFlowDidEncounterErrorResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowDidEncounterErrorResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowDidEncounterErrorResponse;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowDidEncounterErrorResponse *)&v8 description];
  v5 = [(NPKProtoStandalonePaymentProvisioningFlowDidEncounterErrorResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  responseHeader = self->_responseHeader;
  if (responseHeader)
  {
    v5 = [(NPKProtoStandaloneResponseHeader *)responseHeader dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"responseHeader"];
  }

  error = self->_error;
  if (error)
  {
    v7 = [(NPKProtoStandaloneError *)error dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"error"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_responseHeader)
  {
    [NPKProtoStandalonePaymentProvisioningFlowDidEncounterErrorResponse writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteSubmessage();
  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setResponseHeader:self->_responseHeader];
  if (self->_error)
  {
    [v4 setError:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NPKProtoStandaloneResponseHeader *)self->_responseHeader copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NPKProtoStandaloneError *)self->_error copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((responseHeader = self->_responseHeader, !(responseHeader | v4[2])) || -[NPKProtoStandaloneResponseHeader isEqual:](responseHeader, "isEqual:")))
  {
    error = self->_error;
    if (error | v4[1])
    {
      v7 = [(NPKProtoStandaloneError *)error isEqual:?];
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
  responseHeader = self->_responseHeader;
  v6 = v4[2];
  v9 = v4;
  if (responseHeader)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NPKProtoStandaloneResponseHeader *)responseHeader mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowDidEncounterErrorResponse *)self setResponseHeader:?];
  }

  v4 = v9;
LABEL_7:
  error = self->_error;
  v8 = v4[1];
  if (error)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(NPKProtoStandaloneError *)error mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowDidEncounterErrorResponse *)self setError:?];
  }

  v4 = v9;
LABEL_13:
}

@end