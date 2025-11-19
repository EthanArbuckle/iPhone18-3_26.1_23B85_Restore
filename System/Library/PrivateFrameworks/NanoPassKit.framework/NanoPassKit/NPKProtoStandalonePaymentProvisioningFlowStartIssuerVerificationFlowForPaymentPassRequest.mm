@interface NPKProtoStandalonePaymentProvisioningFlowStartIssuerVerificationFlowForPaymentPassRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandalonePaymentProvisioningFlowStartIssuerVerificationFlowForPaymentPassRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningFlowStartIssuerVerificationFlowForPaymentPassRequest;
  v4 = [(NPKProtoStandalonePaymentProvisioningFlowStartIssuerVerificationFlowForPaymentPassRequest *)&v8 description];
  v5 = [(NPKProtoStandalonePaymentProvisioningFlowStartIssuerVerificationFlowForPaymentPassRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  requestHeader = self->_requestHeader;
  if (requestHeader)
  {
    v5 = [(NPKProtoStandaloneRequestHeader *)requestHeader dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"requestHeader"];
  }

  serialNumber = self->_serialNumber;
  if (serialNumber)
  {
    [v3 setObject:serialNumber forKey:@"serialNumber"];
  }

  passTypeIdentifier = self->_passTypeIdentifier;
  if (passTypeIdentifier)
  {
    [v3 setObject:passTypeIdentifier forKey:@"passTypeIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_requestHeader)
  {
    [NPKProtoStandalonePaymentProvisioningFlowStartIssuerVerificationFlowForPaymentPassRequest writeTo:];
  }

  v5 = v4;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setRequestHeader:self->_requestHeader];
  if (self->_serialNumber)
  {
    [v4 setSerialNumber:?];
  }

  if (self->_passTypeIdentifier)
  {
    [v4 setPassTypeIdentifier:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NPKProtoStandaloneRequestHeader *)self->_requestHeader copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_serialNumber copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_passTypeIdentifier copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((requestHeader = self->_requestHeader, !(requestHeader | v4[2])) || -[NPKProtoStandaloneRequestHeader isEqual:](requestHeader, "isEqual:")) && ((serialNumber = self->_serialNumber, !(serialNumber | v4[3])) || -[NSString isEqual:](serialNumber, "isEqual:")))
  {
    passTypeIdentifier = self->_passTypeIdentifier;
    if (passTypeIdentifier | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  requestHeader = self->_requestHeader;
  v6 = v4[2];
  v7 = v4;
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

  v4 = v7;
LABEL_7:
  if (v4[3])
  {
    [(NPKProtoStandalonePaymentProvisioningFlowStartIssuerVerificationFlowForPaymentPassRequest *)self setSerialNumber:?];
    v4 = v7;
  }

  if (v4[1])
  {
    [(NPKProtoStandalonePaymentProvisioningFlowStartIssuerVerificationFlowForPaymentPassRequest *)self setPassTypeIdentifier:?];
    v4 = v7;
  }
}

@end