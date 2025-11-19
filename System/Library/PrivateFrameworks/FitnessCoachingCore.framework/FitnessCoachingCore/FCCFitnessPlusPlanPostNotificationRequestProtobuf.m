@interface FCCFitnessPlusPlanPostNotificationRequestProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasShowTomorrowPlan:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation FCCFitnessPlusPlanPostNotificationRequestProtobuf

- (void)setHasShowTomorrowPlan:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = FCCFitnessPlusPlanPostNotificationRequestProtobuf;
  v4 = [(FCCFitnessPlusPlanPostNotificationRequestProtobuf *)&v8 description];
  v5 = [(FCCFitnessPlusPlanPostNotificationRequestProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  type = self->_type;
  if (type)
  {
    [v3 setObject:type forKey:@"type"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_force];
    [v4 setObject:v7 forKey:@"force"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_showTomorrowPlan];
    [v4 setObject:v8 forKey:@"showTomorrowPlan"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_type)
  {
    [FCCFitnessPlusPlanPostNotificationRequestProtobuf writeTo:];
  }

  v8 = v4;
  PBDataWriterWriteStringField();
  has = self->_has;
  if (has)
  {
    force = self->_force;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    showTomorrowPlan = self->_showTomorrowPlan;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setType:self->_type];
  has = self->_has;
  if (has)
  {
    v5[16] = self->_force;
    v5[20] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v5[17] = self->_showTomorrowPlan;
    v5[20] |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_type copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 16) = self->_force;
    *(v5 + 20) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 17) = self->_showTomorrowPlan;
    *(v5 + 20) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  type = self->_type;
  if (type | *(v4 + 1))
  {
    if (![(NSString *)type isEqual:?])
    {
      goto LABEL_12;
    }
  }

  if ((*&self->_has & 1) == 0)
  {
    if ((*(v4 + 20) & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  if ((*(v4 + 20) & 1) == 0)
  {
    goto LABEL_12;
  }

  v8 = *(v4 + 16);
  if (self->_force)
  {
    if ((*(v4 + 16) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (*(v4 + 16))
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = (*(v4 + 20) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 20) & 2) != 0)
    {
      if (self->_showTomorrowPlan)
      {
        if (*(v4 + 17))
        {
          goto LABEL_20;
        }
      }

      else if (!*(v4 + 17))
      {
LABEL_20:
        v6 = 1;
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

LABEL_13:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_type hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_force;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_showTomorrowPlan;
  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    v6 = v4;
    [(FCCFitnessPlusPlanPostNotificationRequestProtobuf *)self setType:?];
    v4 = v6;
  }

  v5 = v4[20];
  if (v5)
  {
    self->_force = v4[16];
    *&self->_has |= 1u;
    v5 = v4[20];
  }

  if ((v5 & 2) != 0)
  {
    self->_showTomorrowPlan = v4[17];
    *&self->_has |= 2u;
  }
}

@end