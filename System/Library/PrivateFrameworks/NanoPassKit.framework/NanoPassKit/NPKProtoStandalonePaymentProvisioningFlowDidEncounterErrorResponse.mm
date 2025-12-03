@interface NPKProtoStandalonePaymentProvisioningFlowDidEncounterErrorResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowDidEncounterErrorResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowDidEncounterErrorResponse;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowDidEncounterErrorResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentProvisioningFlowDidEncounterErrorResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  responseHeader = self->_responseHeader;
  if (responseHeader)
  {
    dictionaryRepresentation = [(NPKProtoStandaloneResponseHeader *)responseHeader dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"responseHeader"];
  }

  error = self->_error;
  if (error)
  {
    dictionaryRepresentation2 = [(NPKProtoStandaloneError *)error dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"error"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_responseHeader)
  {
    [NPKProtoStandalonePaymentProvisioningFlowDidEncounterErrorResponse writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteSubmessage();
  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setResponseHeader:self->_responseHeader];
  if (self->_error)
  {
    [toCopy setError:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NPKProtoStandaloneResponseHeader *)self->_responseHeader copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NPKProtoStandaloneError *)self->_error copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((responseHeader = self->_responseHeader, !(responseHeader | equalCopy[2])) || -[NPKProtoStandaloneResponseHeader isEqual:](responseHeader, "isEqual:")))
  {
    error = self->_error;
    if (error | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  responseHeader = self->_responseHeader;
  v6 = fromCopy[2];
  v9 = fromCopy;
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

  fromCopy = v9;
LABEL_7:
  error = self->_error;
  v8 = fromCopy[1];
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

  fromCopy = v9;
LABEL_13:
}

@end