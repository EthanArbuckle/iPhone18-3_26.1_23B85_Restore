@interface BLTPBBulletinAttachment
- (BOOL)isEqual:(id)equal;
- (id)attachmentURLURL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsUpdated:(BOOL)updated;
- (void)writeTo:(id)to;
@end

@implementation BLTPBBulletinAttachment

- (void)setHasIsUpdated:(BOOL)updated
{
  if (updated)
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
  dictionaryRepresentation = [(BLTPBBulletinAttachment *)self dictionaryRepresentation];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteUint32Field();
    toCopy = v7;
  }

  if (self->_uRL)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    isUpdated = self->_isUpdated;
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_type;
    *(toCopy + 36) |= 1u;
  }

  if (self->_uRL)
  {
    [v5 setURL:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 32) = self->_isUpdated;
    *(toCopy + 36) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_type;
    *(v5 + 36) |= 1u;
  }

  v8 = [(NSString *)self->_uRL copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 32) = self->_isUpdated;
    *(v5 + 36) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 1))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_14;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 36);
  if (has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_type != *(equalCopy + 4))
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_14;
  }

  uRL = self->_uRL;
  if (uRL | *(equalCopy + 3))
  {
    if (![(NSString *)uRL isEqual:?])
    {
      goto LABEL_14;
    }

    has = self->_has;
  }

  v9 = (*(equalCopy + 36) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) != 0)
    {
      if (self->_isUpdated)
      {
        if ((*(equalCopy + 32) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else if (*(equalCopy + 32))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(BLTPBBulletinAttachment *)self setIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 36))
  {
    self->_type = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    [(BLTPBBulletinAttachment *)self setURL:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 36) & 2) != 0)
  {
    self->_isUpdated = *(fromCopy + 32);
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