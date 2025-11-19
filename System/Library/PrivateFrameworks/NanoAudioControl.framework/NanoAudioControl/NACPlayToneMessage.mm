@interface NACPlayToneMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasShouldRepeat:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NACPlayToneMessage

- (void)setHasShouldRepeat:(BOOL)a3
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
  v8.super_class = NACPlayToneMessage;
  v4 = [(NACPlayToneMessage *)&v8 description];
  v5 = [(NACPlayToneMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  alertType = self->_alertType;
  if (alertType)
  {
    [v3 setObject:alertType forKey:@"alertType"];
  }

  topic = self->_topic;
  if (topic)
  {
    [v4 setObject:topic forKey:@"topic"];
  }

  toneIdentifier = self->_toneIdentifier;
  if (toneIdentifier)
  {
    [v4 setObject:toneIdentifier forKey:@"toneIdentifier"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldRepeat];
    [v4 setObject:v9 forKey:@"shouldRepeat"];

    has = self->_has;
  }

  if (has)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_forPreview];
    [v4 setObject:v10 forKey:@"forPreview"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_alertType)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_topic)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_toneIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    shouldRepeat = self->_shouldRepeat;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    forPreview = self->_forPreview;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_alertType)
  {
    [v4 setAlertType:?];
    v4 = v6;
  }

  if (self->_topic)
  {
    [v6 setTopic:?];
    v4 = v6;
  }

  if (self->_toneIdentifier)
  {
    [v6 setToneIdentifier:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[33] = self->_shouldRepeat;
    v4[36] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[32] = self->_forPreview;
    v4[36] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_alertType copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_topic copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_toneIdentifier copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 33) = self->_shouldRepeat;
    *(v5 + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 32) = self->_forPreview;
    *(v5 + 36) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  alertType = self->_alertType;
  if (alertType | *(v4 + 1))
  {
    if (![(NSString *)alertType isEqual:?])
    {
      goto LABEL_16;
    }
  }

  topic = self->_topic;
  if (topic | *(v4 + 3))
  {
    if (![(NSString *)topic isEqual:?])
    {
      goto LABEL_16;
    }
  }

  toneIdentifier = self->_toneIdentifier;
  if (toneIdentifier | *(v4 + 2))
  {
    if (![(NSString *)toneIdentifier isEqual:?])
    {
      goto LABEL_16;
    }
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 36) & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  if ((*(v4 + 36) & 2) == 0)
  {
    goto LABEL_16;
  }

  v10 = *(v4 + 33);
  if (self->_shouldRepeat)
  {
    if ((*(v4 + 33) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 33))
  {
    goto LABEL_16;
  }

LABEL_10:
  v8 = (*(v4 + 36) & 1) == 0;
  if (*&self->_has)
  {
    if (*(v4 + 36))
    {
      if (self->_forPreview)
      {
        if (*(v4 + 32))
        {
          goto LABEL_24;
        }
      }

      else if (!*(v4 + 32))
      {
LABEL_24:
        v8 = 1;
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

LABEL_17:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_alertType hash];
  v4 = [(NSString *)self->_topic hash];
  v5 = [(NSString *)self->_toneIdentifier hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_shouldRepeat;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_forPreview;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 1))
  {
    [(NACPlayToneMessage *)self setAlertType:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(NACPlayToneMessage *)self setTopic:?];
    v4 = v6;
  }

  if (*(v4 + 2))
  {
    [(NACPlayToneMessage *)self setToneIdentifier:?];
    v4 = v6;
  }

  v5 = v4[36];
  if ((v5 & 2) != 0)
  {
    self->_shouldRepeat = v4[33];
    *&self->_has |= 2u;
    v5 = v4[36];
  }

  if (v5)
  {
    self->_forPreview = v4[32];
    *&self->_has |= 1u;
  }
}

@end