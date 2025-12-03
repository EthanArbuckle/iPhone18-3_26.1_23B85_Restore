@interface BCSBusinessLinkContent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BCSBusinessLinkContent

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BCSBusinessLinkContent;
  v4 = [(BCSBusinessLinkContent *)&v8 description];
  dictionaryRepresentation = [(BCSBusinessLinkContent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  language = self->_language;
  if (language)
  {
    [dictionary setObject:language forKey:@"language"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_language)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_subtitle)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    isDefault = self->_isDefault;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_language)
  {
    [toCopy setLanguage:?];
    toCopy = v5;
  }

  if (self->_title)
  {
    [v5 setTitle:?];
    toCopy = v5;
  }

  if (self->_subtitle)
  {
    [v5 setSubtitle:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[32] = self->_isDefault;
    toCopy[36] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_language copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_title copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_subtitle copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_isDefault;
    *(v5 + 36) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  language = self->_language;
  if (language | *(equalCopy + 1))
  {
    if (![(NSString *)language isEqual:?])
    {
      goto LABEL_10;
    }
  }

  title = self->_title;
  if (title | *(equalCopy + 3))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_10;
    }
  }

  subtitle = self->_subtitle;
  if (subtitle | *(equalCopy + 2))
  {
    if (![(NSString *)subtitle isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v8 = (*(equalCopy + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0)
    {
LABEL_10:
      v8 = 0;
      goto LABEL_11;
    }

    if (self->_isDefault)
    {
      if ((*(equalCopy + 32) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (*(equalCopy + 32))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(BCSBusinessLinkContent *)self setLanguage:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(BCSBusinessLinkContent *)self setTitle:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(BCSBusinessLinkContent *)self setSubtitle:?];
    fromCopy = v5;
  }

  if (fromCopy[36])
  {
    self->_isDefault = fromCopy[32];
    *&self->_has |= 1u;
  }
}

@end