@interface NPKProtoCarKeyUpdateTrackingAttestationRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoCarKeyUpdateTrackingAttestationRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoCarKeyUpdateTrackingAttestationRequest;
  v4 = [(NPKProtoCarKeyUpdateTrackingAttestationRequest *)&v8 description];
  v5 = [(NPKProtoCarKeyUpdateTrackingAttestationRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  attestation = self->_attestation;
  if (attestation)
  {
    [v3 setObject:attestation forKey:@"attestation"];
  }

  credentialData = self->_credentialData;
  if (credentialData)
  {
    [v4 setObject:credentialData forKey:@"credentialData"];
  }

  containerData = self->_containerData;
  if (containerData)
  {
    [v4 setObject:containerData forKey:@"containerData"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_attestation)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_credentialData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_containerData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_attestation)
  {
    [v4 setAttestation:?];
    v4 = v5;
  }

  if (self->_credentialData)
  {
    [v5 setCredentialData:?];
    v4 = v5;
  }

  if (self->_containerData)
  {
    [v5 setContainerData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_attestation copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_credentialData copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_containerData copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((attestation = self->_attestation, !(attestation | v4[1])) || -[NSData isEqual:](attestation, "isEqual:")) && ((credentialData = self->_credentialData, !(credentialData | v4[3])) || -[NSData isEqual:](credentialData, "isEqual:")))
  {
    containerData = self->_containerData;
    if (containerData | v4[2])
    {
      v8 = [(NSData *)containerData isEqual:?];
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
  v3 = [(NSData *)self->_attestation hash];
  v4 = [(NSData *)self->_credentialData hash]^ v3;
  return v4 ^ [(NSData *)self->_containerData hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(NPKProtoCarKeyUpdateTrackingAttestationRequest *)self setAttestation:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(NPKProtoCarKeyUpdateTrackingAttestationRequest *)self setCredentialData:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(NPKProtoCarKeyUpdateTrackingAttestationRequest *)self setContainerData:?];
    v4 = v5;
  }
}

@end