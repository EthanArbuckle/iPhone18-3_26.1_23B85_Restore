@interface BLTPBAppearance
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BLTPBAppearance

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBAppearance;
  v4 = [(BLTPBAppearance *)&v8 description];
  v5 = [(BLTPBAppearance *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"title"];
  }

  image = self->_image;
  if (image)
  {
    v7 = [(BLTPBImage *)image dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"image"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_destructive];
    [v4 setObject:v8 forKey:@"destructive"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_image)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    destructive = self->_destructive;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_title)
  {
    [v4 setTitle:?];
    v4 = v5;
  }

  if (self->_image)
  {
    [v5 setImage:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[24] = self->_destructive;
    v4[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_title copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(BLTPBImage *)self->_image copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_destructive;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  title = self->_title;
  if (title | *(v4 + 2))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_8;
    }
  }

  image = self->_image;
  if (image | *(v4 + 1))
  {
    if (![(BLTPBImage *)image isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    if (self->_destructive)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(v4 + 24))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 2))
  {
    [(BLTPBAppearance *)self setTitle:?];
    v4 = v7;
  }

  image = self->_image;
  v6 = *(v4 + 1);
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

  v4 = v7;
LABEL_9:
  if (v4[28])
  {
    self->_destructive = v4[24];
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end