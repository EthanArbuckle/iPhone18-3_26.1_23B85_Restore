@interface NPKIDVRemoteDeviceProtoProvisionCredentialRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCredentialType:(id)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKIDVRemoteDeviceProtoProvisionCredentialRequest

- (int)StringAsCredentialType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"Identity"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKIDVRemoteDeviceProtoProvisionCredentialRequest;
  v4 = [(NPKIDVRemoteDeviceProtoProvisionCredentialRequest *)&v8 description];
  v5 = [(NPKIDVRemoteDeviceProtoProvisionCredentialRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
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

  [v3 setObject:v5 forKey:@"credentialType"];

  metadataData = self->_metadataData;
  if (metadataData)
  {
    [v3 setObject:metadataData forKey:@"metadataData"];
  }

  credentialIdentifier = self->_credentialIdentifier;
  if (credentialIdentifier)
  {
    [v3 setObject:credentialIdentifier forKey:@"credentialIdentifier"];
  }

  attestationsData = self->_attestationsData;
  if (attestationsData)
  {
    [v3 setObject:attestationsData forKey:@"attestationsData"];
  }

  supplementalData = self->_supplementalData;
  if (supplementalData)
  {
    [v3 setObject:supplementalData forKey:@"supplementalData"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  credentialType = self->_credentialType;
  v7 = v4;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[6] = self->_credentialType;
  v5 = v4;
  if (self->_metadataData)
  {
    [v4 setMetadataData:?];
    v4 = v5;
  }

  if (self->_credentialIdentifier)
  {
    [v5 setCredentialIdentifier:?];
    v4 = v5;
  }

  if (self->_attestationsData)
  {
    [v5 setAttestationsData:?];
    v4 = v5;
  }

  if (self->_supplementalData)
  {
    [v5 setSupplementalData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 24) = self->_credentialType;
  v6 = [(NSData *)self->_metadataData copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_credentialIdentifier copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSData *)self->_attestationsData copyWithZone:a3];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  v12 = [(NSData *)self->_supplementalData copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_credentialType == *(v4 + 6) && ((metadataData = self->_metadataData, !(metadataData | v4[4])) || -[NSData isEqual:](metadataData, "isEqual:")) && ((credentialIdentifier = self->_credentialIdentifier, !(credentialIdentifier | v4[2])) || -[NSString isEqual:](credentialIdentifier, "isEqual:")) && ((attestationsData = self->_attestationsData, !(attestationsData | v4[1])) || -[NSData isEqual:](attestationsData, "isEqual:")))
  {
    supplementalData = self->_supplementalData;
    if (supplementalData | v4[5])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_credentialType = v4[6];
  v5 = v4;
  if (*(v4 + 4))
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