@interface NPKIDVRemoteDeviceProtoNotificationRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDocumentType:(id)a3;
- (int)StringAsNotificationType:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKIDVRemoteDeviceProtoNotificationRequest

- (int)StringAsNotificationType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = -1;
  }

  else if ([v3 isEqualToString:@"ActionRequired"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"VerificationCodeRequired"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ProvisioningRejected"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"UnableToAddCredential"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"FollowVerificationInstructionRequired"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"TryAgainVerificationCodeRequired"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"VerificationETA"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"LivenessStepUpRequired"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"ProofingExpired"])
  {
    v4 = 8;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (int)StringAsDocumentType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = -1;
  }

  else if ([v3 isEqualToString:@"DriverLicense"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"StateID"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PhotoID"])
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
  v5 = [(NPKIDVRemoteDeviceProtoNotificationRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = self->_notificationType + 1;
  if (v4 >= 0xA)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_notificationType];
  }

  else
  {
    v5 = off_2799455A0[v4];
  }

  [v3 setObject:v5 forKey:@"notificationType"];

  v6 = self->_documentType + 1;
  if (v6 >= 4)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_documentType];
  }

  else
  {
    v7 = off_2799455F0[v6];
  }

  [v3 setObject:v7 forKey:@"DocumentType"];

  issuerName = self->_issuerName;
  if (issuerName)
  {
    [v3 setObject:issuerName forKey:@"issuerName"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  notificationType = self->_notificationType;
  PBDataWriterWriteInt32Field();
  documentType = self->_documentType;
  PBDataWriterWriteInt32Field();
  if (self->_issuerName)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  *(a3 + 6) = self->_notificationType;
  *(a3 + 2) = self->_documentType;
  issuerName = self->_issuerName;
  if (issuerName)
  {
    [a3 setIssuerName:issuerName];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 24) = self->_notificationType;
  *(v5 + 8) = self->_documentType;
  v6 = [(NSString *)self->_issuerName copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_notificationType == *(v4 + 6) && self->_documentType == *(v4 + 2))
  {
    issuerName = self->_issuerName;
    if (issuerName | v4[2])
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

- (void)mergeFrom:(id)a3
{
  self->_notificationType = *(a3 + 6);
  self->_documentType = *(a3 + 2);
  if (*(a3 + 2))
  {
    [(NPKIDVRemoteDeviceProtoNotificationRequest *)self setIssuerName:?];
  }
}

@end