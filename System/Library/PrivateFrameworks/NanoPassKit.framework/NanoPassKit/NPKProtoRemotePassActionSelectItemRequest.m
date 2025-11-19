@interface NPKProtoRemotePassActionSelectItemRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoRemotePassActionSelectItemRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoRemotePassActionSelectItemRequest;
  v4 = [(NPKProtoRemotePassActionSelectItemRequest *)&v8 description];
  v5 = [(NPKProtoRemotePassActionSelectItemRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  requestUniqueID = self->_requestUniqueID;
  if (requestUniqueID)
  {
    [v3 setObject:requestUniqueID forKey:@"requestUniqueID"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_requestUniqueID)
  {
    [NPKProtoRemotePassActionSelectItemRequest writeTo:];
  }

  v6 = v4;
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

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setRequestUniqueID:self->_requestUniqueID];
  if (self->_planIdentifier)
  {
    [v5 setPlanIdentifier:?];
  }

  if (self->_planLabel)
  {
    [v5 setPlanLabel:?];
  }

  v4 = v5;
  if (self->_planDetailLabel)
  {
    [v5 setPlanDetailLabel:?];
    v4 = v5;
  }

  if (self->_startDateData)
  {
    [v5 setStartDateData:?];
    v4 = v5;
  }

  if (self->_expiryDateData)
  {
    [v5 setExpiryDateData:?];
    v4 = v5;
  }

  if (self->_paymentPassActionData)
  {
    [v5 setPaymentPassActionData:?];
    v4 = v5;
  }

  if (self->_deviceIdentifier)
  {
    [v5 setDeviceIdentifier:?];
    v4 = v5;
  }

  if (self->_passTypeIdentifier)
  {
    [v5 setPassTypeIdentifier:?];
    v4 = v5;
  }

  if (self->_passSerialNumber)
  {
    [v5 setPassSerialNumber:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_requestUniqueID copyWithZone:a3];
  v7 = v5[9];
  v5[9] = v6;

  v8 = [(NSString *)self->_planIdentifier copyWithZone:a3];
  v9 = v5[7];
  v5[7] = v8;

  v10 = [(NSString *)self->_planLabel copyWithZone:a3];
  v11 = v5[8];
  v5[8] = v10;

  v12 = [(NSString *)self->_planDetailLabel copyWithZone:a3];
  v13 = v5[6];
  v5[6] = v12;

  v14 = [(NSData *)self->_startDateData copyWithZone:a3];
  v15 = v5[10];
  v5[10] = v14;

  v16 = [(NSData *)self->_expiryDateData copyWithZone:a3];
  v17 = v5[2];
  v5[2] = v16;

  v18 = [(NSData *)self->_paymentPassActionData copyWithZone:a3];
  v19 = v5[5];
  v5[5] = v18;

  v20 = [(NSString *)self->_deviceIdentifier copyWithZone:a3];
  v21 = v5[1];
  v5[1] = v20;

  v22 = [(NSString *)self->_passTypeIdentifier copyWithZone:a3];
  v23 = v5[4];
  v5[4] = v22;

  v24 = [(NSString *)self->_passSerialNumber copyWithZone:a3];
  v25 = v5[3];
  v5[3] = v24;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  requestUniqueID = self->_requestUniqueID;
  if (requestUniqueID | v4[9])
  {
    if (![(NSString *)requestUniqueID isEqual:?])
    {
      goto LABEL_22;
    }
  }

  planIdentifier = self->_planIdentifier;
  if (planIdentifier | v4[7] && ![(NSString *)planIdentifier isEqual:?])
  {
    goto LABEL_22;
  }

  if (((planLabel = self->_planLabel, !(planLabel | v4[8])) || [(NSString *)planLabel isEqual:?]) && ((planDetailLabel = self->_planDetailLabel, !(planDetailLabel | v4[6])) || [(NSString *)planDetailLabel isEqual:?]) && ((startDateData = self->_startDateData, !(startDateData | v4[10])) || [(NSData *)startDateData isEqual:?]) && ((expiryDateData = self->_expiryDateData, !(expiryDateData | v4[2])) || [(NSData *)expiryDateData isEqual:?]) && ((paymentPassActionData = self->_paymentPassActionData, !(paymentPassActionData | v4[5])) || [(NSData *)paymentPassActionData isEqual:?]) && ((deviceIdentifier = self->_deviceIdentifier, !(deviceIdentifier | v4[1])) || [(NSString *)deviceIdentifier isEqual:?]) && ((passTypeIdentifier = self->_passTypeIdentifier, !(passTypeIdentifier | v4[4])) || [(NSString *)passTypeIdentifier isEqual:?]))
  {
    passSerialNumber = self->_passSerialNumber;
    if (passSerialNumber | v4[3])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[9])
  {
    [(NPKProtoRemotePassActionSelectItemRequest *)self setRequestUniqueID:?];
  }

  if (v4[7])
  {
    [(NPKProtoRemotePassActionSelectItemRequest *)self setPlanIdentifier:?];
  }

  if (v4[8])
  {
    [(NPKProtoRemotePassActionSelectItemRequest *)self setPlanLabel:?];
  }

  if (v4[6])
  {
    [(NPKProtoRemotePassActionSelectItemRequest *)self setPlanDetailLabel:?];
  }

  if (v4[10])
  {
    [(NPKProtoRemotePassActionSelectItemRequest *)self setStartDateData:?];
  }

  if (v4[2])
  {
    [(NPKProtoRemotePassActionSelectItemRequest *)self setExpiryDateData:?];
  }

  if (v4[5])
  {
    [(NPKProtoRemotePassActionSelectItemRequest *)self setPaymentPassActionData:?];
  }

  if (v4[1])
  {
    [(NPKProtoRemotePassActionSelectItemRequest *)self setDeviceIdentifier:?];
  }

  if (v4[4])
  {
    [(NPKProtoRemotePassActionSelectItemRequest *)self setPassTypeIdentifier:?];
  }

  if (v4[3])
  {
    [(NPKProtoRemotePassActionSelectItemRequest *)self setPassSerialNumber:?];
  }
}

@end