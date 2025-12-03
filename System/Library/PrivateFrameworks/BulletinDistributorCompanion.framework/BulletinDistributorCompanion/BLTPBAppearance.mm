@interface BLTPBAppearance
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BLTPBAppearance

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBAppearance;
  v4 = [(BLTPBAppearance *)&v8 description];
  dictionaryRepresentation = [(BLTPBAppearance *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  title = self->_title;
  if (title)
  {
    [dictionary setObject:title forKey:@"title"];
  }

  image = self->_image;
  if (image)
  {
    dictionaryRepresentation = [(BLTPBImage *)image dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"image"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_destructive];
    [v4 setObject:v8 forKey:@"destructive"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_title)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_image)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    destructive = self->_destructive;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_title)
  {
    [toCopy setTitle:?];
    toCopy = v5;
  }

  if (self->_image)
  {
    [v5 setImage:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[24] = self->_destructive;
    toCopy[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_title copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(BLTPBImage *)self->_image copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_destructive;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  title = self->_title;
  if (title | *(equalCopy + 2))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_8;
    }
  }

  image = self->_image;
  if (image | *(equalCopy + 1))
  {
    if (![(BLTPBImage *)image isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    if (self->_destructive)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_8;
    }

    v7 = 1;
  }

LABEL_9:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(BLTPBImage *)self->_image hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_destructive;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(BLTPBAppearance *)self setTitle:?];
    fromCopy = v7;
  }

  image = self->_image;
  v6 = *(fromCopy + 1);
  if (image)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(BLTPBImage *)image mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(BLTPBAppearance *)self setImage:?];
  }

  fromCopy = v7;
LABEL_9:
  if (fromCopy[28])
  {
    self->_destructive = fromCopy[24];
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end