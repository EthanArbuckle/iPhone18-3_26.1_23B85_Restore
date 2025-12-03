@interface NPKProtoCarKeyUpdateTrackingAttestationRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoCarKeyUpdateTrackingAttestationRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoCarKeyUpdateTrackingAttestationRequest;
  v4 = [(NPKProtoCarKeyUpdateTrackingAttestationRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoCarKeyUpdateTrackingAttestationRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  attestation = self->_attestation;
  if (attestation)
  {
    [dictionary setObject:attestation forKey:@"attestation"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_attestation)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_credentialData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_containerData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_attestation)
  {
    [toCopy setAttestation:?];
    toCopy = v5;
  }

  if (self->_credentialData)
  {
    [v5 setCredentialData:?];
    toCopy = v5;
  }

  if (self->_containerData)
  {
    [v5 setContainerData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_attestation copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_credentialData copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_containerData copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((attestation = self->_attestation, !(attestation | equalCopy[1])) || -[NSData isEqual:](attestation, "isEqual:")) && ((credentialData = self->_credentialData, !(credentialData | equalCopy[3])) || -[NSData isEqual:](credentialData, "isEqual:")))
  {
    containerData = self->_containerData;
    if (containerData | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(NPKProtoCarKeyUpdateTrackingAttestationRequest *)self setAttestation:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(NPKProtoCarKeyUpdateTrackingAttestationRequest *)self setCredentialData:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(NPKProtoCarKeyUpdateTrackingAttestationRequest *)self setContainerData:?];
    fromCopy = v5;
  }
}

@end