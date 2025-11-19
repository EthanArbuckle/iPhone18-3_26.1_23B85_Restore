@interface BCSBusinessLinkContent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BCSBusinessLinkContent

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BCSBusinessLinkContent;
  v4 = [(BCSBusinessLinkContent *)&v8 description];
  v5 = [(BCSBusinessLinkContent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  language = self->_language;
  if (language)
  {
    [v3 setObject:language forKey:@"language"];
  }

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKey:@"title"];
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    [v4 setObject:subtitle forKey:@"subtitle"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDefault];
    [v4 setObject:v8 forKey:@"is_default"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_language)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_subtitle)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    isDefault = self->_isDefault;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_language)
  {
    [v4 setLanguage:?];
    v4 = v5;
  }

  if (self->_title)
  {
    [v5 setTitle:?];
    v4 = v5;
  }

  if (self->_subtitle)
  {
    [v5 setSubtitle:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[32] = self->_isDefault;
    v4[36] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_language copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_title copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_subtitle copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_isDefault;
    *(v5 + 36) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  language = self->_language;
  if (language | *(v4 + 1))
  {
    if (![(NSString *)language isEqual:?])
    {
      goto LABEL_10;
    }
  }

  title = self->_title;
  if (title | *(v4 + 3))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_10;
    }
  }

  subtitle = self->_subtitle;
  if (subtitle | *(v4 + 2))
  {
    if (![(NSString *)subtitle isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v8 = (*(v4 + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0)
    {
LABEL_10:
      v8 = 0;
      goto LABEL_11;
    }

    if (self->_isDefault)
    {
      if ((*(v4 + 32) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (*(v4 + 32))
    {
      goto LABEL_10;
    }

    v8 = 1;
  }

LABEL_11:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_language hash];
  v4 = [(NSString *)self->_title hash];
  v5 = [(NSString *)self->_subtitle hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_isDefault;
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
    [(BCSBusinessLinkContent *)self setLanguage:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(BCSBusinessLinkContent *)self setTitle:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(BCSBusinessLinkContent *)self setSubtitle:?];
    v4 = v5;
  }

  if (v4[36])
  {
    self->_isDefault = v4[32];
    *&self->_has |= 1u;
  }
}

@end