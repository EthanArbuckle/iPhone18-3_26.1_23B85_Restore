@interface NPKProtoStandalonePaymentProvisioningFlowStartIssuerVerificationFlowForPaymentPassRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowStartIssuerVerificationFlowForPaymentPassRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowStartIssuerVerificationFlowForPaymentPassRequest;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowStartIssuerVerificationFlowForPaymentPassRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentProvisioningFlowStartIssuerVerificationFlowForPaymentPassRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  requestHeader = self->_requestHeader;
  if (requestHeader)
  {
    dictionaryRepresentation = [(NPKProtoStandaloneRequestHeader *)requestHeader dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"requestHeader"];
  }

  serialNumber = self->_serialNumber;
  if (serialNumber)
  {
    [dictionary setObject:serialNumber forKey:@"serialNumber"];
  }

  passTypeIdentifier = self->_passTypeIdentifier;
  if (passTypeIdentifier)
  {
    [dictionary setObject:passTypeIdentifier forKey:@"passTypeIdentifier"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_requestHeader)
  {
    [NPKProtoStandalonePaymentProvisioningFlowStartIssuerVerificationFlowForPaymentPassRequest writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteSubmessage();
  if (self->_serialNumber)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_passTypeIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setRequestHeader:self->_requestHeader];
  if (self->_serialNumber)
  {
    [toCopy setSerialNumber:?];
  }

  if (self->_passTypeIdentifier)
  {
    [toCopy setPassTypeIdentifier:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NPKProtoStandaloneRequestHeader *)self->_requestHeader copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_serialNumber copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_passTypeIdentifier copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((requestHeader = self->_requestHeader, !(requestHeader | equalCopy[2])) || -[NPKProtoStandaloneRequestHeader isEqual:](requestHeader, "isEqual:")) && ((serialNumber = self->_serialNumber, !(serialNumber | equalCopy[3])) || -[NSString isEqual:](serialNumber, "isEqual:")))
  {
    passTypeIdentifier = self->_passTypeIdentifier;
    if (passTypeIdentifier | equalCopy[1])
    {
      v8 = [(NSString *)passTypeIdentifier isEqual:?];
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
  v3 = [(NPKProtoStandaloneRequestHeader *)self->_requestHeader hash];
  v4 = [(NSString *)self->_serialNumber hash]^ v3;
  return v4 ^ [(NSString *)self->_passTypeIdentifier hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  requestHeader = self->_requestHeader;
  v6 = fromCopy[2];
  v7 = fromCopy;
  if (requestHeader)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NPKProtoStandaloneRequestHeader *)requestHeader mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NPKProtoStandalonePaymentProvisioningFlowStartIssuerVerificationFlowForPaymentPassRequest *)self setRequestHeader:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[3])
  {
    [(NPKProtoStandalonePaymentProvisioningFlowStartIssuerVerificationFlowForPaymentPassRequest *)self setSerialNumber:?];
    fromCopy = v7;
  }

  if (fromCopy[1])
  {
    [(NPKProtoStandalonePaymentProvisioningFlowStartIssuerVerificationFlowForPaymentPassRequest *)self setPassTypeIdentifier:?];
    fromCopy = v7;
  }
}

@end