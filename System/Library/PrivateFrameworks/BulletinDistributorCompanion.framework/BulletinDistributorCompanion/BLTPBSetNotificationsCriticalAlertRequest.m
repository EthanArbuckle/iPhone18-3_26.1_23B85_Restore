@interface BLTPBSetNotificationsCriticalAlertRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCriticalAlertSetting:(id)a3;
- (int)criticalAlertSetting;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BLTPBSetNotificationsCriticalAlertRequest

- (int)criticalAlertSetting
{
  if (*&self->_has)
  {
    return self->_criticalAlertSetting;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsCriticalAlertSetting:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NotSupported"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Off"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"On"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBSetNotificationsCriticalAlertRequest;
  v4 = [(BLTPBSetNotificationsCriticalAlertRequest *)&v8 description];
  v5 = [(BLTPBSetNotificationsCriticalAlertRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    criticalAlertSetting = self->_criticalAlertSetting;
    if (criticalAlertSetting >= 3)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_criticalAlertSetting];
    }

    else
    {
      v5 = off_278D31868[criticalAlertSetting];
    }

    [v3 setObject:v5 forKey:@"criticalAlertSetting"];
  }

  sectionID = self->_sectionID;
  if (sectionID)
  {
    [v3 setObject:sectionID forKey:@"sectionID"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    criticalAlertSetting = self->_criticalAlertSetting;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_sectionID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[2] = self->_criticalAlertSetting;
    *(v4 + 24) |= 1u;
  }

  if (self->_sectionID)
  {
    v5 = v4;
    [v4 setSectionID:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_criticalAlertSetting;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSString *)self->_sectionID copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 24);
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_criticalAlertSetting != *(v4 + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  sectionID = self->_sectionID;
  if (sectionID | *(v4 + 2))
  {
    v7 = [(NSString *)sectionID isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_criticalAlertSetting;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_sectionID hash]^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[6])
  {
    self->_criticalAlertSetting = v4[2];
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    v5 = v4;
    [(BLTPBSetNotificationsCriticalAlertRequest *)self setSectionID:?];
    v4 = v5;
  }
}

@end