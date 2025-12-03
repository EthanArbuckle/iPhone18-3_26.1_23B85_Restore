@interface NACPlayToneMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasShouldRepeat:(BOOL)repeat;
- (void)writeTo:(id)to;
@end

@implementation NACPlayToneMessage

- (void)setHasShouldRepeat:(BOOL)repeat
{
  if (repeat)
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
  dictionaryRepresentation = [(NACPlayToneMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  alertType = self->_alertType;
  if (alertType)
  {
    [dictionary setObject:alertType forKey:@"alertType"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_alertType)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_topic)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_toneIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    shouldRepeat = self->_shouldRepeat;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    forPreview = self->_forPreview;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_alertType)
  {
    [toCopy setAlertType:?];
    toCopy = v6;
  }

  if (self->_topic)
  {
    [v6 setTopic:?];
    toCopy = v6;
  }

  if (self->_toneIdentifier)
  {
    [v6 setToneIdentifier:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[33] = self->_shouldRepeat;
    toCopy[36] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[32] = self->_forPreview;
    toCopy[36] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_alertType copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_topic copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_toneIdentifier copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  alertType = self->_alertType;
  if (alertType | *(equalCopy + 1))
  {
    if (![(NSString *)alertType isEqual:?])
    {
      goto LABEL_16;
    }
  }

  topic = self->_topic;
  if (topic | *(equalCopy + 3))
  {
    if (![(NSString *)topic isEqual:?])
    {
      goto LABEL_16;
    }
  }

  toneIdentifier = self->_toneIdentifier;
  if (toneIdentifier | *(equalCopy + 2))
  {
    if (![(NSString *)toneIdentifier isEqual:?])
    {
      goto LABEL_16;
    }
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 36) & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  if ((*(equalCopy + 36) & 2) == 0)
  {
    goto LABEL_16;
  }

  v10 = *(equalCopy + 33);
  if (self->_shouldRepeat)
  {
    if ((*(equalCopy + 33) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 33))
  {
    goto LABEL_16;
  }

LABEL_10:
  v8 = (*(equalCopy + 36) & 1) == 0;
  if (*&self->_has)
  {
    if (*(equalCopy + 36))
    {
      if (self->_forPreview)
      {
        if (*(equalCopy + 32))
        {
          goto LABEL_24;
        }
      }

      else if (!*(equalCopy + 32))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(NACPlayToneMessage *)self setAlertType:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(NACPlayToneMessage *)self setTopic:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 2))
  {
    [(NACPlayToneMessage *)self setToneIdentifier:?];
    fromCopy = v6;
  }

  v5 = fromCopy[36];
  if ((v5 & 2) != 0)
  {
    self->_shouldRepeat = fromCopy[33];
    *&self->_has |= 2u;
    v5 = fromCopy[36];
  }

  if (v5)
  {
    self->_forPreview = fromCopy[32];
    *&self->_has |= 1u;
  }
}

@end