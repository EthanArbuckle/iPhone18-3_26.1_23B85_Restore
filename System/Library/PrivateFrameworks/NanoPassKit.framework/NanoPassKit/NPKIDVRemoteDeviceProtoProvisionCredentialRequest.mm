@interface NPKIDVRemoteDeviceProtoProvisionCredentialRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCredentialType:(id)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKIDVRemoteDeviceProtoProvisionCredentialRequest

- (int)StringAsCredentialType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"Identity"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKIDVRemoteDeviceProtoProvisionCredentialRequest;
  v4 = [(NPKIDVRemoteDeviceProtoProvisionCredentialRequest *)&v8 description];
  dictionaryRepresentation = [(NPKIDVRemoteDeviceProtoProvisionCredentialRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  credentialType = self->_credentialType;
  if (credentialType)
  {
    if (credentialType == 1)
    {
      v5 = @"Identity";
    }

    else
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_credentialType];
    }
  }

  else
  {
    v5 = @"Unknown";
  }

  [dictionary setObject:v5 forKey:@"credentialType"];

  metadataData = self->_metadataData;
  if (metadataData)
  {
    [dictionary setObject:metadataData forKey:@"metadataData"];
  }

  credentialIdentifier = self->_credentialIdentifier;
  if (credentialIdentifier)
  {
    [dictionary setObject:credentialIdentifier forKey:@"credentialIdentifier"];
  }

  attestationsData = self->_attestationsData;
  if (attestationsData)
  {
    [dictionary setObject:attestationsData forKey:@"attestationsData"];
  }

  supplementalData = self->_supplementalData;
  if (supplementalData)
  {
    [dictionary setObject:supplementalData forKey:@"supplementalData"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  credentialType = self->_credentialType;
  v7 = toCopy;
  PBDataWriterWriteInt32Field();
  if (self->_metadataData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_credentialIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v6 = v7;
  if (self->_attestationsData)
  {
    PBDataWriterWriteDataField();
    v6 = v7;
  }

  if (self->_supplementalData)
  {
    PBDataWriterWriteDataField();
    v6 = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[6] = self->_credentialType;
  v5 = toCopy;
  if (self->_metadataData)
  {
    [toCopy setMetadataData:?];
    toCopy = v5;
  }

  if (self->_credentialIdentifier)
  {
    [v5 setCredentialIdentifier:?];
    toCopy = v5;
  }

  if (self->_attestationsData)
  {
    [v5 setAttestationsData:?];
    toCopy = v5;
  }

  if (self->_supplementalData)
  {
    [v5 setSupplementalData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 24) = self->_credentialType;
  v6 = [(NSData *)self->_metadataData copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_credentialIdentifier copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSData *)self->_attestationsData copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  v12 = [(NSData *)self->_supplementalData copyWithZone:zone];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_credentialType == *(equalCopy + 6) && ((metadataData = self->_metadataData, !(metadataData | equalCopy[4])) || -[NSData isEqual:](metadataData, "isEqual:")) && ((credentialIdentifier = self->_credentialIdentifier, !(credentialIdentifier | equalCopy[2])) || -[NSString isEqual:](credentialIdentifier, "isEqual:")) && ((attestationsData = self->_attestationsData, !(attestationsData | equalCopy[1])) || -[NSData isEqual:](attestationsData, "isEqual:")))
  {
    supplementalData = self->_supplementalData;
    if (supplementalData | equalCopy[5])
    {
      v9 = [(NSData *)supplementalData isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = 2654435761 * self->_credentialType;
  v4 = [(NSData *)self->_metadataData hash];
  v5 = v4 ^ [(NSString *)self->_credentialIdentifier hash];
  v6 = v5 ^ [(NSData *)self->_attestationsData hash];
  return v6 ^ [(NSData *)self->_supplementalData hash]^ v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_credentialType = fromCopy[6];
  v5 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(NPKIDVRemoteDeviceProtoProvisionCredentialRequest *)self setMetadataData:?];
  }

  if (v5[2])
  {
    [(NPKIDVRemoteDeviceProtoProvisionCredentialRequest *)self setCredentialIdentifier:?];
  }

  if (v5[1])
  {
    [(NPKIDVRemoteDeviceProtoProvisionCredentialRequest *)self setAttestationsData:?];
  }

  if (v5[5])
  {
    [(NPKIDVRemoteDeviceProtoProvisionCredentialRequest *)self setSupplementalData:?];
  }
}

@end