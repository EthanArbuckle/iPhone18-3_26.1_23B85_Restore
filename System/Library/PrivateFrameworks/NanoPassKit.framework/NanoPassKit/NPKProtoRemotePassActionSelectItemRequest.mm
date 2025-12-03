@interface NPKProtoRemotePassActionSelectItemRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoRemotePassActionSelectItemRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoRemotePassActionSelectItemRequest;
  v4 = [(NPKProtoRemotePassActionSelectItemRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoRemotePassActionSelectItemRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  requestUniqueID = self->_requestUniqueID;
  if (requestUniqueID)
  {
    [dictionary setObject:requestUniqueID forKey:@"requestUniqueID"];
  }

  planIdentifier = self->_planIdentifier;
  if (planIdentifier)
  {
    [v4 setObject:planIdentifier forKey:@"planIdentifier"];
  }

  planLabel = self->_planLabel;
  if (planLabel)
  {
    [v4 setObject:planLabel forKey:@"planLabel"];
  }

  planDetailLabel = self->_planDetailLabel;
  if (planDetailLabel)
  {
    [v4 setObject:planDetailLabel forKey:@"planDetailLabel"];
  }

  startDateData = self->_startDateData;
  if (startDateData)
  {
    [v4 setObject:startDateData forKey:@"startDateData"];
  }

  expiryDateData = self->_expiryDateData;
  if (expiryDateData)
  {
    [v4 setObject:expiryDateData forKey:@"expiryDateData"];
  }

  paymentPassActionData = self->_paymentPassActionData;
  if (paymentPassActionData)
  {
    [v4 setObject:paymentPassActionData forKey:@"paymentPassActionData"];
  }

  deviceIdentifier = self->_deviceIdentifier;
  if (deviceIdentifier)
  {
    [v4 setObject:deviceIdentifier forKey:@"deviceIdentifier"];
  }

  passTypeIdentifier = self->_passTypeIdentifier;
  if (passTypeIdentifier)
  {
    [v4 setObject:passTypeIdentifier forKey:@"passTypeIdentifier"];
  }

  passSerialNumber = self->_passSerialNumber;
  if (passSerialNumber)
  {
    [v4 setObject:passSerialNumber forKey:@"passSerialNumber"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_requestUniqueID)
  {
    [NPKProtoRemotePassActionSelectItemRequest writeTo:];
  }

  v6 = toCopy;
  PBDataWriterWriteStringField();
  if (self->_planIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_planLabel)
  {
    PBDataWriterWriteStringField();
  }

  v5 = v6;
  if (self->_planDetailLabel)
  {
    PBDataWriterWriteStringField();
    v5 = v6;
  }

  if (self->_startDateData)
  {
    PBDataWriterWriteDataField();
    v5 = v6;
  }

  if (self->_expiryDateData)
  {
    PBDataWriterWriteDataField();
    v5 = v6;
  }

  if (self->_paymentPassActionData)
  {
    PBDataWriterWriteDataField();
    v5 = v6;
  }

  if (self->_deviceIdentifier)
  {
    PBDataWriterWriteStringField();
    v5 = v6;
  }

  if (self->_passTypeIdentifier)
  {
    PBDataWriterWriteStringField();
    v5 = v6;
  }

  if (self->_passSerialNumber)
  {
    PBDataWriterWriteStringField();
    v5 = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setRequestUniqueID:self->_requestUniqueID];
  if (self->_planIdentifier)
  {
    [toCopy setPlanIdentifier:?];
  }

  if (self->_planLabel)
  {
    [toCopy setPlanLabel:?];
  }

  v4 = toCopy;
  if (self->_planDetailLabel)
  {
    [toCopy setPlanDetailLabel:?];
    v4 = toCopy;
  }

  if (self->_startDateData)
  {
    [toCopy setStartDateData:?];
    v4 = toCopy;
  }

  if (self->_expiryDateData)
  {
    [toCopy setExpiryDateData:?];
    v4 = toCopy;
  }

  if (self->_paymentPassActionData)
  {
    [toCopy setPaymentPassActionData:?];
    v4 = toCopy;
  }

  if (self->_deviceIdentifier)
  {
    [toCopy setDeviceIdentifier:?];
    v4 = toCopy;
  }

  if (self->_passTypeIdentifier)
  {
    [toCopy setPassTypeIdentifier:?];
    v4 = toCopy;
  }

  if (self->_passSerialNumber)
  {
    [toCopy setPassSerialNumber:?];
    v4 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_requestUniqueID copyWithZone:zone];
  v7 = v5[9];
  v5[9] = v6;

  v8 = [(NSString *)self->_planIdentifier copyWithZone:zone];
  v9 = v5[7];
  v5[7] = v8;

  v10 = [(NSString *)self->_planLabel copyWithZone:zone];
  v11 = v5[8];
  v5[8] = v10;

  v12 = [(NSString *)self->_planDetailLabel copyWithZone:zone];
  v13 = v5[6];
  v5[6] = v12;

  v14 = [(NSData *)self->_startDateData copyWithZone:zone];
  v15 = v5[10];
  v5[10] = v14;

  v16 = [(NSData *)self->_expiryDateData copyWithZone:zone];
  v17 = v5[2];
  v5[2] = v16;

  v18 = [(NSData *)self->_paymentPassActionData copyWithZone:zone];
  v19 = v5[5];
  v5[5] = v18;

  v20 = [(NSString *)self->_deviceIdentifier copyWithZone:zone];
  v21 = v5[1];
  v5[1] = v20;

  v22 = [(NSString *)self->_passTypeIdentifier copyWithZone:zone];
  v23 = v5[4];
  v5[4] = v22;

  v24 = [(NSString *)self->_passSerialNumber copyWithZone:zone];
  v25 = v5[3];
  v5[3] = v24;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  requestUniqueID = self->_requestUniqueID;
  if (requestUniqueID | equalCopy[9])
  {
    if (![(NSString *)requestUniqueID isEqual:?])
    {
      goto LABEL_22;
    }
  }

  planIdentifier = self->_planIdentifier;
  if (planIdentifier | equalCopy[7] && ![(NSString *)planIdentifier isEqual:?])
  {
    goto LABEL_22;
  }

  if (((planLabel = self->_planLabel, !(planLabel | equalCopy[8])) || [(NSString *)planLabel isEqual:?]) && ((planDetailLabel = self->_planDetailLabel, !(planDetailLabel | equalCopy[6])) || [(NSString *)planDetailLabel isEqual:?]) && ((startDateData = self->_startDateData, !(startDateData | equalCopy[10])) || [(NSData *)startDateData isEqual:?]) && ((expiryDateData = self->_expiryDateData, !(expiryDateData | equalCopy[2])) || [(NSData *)expiryDateData isEqual:?]) && ((paymentPassActionData = self->_paymentPassActionData, !(paymentPassActionData | equalCopy[5])) || [(NSData *)paymentPassActionData isEqual:?]) && ((deviceIdentifier = self->_deviceIdentifier, !(deviceIdentifier | equalCopy[1])) || [(NSString *)deviceIdentifier isEqual:?]) && ((passTypeIdentifier = self->_passTypeIdentifier, !(passTypeIdentifier | equalCopy[4])) || [(NSString *)passTypeIdentifier isEqual:?]))
  {
    passSerialNumber = self->_passSerialNumber;
    if (passSerialNumber | equalCopy[3])
    {
      v15 = [(NSString *)passSerialNumber isEqual:?];
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
LABEL_22:
    v15 = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_requestUniqueID hash];
  v4 = [(NSString *)self->_planIdentifier hash]^ v3;
  v5 = [(NSString *)self->_planLabel hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_planDetailLabel hash];
  v7 = [(NSData *)self->_startDateData hash];
  v8 = v7 ^ [(NSData *)self->_expiryDateData hash];
  v9 = v6 ^ v8 ^ [(NSData *)self->_paymentPassActionData hash];
  v10 = [(NSString *)self->_deviceIdentifier hash];
  v11 = v10 ^ [(NSString *)self->_passTypeIdentifier hash];
  return v9 ^ v11 ^ [(NSString *)self->_passSerialNumber hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[9])
  {
    [(NPKProtoRemotePassActionSelectItemRequest *)self setRequestUniqueID:?];
  }

  if (fromCopy[7])
  {
    [(NPKProtoRemotePassActionSelectItemRequest *)self setPlanIdentifier:?];
  }

  if (fromCopy[8])
  {
    [(NPKProtoRemotePassActionSelectItemRequest *)self setPlanLabel:?];
  }

  if (fromCopy[6])
  {
    [(NPKProtoRemotePassActionSelectItemRequest *)self setPlanDetailLabel:?];
  }

  if (fromCopy[10])
  {
    [(NPKProtoRemotePassActionSelectItemRequest *)self setStartDateData:?];
  }

  if (fromCopy[2])
  {
    [(NPKProtoRemotePassActionSelectItemRequest *)self setExpiryDateData:?];
  }

  if (fromCopy[5])
  {
    [(NPKProtoRemotePassActionSelectItemRequest *)self setPaymentPassActionData:?];
  }

  if (fromCopy[1])
  {
    [(NPKProtoRemotePassActionSelectItemRequest *)self setDeviceIdentifier:?];
  }

  if (fromCopy[4])
  {
    [(NPKProtoRemotePassActionSelectItemRequest *)self setPassTypeIdentifier:?];
  }

  if (fromCopy[3])
  {
    [(NPKProtoRemotePassActionSelectItemRequest *)self setPassSerialNumber:?];
  }
}

@end