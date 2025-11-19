@interface NACMutedMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMuted:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NACMutedMessage

- (void)setHasMuted:(BOOL)a3
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
  v8.super_class = NACMutedMessage;
  v4 = [(NACMutedMessage *)&v8 description];
  v5 = [(NACMutedMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_muted];
    [v3 setObject:v4 forKey:@"muted"];
  }

  category = self->_category;
  if (category)
  {
    [v3 setObject:category forKey:@"category"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_originIdentifier];
    [v3 setObject:v6 forKey:@"originIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if ((*&self->_has & 2) != 0)
  {
    muted = self->_muted;
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }

  if (self->_category)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    originIdentifier = self->_originIdentifier;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[20] = self->_muted;
    v4[24] |= 2u;
  }

  if (self->_category)
  {
    v5 = v4;
    [v4 setCategory:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_originIdentifier;
    v4[24] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 20) = self->_muted;
    *(v5 + 24) |= 2u;
  }

  v7 = [(NSString *)self->_category copyWithZone:a3];
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  if (*&self->_has)
  {
    *(v6 + 16) = self->_originIdentifier;
    *(v6 + 24) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  has = self->_has;
  v6 = *(v4 + 24);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0)
    {
      goto LABEL_12;
    }

    v10 = *(v4 + 20);
    if (self->_muted)
    {
      if ((*(v4 + 20) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (*(v4 + 20))
    {
      goto LABEL_12;
    }
  }

  else if ((*(v4 + 24) & 2) != 0)
  {
    goto LABEL_12;
  }

  category = self->_category;
  if (category | *(v4 + 1))
  {
    if (![(NSString *)category isEqual:?])
    {
      goto LABEL_12;
    }

    has = self->_has;
  }

  v8 = (*(v4 + 24) & 1) == 0;
  if (has)
  {
    if ((*(v4 + 24) & 1) != 0 && self->_originIdentifier == *(v4 + 4))
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_muted;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_category hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_originIdentifier;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((*(v4 + 24) & 2) != 0)
  {
    self->_muted = *(v4 + 20);
    *&self->_has |= 2u;
  }

  if (*(v4 + 1))
  {
    v5 = v4;
    [(NACMutedMessage *)self setCategory:?];
    v4 = v5;
  }

  if (*(v4 + 24))
  {
    self->_originIdentifier = *(v4 + 4);
    *&self->_has |= 1u;
  }
}

@end