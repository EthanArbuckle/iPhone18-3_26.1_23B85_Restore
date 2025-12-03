@interface NPKProtoCarKeySetAccountAttestationRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoCarKeySetAccountAttestationRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoCarKeySetAccountAttestationRequest;
  v4 = [(NPKProtoCarKeySetAccountAttestationRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoCarKeySetAccountAttestationRequest *)self dictionaryRepresentation];
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
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_attestation copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_credentialData copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((attestation = self->_attestation, !(attestation | equalCopy[1])) || -[NSData isEqual:](attestation, "isEqual:")))
  {
    credentialData = self->_credentialData;
    if (credentialData | equalCopy[2])
    {
      v7 = [(NSData *)credentialData isEqual:?];
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
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(NPKProtoCarKeySetAccountAttestationRequest *)self setAttestation:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(NPKProtoCarKeySetAccountAttestationRequest *)self setCredentialData:?];
    fromCopy = v5;
  }
}

@end