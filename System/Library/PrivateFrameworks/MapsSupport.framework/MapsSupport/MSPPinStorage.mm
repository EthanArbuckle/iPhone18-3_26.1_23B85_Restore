@interface MSPPinStorage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation MSPPinStorage

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)type
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_type;
  }

  else
  {
    return 1;
  }
}

- (void)setHasType:(BOOL)type
{
  if (type)
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPPinStorage;
  v4 = [(MSPPinStorage *)&v8 description];
  dictionaryRepresentation = [(MSPPinStorage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_position];
    [v4 setObject:v7 forKey:@"position"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
  [v4 setObject:v8 forKey:@"timestamp"];

  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (self->_type == 1)
  {
    v9 = @"DROPPED_PIN";
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_type];
  }

  [v4 setObject:v9 forKey:@"type"];

LABEL_13:
  droppedPin = self->_droppedPin;
  if (droppedPin)
  {
    dictionaryRepresentation = [(MSPDroppedPin *)droppedPin dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"droppedPin"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    dictionaryRepresentation2 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"Unknown Fields"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  has = self->_has;
  if (has)
  {
    position = self->_position;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  timestamp = self->_timestamp;
  PBDataWriterWriteDoubleField();
  toCopy = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    type = self->_type;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
  }

LABEL_7:
  if (self->_droppedPin)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:toCopy];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 2) = *&self->_position;
    *(toCopy + 52) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 3) = *&self->_timestamp;
  *(toCopy + 52) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    *(toCopy + 12) = self->_type;
    *(toCopy + 52) |= 4u;
  }

LABEL_7:
  if (self->_droppedPin)
  {
    [v6 setDroppedPin:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 24) = self->_timestamp;
    *(v5 + 52) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 16) = self->_position;
  *(v5 + 52) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 48) = self->_type;
    *(v5 + 52) |= 4u;
  }

LABEL_5:
  v9 = [(MSPDroppedPin *)self->_droppedPin copyWithZone:zone];
  v10 = *(v5 + 32);
  *(v5 + 32) = v9;

  objc_storeStrong((v5 + 8), self->_unknownFields);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 5))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_21;
    }
  }

  v6 = *(equalCopy + 52);
  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_position != *(equalCopy + 2))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 52))
  {
LABEL_21:
    v8 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 52) & 2) == 0 || self->_timestamp != *(equalCopy + 3))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 52) & 2) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 52) & 4) == 0 || self->_type != *(equalCopy + 12))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 52) & 4) != 0)
  {
    goto LABEL_21;
  }

  droppedPin = self->_droppedPin;
  if (droppedPin | *(equalCopy + 4))
  {
    v8 = [(MSPDroppedPin *)droppedPin isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_22:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  if (*&self->_has)
  {
    position = self->_position;
    if (position < 0.0)
    {
      position = -position;
    }

    *v4.i64 = floor(position + 0.5);
    v8 = (position - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v9), v5, v4);
    v6 = 2654435761u * *v4.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    timestamp = self->_timestamp;
    if (timestamp < 0.0)
    {
      timestamp = -timestamp;
    }

    *v4.i64 = floor(timestamp + 0.5);
    v12 = (timestamp - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v5, v4).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v14 = 2654435761 * self->_type;
  }

  else
  {
    v14 = 0;
  }

  return v6 ^ v3 ^ v10 ^ v14 ^ [(MSPDroppedPin *)self->_droppedPin hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v8 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(MSPPinStorage *)self setIdentifier:?];
    fromCopy = v8;
  }

  v5 = *(fromCopy + 52);
  if (v5)
  {
    self->_position = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 52);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(fromCopy + 52) & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_timestamp = *(fromCopy + 3);
  *&self->_has |= 2u;
  if ((*(fromCopy + 52) & 4) != 0)
  {
LABEL_6:
    self->_type = *(fromCopy + 12);
    *&self->_has |= 4u;
  }

LABEL_7:
  droppedPin = self->_droppedPin;
  v7 = *(fromCopy + 4);
  if (droppedPin)
  {
    if (v7)
    {
      [(MSPDroppedPin *)droppedPin mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(MSPPinStorage *)self setDroppedPin:?];
  }

  MEMORY[0x2821F96F8]();
}

@end