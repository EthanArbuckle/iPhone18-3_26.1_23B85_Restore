@interface _MRRequestDetailsProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasInitiatorWasInferred:(BOOL)inferred;
- (void)setHasQos:(BOOL)qos;
- (void)setHasUserInitiated:(BOOL)initiated;
- (void)writeTo:(id)to;
@end

@implementation _MRRequestDetailsProtobuf

- (void)setHasQos:(BOOL)qos
{
  if (qos)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasUserInitiated:(BOOL)initiated
{
  if (initiated)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasInitiatorWasInferred:(BOOL)inferred
{
  if (inferred)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRRequestDetailsProtobuf;
  v4 = [(_MRRequestDetailsProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRRequestDetailsProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  initiator = self->_initiator;
  if (initiator)
  {
    [dictionary setObject:initiator forKey:@"initiator"];
  }

  requestID = self->_requestID;
  if (requestID)
  {
    [v4 setObject:requestID forKey:@"requestID"];
  }

  reason = self->_reason;
  if (reason)
  {
    [v4 setObject:reason forKey:@"reason"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_qos];
    [v4 setObject:v14 forKey:@"qos"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_9:
      if ((has & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_startDate];
  [v4 setObject:v15 forKey:@"startDate"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_userInitiated];
  [v4 setObject:v16 forKey:@"userInitiated"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_initiatorWasInferred];
    [v4 setObject:v9 forKey:@"initiatorWasInferred"];
  }

LABEL_12:
  originatingBundleID = self->_originatingBundleID;
  if (originatingBundleID)
  {
    [v4 setObject:originatingBundleID forKey:@"originatingBundleID"];
  }

  operationID = self->_operationID;
  if (operationID)
  {
    [v4 setObject:operationID forKey:@"operationID"];
  }

  surface = self->_surface;
  if (surface)
  {
    [v4 setObject:surface forKey:@"surface"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_initiator)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (self->_requestID)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (self->_reason)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    qos = self->_qos;
    PBDataWriterWriteUint32Field();
    toCopy = v10;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_9:
      if ((has & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  startDate = self->_startDate;
  PBDataWriterWriteUint64Field();
  toCopy = v10;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  userInitiated = self->_userInitiated;
  PBDataWriterWriteBOOLField();
  toCopy = v10;
  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    initiatorWasInferred = self->_initiatorWasInferred;
    PBDataWriterWriteBOOLField();
    toCopy = v10;
  }

LABEL_12:
  if (self->_originatingBundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (self->_operationID)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (self->_surface)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_initiator)
  {
    [toCopy setInitiator:?];
    toCopy = v6;
  }

  if (self->_requestID)
  {
    [v6 setRequestID:?];
    toCopy = v6;
  }

  if (self->_reason)
  {
    [v6 setReason:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 10) = self->_qos;
    *(toCopy + 76) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_9:
      if ((has & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  *(toCopy + 1) = self->_startDate;
  *(toCopy + 76) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  *(toCopy + 73) = self->_userInitiated;
  *(toCopy + 76) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_11:
    *(toCopy + 72) = self->_initiatorWasInferred;
    *(toCopy + 76) |= 4u;
  }

LABEL_12:
  if (self->_originatingBundleID)
  {
    [v6 setOriginatingBundleID:?];
    toCopy = v6;
  }

  if (self->_operationID)
  {
    [v6 setOperationID:?];
    toCopy = v6;
  }

  if (self->_surface)
  {
    [v6 setSurface:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_initiator copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_requestID copyWithZone:zone];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  v10 = [(NSString *)self->_reason copyWithZone:zone];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 40) = self->_qos;
    *(v5 + 76) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 73) = self->_userInitiated;
      *(v5 + 76) |= 8u;
      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 8) = self->_startDate;
  *(v5 + 76) |= 1u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 4) != 0)
  {
LABEL_5:
    *(v5 + 72) = self->_initiatorWasInferred;
    *(v5 + 76) |= 4u;
  }

LABEL_6:
  v13 = [(NSString *)self->_originatingBundleID copyWithZone:zone];
  v14 = *(v5 + 32);
  *(v5 + 32) = v13;

  v15 = [(NSString *)self->_operationID copyWithZone:zone];
  v16 = *(v5 + 24);
  *(v5 + 24) = v15;

  v17 = [(NSString *)self->_surface copyWithZone:zone];
  v18 = *(v5 + 64);
  *(v5 + 64) = v17;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_39;
  }

  initiator = self->_initiator;
  if (initiator | *(equalCopy + 2))
  {
    if (![(NSString *)initiator isEqual:?])
    {
      goto LABEL_39;
    }
  }

  requestID = self->_requestID;
  if (requestID | *(equalCopy + 7))
  {
    if (![(NSString *)requestID isEqual:?])
    {
      goto LABEL_39;
    }
  }

  reason = self->_reason;
  if (reason | *(equalCopy + 6))
  {
    if (![(NSString *)reason isEqual:?])
    {
      goto LABEL_39;
    }
  }

  v8 = *(equalCopy + 76);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 76) & 2) == 0 || self->_qos != *(equalCopy + 10))
    {
      goto LABEL_39;
    }
  }

  else if ((*(equalCopy + 76) & 2) != 0)
  {
    goto LABEL_39;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 76) & 1) == 0 || self->_startDate != *(equalCopy + 1))
    {
      goto LABEL_39;
    }
  }

  else if (*(equalCopy + 76))
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 76) & 8) == 0)
    {
      goto LABEL_39;
    }

    v13 = *(equalCopy + 73);
    if (self->_userInitiated)
    {
      if ((*(equalCopy + 73) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else if (*(equalCopy + 73))
    {
      goto LABEL_39;
    }
  }

  else if ((*(equalCopy + 76) & 8) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(equalCopy + 76) & 4) == 0)
    {
      goto LABEL_22;
    }

LABEL_39:
    v12 = 0;
    goto LABEL_40;
  }

  if ((*(equalCopy + 76) & 4) == 0)
  {
    goto LABEL_39;
  }

  v14 = *(equalCopy + 72);
  if (self->_initiatorWasInferred)
  {
    if ((*(equalCopy + 72) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (*(equalCopy + 72))
  {
    goto LABEL_39;
  }

LABEL_22:
  originatingBundleID = self->_originatingBundleID;
  if (originatingBundleID | *(equalCopy + 4) && ![(NSString *)originatingBundleID isEqual:?])
  {
    goto LABEL_39;
  }

  operationID = self->_operationID;
  if (operationID | *(equalCopy + 3))
  {
    if (![(NSString *)operationID isEqual:?])
    {
      goto LABEL_39;
    }
  }

  surface = self->_surface;
  if (surface | *(equalCopy + 8))
  {
    v12 = [(NSString *)surface isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_40:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_initiator hash];
  v4 = [(NSString *)self->_requestID hash];
  v5 = [(NSString *)self->_reason hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_qos;
    if (*&self->_has)
    {
LABEL_3:
      v7 = 2654435761u * self->_startDate;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = 0;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v9 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = 2654435761 * self->_userInitiated;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v9 = 2654435761 * self->_initiatorWasInferred;
LABEL_10:
  v10 = v4 ^ v3 ^ v5 ^ v6;
  v11 = v7 ^ v8 ^ v9 ^ [(NSString *)self->_originatingBundleID hash];
  v12 = v10 ^ v11 ^ [(NSString *)self->_operationID hash];
  return v12 ^ [(NSString *)self->_surface hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(_MRRequestDetailsProtobuf *)self setInitiator:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 7))
  {
    [(_MRRequestDetailsProtobuf *)self setRequestID:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 6))
  {
    [(_MRRequestDetailsProtobuf *)self setReason:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 76);
  if ((v5 & 2) != 0)
  {
    self->_qos = *(fromCopy + 10);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 76);
    if ((v5 & 1) == 0)
    {
LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    }
  }

  else if ((*(fromCopy + 76) & 1) == 0)
  {
    goto LABEL_9;
  }

  self->_startDate = *(fromCopy + 1);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 76);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  self->_userInitiated = *(fromCopy + 73);
  *&self->_has |= 8u;
  if ((*(fromCopy + 76) & 4) != 0)
  {
LABEL_11:
    self->_initiatorWasInferred = *(fromCopy + 72);
    *&self->_has |= 4u;
  }

LABEL_12:
  if (*(fromCopy + 4))
  {
    [(_MRRequestDetailsProtobuf *)self setOriginatingBundleID:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(_MRRequestDetailsProtobuf *)self setOperationID:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 8))
  {
    [(_MRRequestDetailsProtobuf *)self setSurface:?];
    fromCopy = v6;
  }
}

@end