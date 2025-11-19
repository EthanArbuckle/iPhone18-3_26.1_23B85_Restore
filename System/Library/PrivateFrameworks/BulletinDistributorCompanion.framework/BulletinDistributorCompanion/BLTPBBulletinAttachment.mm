@interface BLTPBBulletinAttachment
- (BOOL)isEqual:(id)a3;
- (id)attachmentURLURL;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsUpdated:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BLTPBBulletinAttachment

- (void)setHasIsUpdated:(BOOL)a3
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
  v8.super_class = BLTPBBulletinAttachment;
  v4 = [(BLTPBBulletinAttachment *)&v8 description];
  v5 = [(BLTPBBulletinAttachment *)self dictionaryRepresentation];
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

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_type];
    [v4 setObject:v6 forKey:@"type"];
  }

  uRL = self->_uRL;
  if (uRL)
  {
    [v4 setObject:uRL forKey:@"URL"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_isUpdated];
    [v4 setObject:v8 forKey:@"isUpdated"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteUint32Field();
    v4 = v7;
  }

  if (self->_uRL)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    isUpdated = self->_isUpdated;
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_type;
    *(v4 + 36) |= 1u;
  }

  if (self->_uRL)
  {
    [v5 setURL:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 32) = self->_isUpdated;
    *(v4 + 36) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_type;
    *(v5 + 36) |= 1u;
  }

  v8 = [(NSString *)self->_uRL copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 32) = self->_isUpdated;
    *(v5 + 36) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 1))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_14;
    }
  }

  has = self->_has;
  v7 = *(v4 + 36);
  if (has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_type != *(v4 + 4))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_14;
  }

  uRL = self->_uRL;
  if (uRL | *(v4 + 3))
  {
    if (![(NSString *)uRL isEqual:?])
    {
      goto LABEL_14;
    }

    has = self->_has;
  }

  v9 = (*(v4 + 36) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) != 0)
    {
      if (self->_isUpdated)
      {
        if ((*(v4 + 32) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else if (*(v4 + 32))
      {
        goto LABEL_14;
      }

      v9 = 1;
      goto LABEL_15;
    }

LABEL_14:
    v9 = 0;
  }

LABEL_15:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_type;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_uRL hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_isUpdated;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 1))
  {
    [(BLTPBBulletinAttachment *)self setIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 36))
  {
    self->_type = *(v4 + 4);
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    [(BLTPBBulletinAttachment *)self setURL:?];
    v4 = v5;
  }

  if ((*(v4 + 36) & 2) != 0)
  {
    self->_isUpdated = *(v4 + 32);
    *&self->_has |= 2u;
  }
}

- (id)attachmentURLURL
{
  v3 = [(BLTPBBulletinAttachment *)self uRL];
  if (v3)
  {
    v4 = MEMORY[0x277CBEBC0];
    v5 = [(BLTPBBulletinAttachment *)self uRL];
    v6 = [v4 URLWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end