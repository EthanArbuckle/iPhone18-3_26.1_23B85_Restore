@interface MSPPinStorage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MSPPinStorage

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
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

- (void)setHasType:(BOOL)a3
{
  if (a3)
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
  v5 = [(MSPPinStorage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
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
    v11 = [(MSPDroppedPin *)droppedPin dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"droppedPin"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    v13 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v4 setObject:v13 forKey:@"Unknown Fields"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  has = self->_has;
  if (has)
  {
    position = self->_position;
    PBDataWriterWriteDoubleField();
    v4 = v9;
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
  v4 = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    type = self->_type;
    PBDataWriterWriteInt32Field();
    v4 = v9;
  }

LABEL_7:
  if (self->_droppedPin)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:v4];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 2) = *&self->_position;
    *(v4 + 52) |= 1u;
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

  *(v4 + 3) = *&self->_timestamp;
  *(v4 + 52) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    *(v4 + 12) = self->_type;
    *(v4 + 52) |= 4u;
  }

LABEL_7:
  if (self->_droppedPin)
  {
    [v6 setDroppedPin:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
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
  v9 = [(MSPDroppedPin *)self->_droppedPin copyWithZone:a3];
  v10 = *(v5 + 32);
  *(v5 + 32) = v9;

  objc_storeStrong((v5 + 8), self->_unknownFields);
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 5))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_21;
    }
  }

  v6 = *(v4 + 52);
  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_position != *(v4 + 2))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 52))
  {
LABEL_21:
    v8 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 52) & 2) == 0 || self->_timestamp != *(v4 + 3))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 52) & 2) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 52) & 4) == 0 || self->_type != *(v4 + 12))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 52) & 4) != 0)
  {
    goto LABEL_21;
  }

  droppedPin = self->_droppedPin;
  if (droppedPin | *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (*(v4 + 5))
  {
    [(MSPPinStorage *)self setIdentifier:?];
    v4 = v8;
  }

  v5 = *(v4 + 52);
  if (v5)
  {
    self->_position = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 52);
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

  else if ((*(v4 + 52) & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_timestamp = *(v4 + 3);
  *&self->_has |= 2u;
  if ((*(v4 + 52) & 4) != 0)
  {
LABEL_6:
    self->_type = *(v4 + 12);
    *&self->_has |= 4u;
  }

LABEL_7:
  droppedPin = self->_droppedPin;
  v7 = *(v4 + 4);
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