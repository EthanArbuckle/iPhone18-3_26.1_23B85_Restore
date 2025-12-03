@interface NPKIDVRemoteDeviceProtoNotificationRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDocumentType:(id)type;
- (int)StringAsNotificationType:(id)type;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKIDVRemoteDeviceProtoNotificationRequest

- (int)StringAsNotificationType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = -1;
  }

  else if ([typeCopy isEqualToString:@"ActionRequired"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"VerificationCodeRequired"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"ProvisioningRejected"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"UnableToAddCredential"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"FollowVerificationInstructionRequired"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"TryAgainVerificationCodeRequired"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"VerificationETA"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"LivenessStepUpRequired"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"ProofingExpired"])
  {
    v4 = 8;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (int)StringAsDocumentType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = -1;
  }

  else if ([typeCopy isEqualToString:@"DriverLicense"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"StateID"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"PhotoID"])
  {
    v4 = 2;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKIDVRemoteDeviceProtoNotificationRequest;
  v4 = [(NPKIDVRemoteDeviceProtoNotificationRequest *)&v8 description];
  dictionaryRepresentation = [(NPKIDVRemoteDeviceProtoNotificationRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = self->_notificationType + 1;
  if (v4 >= 0xA)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_notificationType];
  }

  else
  {
    v5 = off_2799455A0[v4];
  }

  [dictionary setObject:v5 forKey:@"notificationType"];

  v6 = self->_documentType + 1;
  if (v6 >= 4)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_documentType];
  }

  else
  {
    v7 = off_2799455F0[v6];
  }

  [dictionary setObject:v7 forKey:@"DocumentType"];

  issuerName = self->_issuerName;
  if (issuerName)
  {
    [dictionary setObject:issuerName forKey:@"issuerName"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  notificationType = self->_notificationType;
  PBDataWriterWriteInt32Field();
  documentType = self->_documentType;
  PBDataWriterWriteInt32Field();
  if (self->_issuerName)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  *(to + 6) = self->_notificationType;
  *(to + 2) = self->_documentType;
  issuerName = self->_issuerName;
  if (issuerName)
  {
    [to setIssuerName:issuerName];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 24) = self->_notificationType;
  *(v5 + 8) = self->_documentType;
  v6 = [(NSString *)self->_issuerName copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_notificationType == *(equalCopy + 6) && self->_documentType == *(equalCopy + 2))
  {
    issuerName = self->_issuerName;
    if (issuerName | equalCopy[2])
    {
      v6 = [(NSString *)issuerName isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  self->_notificationType = *(from + 6);
  self->_documentType = *(from + 2);
  if (*(from + 2))
  {
    [(NPKIDVRemoteDeviceProtoNotificationRequest *)self setIssuerName:?];
  }
}

@end